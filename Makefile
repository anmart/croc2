rom := croc2.gbc

rom_obj := \
src/main.o \
src/wram.o \
src/hram.o


### Build tools

ifeq (,$(shell which sha1sum))
SHA1 := shasum
else
SHA1 := sha1sum
endif

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink


### Build targets

.SUFFIXES:
.SECONDEXPANSION:
.PRECIOUS:
.SECONDARY:
.PHONY: all croc2 clean tidy compare tools

all: $(rom) compare
croc2: $(rom) compare

clean: tidy
	find src/gfx \( -iname '*.1bpp' -o -iname '*.2bpp' -o -iname '*.pal' \) -delete

tidy:
	rm -f $(rom) $(rom_obj) $(rom:.gbc=.map) $(rom:.gbc=.sym) src/rgbdscheck.o
	$(MAKE) clean -C tools/

compare: $(rom)
	@$(SHA1) -c rom.sha1

tools:
	$(MAKE) -C tools/


RGBASMFLAGS = -h -i src/ -L -Weverything
# Create a sym/map for debug purposes if `make` run with `DEBUG=1`
# This project is *mostly* for debugging, so exporting every symbol is ideal
# ifeq ($(DEBUG),1)
RGBASMFLAGS += -E
# endif

src/rgbdscheck.o: src/rgbdscheck.asm
	$(RGBASM) -o $@ $<

# The dep rules have to be explicit or else missing files won't be reported.
# As a side effect, they're evaluated immediately instead of when the rule is invoked.
# It doesn't look like $(shell) can be deferred so there might not be a better way.
define DEP
$1: $2 $$(shell tools/scan_includes -s -i src/ $2) | src/rgbdscheck.o
	$$(RGBASM) $$(RGBASMFLAGS) -o $$@ $$<
endef

# Build tools when building the rom.
# This has to happen before the rules are processed, since that's when scan_includes is run.
ifeq (,$(filter clean tidy tools,$(MAKECMDGOALS)))

$(info $(shell $(MAKE) -C tools))

# Dependencies for objects
$(foreach obj, $(rom_obj), $(eval $(call DEP,$(obj),$(obj:.o=.asm))))

endif


%.asm: ;


opts = -Cv -k 78 -l 0x33 -m 0x19 -p 0x00 -r 00 -t "CROC 2" -i BK2E

$(rom): $(rom_obj) src/layout.link
	$(RGBLINK) -p 0xff -m $(rom:.gbc=.map) -n $(rom:.gbc=.sym) -l src/layout.link -O baserom.gbc -o $@ $(filter %.o,$^)
	$(RGBFIX) $(opts) $@


### Misc file-specific graphics rules


### Catch-all graphics rules

%.png: ;

%.pal: ;

%.2bpp: %.png
	$(RGBGFX) $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -o $@ $@)

%.1bpp: %.png
	$(RGBGFX) $(rgbgfx) -d1 -o $@ $<
	$(if $(tools/gfx),\
		tools/gfx $(tools/gfx) -d1 -o $@ $@)
