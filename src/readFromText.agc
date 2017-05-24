
function getInfo () 
	
	if GetFileExists("infoGame/info.txt") = 0
		message("nao ha informacao para carregar, programa sera abortado")
		End
	endif
	
	file = OpenToRead("infoGame/info.txt")
	
	for i = 0 to 1
		r$ = ReadLine(file)
		select r$
			case "Characters"
			count = Val(ReadLine(file))

			charactersSelectLst as playerStatus[]
			for j = 0 to count-1
				
				absoluteHP as integer
				nameItem as String
				nameAbility as String
				hpAbility as integer
				deffenseAbility as integer				
				attackAbility as integer
				modifierAbility as integer
				descAbility as String
				ability as abilityStatus
				damageItem as integer
				descItem as String
				eventHolder as eventStatus[]
				itemList as itemStatus[]
				abilityList as abilityStatus[]
				nameCharacter as String
				descCharacter as String
				damage as integer
				nameAttack as String
				attackValue as attackStatus
				modifierCharacter as integer
				deffenseCharacter as integer
				
				absoluteHP = Val(ReadLine(file))
				nameItem = ReadLine(file)
				nameAbility = ReadLine(file)
				hpAbility = Val(ReadLine(file))
				deffenseAbility = Val(ReadLine(file))
				attackAbility = Val(ReadLine(file))
				modifierAbility = Val(ReadLine(file))
				descAbility = ReadLine(file)
				damageItem = Val(ReadLine(file))
				descItem = ReadLine(file)
				nameCharacter = ReadLine(file)
				descCharacter = ReadLine(file)
				damage = Val(ReadLine(file))
				nameAttack = ReadLine(file)
				modifierCharacter = Val(ReadLine(file))
				deffenseCharacter = Val(ReadLine(file))
				
				ability = createAbility(nameAbility, hpAbility, deffenseAbility, attackAbility, modifierAbility, descAbility)
				itemList.insert(createItem(nameItem, ability, damageItem, descItem, eventHolder)
				abilityList.insert(ability)
				attackValue = createAttack(damage, nameAttack)
				createPlayer(absoluteHP, itemList, abilityList, nameCharacter, descCharacter, attackValue, modifierCharacter, deffenseCharacter)
				
			next j
			endcase
		endselect
	next i
endfunction charactersSelectLst
	
