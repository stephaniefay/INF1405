function createAbility (name as String, hp as integer, deffense as integer, attack as integer, modifier as integer, desc as String)

	ability as abilityStatus
	
	ability.name = name
	ability.attack = attack
	ability.deffense = deffense
	ability.desc = desc
	ability.hp = hp
	ability.modifier = modifier
	
endfunction ability

function getNameAbility (ability as abilityStatus)
endfunction ability.name

function getAttackAbility (ability as abilityStatus)
endfunction ability.attack

function getDeffenseAbility (ability as abilityStatus)
endfunction ability.deffense

function getDescAbility (ability as abilityStatus)
endfunction ability.desc

function getHPAbility (ability as abilityStatus)
endfunction ability.hp

function getModifierAbility (ability as abilityStatus)
endfunction ability.modifier
