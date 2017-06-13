global eventLst as eventStatus[]
global lastIndexEvent as integer

function createEvent (hasItem as String, itemQtd as integer, itemList as itemStatus[], desc as String, options as String[], enemyQtd as integer, enemyHolder as enemyStatus[], canAppearScene as integer[])
	
	newEvent as eventStatus
	
	newEvent.hasItem = hasItem
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
endfunction eventLst[index].itemList

function getEventDesc (index as integer)
endfunction eventLst[index].desc

function getEventOptions (index as integer)
endfunction eventLst[index].options

function getTotalEvents ()
endfunction lastIndexEvent

function getEvent(index as integer)
endfunction eventLst[index]

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
endfunction eventLst[index].index
