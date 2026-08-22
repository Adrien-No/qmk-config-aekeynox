##
# Selenium Adri keymap
#
# @file Makefile
# @version 0.1

QMK_HOME := $(HOME)/nextcloud/info/config/qmk_firmware
KEYBOARD := crkbd/rev4_1/standard
KEYMAP := selenium_adri
LAYOUT := LAYOUT_split_3x6_3_ex2
SOURCE := ./selenium-adri

.PHONY: generate compile flash

generate:
	./generator.sh \
		-src $(SOURCE) \
		-kb $(KEYBOARD) \
		-layout $(LAYOUT) \
		-name $(KEYMAP) \
		--copy

compile:
	cd $(QMK_HOME) && qmk compile \
		-kb $(KEYBOARD) \
		-km $(KEYMAP)

flash:
	cd $(QMK_HOME) && qmk flash \
		-kb $(KEYBOARD) \
		-km $(KEYMAP)

# end
