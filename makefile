all:
	mkdir -p ./tmp/bootloader/res
	cp ./assets/bootlogo.bmp ./tmp/bootloader/bootlogo.bmp
	cp ./assets/hekate_ipl.ini ./tmp/bootloader/hekate_ipl.ini
	cp ./assets/kosmos.bmp ./tmp/bootloader/res/kosmos.bmp
	cd ./tmp/ && zip -r ../kosmos_reborn_assets.zip .
	rm -rf ./tmp
