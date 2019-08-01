
# https://extensions.libreoffice.org/extensions/esperanto-spellchecker-thesaurus-and-hyphenizer/1.01


all: libreoffice-listo.txt
clean: 
	rm -rf dictionaries libreoffice-listo.txt dict-eo.oxt

dictionaries:
	wget http://esperanto.mv.ru/Download/dict-eo.oxt
	unzip  dict-eo.oxt  dictionaries/*


libreoffice-listo.txt: dictionaries eo-skrablo.aff makefile
	unmunch dictionaries/eo.dic eo-skrablo.aff | grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]" | grep '½' | cut -d'/' -f1 | sed -e 's/½//g' | sort -u > libreoffice-listo.txt

#	unmunch dictionaries/eo.dic eo-skrablo.aff | grep -v '/'  | grep -v "'" | grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]"  | sort > libreoffice-listo.txt
	






