all: zip
clean: 
	cd revo; make clean
	cd aspell; make clean
	cd libreoffice; make clean

zip:
	cd revo; make
	cd aspell; make
	cd libreoffice; make
	cat aspell/aspell-listo.txt libreoffice/libreoffice-listo.txt | sort -u > esperanto-stavekontrol.txt
	zip -9 esperanto-ordlister.zip revo/revo-listo.txt esperanto-stavekontrol.txt






