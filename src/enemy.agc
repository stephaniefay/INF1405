global lastIndexEnemy as integer
global enemyLst as enemyStatus[]

function createEnemy (typeScene as integer[], absoluteHP as integer, modifier as integer, eventHolder as eventStatus[], name as String, desc as String, attacksDesc as attackStatus[], talksList as String[], deffense as integer)
	newEnemy as enemyStatus
	
	newEnemy.absoluteHP = absoluteHP
	newEnemy.attacksDesc = attacksDesc
	newEnemy.deffense = deffense
	newEnemy.desc = desc
	newEnemy.eventHolder = eventHolder
	newEnemy.modifier = modifier
	newEnemy.name = name
	newEnemy.remainingHP = absoluteHP
	newEnemy.talksList = talksList
	newEnemy.typeScene = typeScene
	
	newEnemy.index = lastIndexEnemy
	lastIndexEnemy = lastIndexEnemy + 1
	
	enemyLst.insert(newEnemy)

endfunction

function getEnemyName (index as integer)
endfunction enemyLst[index].name

function getEnemyHP (index as integer)
endfunction enemyLst[index].remainingHP

function getEnemyAttacks (index as integer)
endfunction enemyLst[index].attacksDesc

function getEnemyDeffense (index as integer)
endfunction enemyLst[index].deffense

function getEnemyDesc (index as integer)
endfunction enemyLst[index].desc

function getEnemyEvent (index as integer)
endfunction enemyLst[index].eventHolder

function getEnemyModifier (index as integer)
endfunction enemyLst[index].modifier

function getEnemyTalks (index as integer)
endfunction enemyLst[index].talksList

function getEnemyTalk (index as integer)
	
	newIndex = Random(0, enemyLst[index].talksList.length-1)

endfunction enemyLst[index].talksList[newIndex]

function getEnemiesFromScene (index as integer)
	
	newLst as integer[]
	
	for i = 0 to enemyLst.length
		for j = 0 to enemyLst[i].typeScene.length
			if enemyLst[i].typeScene[j] = index
				newLst.insert(enemyLst[i].index)
			endif
		next j
	next i
	
endfunction newLst

function getEnemyDamageDone (index as integer)
	
	attackIndex = random(0, enemyLst[index].attacksDesc.length-1)
	damage = enemyLst[index].modifier * getAttackDamage(enemyLst[index].attacksDesc[attackIndex])

endfunction damage

function getEnemyDamageTaken (index as integer, damage as integer)
	enemyLst[index].remainingHP = enemyLst[index].remainingHP - (enemyLst[index].deffense - damage)
endfunction

function getAllEnemies ()
endfunction enemyLst

function getEnemy (index as integer)
endfunction enemyLst[index]

function getRandomEnemy ()
	randomIndex = Random(0, lastIndexEnemy-1)
endfunction randomIndex
