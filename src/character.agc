global player as playerStatus

//Declare player

function createPlayerInUse (hp as integer, itemLst as itemStatus[], abilityLst as abilityStatus[], name as String, desc as String, modifier as integer, deffense as integer, attackSts as attackStatus)

	player.abilityList = abilityLst
	player.absoluteHP = hp
	player.remainingHP = hp
	player.attackValue = attackSts
	player.deffense = deffense
	player.desc = desc
	player.itemList = itemLst
	player.modifier = modifier
	player.name = name
	
endfunction player


//Functions to get info of player

function getNameCharacter ()
	
endfunction player.name

function getDescCharacter ()
	
endfunction player.desc

function damageCausedCharacter (dfs as integer) //deffense of the enemy who's taking the damage
	
endfunction (player.attackValue.damage * player.modifier) - dfs

//update info 

function updateCharacterHP (newHP as integer)
	
	player.remainingHP = player.remainingHP + newHP
		
endfunction

function updateCharacterDeffense (newDeffense as integer)
	
	player.deffense = player.deffense + newDeffense

endfunction

function updateCharacterAttack (newAttack as integer)
	
	player.attackValue.damage = player.attackValue.damage + newAttack

endfunction

function updateCharacterModifier (newModifier as integer)
	
	player.modifier = player.modifier + newModifier
	
endfunction

function updateCharacterAbility (newAbility as abilityStatus)
	
	for i = 0 to player.abilityList.length
		if getNameAbility(newAbility) = player.abilityList[i].name
			return
		endif
	next i
	
	updateCharacterAttack(getAttackAbility(newAbility))
	updateCharacterDeffense(getDeffenseAbility(newAbility))
	updateCharacterHP(getHPAbility(newAbility))
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
