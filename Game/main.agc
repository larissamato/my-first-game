
// Project: testedemais 
// Project: botao 
// Created: 2021-01-20


SetWindowTitle( "The Rose" )
SetWindowSize( 1024, 595, 0 )
SetVirtualResolution( 1024, 595 ) // doesn't have to match the window

//---------------------------------------------------- Coordenadas ------------------------------------------------------------------------

BackgroundX=0
BackgroundY=0


PersonX=0
PersonY=380
Speed=2

Snake1X=700
Snake1Y=525
countLeft=500
countRight=1000

Snake2X=112
Snake2Y=150
countLeft2=10
countRight2=1000

//JUMP
JumpTimer=0

//Adding the floor
FloorX=0
FloorY=575

//----------------------------------------------------- Background -----------------------------------------------------------------------

CreateSprite(1,0)

AddSpriteAnimationFrame(1, LoadImage("fundonivel1.png"))

//------------------------------------------------------ Sprites -------------------------------------------------------------------------

semente= LoadImage("semente.png")
imagem1= LoadImage("barril.png")
imagem2= LoadImage("platform2.png")
imagem3= LoadImage("platform2.1.png")
imagem4= LoadImage("platform2.2.png")
imagem5= LoadImage("platform2.3.png")
imagem6= LoadImage("platform2.4.png")
imagem7= LoadImage("platform2.5.png")
imagem8= LoadImage("platform2.7.png")
imagem9= LoadImage("platform2.9.png")
imagem10=LoadImage("pedra.png")
imagem11=LoadImage("arvore.png")
imagem12=LoadImage("rose.png")
imagem13=LoadImage("ataque.png")

barril= CreateSprite(imagem1)
pedra= CreateSprite(imagem10)
arvore= CreateSprite(imagem11)
rose= CreateSprite(imagem12)
platform1= CreateSprite(imagem2)
platform2= CreateSprite(imagem6)
platform3= CreateSprite(imagem6)
platform4= CreateSprite(imagem5)
platform5= CreateSprite(imagem7)
platform6= CreateSprite(imagem3)
platform7= CreateSprite(imagem8)
platform8= CreateSprite(imagem9)
platform9= CreateSprite(imagem9)
platform10= CreateSprite(imagem9)
platform11= CreateSprite(imagem9)
platform12= CreateSprite(imagem8)
baoba1= CreateSprite(semente)
baoba2= CreateSprite(semente)
baoba3= CreateSprite(semente)
baoba4= CreateSprite(semente)
baoba5= CreateSprite(semente)
baoba6= CreateSprite(semente)
baoba7= CreateSprite(semente)
baoba8= CreateSprite(semente)
baoba9= CreateSprite(semente)
baoba10= CreateSprite(semente)
baoba11= CreateSprite(semente)
baoba12= CreateSprite(semente)
baoba13= CreateSprite(semente)
baoba14= CreateSprite(semente)
baoba15= CreateSprite(semente)
baoba16= CreateSprite(semente)
baoba17= CreateSprite(semente)
baoba18= CreateSprite(semente)
baoba19= CreateSprite(semente)
baoba20= CreateSprite(semente)


SetSpriteSize(platform1,1024,60)	
SetSpriteSize(barril,46,49)
SetSpriteSize(platform2,120,30)
SetSpriteSize(platform3,120,30)
SetSpriteSize(platform4,120,120)
SetSpriteSize(platform5,376,30)
SetSpriteSize(platform6,50,30)
SetSpriteSize(arvore,90,120)
SetSpriteSize(platform7,50,30)
SetSpriteSize(platform12,65,30)
SetSpriteSize(rose,30,45)
SetSpriteSize(baoba1,18,22)
SetSpriteSize(baoba2,18,22)
SetSpriteSize(baoba3,18,22)
SetSpriteSize(baoba4,18,22)
SetSpriteSize(baoba5,18,22)
SetSpriteSize(baoba6,18,22)
SetSpriteSize(baoba7,18,22)
SetSpriteSize(baoba8,18,22)
SetSpriteSize(baoba9,18,22)
SetSpriteSize(baoba10,18,22)
SetSpriteSize(baoba11,18,22)
SetSpriteSize(baoba12,18,22)
SetSpriteSize(baoba13,18,22)
SetSpriteSize(baoba14,18,22)
SetSpriteSize(baoba15,18,22)
SetSpriteSize(baoba16,18,22)
SetSpriteSize(baoba17,18,22)
SetSpriteSize(baoba18,18,22)
SetSpriteSize(baoba19,18,22)
SetSpriteSize(baoba20,18,22)

SetSpritePosition(baoba1, FloorX+70,FloorY-32)
SetSpritePosition(baoba2, FloorX+122,FloorY-200)
SetSpritePosition(baoba3, FloorX+255,FloorY-137)
SetSpritePosition(baoba4, FloorX+505,FloorY-357)
SetSpritePosition(baoba5, FloorX+10,FloorY-403)
SetSpritePosition(baoba6, FloorX+110,FloorY-403)
SetSpritePosition(baoba7, FloorX+210,FloorY-403)
SetSpritePosition(baoba8, FloorX+310,FloorY-403)
SetSpritePosition(baoba9, FloorX+750,FloorY-230)
SetSpritePosition(baoba10, FloorX+980,FloorY-252)
SetSpritePosition(baoba11, FloorX+980,FloorY-367)
SetSpritePosition(baoba12, FloorX+400,FloorY-32)
SetSpritePosition(baoba13, FloorX+500,FloorY-32)
SetSpritePosition(baoba14, FloorX+600,FloorY-32)
SetSpritePosition(baoba15, FloorX+700,FloorY-32)
SetSpritePosition(baoba16, FloorX+850,FloorY-32)
SetSpritePosition(baoba17, FloorX+910,FloorY-32)
SetSpritePosition(baoba18, FloorX+850,FloorY-90)
SetSpritePosition(baoba19, FloorX+910,FloorY-90)
SetSpritePosition(baoba20, FloorX+550,FloorY-135)
SetSpritePosition (platform1,FloorX, FloorY)
SetSpritePosition (barril,FloorX+240, FloorY-110)
SetSpritePosition (platform2,FloorX+190, FloorY-60)
SetSpritePosition (platform3,FloorX+330, FloorY-190)
SetSpritePosition (platform4,FloorX+449, FloorY-280)
SetSpritePosition (platform5,FloorX, FloorY-376)
SetSpritePosition (platform6,FloorX+490, FloorY-330)
SetSpritePosition (pedra,FloorX+140, FloorY-430)
SetSpritePosition (arvore,FloorX+14, FloorY-495)
SetSpritePosition (platform7,FloorX+800, FloorY-190)
SetSpritePosition (platform8,FloorX+950, FloorY-225)
SetSpritePosition (platform9,FloorX+950, FloorY-285)
SetSpritePosition (platform10,FloorX+950, FloorY-340)
SetSpritePosition (platform11,FloorX+950, FloorY-395)
SetSpritePosition (platform12,FloorX+750, FloorY-420)
SetSpritePosition (rose,FloorX+750, FloorY-462)

CreateSprite(20,0) //snake
SetSpriteSize(20,50,52) //snake
AddSpriteAnimationFrame(20, LoadImage("snake1.png"))
AddSpriteAnimationFrame(20, LoadImage("snake2.png"))
AddSpriteAnimationFrame(20, LoadImage("snake3.png"))

CreateSprite(21,0) //snake
SetSpriteSize(21,50,52) //snake
AddSpriteAnimationFrame(21, LoadImage("snake1.png"))
AddSpriteAnimationFrame(21, LoadImage("snake2.png"))
AddSpriteAnimationFrame(21, LoadImage("snake3.png"))


CreateSprite(2,0) //person
SetSpriteSize(2,60,100) //person
AddSpriteAnimationFrame(2, LoadImage("andar01.png"))
AddSpriteAnimationFrame(2, LoadImage("andar02.png"))
AddSpriteAnimationFrame(2, LoadImage("andar03.png"))
AddSpriteAnimationFrame(2, LoadImage("andar04.png"))

PlaySprite(2,4,1,1,4)
PlaySprite(20,3,1,1,3)
PlaySprite(21,3,1,1,3)

//------------------------------------------------------ Variáveis -------------------------------------------------------------------
pontos=0
vida=3
//-------------------------------------------------------------------------------------------------------------------------------------

LoadMusicOGG ( 1, "musicanivel2.ogg" )
PlayMusicOGG ( 1, 1 )
LoadMusicOGG ( 2, "perdeu.ogg" )
//------------------------------------------------------- Loop ---------------------------------------------------------------------------
do
Score(pontos, vida)
SetSpritePosition ( 1,BackgroundX, BackgroundY )
SetSpritePosition ( 2, PersonX, PersonY )
SetSpritePosition ( 20, Snake1X, Snake1Y)
SetSpritePosition ( 21, Snake2X, Snake2Y)


//snake 1
		if Snake1X>countLeft
		Snake1X=Snake1X-1
			if Snake1X-100 = PersonX
			leftB=Snake1X
			bulletsLeft=CreateSprite(imagem13)
			SetSpriteColor(bulletsLeft, 0,255,0,255)
			SetSpriteSize(bulletsLeft, 10,10)
			SetSpritePosition(bulletsLeft, leftB, 550)
			endif
		
		elseif Snake1X=countLeft
		SetSpriteFlip(20,180,0)
		countLeft=1000
		countRight=925
		Snake1X=Snake1X+1
		
		elseif Snake1X<countRight =1
		Snake1X=Snake1X+1
			if Snake1X+100 = PersonX
			rightB=Snake1X
			bulletsRight=CreateSprite(imagem13)
			SetSpriteColor(bulletsRight, 0,255,0,255)
			SetSpriteSize(bulletsRight, 10,10)
			SetSpritePosition(bulletsRight, rightB, 550)
			endif
		
		elseif Snake1X=countRight =1
		SetSpriteFlip(20,0,0)
		Snake1X=Snake1X-1
		countLeft=500
		countRight=0
endif

//bullet snake 1
SetSpritePosition(bulletsLeft, leftB, 550)
SetSpritePosition(bulletsRight, rightB, 550)

		if leftB>400
			leftB=leftB-6
			if GetSpriteCollision (2,bulletsLeft) = 1
			DeleteSprite(bulletsLeft)
			vida=vida-1
			endif
			
		elseif leftB<401
			DeleteSprite(bulletsLeft)
		endif
		
		if rightB<980
			rightB=rightB+6
			if GetSpriteCollision (2,bulletsRight) = 1
			DeleteSprite(bulletsRight)
			vida=vida-1
			endif
			
		elseif rightB>=980
			DeleteSprite(bulletsRight)
		endif

// snake 2
		if Snake2X>countLeft2
		Snake2X=Snake2X-1
			if Snake2X-100 = PersonX
			leftB2=Snake2X
			bulletsLeft2=CreateSprite(imagem13)
			SetSpriteColor(bulletsLeft2, 0,255,0,255)
			SetSpriteSize(bulletsLeft2, 10,10)
			SetSpritePosition(bulletsLeft2, leftB2, 170)
			endif
			
		elseif Snake2X=countLeft2
		SetSpriteFlip(21,180,0)
		countLeft2=1000
		countRight2=310
		Snake2X=Snake2X+1
		
		elseif Snake2X<countRight2
		Snake2X=Snake2X+1
			if Snake2X+100 = PersonX
			rightB2=Snake2X
			bulletsRight2=CreateSprite(imagem13)
			SetSpriteColor(bulletsRight2, 0,255,0,255)
			SetSpriteSize(bulletsRight2, 10,10)
			SetSpritePosition(bulletsRight2, rightB2, 170)
			endif
		
		elseif Snake2X=countRight2
		SetSpriteFlip(21,0,0)
		Snake2X=Snake2X-1
		countLeft2=10
		countRight2=0
endif

// bullet snake 2
SetSpritePosition(bulletsLeft2, leftB2, 170)
SetSpritePosition(bulletsRight2, rightB2, 170)

		if leftB2>10
			leftB2=leftB2-5
			if GetSpriteCollision (2,bulletsLeft2) = 1
			DeleteSprite(bulletsLeft2)
			vida=vida-1
			endif
		elseif leftB2<11
			DeleteSprite(bulletsLeft2)
		endif
		
		if rightB2<330
			rightB2=rightB2+5
			if GetSpriteCollision (2,bulletsRight2) = 1
			DeleteSprite(bulletsRight2)
			vida=vida-1
			endif
		elseif rightB2>=330
			DeleteSprite(bulletsRight2)
		endif

//person Right
		if GetRawKeyState( 39 )
		SetSpriteFlip(2,0,0)
		PersonX=PersonX+Speed
		PersonRight=0.5
		PersonLeft=0

//person Left
		elseif GetRawKeyState( 37 )
			SetSpriteFlip(2,180,0)
			PersonX=PersonX-Speed
			PersonRight=0
			PersonLeft=1
		else
			if(GetSpritePlaying(2)=1)
				PlaySprite(2,6,1,1,4)
				
		  endif
		 endif

// Platform			
		if GetSpriteCollision(2,platform1)=1 or Jump=1 
			Fall=0
		elseif GetSpriteCollision(2,barril)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform2)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform3)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform4)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform5)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform6)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,pedra)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform7)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform8)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform9)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform10)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform11)=1 or Jump=1
			Fall=0
		elseif GetSpriteCollision(2,platform12)=1 or Jump=1
			Fall=0
		else 
			Fall=1
		endif
		
		

			if Fall=0
				PersonY=PersonY+0
			elseif Fall=1
				PersonY=PersonY+100
			endif
			
			
		
		If GetRawKeyPressed (65)
			Jump=1
			endif
			
		If Jump =1
			Fall=0
			JumpTimer=JumpTimer+1
			Movement = 2
					If JumpTimer<30
						PersonY=PersonY-Movement
					elseif JumpTimer>30
						PersonY=Persony+Movement
				endif
			endif	


		if GetSpriteCollision (2,platform1) and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
		
			elseif GetSpriteCollision (2,barril)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
		
			elseif GetSpriteCollision (2,platform2)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform3)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform4)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform5)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform6)=1 and JumpTimer >20
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,pedra)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform7)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform8)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform9)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform10)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform11)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
			
			elseif GetSpriteCollision (2,platform12)=1 and JumpTimer >30
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
		endif
		

//coleta
		if GetSpriteCollision (2,baoba1)=1
		DeleteSprite(baoba1)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba2)=1
		DeleteSprite(baoba2)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba3)=1
		DeleteSprite(baoba3)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba4)=1
		DeleteSprite(baoba4)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba5)=1
		DeleteSprite(baoba5)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba6)=1
		DeleteSprite(baoba6)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba7)=1
		DeleteSprite(baoba7)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba8)=1
		DeleteSprite(baoba8)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba9)=1
		DeleteSprite(baoba9)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba10)=1
		DeleteSprite(baoba10)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba11)=1
		DeleteSprite(baoba11)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba12)=1
		DeleteSprite(baoba12)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba13)=1
		DeleteSprite(baoba13)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba14)=1
		DeleteSprite(baoba14)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba15)=1
		DeleteSprite(baoba15)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba16)=1
		DeleteSprite(baoba16)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba17)=1
		DeleteSprite(baoba17)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba18)=1
		DeleteSprite(baoba18)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba19)=1
		DeleteSprite(baoba19)
		pontos=pontos+1
		
		elseif GetSpriteCollision (2,baoba20)=1
		DeleteSprite(baoba20)
		pontos=pontos+1

endif

//game over
		if vida=0
		Gameover()
		endif
		
		if pontos=20 and GetSpriteCollision(2,rose)=1
		Venceu()
		endif
		
sync()
	
loop





function Gameover()
DeleteSprite(2)
DeleteSprite(20)
imagem14=LoadImage("gameover.jpg")
gameover= CreateSprite(imagem14)
SetSpriteSize (gameover, 1024, 595)
PauseMusicOGG(1)
DeleteMusicOGG(1)

   ResetTimer()
   musica= GetFileExists ("perdeu.wav")
   if musica=1
   Mgameover= LoadSound("perdeu.wav")
   PlaySound (Mgameover, 100, 1, 0)
   repeat
   sync()
   until timer()>30
   StopSound(Mgameover)
   endif
endfunction

function Venceu()
DeleteSprite(2)
DeleteSprite(20)
imagem15=LoadImage("ganhou.jpeg")
ganhou= CreateSprite(imagem15)
SetSpriteSize (ganhou, 1024, 595)
PersonX=500
PersonY=380
PauseMusicOGG(1)
DeleteMusicOGG(1)
ResetTimer()
   musica2= GetFileExists ("nivel1.wav")
   if musica2=1
   Mwin=LoadSound("nivel1.wav")
   PlaySound (Mwin, 50, 1, 0)
   repeat
   sync()
   until timer()>30
   StopSound(Mwin)
   endif
endfunction

function Score(pontos, vida)
printC("Pontos: ")
printC(pontos)
printC("  Vida: ")
PrintC(vida)
endfunction

