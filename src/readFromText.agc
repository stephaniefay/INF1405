
function getInfo () 
	
	if GetFileExists("infoGame/info.txt") = 0
		message("nao ha informacao para carregar, programa sera abortado")
		End
	endif
	
	file = OpenToRead("infoGame/info.txt")
	
	while FileEOF(file) = 0
		r$ = ReadLine(file)
		
		select r$
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
				
				while eventHolderItem.length > -1
					eventHolderItem.remove()
				endwhile
				
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
					
				qtdItem as integer
				itemListEvent as itemStatus[]
				desc as String
				options as String[]
				qtdEnemy as integer
				enemyHolder as enemyStatus[]
				canAppearScene as integer[]
				eventAux as String[]
				
				while options.length > -1
					options.remove()
				endwhile
				
				qtdItem = Val(ReadLine(file))
				desc = ReadLine(file)
				
				count2 = Val(ReadLine(file))-1
				
				for k = 0 to count2
					options.insert(ReadLine(file))
				next k
				
				if eventAux.length > -1
					eventAux.remove()
					eventAux.remove()
				endif
				
				temp$ = ReadLine(file)
				
				eventAux.insert(mid(temp$,1, 1))
				eventAux.insert(mid(temp$,3, 1))
				
				qtdEnemy = Val(ReadLine(file))

				count2 = Val(ReadLine(file))-1

				while canAppearScene.length > -1
					canAppearScene.remove()
				endwhile

				for k = 0 to count2
					canAppearScene.insert(Val(ReadLine(file)))
				next k
				
				if count > 1 and j < count-1
					offset$ = ReadLine(file)
				endif
				
				createEvent(eventAux, qtdItem, itemListEvent, desc, options, qtdEnemy, enemyHolder, canAppearScene)
				
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
					
					while typeScene.length > -1
						typeScene.remove()
					endwhile
					
					for k = 0 to count2
						typeScene.insert(Val(ReadLine(file)))
					next k
					
					absoluteHPEnemy = Val(ReadLine(file))
					modifierEnemy = Val(ReadLine(file))
					indexEventEnemy = Val(ReadLine(file))
					
					while eventHolder.length > -1
						eventHolder.remove()
					endwhile
					
					if indexEventEnemy > -1
						eventHolder.insert(getEvent(indexEventEnemy-1))
					endif
					
					nameEnemy = ReadLine(file)
					descEnemy = ReadLine(file)
					
					count2 = Val(ReadLine(file))-1
					
					while attacksDescEnemy.length > -1
						attacksDescEnemy.remove()
					endwhile
					
					for k = 0 to count2
						attacksDescEnemy.insert(createAttack(Val(ReadLine(file)),ReadLine(file)))
					next k

					count2 = Val(ReadLine(file))-1
					
					while talksListEnemy.length > -1
						talksListEnemy.remove()
					endwhile
					
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

	endwhile

	updateAllEnemiesEvent()
	updateAllItemsEvents()	
	organizeEventByScene()

	completeGame as gameStructure
	completeGame.allAbilities = getAllAbilities()
	completeGame.allEnemies = getAllEnemies()
	completeGame.allEvents = getAllEvents()
	completeGame.allItems = getAllItems()
	completeGame.allPlayers = charactersSelectLst

endfunction completeGame

function ChooseFile()
	
	gameInfos as gameStructure
	
	ret$ = ChooseRawFile("*.txt")
	if ret$=""
		exitfunction gameInfos
	else
		file = OpenToRead("saves\" + ret$)

		players as playerStatus[]
		tempIndexes1 as integer[]
		tempIndexes2 as integer[]
		
		r$ = ""
		k = 0
		while not r$ = "=============================================="
			
			hpCharacter as integer
			nameCharacter as String
			descCharacter as String
			modCharacter as integer
			attackValueCharacter as integer
			attackNameCharacter as String
			deffenseCharacter as integer
			itemsCharacter as itemStatus[]
			abilityCharacter as abilityStatus[]
			
			if r$ = ""
				hpCharacter = Val(ReadLine(file))
			else
				hpCharacter = Val(r$)
			endif
			
			while tempIndexes1.length > -1
				tempIndexes1.remove()
			endwhile
			
			temp$ = ReadLine(file)
			while FindString(temp$, "item:") > 0
				temp$ = StripString(temp$, "item: ")
				tempIndexes1.insert(Val(temp$))
				temp$ = ReadLine(file)
			endwhile
			
			while tempIndexes2.length > -1
				tempIndexes2.remove()
			endwhile
			
			while FindString(temp$, "ability:") > 0
				temp$ = StripString(temp$, "ability: ")
				tempIndexes2.insert(Val(temp$))
				temp$ = ReadLine(file)
			endwhile
			
			nameCharacter = temp$
			descCharacter = ReadLine(file)
			modCharacter = Val(ReadLine(file))
			attackValueCharacter = Val(ReadLine(file))
			attackNameCharacter = ReadLine(file)
			deffenseCharacter = Val(ReadLine(file))
			
			players.insert(createPlayer(hpCharacter, itemsCharacter, abilityCharacter, nameCharacter, descCharacter, createAttack(attackValueCharacter, attackNameCharacter), modCharacter, deffenseCharacter))
			players[k].abilitiesIndex = tempIndexes2
			players[k].itemsIndex = tempIndexes1
			k = k + 1
			
			r$ = ReadLine(file)
			
		endwhile
		
		r$ = ""
		while not r$ = "=============================================="
			 
			 nameAbility as String
			 hpAbility as integer
			 deffenseAbility as integer
			 attackAbility as integer
			 modAbility as integer
			 descAbility as String
			 indexAbility as integer
			 
			 if r$ = ""
				nameAbility = ReadLine(file)
			 else
				nameAbility = r$
			 endif
			 
			 hpAbility = Val(ReadLine(file))
			 deffenseAbility = Val(ReadLine(file))
			 attackAbility = Val(ReadLine(file))
			 modAbility = Val(ReadLine(file))
			 descAbility = ReadLine(file)
			 indexAbility = Val(ReadLine(file))
			 
			 createAbility(nameAbility, hpAbility, deffenseAbility, attackAbility, modAbility, descAbility)
			 r$ = ReadLine(file)
			 
		endwhile
			
		r$ = ""
		while not r$ = "=============================================="
			
			nameItem as String
			abilityIndexItem as integer
			damageItem as integer
			descItem as String
			eventHolderItem as eventStatus[]
			indexItem as integer

			if r$ = ""
				nameItem = ReadLine(file)
			else
				nameItem = r$
			endif

			nameItem = ReadLine(file)
			abilityIndexItem = Val(ReadLine(file))
			damageItem = Val(ReadLine(file))
			descItem = ReadLine(file)
			
			while tempIndexes1.length > -1
				tempIndexes1.remove()
			endwhile
			
			temp$ = ReadLine(file)
			while FindString(temp$, "event:") > 0
				temp$ = StripString(temp$, "event: ")
				tempIndexes1.insert(Val(temp$))
				temp$ = ReadLine(file)
			endwhile
			
			indexItem = Val(temp$)
			
			createItem(nameItem, getAbility(abilityIndexItem), damageItem, descAbility, eventHolderItem)
			insertItemLstofIndexes(indexItem, tempIndexes1)
			r$ = ReadLine(file)
			
		endwhile
		
		r$ = ""
		while not r$ = "=============================================="
			
			auxEvent as String[]
			itemsEvent as itemStatus[]
			descEvent as String
			optionsEvent as String[]
			enemiesEvent as enemyStatus[]
			scenesEvent as integer[]
			indexEvent as integer
			
			while auxEvent.length > -1
				auxEvent.remove()
			endwhile
			
			if r$ = ""
				temp$ = ReadLine(file)
			else
				temp$ = r$
			endif
			
			auxEvent.insert(mid(temp$,1, 1))
			auxEvent.insert(mid(temp$,3, 1))
			
			while tempIndexes1.length > -1
				tempIndexes1.remove()
			endwhile
			
			temp$ = ReadLine(file)
			while FindString(temp$, "item:") > 0
				temp$ = StripString(temp$, "item: ")
				tempIndexes1.insert(Val(temp$))
				temp$ = ReadLine(file)	
			endwhile
		
			descEvent = temp$
			
			while optionsEvent.length > -1
				optionsEvent.remove()
			endwhile
			
			temp$ = ReadLine(file)
			while FindString(temp$, "answer:") > 0
				temp$ = StripString(temp$, "answer: ")
				optionsEvent.insert(temp$)
				temp$ = ReadLine(file)
			endwhile
			
			while tempIndexes2.length > -1
				tempIndexes2.remove()
			endwhile
			
			while FindString(temp$, "enemy:") > 0
				temp$ = StripString(temp$, "enemy: ")
				tempIndexes2.insert(Val(temp$))
				temp$ = ReadLine(file)
			endwhile
				
			while scenesEvent.length > -1
				scenesEvent.remove()
			endwhile
				
			while FindString(temp$, "scene:") > 0
				temp$ = StripString(temp$, "scene: ")
				scenesEvent.insert(Val(temp$))
				temp$ = ReadLine(file)
			endwhile
			
			indexEvent = Val(temp$)
			
			createEvent(auxEvent, tempIndexes1.length, itemsEvent, descEvent, optionsEvent, tempIndexes2.length, enemiesEvent, scenesEvent)
			insertEventIndexes(indexEvent, tempIndexes1, tempIndexes2)
			r$ = ReadLine(file)
			
		endwhile
		
		r$ = ""
		while not r$ = "=============================================="
			
			scenesEnemy as integer[]
			hpEnemy as integer
			modEnemy as integer
			eventsEnemy as eventStatus[]
			nameEnemy as String
			descEnemy as String
			attacksEnemy as attackStatus[]
			talksEnemy as String[]
			deffenseEnemy as integer
			indexEnemy as integer

			while scenesEnemy.length > -1
				scenesEnemy.remove()
			endwhile
			
			if r$ = ""
				temp$ = ReadLine(file)
			else
				temp$ = r$
			endif
			
			while FindString(temp$, "scene:") > 0
				temp$ = StripString(temp$, "scene: ")
				scenesEnemy.insert(Val(temp$))
				temp$ = ReadLine(file)
			endwhile
			
			hpEnemy = Val(temp$)
			modEnemy = Val(ReadLine(file))
			
			while tempIndexes1.length > -1
				tempIndexes1.remove()
			endwhile
			
			temp$ = ReadLine(file)
			while FindString(temp$, "event:") > 0
				temp$ = StripString(temp$, "event: ")
				tempIndexes1.insert(Val(temp$))
				temp$ = ReadLine(file)
			endwhile
			
			nameEnemy = temp$
			descEnemy = ReadLine(file)
			
			while attacksEnemy.length > -1
				attacksEnemy.remove()
			endwhile
			
			temp$ = ReadLine(file)
			while FindString(temp$, "attack:") > 0
				temp$ = StripString(temp$, "attack: ")
				attacksEnemy.insert(createAttack(Val(temp$), ReadLine(file)))
				temp$ = ReadLine(file)
			endwhile
		
			while talksEnemy.length > -1
				talksEnemy.remove()
			endwhile
			
			while FindString(temp$, "talks:") > 0
				temp$ = StripString(temp$, "talks: ")
				talksEnemy.insert(temp$)
				temp$ = ReadLine(file)
			endwhile
		
			deffenseEnemy = Val(temp$)
			indexEnemy = Val(ReadLine(file))

			createEnemy(scenesEnemy, hpEnemy, modEnemy, eventsEnemy, nameEnemy, descEnemy, attacksEnemy, talksEnemy, deffenseEnemy)
			insertEventIndexesEnemy(indexEnemy, tempIndexes1)
			r$ = ReadLine(file)
			
		endwhile
		
	endif
endfunction gameInfos
