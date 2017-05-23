#include "src/starterModule.agc"

Type _Antonstypewriter

		//This is the entered text.
		input as string
		//This is the ID number of our text object
		output as integer
		//This is the length of our entered text
		length as integer
		//This is the current position of our text
		pos as integer
		//This is the mode of our function, 0 sets everything up, 1 types it out
		flag as integer
		//This keeps keeps loops out of our function, by substituting timer based delays instead
		time as float
		//This provides some extra diagnostic information
		diagnostic as integer
		//This is the sound file for our key sound
		key as integer
		//This is the sound file for our space bar sound
		space as integer

EndType
	
function begin_game ()
	SetClearColor(0,0,0)
	narrationArray as _Antonstypewriter[5]
		
	narrationArray[0].time = timer()
	narrationArray[1].time = timer()
	narrationArray[2].time = timer()
	
	narrationArray[0].output = CreateText( "" )
	narrationArray[1].output = CreateText ( "" )
	narrationArray[2].output = CreateText ( "" )
	
	SetTextMaxWidth( narrationArray[0].output, 1004 )
	SetTextMaxWidth( narrationArray[1].output, 1004 )
	SetTextMaxWidth( narrationArray[2].output, 1004 )

	narrationArray[0].key = LoadSound( "type.wav" )
	narrationArray[1].key = LoadSound( "type.wav" )
	narrationArray[2].key = LoadSound( "type.wav" )
	
	flag = 0
	attention = 0
	do
		SELECT flag
			CASE 0
				narrationArray[0] = Antonstypewriter( narrationArray[0], "Há muito, muito, tempo atrás existiu um reino. Reino esse de criaturinhas tão pequenas - e tão... Incomuns - que muitos humanos simplesmente os viam como pequenos insetos. Ou, mesmo, mitos inacreditáveis.", 1, 45 )
				if GetPointerState() = 0
					attention = 1
				endif
				if attention = 1
					if GetPointerPressed() = 1
						flag = 1
						attention = 0
					endif
				endif
			ENDCASE
			CASE 1
				DeleteText(narrationArray[0].output)
				narrationArray[1] = Antonstypewriter(narrationArray[1], "Essas criaturas acabaram sendo conhecidas como Dragoblahs.", 1, 45)
				if GetPointerState() = 0
					attention = 1
				endif
				if attention = 1
					if GetPointerPressed() = 1
						flag = 2
						attention = 0
					endif
				endif
			ENDCASE
			CASE 2
				DeleteText(narrationArray[1].output)
				narrationArray[2] = Antonstypewriter(narrationArray[2], "Essa é a história de um deles. Uma história de paixão, aventuras, sequestros e... Mordidas.", 1, 45)
				
				beginGame = CreateText("Começar o jogo")
				SetTextPosition(beginGame, 420,300)
				SetTextSize(beginGame, 30)
				SetTextColor(beginGame, Random(100,255), Random(100,255), Random(100,255), 1)
				
				if ( GetPointerPressed ( ) = 1 )
					hitBegin = GetTextHitTest (beginGame, GetPointerX ( ), GetPointerY ( ) )
						if (hitBegin = 1)
							DeleteAllText()
							start()
						endif
				endif				
			ENDCASE
		ENDSELECT
					
		Sync()
	loop

endfunction


Function Antonstypewriter ( temp as _Antonstypewriter, input$, min, max )
    Select temp.flag
        
        Case 0
            temp.length = len ( input$ )
            temp.flag = 1
            temp.input = input$
        EndCase
 
        Case 1
           If temp.time < timer() and temp.pos < temp.length
                temp.pos = temp.pos + 1
                SetTextString( temp.output, left( temp.input, temp.pos ))
                SetTextSize(temp.output, 50)
                SetTextPosition(temp.output, 20, 200)
                tmp = random( min, max )
                tmp# = tmp
                tmp# = tmp# / 1000
                temp.time = timer() + tmp#
                If NOT mid( temp.input, temp.pos, 1 ) = " "
                    PlaySound( temp.key )
                EndIf
            EndIf

        EndCase

    EndSelect

endfunction temp
