
# Fonto: https://extensions.libreoffice.org/extensions/esperanto-spellchecker-thesaurus-and-hyphenizer/1.01
# kiu direktas al http://esperanto.mv.ru/Download/  - sed la enhavo (eo.dic kaj eo.aff) ŝajnas esti de 2010
#
# Alia fonto estus https://github.com/wooorm/dictionaries/tree/master/dictionaries/eo sed ĝi ne ŝajnas esti pli nova

all: libreoffice-listo.txt
clean: 
	rm -rf dictionaries libreoffice-listo.txt dict-eo.oxt

dictionaries/eo.dic:
	wget http://esperanto.mv.ru/Download/dict-eo.oxt
	unzip  dict-eo.oxt  dictionaries/*


libreoffice-listo.txt: dictionaries/eo.dic eo-skrablo.aff makefile
	unmunch dictionaries/eo.dic eo-skrablo.aff | grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]" | grep '½' | cut -d'/' -f1 | sed -e 's/½//g' | sort -u > libreoffice-listo.txt
	unmunch eo-aldonoj.dic eo-skrablo.aff | grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]" | grep '½' | cut -d'/' -f1 | sed -e 's/½//g' | sort -u > libreoffice-aldonoj.txt


#	unmunch dictionaries/eo.dic eo-skrablo.aff | grep -v '/'  | grep -v "'" | grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]"  | sort > libreoffice-listo.txt
	






