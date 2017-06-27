global eventLst as eventStatus[]
global lastIndexEvent as integer

global first as integer[]
global second as integer[]
global third as integer[]

function createEvent (eventAux as String[], itemQtd as integer, itemList as itemStatus[], desc as String, options as String[], enemyQtd as integer, enemyHolder as enemyStatus[], canAppearScene as integer[])
	
	newEvent as eventStatus
	
	newEvent.eventAux = eventAux  //[0] is for items [1] is for enemies
	newEvent.itemQtd = itemQtd
	newEvent.itemList = itemList
	newEvent.desc = desc
	newEvent.options = options
	newEvent.enemyQtd = enemyQtd
	newEvent.enemyHolder = enemyHolder
	newEvent.canAppearScene = canAppearScene
	newEvent.index = lastIndexEvent
	
	lastIndexEvent = lastIndexEvent+1
	
	eventLst.insert(newEvent)
	
endfunction

function updateAllItemsEvents()
	for i = 0 to lastIndexEvent-1
		count = eventLst[i].itemQtd - 1
		if count > -1
			for j = 0 to count
				eventLst[i].itemList.insert(getItem(getRandomItem()))
			next j
		endif
	next i
endfunction

function updateAllEnemiesEvent()
	for i = 0 to lastIndexEvent-1
		count = eventLst[i].enemyQtd-1
		if count > -1
			for j = 0 to count
				eventLst[i].enemyHolder.insert(GetEnemy(getRandomEnemy()))
			next j
		endif
	next i
endfunction

function getEventItems (index as integer)
	error as itemStatus[]
	for newIndex = 0 to eventLst.length
		if eventLst[newIndex].index = index
			exitfunction eventLst[newIndex].itemList
		endif
	next newIndex
endfunction error

function getEventDesc (index as integer)
	for newIndex = 0 to eventLst.length
		if eventLst[newIndex].index = index
			exitfunction eventLst[newIndex].desc
		endif
	next newIndex
endfunction "error"

function getEventOptions (index as integer)
	error as String[]
	for newIndex = 0 to eventLst.length
		if eventLst[newIndex].index = index
			exitfunction eventLst[newIndex].options
		endif
	next newIndex
endfunction error

function getTotalEvents ()
endfunction lastIndexEvent

function getEvent(index as integer)
	error as eventStatus
	for newIndex = 0 to eventLst.length
		if eventLst[newIndex].index = index
			exitfunction eventLst[newIndex]
		endif
	next newIndex
endfunction error

function getAllEvents ()
endfunction eventLst

function removeEvent (index as integer)
	for i = index to eventLst.length
		if not i = eventLst.length
			eventLst[i] = eventLst[i+1]
		endif
	next i
	
	eventLst.remove()
endfunction

function getEventIndex (index as integer)
	for newIndex = 0 to eventLst.length
		if eventLst[newIndex].index = index
			exitfunction newIndex
		endif
	next newIndex
endfunction -1

function getEventAux (index as integer)
	error as String[]
	for newIndex = 0 to eventLst.length
		if eventLst[newIndex].index = index
			exitfunction eventLst[newIndex].eventAux
		endif
	next newIndex
endfunction error

function getEventEnemies (index as integer)
	error as enemyStatus[]
	for newIndex = 0 to eventLst.length
		if eventLst[newIndex].index = index
			exitfunction eventLst[newIndex].enemyHolder
		endif
	next newIndex
endfunction error

function getEventScene (index as integer)
	error as Integer[]
	for newIndex = 0 to eventLst.length
		if eventLst[newIndex].index = index
			exitfunction eventLst[newIndex].canAppearScene
		endif
	next newIndex
endfunction error

function organizeEventByScene ()
	
	for index = 0 to eventLst.length
		for count = 0 to eventLst[index].canAppearScene.length
			if eventLst[index].canAppearScene[count] = 1
				first.insert(eventLst[index].index)
			endif
			
			if eventLst[index].canAppearScene[count] = 2
				second.insert(eventLst[index].index)
			endif
			
			if eventLst[index].canAppearScene[count] = 3
				third.insert(eventLst[index].index)
			endif
		next count
	next index
endfunction

function getEventByScenes (index as integer)
	error as integer[]
	select index
		
		case 1
			exitfunction first
		endcase
		
		case 2
			exitfunction second
		endcase
		
		case 3
			exitfunction third
		endcase
		
	endselect
endfunction error

function updateEventsByScene ()
	while first.length > -1
		first.remove()
	endwhile
	
	while second.length > -1
		second.remove()
	endwhile
	
	while third.length > -1
		third.remove()
	endwhile
	
	organizeEventByScene()
endfunction
	
function insertEventIndexes (index as integer, items as integer[], enemies as integer[])
	
	eventLst[index].enemiesIndex = enemies
	eventLst[index].itemsIndex = items

endfunction
	
