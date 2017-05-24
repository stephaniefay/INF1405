#include "src/typesDefinitions.agc"
#include "src/readFromText.agc"

function start () 
	do
		characters as playerStatus[]
		characters = getInfo()

		for i = 0 to characters.length
			print(characters[i].absoluteHP)
			print(getAttackDamage(characters[i].attackValue))
			print(getAttackName(characters[i].attackValue))
			print(characters[i].deffense)
			print(characters[i].desc)
			print(characters[i].modifier)
			print(characters[i].name)
		next i
		Sync()
	loop
endfunction
