all:
	mkdir -p ./tmp/bootloader/res
	rm -rf ./kosmos_reborn_assets.zip
	cp ./assets/bootlogo.bmp ./tmp/bootloader/bootlogo.bmp
	cp ./assets/hekate_ipl.ini ./tmp/bootloader/hekate_ipl.ini
	cp ./assets/icon_atmosphere.bmp ./tmp/bootloader/res/icon_atmosphere.bmp
	cp ./assets/icon_kosmos.bmp ./tmp/bootloader/res/icon_kosmos.bmp
	cp ./assets/icon_switch.bmp ./tmp/bootloader/res/icon_switch.bmp
	cd ./tmp/ && zip -r ../kosmos_reborn_assets.zip .
	rm -rf ./tmp
