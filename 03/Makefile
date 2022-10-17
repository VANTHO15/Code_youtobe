.PHONY: rule1 rule2 rule3
 
var := "thonv"
var3 := "var3"


var1 = $(var)
var2 := $(var)
var3 ?= $(var)

var := "changed"


rule3:
	@echo "$(var1)"
	@echo "$(var2)"
	@echo "$(var3)"

rule1:
	echo "123"

rule2:
	@echo "123"

include a.mk