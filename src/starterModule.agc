#include "src/typesDefinitions.agc"
#include "src/readFromText.agc"

function start () 

	flag = 0
	teste as gameStructure
	
	do
		if flag = 0
			teste = getInfo()
			inc flag
		endif
		
		if flag = 1
			print("Habilidade")
			print("Ataque")
			print(teste.allAbilities[0].attack)
			print("Defesa")
			print(teste.allAbilities[0].deffense)
			print("Descrição")
			print(teste.allAbilities[0].desc)
			print("HP")
			print(teste.allAbilities[0].hp)
			print("Index")
			print(teste.allAbilities[0].index)
			print("Modifier")
			print(teste.allAbilities[0].modifier)
			print("Name")
			print(teste.allAbilities[0].name)
			
			t# = timer()
			print(t#)
			
			if (t# > 24)
				inc flag
				ResetTimer()
			endif
			
		endif

		if flag = 2
			print("Inimigo")
			print("HP")
			print(teste.allEnemies[0].absoluteHP)
			print("Nome + Dano Ataques")
			print(teste.allEnemies[0].attacksDesc[0].damage)
			print(teste.allEnemies[0].attacksDesc[0].name)
			print(teste.allEnemies[0].attacksDesc[1].damage)
			print(teste.allEnemies[0].attacksDesc[1].name)
			print("Defesa")
			print(teste.allEnemies[0].deffense)
			print("Descrição")
			print(teste.allEnemies[0].desc)
			print("Index")
			print(teste.allEnemies[0].index)
			print("Modificador")
			print(teste.allEnemies[0].modifier)
			print("Nome")
			print(teste.allEnemies[0].name)
			print("HP Restante")
			print(teste.allEnemies[0].remainingHP)
			print("Lista de falas")
			print(teste.allEnemies[0].talksList[0])
			print(teste.allEnemies[0].talksList[1])

			t# = timer()
			print(t#)
			
			if (t# > 24)
				inc flag
				ResetTimer()
			endif
		
		endif
		
		if flag = 3
			print("Evento")
			print("Descrição")
			print(teste.allEvents[0].desc)
			print("Quantidade de Inimigos")
			print(teste.allEvents[0].enemyQtd)
			print("Possui Item")
			print(teste.allEvents[0].hasItem)
			print("Index")
			print(teste.allEvents[0].index)
			print("Quantidade de Itens")
			print(teste.allEvents[0].itemQtd)
			print("Opções")
			print(teste.allEvents[0].options[0])
			print(teste.allEvents[0].options[1])
			print(teste.allEvents[0].options[2])
			print(teste.allEvents[0].options[3])

			t# = timer()
			print(t#)
			
			if (t# > 24)
				inc flag
				ResetTimer()
			endif

		endif
		
		if flag = 4
			print("Item")
			print("Dano feito ao personagem")
			print(teste.allItems[0].damage)
			print("Descrição")
			print(teste.allItems[0].desc)
			print("Index")
			print(teste.allItems[0].index)
			print("Nome")
			print(teste.allItems[0].name)

			t# = timer()
			print(t#)
			
			if (t# > 24)
				inc flag
				ResetTimer()
			endif

		endif
		
		if flag = 5
			print("Jogador")
			print("HP")
			print(teste.allPlayers[0].absoluteHP)
			print("Dano + Nome Ataque")
			print(teste.allPlayers[0].attackValue.damage)
			print(teste.allPlayers[0].attackValue.name)
			print("Defesa")
			print(teste.allPlayers[0].deffense)
			print("Descrição")
			print(teste.allPlayers[0].desc)
			print("Modificador")
			print(teste.allPlayers[0].modifier)
			print("Nome")
			print(teste.allPlayers[0].name)
			print("HP Restante")
			print(teste.allPlayers[0].remainingHP)

			t# = timer()
			print(t#)
			
			if (t# > 24)
				inc flag
				ResetTimer()
			endif

		endif

		Sync()
	loop
endfunction
