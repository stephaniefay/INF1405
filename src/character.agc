global player as playerStatus

//Declare player

function createPlayerInUse (hp as integer, itemLst as itemStatus[], abilityLst as abilityStatus[], name as String, desc as String, modifier as integer, deffense as integer, attackSts as attackStatus)

	player.absoluteHP = hp
	player.remainingHP = hp
	player.attackValue = attackSts
	player.deffense = deffense
	player.desc = desc
	player.modifier = modifier
	player.name = name

	for i = 0 to abilityLst.length
		updateCharacterAbility(abilityLst[i])
	next i
	
	for j = 0 to itemLst.length
		updateCharacterItem(itemLst[i])
	next j
	
endfunction player

function createPlayer (absoluteHP as integer, itemList as itemStatus[], abilityList as abilityStatus[], name as String, desc as String, attackValue as attackStatus, modifier as integer, deffense as integer)
	
	newCharacter as playerStatus

	newCharacter.absoluteHP = absoluteHP
	newCharacter.remainingHP = absoluteHP
	newCharacter.attackValue = attackValue
	newCharacter.deffense = deffense
	newCharacter.desc = desc
	newCharacter.modifier = modifier
	newCharacter.name = name
	newCharacter.abilityList = abilityList
	newCharacter.itemList = itemList

	for i = 0 to abilityList.length
		newCharacter.absoluteHP = newCharacter.absoluteHP + getAbilityHP(abilityList[i])
		newCharacter.remainingHP = newCharacter.remainingHP + getAbilityHP(abilityList[i])
		newCharacter.deffense = newCharacter.deffense + getAbilityDeffense(abilityList[i])
		newCharacter.modifier = newCharacter.modifier + getAbilityModifier(abilityList[i])
		newAttack as attackStatus
		newAttack = createAttack(getAttackDamage(newCharacter.attackValue) + getAbilityAttack(abilityList[i]), getAttackName(newCharacter.attackValue))
		newCharacter.attackValue = newAttack
	next i
	
	for j = 0 to itemList.length
		newCharacter.remainingHP = newCharacter.remainingHP + getItemDamage(itemList[i].index)
	next j

endfunction newCharacter


//Functions to get info of player

function getCharacterName ()
	
endfunction player.name

function getCharacterDesc ()
	
endfunction player.desc

function getCharacterDamageDealt ()
	
endfunction (player.attackValue.damage * player.modifier)

//update info 

function updateCharacterHP (newHP as integer)
	
	player.absoluteHP = player.absoluteHP + newHP
	player.remainingHP = player.remainingHP + newHP
	
endfunction

function updateCharacterDeffense (newDeffense as integer)
	
	player.deffense = player.deffense + newDeffense

endfunction

function updateCharacterAttack (attackValue as integer)
	
	newAttack as attackStatus
	newAttack = createAttack(getAttackDamage(player.attackValue) + attackValue, getAttackName(player.attackValue))
	player.attackValue = newAttack

endfunction

function updateCharacterModifier (newModifier as integer)
	
	player.modifier = player.modifier + newModifier
	
endfunction

function updateCharacterAbility (newAbility as abilityStatus)
	
	for i = 0 to player.abilityList.length
		if getAbilityName(newAbility) = player.abilityList[i].name
			return
		endif
	next i
	
	updateCharacterAttack(getAbilityAttack(newAbility))
	updateCharacterModifier(getAbilityModifier(newAbility))
	updateCharacterDeffense(getAbilityDeffense(newAbility))
	updateCharacterHP(getAbilityHP(newAbility))
	player.abilityList.insert(newAbility)

endfunction


function updateCharacterItem (newItem as itemStatus)

	for i = 0 to player.itemList.length
		if newItem.name = player.itemList[i].name
			return
		endif
	next i

	updateCharacterHP(newItem.damage)
	player.itemList.insert(newItem)

endfunction	
