
function getInfo () 
	
	if GetFileExists("infoGame/info.txt") = 0
		message("nao ha informacao para carregar, programa sera abortado")
		End
	endif
	
	file = OpenToRead("infoGame/info.txt")
	
	for i = 0 to 4
		r$ = ReadLine(file)
		select r$
			
			case "=============================================="
				dec i
			endcase
						
			case "Characters"
			count = Val(ReadLine(file))

			charactersSelectLst as playerStatus[]
			for j = 0 to count-1
				
				absoluteHP as integer
				
				indexItemCharacter as integer
				indexAbilityCharacter as integer
				eventHolder as eventStatus[]
				itemList as itemStatus[]
				abilityList as abilityStatus[]
				nameCharacter as String
				descCharacter as String
				damage as integer
				nameAttack as String
				attackValue as attackStatus
				modifierCharacter as integer
				deffenseCharacter as integer
				
				absoluteHP = Val(ReadLine(file))
				indexItemCharacter = Val(ReadLine(file))
				indexAbilityCharacter = Val(ReadLine(file))
				nameCharacter = ReadLine(file)
				descCharacter = ReadLine(file)
				damage = Val(ReadLine(file))
				nameAttack = ReadLine(file)
				modifierCharacter = Val(ReadLine(file))
				deffenseCharacter = Val(ReadLine(file))
				
				if count > 1 and j < count-1
					offset$ = ReadLine(file)
				endif
				
				if indexItemCharacter > -1
					itemList.insert(getItem(indexItemCharacter-1))
				endif
				if indexAbilityCharacter > -1
					abilityList.insert(getAbility(indexAbilityCharacter-1))
				endif
				attackValue = createAttack(damage, nameAttack)
				
				newPlayer as playerStatus
				
				newPlayer = createPlayer(absoluteHP, itemList, abilityList, nameCharacter, descCharacter, attackValue, modifierCharacter, deffenseCharacter)
				charactersSelectLst.insert(newPlayer)
			next j
			endcase
			
			case "Abilities"
			count = Val(ReadLine(file))
			
			for j = 0 to count-1
				
				nameAbility as String
				hpAbility as integer
				deffenseAbility as integer
				attackAbility as integer
				modifierAbility as integer
				descAbility as String
			
				nameAbility = ReadLine(file)
				hpAbility = Val(ReadLine(file))
				deffenseAbility = Val(ReadLine(file))
				attackAbility = Val(ReadLine(file))
				modifierAbility = Val(ReadLine(file))
				descAbility = ReadLine(file)
				
				if count > 1 and j < count-1
					offset$ = ReadLine(file)
				endif
				
				createAbility(nameAbility, hpAbility, deffenseAbility, attackAbility, modifierAbility, descAbility)
			
			next j
			
			endcase
			
			case "Items"
			count = Val(ReadLine(file))
			
			for j = 0 to count-1
				
				nameItem as String
				indexAbilityItem as integer
				abilityItem as abilityStatus
				damageItem as integer
				descItem as String
				indexEventItem as integer
				eventHolderItem as eventStatus[]
				
				nameItem = ReadLine(file)
				indexAbilityItem = Val(ReadLine(file))
				if indexAbilityItem > -1
					abilityItem = getAbility(indexAbilityItem-1)
				endif
				damageItem = Val(ReadLine(file))
				descItem = ReadLine(file)
				indexEventItem = Val(ReadLine(file))
				if indexEventItem > -1
					eventHolderItem.insert(getEvent(indexEventItem-1))
				endif
				
				if count > 1 and j < count-1
					offset$ = ReadLine(file)
				endif
				
				createItem(nameItem, abilityItem, damageItem, descItem, eventHolderItem)
				
			next j
			
			endcase
			
			case "Events"
			count = Val(ReadLine(file))
			
			for j = 0 to count-1
					
				hasItem as String
				qtdItem as integer
				itemListEvent as itemStatus[]
				desc as String
				options as String[]
				qtdEnemy as integer
				enemyHolder as enemyStatus[]
				canAppearScene as integer[]
				
				optionsAux = options.length
				
				for k = 0 to optionsAux
					options.remove()
				next k
				
				hasItem = ReadLine(file)
				qtdItem = Val(ReadLine(file))
				desc = ReadLine(file)
				
				count2 = Val(ReadLine(file))-1
				
				for k = 0 to count2
					options.insert(ReadLine(file))
				next k
				
				qtdEnemy = Val(ReadLine(file))

				count2 = Val(ReadLine(file))-1

				for k = 0 to count2
					canAppearScene.insert(Val(ReadLine(file)))
				next k
				
				if count > 1 and j < count-1
					offset$ = ReadLine(file)
				endif
				
				createEvent(hasItem, qtdItem, itemListEvent, desc, options, qtdEnemy, enemyHolder, canAppearScene)
				
			next j
			
			endcase
			
			case "Enemies"
				
				count = Val(ReadLine(file))
				for j = 0 to count-1
					
					typeScene as integer[]
					absoluteHPEnemy as integer
					modifierEnemy as integer
					indexEventEnemy as integer
					eventHolderEnemy as eventStatus[]
					nameEnemy as String
					descEnemy as String
					damageAttackEnemy as integer
					descAttackEnemy as String
					attacksDescEnemy as attackStatus[]
					talksListEnemy as String[]
					deffenseEnemy as integer
					
					count2 = Val(ReadLine(file))-1
					
					for k = 0 to count2
						typeScene.insert(Val(ReadLine(file)))
					next k
					
					absoluteHPEnemy = Val(ReadLine(file))
					modifierEnemy = Val(ReadLine(file))
					indexEventEnemy = Val(ReadLine(file))
					
					if indexEventEnemy > -1
						eventHolder.insert(getEvent(indexEventEnemy-1))
					endif
					
					nameEnemy = ReadLine(file)
					descEnemy = ReadLine(file)
					
					count2 = Val(ReadLine(file))-1
					
					for k = 0 to count2
						attacksDescEnemy.insert(createAttack(Val(ReadLine(file)),ReadLine(file)))
					next k

					count2 = Val(ReadLine(file))-1
					
					for k = 0 to count2
						talksListEnemy.insert(ReadLine(file))
					next k
					
					deffenseEnemy = Val(ReadLine(file))
					
					if count > 1 and j < count-1
						offset$ = ReadLine(file)
					endif
					
					createEnemy(typeScene, absoluteHPEnemy, modifierEnemy, eventHolderEnemy, nameEnemy, descEnemy, attacksDescEnemy, talksListEnemy, deffenseEnemy)					
					
				next j
			endcase
			
		endselect
	next i

	updateAllEnemiesEvent()
	updateAllItemsEvents()	

	completeGame as gameStructure
	completeGame.allAbilities = getAllAbilities()
	completeGame.allEnemies = getAllEnemies()
	completeGame.allEvents = getAllEvents()
	completeGame.allItems = getAllItems()
	completeGame.allPlayers = charactersSelectLst

	fileTemp = OpenToWrite("raw:" + GetDocumentsPath() + "\A New Adventure\media\saves\mostRecent.txt", 0)
	CloseFile(fileTemp)

endfunction completeGame
