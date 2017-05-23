global eventLst as eventStatus[]
global lastIndex as integer

function createEvent (hasItem as String, itemList as itemStatus[], desc as String, options as String[], enemyHolder as enemyStatus[])
	
	newEvent as eventStatus
	
	newEvent.hasItem = hasItem
	newEvent.itemList = itemList
	newEvent.desc = desc
	newEvent.options = options
	newEvent.enemyHolder = enemyHolder
	newEvent.index = lastIndex
	
	lastIndex = lastIndex+1
	
	eventLst.insert(newEvent)
	
endfunction

function getEventItems (index as integer)
endfunction eventLst[index].itemList

function getEventDesc (index as integer)
endfunction eventLst[index].desc

function getEventOptions (index as integer)
endfunction eventLst[index].options

function getTotalEvents ()
endfunction lastIndex
