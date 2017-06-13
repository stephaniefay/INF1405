global lastIndexAbility as integer
global abilityLst as abilityStatus[]

function createAbility (name as String, hp as integer, deffense as integer, attack as integer, modifier as integer, desc as String)

	ability as abilityStatus
	
	ability.name = name
	ability.attack = attack
	ability.deffense = deffense
	ability.desc = desc
	ability.hp = hp
	ability.modifier = modifier
	
	ability.index = lastIndexAbility
	lastIndexAbility = lastIndexAbility + 1
	
	abilityLst.insert(ability)
	
endfunction ability

function getAbilityName (ability as abilityStatus)
endfunction ability.name

function getAbilityAttack (ability as abilityStatus)
endfunction ability.attack

function getAbilityDeffense (ability as abilityStatus)
endfunction ability.deffense

function getbilityDesc (ability as abilityStatus)
endfunction ability.desc

function getAbilityHP (ability as abilityStatus)
endfunction ability.hp

function getAbilityModifier (ability as abilityStatus)
endfunction ability.modifier

function getAbility (index as integer)
endfunction abilityLst[index]

function getAllAbilities()
endfunction abilityLst
