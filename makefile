TARGET	:= kosmos_reborn_assets
BUILD	:= build

all : clean $(TARGET).zip

clean: 
	@rm -rf ./$(TARGET).zip
	@rm -rf ./$(BUILD)
	@echo Cleaned previous build...

$(TARGET).zip : dirs images configs
	@cd ./$(BUILD) && zip -rq ../$@ .
	@echo Compressed assets for distribution - $@

dirs:
	@mkdir -p ./$(BUILD)/bootloader/res
	@mkdir -p ./$(BUILD)/atmosphere/config
	@mkdir -p ./$(BUILD)/atmosphere/hosts
	@echo Created directory structure...

images:
	@cp ./assets/bootlogo.bmp ./$(BUILD)/bootloader/bootlogo.bmp
	@cp ./assets/icon_atmosphere.bmp ./$(BUILD)/bootloader/res/icon_atmosphere.bmp
	@cp ./assets/icon_kosmos.bmp ./$(BUILD)/bootloader/res/icon_kosmos.bmp
	@cp ./assets/icon_switch.bmp ./$(BUILD)/bootloader/res/icon_switch.bmp
	@echo Copied image assets...

configs:
	@cp ./assets/BCT.ini ./$(BUILD)/atmosphere/config/BCT.ini
	@cp ./assets/dns.mitm.txt ./$(BUILD)/atmosphere/hosts/emummc.txt
	@cp ./assets/dns.mitm.txt ./$(BUILD)/atmosphere/hosts/sysmmc.txt
	@cp ./assets/hekate_ipl.ini ./$(BUILD)/bootloader/hekate_ipl.ini
	@echo Copied config assets...
