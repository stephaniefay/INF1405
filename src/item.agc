global lastIndexItem as integer
global itemLst as itemStatus[]

function createItem (name as String, ability as abilityStatus, damage as integer, desc as String, eventHolder as eventStatus[])
	
	newItem as itemStatus
	
	newItem.name = name
	newItem.ability = ability
	newItem.damage = damage
	newItem.desc = desc
	newItem.eventHolder = eventHolder
	
	newItem.index = lastIndexItem
	lastIndexItem = lastIndexItem+1
	
	itemLst.insert(newItem)
	
endfunction newItem

function getItemName (index as integer)	
endfunction itemLst[index].name

function getItemAbility (index as integer)
endfunction itemLst[index].ability

function getItemDamage (index as integer)
endfunction itemLst[index].damage

function getItemDesc (index as integer)
endfunction itemLst[index].desc

function getItemEvents (index as integer)
endfunction itemLst[index].eventHolder

function getRandomItem ()
	index = Random(0, lastIndexItem-1)
endfunction index

function getItem (index as integer)
endfunction itemLst[index]

function getAllItems ()
endfunction itemLst

function getItemNameByItem (newItem as itemStatus)
endfunction newItem.name

function getItemDescByItem (newItem as itemStatus)
endfunction newItem.desc

function getItemIndexByItem (newItem as itemStatus)
endfunction newItem.index

function insertItemLstofIndexes (index as integer, lst as integer[])

	itemLst[index].eventsIndex = lst

endfunction

function updatedIndexesItems ()
	
	for k = 0 to itemLst.length
		for j = 0 to itemLst[k].eventsIndex.length
			itemLst[k].eventHolder.insert(getEvent(itemLst[k].eventsIndex[j]))
		next j
	next k

endfunction
