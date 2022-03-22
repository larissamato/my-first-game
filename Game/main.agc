
// Project: testedemais 
// Project: botao 
// Created: 2021-01-20


SetWindowTitle( "The Rose" )
SetWindowSize( 1024, 595, 0 )

SetVirtualResolution( 1024, 595 ) // doesn't have to match the window

CreateSprite(1,0) //background
CreateSprite(2,0) //person
CreateSprite(14,0) //platform

AddSpriteAnimationFrame(1, LoadImage("fundonivel2.png"))
AddSpriteAnimationFrame(2, LoadImage("andar01.png"))
AddSpriteAnimationFrame(2, LoadImage("andar02.png"))
AddSpriteAnimationFrame(2, LoadImage("andar03.png"))
AddSpriteAnimationFrame(2, LoadImage("andar04.png"))
AddSpriteAnimationFrame(14, LoadImage("platform1.png"))

//BASE

BackgroundX=0
BackgroundY=0
/*PersonX=200
PersonY=200*/

PersonX=20
PersonY=390
Speed=3

//JUMP
JumpTimer=0

//Adding the floorś
FloorX=0
FloorY=470


PlaySprite(2,4,1,1,4)


do

SetSpritePosition ( 1,BackgroundX, BackgroundY )
SetSpritePosition ( 2, PersonX, PersonY )
SetSpritePosition ( 14,360, 300)

//Right
if GetRawKeyState( 39 )
SetSpriteFlip(2,0,0)
PersonX=PersonX+Speed
PersonRight=1
PersonLeft=0

//Left
elseif GetRawKeyState( 37 )
	SetSpriteFlip(2,180,0)
	PersonX=PersonX-Speed
	PersonRight=0
	PersonLeft=1
else
	if(GetSpritePlaying(2)=1)
		PlaySprite(2,4,1,1,4)
		
  endif
 endif
 
 if GetRawKeyState(83) and PersonRight=1
	 
	 if shooting=0
		 shooting=1
		 for b=0 to 3
			 if 
			 allbullets[b].Active=0
			 allbullets[b].Active=1
			 allbullets[b].BulletX=PersonX+100
			 allbullets[b].BulletY=PersonY+30
			 
			 SetSpriteVisible(3+b, 1)
			 exit
			 endif
			 next b
			 endif
		
	  else
		 shooting=0
	  endif
	  for b = 0 to 3
		  if 
		  allbullets[b].Active=1
		  allbullets[b].BulletX
		 
				
sync()
	
	
loop


function Tela4()
   ResetTimer()	
   nivel3= GetFileExists ("nivel3.wav")
   if nivel3=1
   musica4= LoadSound("nivel3.wav")
   PlaySound (musica4, 20, 1, 0)
   repeat
   sync()
   until timer()>20
   StopSound(musica4)
   endif
	
endfunction



