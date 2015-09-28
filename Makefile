SERVICES  ?= $(wildcard gogol-*)
LIBRARIES ?= core gogol $(SERVICES)
FORWARD   := sdist upload candidate

build:
	stack build

clean:
	stack clean

define forward
$1: $$(addprefix $1-,$$(LIBRARIES))

$1-%:
	@make -C $$* $1

.PHONY: $1
endef

$(foreach c,$(FORWARD),$(eval $(call forward, $c)))

.PHONY: $(LIBRARIES)

gogol:
	stack build gogol

core:
	stack build gogol-core

$(SERVICES):
	stack build $@
