


all: revo-listo.txt
clean: 
	rm -rf revo-listo.txt tmp*

revo:
	wget http://reta-vortaro.de/tgz/revoxml_2019-02-15.zip
	unzip revoxml_2019-02-15.zip

# prevodb  - mangler beskrivelse af installation
# https://github.com/bpeel/prevo


tmp/index-eo.txt: revo prevodb
	./prevodb/src/dump-all.sh revo tmp0
	# ./dump-index /tmp/prevo-db-dumpall/assets/indices/index-eo.bin | cut -d ' ' -f 1 |  grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]"  | grep -v '-' | sort -u > ../../../revo/revo-listo.txt
	mkdir -p tmp
	cp tmp0/index-eo.txt tmp/index-eo.txt

revo-listo.txt: tmp/index-eo.txt revo-aldonoj.txt revo-forprenoj.txt makefile
	cat tmp/index-eo.txt | grep -v '(' | tr ',' '\n' | sed -e 's/^\+ //g'| cut -d ' ' -f 1 | grep -v "[^abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]" |  grep '...' | cat revo-aldonoj.txt - | grep -v '#' | sort -u > tmp/revo-listo0.txt
	cat revo-forprenoj.txt | sort -u | comm -13 - tmp/revo-listo0.txt > revo-listo.txt







