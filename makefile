all: granda-listo
clean: 
	cd revo; make clean
	cd aspell; make clean
	cd libreoffice; make clean

granda-listo:
	cd revo; make
	cd aspell; make
	cd libreoffice; make
	sort -u aspell/aspell-listo.txt libreoffice/libreoffice-listo.txt libreoffice/libreoffice-aldonoj.txt revo/revo-listo.txt > granda-listo.txt
	
publikigo: granda-listo
	# zip -9 esperanto-ordlister.zip revo/revo-listo.txt granda-listo.txt
	# rm -f vortlistoj.7z
	7z a vortlistoj.7z revo/revo-listo.txt granda-listo.txt
	
esploro:
	wc -l revo/revo-listo.txt aspell/aspell-listo.txt libreoffice/libreoffice-listo.txt libreoffice/libreoffice-aldonoj.txt granda-listo.txt
	#echo 'Tiom da vortoj estas en ReVo, sed ne en la literumkontroloj'
	#comm -13 esperanto-stavekontrol.txt revo/revo-listo.txt  | wc



