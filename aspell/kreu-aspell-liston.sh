
# Fonto
# https://github.com/argilo/anagram/blob/fb2fd999747c7e243b9948bcf94252736155c181/Makefile#L22-L28

aspell -d eo dump master | 
	aspell -l eo expand | 
	tr ' ' '\n' | 
	# nur minusklaj
	grep "^[abcĉdefgĝhĥijĵklmnoprsŝtuŭvz]"  |
	# forprenu senfinaĵajn vortformojn kiel dom'
	#grep -v "'$" |       
	# permesu senfinaĵajn vortformojn kiel dom'
	sed -e "s/'//g" |       
	sort -u

