
// Project: testedemais 
// Project: botao 
// Created: 2021-01-20


SetWindowTitle( "The Rose" )
SetWindowSize( 1024, 595, 0 )
SetVirtualResolution( 1024, 595 ) // doesn't have to match the window

//------------------------------------------------------ Sprites -------------------------------------------------------------------------

CreateSprite(1,0) //background
CreateSprite(2,0) //person
CreateSprite(14,0) //platform
CreateSprite(15,0) //platform

AddSpriteAnimationFrame(1, LoadImage("fundonivel2.png"))
AddSpriteAnimationFrame(2, LoadImage("andar01.png"))
AddSpriteAnimationFrame(2, LoadImage("andar02.png"))
AddSpriteAnimationFrame(2, LoadImage("andar03.png"))
AddSpriteAnimationFrame(2, LoadImage("andar04.png"))
AddSpriteAnimationFrame(14, LoadImage("platform3.png"))
AddSpriteAnimationFrame(15, LoadImage("platform3.png"))

LoadImage(5,"ataques.png")


//---------------------------------------------------- Coordenadas ------------------------------------------------------------------------

BackgroundX=0
BackgroundY=0
/*PersonX=200
PersonY=200*/

PersonX=0
PersonY=380
Speed=1

//JUMP
JumpTimer=0

//Adding the floorś
FloorX=0
FloorY=568


PlaySprite(2,4,1,1,4)

type Bullet
	Active
	BulletX
	BulletY
endtype

type BulletLeft
	ActiveLeft
	BulletLeftX
	BulletLeftY
endtype

dim allBullets [3] as Bullet

for b=0 to 3
	CreateSprite (3+b,5)
	SetSpriteVisible (3+b,0)
next b

dim allBullets2[3] as BulletLeft

for b2=0 to 3
	CreateSprite(7+b2,5)
	SetSpriteVisible(7+b2,0)
next b2

//------------------------------------------------------- Loop ---------------------------------------------------------------------------
do

SetSpritePosition ( 1,BackgroundX, BackgroundY )
SetSpritePosition ( 2, PersonX, PersonY )


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
				PlaySprite(2,6,1,1,4)
				
		  endif
		 endif
		
//Bullets 
		if GetRawKeyState(83) and PersonRight=1
			 
			 if shooting=0
				 shooting=1
				 for b=0 to 3
					 if allBullets[b].Active=0
					 allBullets[b].Active=1
					 allBullets[b].BulletX=PersonX+100
					 allBullets[b].BulletY=PersonY+30
					 
					 SetSpriteVisible(3+b, 1)
					 exit
					 endif
					 next b
					 endif
				
			  else
				 shooting=0
			  endif
			  
			  for b = 0 to 3
				  if allBullets[b].Active=1
				  allBullets[b].BulletX=allBullets[b].BulletX+3
				  if allBullets[b].BulletX>900 then allBullets[b].Active=0
				  endif
				  
				  next b
				  
			 for b=0 to 3 
				 SetSpritePosition(3+b, allBullets[b].BulletX, allBullets[b].BulletY)
				 next b
				 
			if GetRawKeyState (83) and PersonLeft=1
				if shooting2=0
					shooting2=1
				for b2=0 to 3 
					if allBullets2[b2].ActiveLeft=0
						allBullets2[b2].ActiveLeft=1
						allBullets2[b2].BulletLeftX=PersonX-20
						allBullets2[b2].BulletLeftY=PersonY+30
				SetSpriteVisible(7+b2,1)
				exit
				endif
				next b2
				endif
				
			else
				shooting2=0
			endif
			
			for b2=0 to 3
				SetSpritePosition (7+b2,allBullets2[b2].BulletLeftX, allBullets2[b2].BulletLeftY)
			next b2

// Platform
SetSpritePosition ( 14,FloorX, FloorY)			
SetSpriteSize(14,200,60)	
SetSpriteSize(15,200,60)		
SetSpritePosition ( 15,FloorX+300, FloorY-160)

		if GetSpriteCollision(2,14)=1 or Jump=1 
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
					If JumpTimer<50
						PersonY=PersonY-Movement
					elseif JumpTimer>50
						PersonY=Persony+Movement
					endif
					
		If GetSpriteCollision (2,14)=1 and JumpTimer >50
			Movement=0
			Fall=0
			JumpTimer=0
			Jump=0
		endif

endif
			
sync()
	
	
loop
