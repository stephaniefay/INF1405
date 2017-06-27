#include "src/character.agc"
#include "src/ability.agc"
#include "src/event.agc"
#include "src/item.agc"
#include "src/enemy.agc"
#include "src/attacks.agc"

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
	
	itemsIndex as integer[]
	
	abilitiesIndex as integer[]
	
endType

Type abilityStatus
	
	name as String
	
	hp as integer
	
	deffense as integer
	
	attack as integer
	
	modifier as integer
	
	desc as String
	
	index as integer
	
endType

Type eventStatus
	
	eventAux as String[]
	
	itemQtd as integer
	
	itemList as itemStatus[]
	
	desc as String
	
	options as String[]
	
	enemyQtd as integer
	
	enemyHolder as enemyStatus[]
	
	canAppearScene as integer[]
	
	index as integer
	
	itemsIndex as integer[]
	
	enemiesIndex as integer[]
	
endType

Type itemStatus
	
	name as String
	
	ability as abilityStatus
	
	damage as integer
	
	desc as String
	
	eventHolder as eventStatus[]
	
	index as integer
	
	eventsIndex as integer[]
	
endType

Type enemyStatus
	
	typeScene as integer[]
	
	absoluteHP as integer
	
	modifier as integer
	
	remainingHP as integer
	
	eventHolder as eventStatus[]
	
	name as String
	
	desc as String
	
	attacksDesc as attackStatus[]
	
	talksList as String[]
	
	deffense as integer
	
	index as integer
	
	eventsIndex as integer[]
	
endType

Type attackStatus
	
	damage as integer
	
	name as String
	
endType

Type gameStructure
	
	allPlayers as playerStatus[]
	currentPlayer as playerStatus
	
	allAbilities as abilityStatus[]
	
	allItems as itemStatus[]
	
	allEvents as eventStatus[]
	
	allEnemies as enemyStatus[]

endtype
