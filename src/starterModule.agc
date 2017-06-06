#include "src/typesDefinitions.agc"
#include "src/readFromText.agc"
#include "src/beginHandler.agc"



function start () 	
	aux as integer
	showInScreen as String
	
	showInScreen = "Teste de narração, aqui vai a narração do jogo inicial, se for necessário mais de um quadro de narração é só gerenciar isso no if. Após toda a narração inicial, virá a escolha dos personagens. (Você pode passar a qualquer momento clicando com o mouse)"
	aux = 0
	
	gameInfos as gameStructure
	position = 150
	do
		if aux = 0
			aux = begin_game(showInScreen)
			gameInfos = getInfo()
		endif
		if aux = 1
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
			if GetPointerPressed() = 1
				for j = 0 to i
					if (GetTextHitTest(j, GetPointerX(), GetPointerY()) = 1)
						gameInfos.currentPlayer = gameInfos.allPlayers[j]
						DeleteAllText()
						gameSequence(gameInfos)
					endif
				next j
			endif
		endif
		Sync()
	loop
endfunction

function gameSequence (gameInfos as gameStructure) 
	do
		print(gameInfos.currentPlayer.name)
	Sync()
	loop
	
endfunction
