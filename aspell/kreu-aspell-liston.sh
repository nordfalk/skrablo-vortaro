
# Fonto
# https://github.com/argilo/anagram/blob/fb2fd999747c7e243b9948bcf94252736155c181/Makefile#L22-L28

# Aspell ŝajnas estis de 2008 - vidu ftp://ftp.gnu.org/gnu/aspell/dict/eo/

aspell -d eo dump master | 
	aspell -l eo expand | 
	tr ' ' '\n' | 
	# nur minusklaj
	# Forprenu unuliterajn vortojn
	grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz][abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]"  |
	# forprenu senfinaĵajn vortformojn kiel dom'
	#grep -v "'$" |       
	# permesu senfinaĵajn vortformojn kiel dom'
	sed -e "s/'//g" |       
	# neniuj streketoj
	grep -v "-" |       
	sort -u

