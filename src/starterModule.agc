#include "src/typesDefinitions.agc"
#include "src/readFromText.agc"
#include "src/beginHandler.agc"



function start ()
	spriteSwordRight = CreateSprite(LoadImageResized("startMenu\right\sword_right (1).gif", 1, 1, 0))

	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (1).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (2).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (3).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (4).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (5).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (6).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (7).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (8).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (9).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (10).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (11).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (12).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (13).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (14).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (15).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (16).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (17).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (18).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (19).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (20).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (21).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (22).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (23).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (24).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (25).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (26).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (27).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (28).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (29).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (30).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (31).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (32).gif", 1, 1, 0) )
	AddSpriteAnimationFrame ( spriteSwordRight, LoadImageResized("startMenu\right\sword_right (33).gif", 1, 1, 0) )
	
	fireSprite1 = CreateSprite(LoadImageResized("startMenu\fire\fire (1).gif", 0.3, 0.3, 0))

	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (1).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (2).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (3).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (4).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (5).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (6).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (7).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (8).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (9).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (10).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (11).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite1, LoadImageResized("startMenu\fire\fire (12).gif", 0.3, 0.3, 0) )
	
	fireSprite2 = CreateSprite(LoadImageResized("startMenu\fire\fire (1).gif", 0.3, 0.3, 0))

	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (1).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (2).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (3).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (4).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (5).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (6).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (7).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (8).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (9).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (10).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (11).gif", 0.3, 0.3, 0) )
	AddSpriteAnimationFrame ( fireSprite2, LoadImageResized("startMenu\fire\fire (12).gif", 0.3, 0.3, 0) )
	
	SetSpritePosition(fireSprite1, -250, -250)
	SetSpritePosition(fireSprite2, -250, -250)
	
	showInScreen as String
	showInScreen = "Teste de narração, aqui vai a narração do jogo inicial, se for necessário mais de um quadro de narração é só gerenciar isso no if. Após toda a narração inicial, virá a escolha dos personagens. (Você pode passar a qualquer momento clicando com o mouse)"
	aux = 0
	flag = -1
	
	gameInfos as gameStructure
	position = 150
	do
		SetSpritePosition(spriteSwordRight, -250, -250)
		if GetSpritePlaying(spriteSwordRight) = 0
			playSprite(spriteSwordRight)
		endif
		
		if aux = 0
			
			if flag < 0
				flag = writeOnScreen(showInScreen)
				if flag = 1
					firstText = CreateText(showInScreen)
					SetTextMaxWidth(firstText, 1004)
					SetTextPosition(firstText, 20, 50)
					SetTextSize(firstText, 50)

					secondText = CreateText("Começar Jogo!")
					SetTextPosition(secondText, 400, 400)
					SetTextSize(secondText, 30)

					flag = 2

				endif
				gameInfos = getInfo()
				inicializeArchive(gameInfos)
			endif
			
			if GetTextHitTest(secondText, GetPointerX(), GetPointerY()) = 1 
				if attention = 1 and GetPointerPressed() = 1
					aux = 1
				endif
				
				SetSpritePosition(fireSprite1, 380, 370)
				SetSpritePosition(fireSprite2, 560, 370)
				if GetSpritePlaying(fireSprite1) = 0 and GetSpritePlaying(fireSprite2) = 0
					playSprite(fireSprite1)
					playSprite(fireSprite2)
				endif
			else
				SetSpritePosition(fireSprite1, -250, -250)
				SetSpritePosition(fireSprite2, -250, -250)
			endif
			
			
			if GetPointerState() = 0
				attention = 1
			else
				attention = 0
			endif

		endif
		if aux = 1
			SetSpritePosition(fireSprite1, -250, -250)
			SetSpritePosition(fireSprite2, -250, -250)
			clearAll()
			aux = 2
		endif
		if aux = 2			
			title = CreateText("Escolha seu personagem: ")
			SetTextSize(title, 50)
			SetTextPosition(title, 10, 50)
			
			aux2 = gameInfos.allPlayers.length
			for i = 0 to aux2
				CreateText(i, gameInfos.allPlayers[i].name + ": " + gameInfos.allPlayers[i].desc)
				SetTextMaxWidth(i, 1004)
				SetTextSize(i, 50)
				SetTextPosition(i, 20, (i+1)*position)
			next i
			aux = 3
		endif
		if aux = 3
			
			hitText = -1
			
			for i = 0 to aux2
				if GetTextHitTest(i, GetPointerX(), GetPointerY())
					if (attention = 1 and GetPointerState() = 1)
						hitText = i
					endif
				endif
			next i
			
			if hitText > -1
				gameInfos.currentPlayer = gameInfos.allPlayers[hitText]
				
				// log of the character choosen
				temp as String[]
				temp.insert(Str(gameInfos.currentPlayer.absoluteHP))
				
				for i = 0 to gameInfos.currentPlayer.itemList.length
					temp.insert(Str(gameInfos.currentPlayer.itemList[i].index))
				next i
				
				for i = 0 to gameInfos.currentPlayer.abilityList.length
					temp.insert(Str(gameInfos.currentPlayer.abilityList[i].index))
				next i
				
				temp.insert(gameInfos.currentPlayer.name)
				temp.insert(gameInfos.currentPlayer.desc)
				temp.insert(Str(gameInfos.currentPlayer.attackValue.damage))
				temp.insert(gameInfos.currentPlayer.attackValue.name)
				temp.insert(Str(gameInfos.currentPlayer.modifier))
				temp.insert(Str(gameInfos.currentPlayer.deffense))

				archive(0, temp)
				
				DeleteAllText()
				gameSequence(gameInfos)
			endif
			
			if GetPointerState() = 0
				attention = 1
			else
				attention = 0
			endif
			
			if (GetTextHitTest(0, GetPointerX(), GetPointerY()) = 1)
				SetSpritePosition(spriteSwordRight, 800, 1*position)
			else
				if GetTextHitTest(1, GetPointerX(), GetPointerY()) = 1
					SetSpritePosition(spriteSwordRight, 800, 2*position)
				else
					if GetTextHitTest(2, GetPointerX(), GetPointerY()) = 1
						SetSpritePosition(spriteSwordRight, 800, 3*position)
					else
						SetSpritePosition(spriteSwordRight, -250, -250)
					endif
				endif
			endif
			
		endif

		Sync()
	loop
endfunction

function gameSequence (gameInfos as gameStructure) 
	aux = 0
	currentEvent = -1
	
	hitText = -1
	attention = 0
	
	temp as String[]
	
	do
	SELECT aux
		case 0
			currentEvent = random (0, gameInfos.allEvents.length)
			aux = 1
		endcase
		case 1
			if gameInfos.allEvents.length = -1
				print("Game Over")
				
				if GetFileExists("raw:" + GetDocumentsPath() + "\A New Adventure\media\saves\mostRecent.txt") = 1
					copyArchive()		
				endif
				
				if (attention = 1 and GetPointerState() = 1)
					end
				endif
				
				if GetPointerState() = 0
					attention = 1
				else
					attention = 0
				endif
			
			else
				flag = writeOnScreen(getEventDesc(currentEvent))
				
				temp.insert(getEventDesc(currentEvent))
				temp.insert(Str(getEventIndex(currentEvent)))
				
				archive(1, temp)
				
				temp.remove()
				temp.remove()
				
				if flag = 1
					event = CreateText(getEventDesc(currentEvent))
					SetTextMaxWidth(event, 1004)
					SetTextPosition(event, 20, 50)
					SetTextSize(event, 50)
					aux = 2
				endif				
			endif
		endcase
		case 2
			options as String[]
			options = getEventOptions(currentEvent)
			position = 400
			for i = 0 to options.length
				CreateText(i, options[i])
				SetTextSize(i, 40)
				SetTextPosition(i, 20, position+(50*i))
			next i
			removeEvent(currentEvent)
			gameInfos.allEvents = getAllEvents()
			aux = 3
		endcase
		case 3
			hitText = -1
			
			for j = 0 to i-1
				if GetTextHitTest(j, GetPointerX(), GetPointerY())
					if (attention = 1 and GetPointerState() = 1)
						hitText = j
					endif
				endif
			next j
			
			if hitText > -1
				DeleteAllText()
				
				temp.insert(options[hitText])
				archive(2, temp)
				temp.remove()
				
				aux = 0
			endif
			
			if GetPointerState() = 0
				attention = 1
			else
				attention = 0
			endif
			
		endcase
	endselect
	Sync()
	loop
	
endfunction

function archive (typeIndex as integer, info as String[])

	file = OpenToWrite("raw:" + GetDocumentsPath() + "\A New Adventure\media\saves\mostRecent.txt", 1)
	
	WriteLine (file, "==============================================")

	select typeIndex
		case 0
			WriteLine (file, "Character: ")
			
			for i = 0 to info.length
				WriteLine(file, info[i])
			next i
			
		endcase
		
		case 1
			WriteLine (file, "Event: " + info[0] + " - " + info[1])
		endcase
		
		case 2
			WriteLine (file, "Answer: " + info[0])
		endcase
		
		case 3
			WriteLine(file, "Include item (" + info[0] + " - " + info[1] + ") for player.")
		endcase
		
		case 4
			WriteLine(file, "Include ability (" + info[0] + " - " + info[1] + ") for player.")
		endcase
		
	endselect

	closeFile(file)
	
endfunction

function inicializeArchive (info as gameStructure)
	
	fileTemp = OpenToWrite("raw:" + GetDocumentsPath() + "\A New Adventure\media\saves\mostRecent.txt", 0)
	
	for i = 0 to info.allPlayers.length
		
		WriteLine(fileTemp, Str(info.allPlayers[i].absoluteHP))

		for j = 0 to info.allPlayers[i].itemList.length
			WriteLine(fileTemp, Str(info.allPlayers[i].itemList[j].index))
		next j
		
		for j = 0 to info.allPlayers[i].abilityList.length
			WriteLine(fileTemp, Str(info.allPlayers[i].abilityList[i].index))
		next j
		
		WriteLine(fileTemp, info.allPlayers[i].name)
		WriteLine(fileTemp, info.allPlayers[i].desc)
		WriteLine(fileTemp, Str(info.allPlayers[i].modifier))
		WriteLine(fileTemp, Str(info.allPlayers[i].attackValue.damage))
		WriteLine(fileTemp, info.allPlayers[i].attackValue.name)
		WriteLine(fileTemp, Str(info.allPlayers[i].deffense))			
		
	next i

	WriteLine (fileTemp, "==============================================")

	for i = 0 to info.allAbilities.length
		
		WriteLine(fileTemp, info.allAbilities[i].name)
		WriteLine(fileTemp, Str(info.allAbilities[i].hp))
		WriteLine(fileTemp, Str(info.allAbilities[i].deffense))
		WriteLine(fileTemp, Str(info.allAbilities[i].attack))
		WriteLine(fileTemp, Str(info.allAbilities[i].modifier))
		WriteLine(fileTemp, info.allAbilities[i].desc)
		WriteLine(fileTemp, Str(info.allAbilities[i].index))
		
	next i

	WriteLine (fileTemp, "==============================================")

	for i = 0 to info.allItems.length
		
		WriteLine(fileTemp, info.allItems[i].name)
		WriteLine(fileTemp, Str(info.allItems[i].ability.index))
		WriteLine(fileTemp, Str(info.allItems[i].damage))
		WriteLine(fileTemp, info.allItems[i].desc)
		
		for j = 0 to info.allItems[i].eventHolder.length
			WriteLine(fileTemp, Str(info.allItems[i].eventHolder[j].index))
		next j
		
		WriteLine(fileTemp, Str(info.allItems[i].index))
		
	next i

	WriteLine (fileTemp, "==============================================")
	
	for i = 0 to info.allEvents.length
		
		WriteLine(fileTemp, info.allEvents[i].hasItem)
		WriteLine(fileTemp, Str(info.allEvents[i].itemQtd))
		
		for j = 0 to info.allEvents[i].itemList.length
			WriteLine(fileTemp, Str(info.allEvents[i].itemList[j].index))
		next j
		
		WriteLine(fileTemp, info.allEvents[i].desc)
		
		for j = 0 to info.allEvents[i].options.length
			WriteLine(fileTemp, info.allEvents[i].options[j])
		next j
		
		WriteLine(fileTemp, Str(info.allEvents[i].enemyQtd))
		
		for j = 0 to info.allEvents[i].enemyHolder.length
			WriteLine(fileTemp, Str(info.allEvents[i].enemyHolder[j].index))
		next j
		
		for j = 0 to info.allEvents[i].canAppearScene.length
			WriteLine(fileTemp, Str(info.allEvents[i].canAppearScene[j]))
		next j
		
		WriteLine(fileTemp, Str(info.allEvents[i].index))
		
	next i
	
	WriteLine (fileTemp, "==============================================")
	
	for i =  0 to info.allEnemies.length
		
		for j = 0 to info.allEnemies[i].typeScene.length
			WriteLine(fileTemp, Str(info.allEnemies[i].typeScene[j]))
		next j
		
		WriteLine(fileTemp, Str(info.allEnemies[i].absoluteHP))
		WriteLine(fileTemp, Str(info.allEnemies[i].modifier))
		
		for j = 0 to info.allEnemies[i].eventHolder.length
			WriteLine(fileTemp, Str(info.allEnemies[i].eventHolder[j].index))
		next j
		
		WriteLine(fileTemp, info.allEnemies[i].name)
		WriteLine(fileTemp, info.allEnemies[i].desc)
		
		for j = 0 to info.allEnemies[i].attacksDesc.length
			WriteLine(fileTemp, Str(info.allEnemies[i].attacksDesc[j].damage))
			WriteLine(fileTemp, info.allEnemies[i].attacksDesc[j].name)
		next j
		
		for j = 0 to info.allEnemies[i].talksList.length
			WriteLine(fileTemp, info.allEnemies[i].talksList[j])
		next j
		
		WriteLine(fileTemp, Str(info.allEnemies[i].deffense))
		WriteLine(fileTemp, Str(info.allEnemies[i].index))

	next i
	
	WriteLine (fileTemp, "==============================================")
	WriteLine (fileTemp, "Begin of the gameplay: ")
	
	
	CloseFile(fileTemp)	
endfunction

function copyArchive ()
	
	time$ = Mid(GetCurrentTime(), 4, 2)
	
	newFile$ = GetCurrentDate() + "_" + time$ + ".txt"
	archive = OpenToRead("raw:" + GetDocumentsPath() + "\A New Adventure\media\saves\mostRecent.txt")
	newArchive = OpenToWrite("raw:" + GetDocumentsPath() + "\A New Adventure\media\saves\" + newFile$, 0)
	
	while FileEOF(archive) = 0
		WriteLine(newArchive, ReadLine(archive))
	endwhile
	
	CloseFile(archive)
	CloseFile(newArchive)
	
endfunction

