#include "src/starterModule.agc"

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "A New Adventure" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 0, 0, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

// window visualization
SetClearColor(0,0,0)
vincentiaFont = LoadFont("fonts/Vincentia.otf")

playStr = CreateText("Play")
loadStr = CreateText("Load")
exitStr = CreateText("Exit")

SetTextPosition(playStr, 410, 180)
SetTextPosition(loadStr, 420, 320)
SetTextPosition(exitStr, 425, 450)

SetTextFont(playStr, vincentiaFont)
SetTextFont(loadStr, vincentiaFont)
SetTextFont(exitStr, vincentiaFont)

SetTextSize(playStr, 120)
SetTextSize(loadStr, 120)
SetTextSize(exitStr, 120)

// animation background
spriteBackground = CreateSprite(LoadImageResized("background/frame-01.gif", 2.8,3.0,0))

AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-01.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-02.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-03.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-04.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-05.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-06.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-07.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-08.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-09.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-10.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-11.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-12.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-13.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-14.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-15.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-16.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-17.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-18.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-19.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-20.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-21.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-22.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-23.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-24.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-25.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-26.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-27.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-28.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-29.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-30.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-31.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-32.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-33.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-34.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-35.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-36.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-37.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-38.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-39.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-40.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-41.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-42.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-43.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-44.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-45.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-46.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-47.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-48.gif", 2.8,3.0,0) )
AddSpriteAnimationFrame ( spriteBackground, LoadImageResized("background/frame-49.gif", 2.8,3.0,0) )

SetSpritePosition(spriteBackground,0,0)
PlaySprite(spriteBackground)

spriteStarPlay = CreateSprite(LoadImageResized("startMenu\star\star_right (1).gif", 0.5, 0.5, 0))
AddSpriteAnimationFrame ( spriteStarPlay, LoadImageResized("startMenu\star\star_right (1).gif", 0.3, 0.3, 0) )
AddSpriteAnimationFrame ( spriteStarPlay, LoadImageResized("startMenu\star\star_right (2).gif", 0.3, 0.3, 0) )
AddSpriteAnimationFrame ( spriteStarPlay, LoadImageResized("startMenu\star\star_right (3).gif", 0.3, 0.3, 0) )
AddSpriteAnimationFrame ( spriteStarPlay, LoadImageResized("startMenu\star\star_right (4).gif", 0.3, 0.3, 0) )

spriteStarLoad = CreateSprite(LoadImageResized("startMenu\star\star_right (1).gif", 0.5, 0.5, 0))
AddSpriteAnimationFrame ( spriteStarLoad, LoadImageResized("startMenu\star\star_right (1).gif", 0.3, 0.3, 0) )
AddSpriteAnimationFrame ( spriteStarLoad, LoadImageResized("startMenu\star\star_right (2).gif", 0.3, 0.3, 0) )
AddSpriteAnimationFrame ( spriteStarLoad, LoadImageResized("startMenu\star\star_right (3).gif", 0.3, 0.3, 0) )
AddSpriteAnimationFrame ( spriteStarLoad, LoadImageResized("startMenu\star\star_right (4).gif", 0.3, 0.3, 0) )

spriteStarExit = CreateSprite(LoadImageResized("startMenu\star\star_right (1).gif", 0.5, 0.5, 0))
AddSpriteAnimationFrame ( spriteStarExit, LoadImageResized("startMenu\star\star_right (1).gif", 0.3, 0.3, 0) )
AddSpriteAnimationFrame ( spriteStarExit, LoadImageResized("startMenu\star\star_right (2).gif", 0.3, 0.3, 0) )
AddSpriteAnimationFrame ( spriteStarExit, LoadImageResized("startMenu\star\star_right (3).gif", 0.3, 0.3, 0) )
AddSpriteAnimationFrame ( spriteStarExit, LoadImageResized("startMenu\star\star_right (4).gif", 0.3, 0.3, 0) )

do
	if (GetFileExists("saves\mostRecent.txt") = 0)
		SetTextColor(loadStr, 111, 113, 117, 255)
		SetSpritePosition(spriteStarLoad, -100, -100)
	else
		if (GetTextHitTest(loadStr, GetPointerX(), GetPointerY()) = 1)
			if (GetSpritePlaying(spriteStarLoad) = 0)
				playSprite(spriteStarLoad)
			endif
			SetSpritePosition(spriteStarLoad, 565, 335)
		else
			SetSpritePosition(spriteStarLoad, -100, -100)
			StopSprite(spriteStarLoad)
		endif
	endif
	
	 

	if (GetTextHitTest(playStr, GetPointerX(), GetPointerY()) = 1)
		SetSpritePosition(spriteStarPlay, 585, 205)
			if (GetSpritePlaying(spriteStarPlay) = 0)
				playSprite(spriteStarPlay)
			endif
	else
		SetSpritePosition(spriteStarPlay, -100, -100)
		StopSprite(spriteStarPlay)
	endif
	
	if (GetTextHitTest(exitStr, GetPointerX(), GetPointerY()) = 1)
		SetSpritePosition(spriteStarExit, 562, 465)
			if (GetSpritePlaying(spriteStarExit) = 0)
				playSprite(spriteStarExit)
			endif
	else
		SetSpritePosition(spriteStarExit, -100, -100)
		StopSprite(spriteStarExit)
	endif


	if ( GetPointerPressed ( ) = 1 )
		hitPlay = GetTextHitTest (playStr, GetPointerX ( ), GetPointerY ( ) )
		hitExit = GetTextHitTest (exitStr, GetPointerX ( ), GetPointerY ( ) )

		if (hitPlay = 1)
			DeleteSprite(spriteBackground)
			DeleteSprite(spriteStarExit)
			DeleteSprite(spriteStarPlay)
			DeleteSprite(spriteStarLoad)
			DeleteAllText()
			start()
		endif

		if (hitExit = 1)
			End
		endif

	endif

	Sync()
loop
