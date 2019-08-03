all: zip
clean: 
	cd revo; make clean
	cd aspell; make clean
	cd libreoffice; make clean

zip:
	cd revo; make
	cd aspell; make
	cd libreoffice; make
	sort -u aspell/aspell-listo.txt libreoffice/libreoffice-listo.txt libreoffice/libreoffice-aldonoj.txt > esperanto-stavekontrol.txt
	zip -9 esperanto-ordlister.zip revo/revo-listo.txt esperanto-stavekontrol.txt






