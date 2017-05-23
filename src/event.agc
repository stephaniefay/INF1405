global eventLst as eventStatus[]
global lastIndex

function createEvent (hasItem as String, itemList as itemStatus[], desc as String, options as String[], enemyHolder as enemyStatus[])
	
	newEvent as eventStatus
	
	newEvent.hasItem = hasItem
	newEvent.itemList = itemList
	newEvent.desc = desc
	newEvent.options = options
	newEvent.enemyHolder = enemyHolder
	
	if lastIndex
	
	eventLst.insert(newEvent)
	
endfunction

