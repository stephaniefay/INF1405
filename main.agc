#include "src/starterModule.agc"

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "INF1405" )
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

/*spriteSwordRight = CreateSprite(LoadImageResized("startMenu\right\sword_right (1).gif", 1, 1, 0))

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

spriteSwordLeft = CreateSprite(LoadImageResized("startMenu\left\sword_left (1).png", 1, 1, 0))

AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (1).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (2).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (3).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (4).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (5).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (6).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (7).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (8).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (9).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (10).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (11).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (12).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (13).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (14).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (15).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (16).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (17).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (18).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (19).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (20).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (21).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (22).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (23).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (24).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (25).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (26).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (27).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (28).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (29).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (30).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (31).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (32).png", 1, 1, 0) )
AddSpriteAnimationFrame ( spriteSwordLeft, LoadImageResized("startMenu\left\sword_left (33).png", 1, 1, 0) )*/

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

wat as integer

//flag = 0

do
	if (GetFileExists("saves\mostRecent.txt") = 0)
		/*if flag = 0
			message ("no data saved.")
			flag=1
		endif*/
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
