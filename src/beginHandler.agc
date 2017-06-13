#include "src/starterModule.agc"

Type typeWriter
	input as string

	output as integer

	length as integer

	pos as integer

	flag as integer

	time as float

	diagnostic as integer

	key as integer

	space as integer

EndType
	
function writeOnScreen (inputString as String)
	SetClearColor(0,0,0)
	narrationArray as typeWriter
	narrationArray.time = timer()
	narrationArray.output = CreateText( "" )
	SetTextMaxWidth( narrationArray.output, 1004 )
	narrationArray.key = LoadSound( "type.wav" )

	attention = 0
	do
		narrationArray = writeInfo( narrationArray, inputString, 1, 45 )
		if GetPointerState() = 0
			attention = 1
		endif
		if attention = 1
			if GetPointerPressed() = 1
				exitfunction 1
			endif
		endif
		
		if narrationArray.pos >= narrationArray.length
			exitfunction 1
		endif
		
		Sync()
	loop

endfunction 1

function clearAll ()
	DeleteAllText()
	Sync()
endfunction


Function writeInfo ( temp as typeWriter, input$, min, max )
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
                SetTextPosition(temp.output, 20, 50)
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
