#include "src/character.agc"
#include "src/ability.agc"
#include "src/event.agc"

Type playerStatus
	
	absoluteHP as integer
	
	remainingHP as integer
	
	itemList as itemStatus[]
	
	abilityList as abilityStatus[]
	
	name as String
	
	desc as String
	
	attackValue as attackStatus
	
	modifier as integer
	
	deffense as integer
	
endType

Type abilityStatus
	
	name as String
	
	hp as integer
	
	deffense as integer
	
	attack as integer
	
	modifier as integer
	
	desc as String
	
endType

Type eventStatus
	
	hasItem as String
	
	itemList as itemStatus[]
	
	desc as String
	
	options as String[]
	
	enemyHolder as enemyStatus[]
	
	index as integer
	
endType

Type itemStatus
	
	name as String
	
	ability as abilityStatus
	
	damage as integer
	
	desc as String
	
	eventHolder as eventStatus[]
	
endType

Type enemyStatus
	
	typeScene as integer[]
	
	absoluteHP as integer
	
	modifier as integer
	
	remainingHP as integer
	
	eventHolder as eventStatus[]
	
	name as String
	
	desc as String[]
	
	attacksDesc as attackStatus[]
	
	talksList as String[]
	
	deffense as integer
	
endType

Type attackStatus
	
	damage as integer
	
	ignoresDeffense as String
	
endType
