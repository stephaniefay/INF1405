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
	
function begin_game (inputString as String)
	SetClearColor(0,0,0)
	narrationArray as _Antonstypewriter
	narrationArray.time = timer()
	narrationArray.output = CreateText( "" )
	SetTextMaxWidth( narrationArray.output, 1004 )
	narrationArray.key = LoadSound( "type.wav" )

	attention = 0
	do
		narrationArray = Antonstypewriter( narrationArray, inputString, 1, 45 )
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
