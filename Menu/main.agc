
// Project: testedemais 
// Project: botao 
// Created: 2021-01-20


SetWindowTitle( "tamanhotestes" )
SetWindowSize( 1024, 595, 0 )

SetVirtualResolution( 1024, 595 ) // doesn't have to match the window

CreateSprite(1,LoadImage("telainicial.jpg"))

CreateSprite(1,LoadImage("telainicial.jpg"))
Menu()
end	
	
 
function Menu()
button1=1
    AddVirtualButton(button1,45,40,40)
    SetVirtualButtonAlpha(button1,192)
    SetVirtualButtonColor(button1,255,255,255)
    SetVirtualButtonSize(button1,90)
    SetVirtualButtonText(button1,"sound1")
    SetVirtualButtonVisible(button1,1)  
button2=2
	
    AddVirtualButton(button2,140,40,40)
    SetVirtualButtonAlpha(button2,192)
    SetVirtualButtonColor(button2,255,255,255)
    SetVirtualButtonSize(button2,90)
    SetVirtualButtonText(button2,"sound2")
    SetVirtualButtonVisible(button2,1)  
button3=3
	
    AddVirtualButton(button3,235,40,40)
    SetVirtualButtonAlpha(button3,192)
    SetVirtualButtonColor(button3,255,255,255)
    SetVirtualButtonSize(button3,90)
    SetVirtualButtonText(button3,"sound3")
    SetVirtualButtonVisible(button3,1)  
button4=4
	
    AddVirtualButton(button4,330,40,40)
    SetVirtualButtonAlpha(button4,192)
    SetVirtualButtonColor(button4,255,255,255)
    SetVirtualButtonSize(button4,90)
    SetVirtualButtonText(button4,"sound4")
    SetVirtualButtonVisible(button4,1)  
button5=5
	
    AddVirtualButton(button5,425,40,40)
    SetVirtualButtonAlpha(button5,192)
    SetVirtualButtonColor(button5,255,255,255)
    SetVirtualButtonSize(button5,90)
    SetVirtualButtonText(button5,"sound5")
    SetVirtualButtonVisible(button5,1)  
button6=6
	
    AddVirtualButton(button6,520,40,40)
    SetVirtualButtonAlpha(button6,192)
    SetVirtualButtonColor(button6,255,255,255)
    SetVirtualButtonSize(button6,90)
    SetVirtualButtonText(button6,"sound6")
    SetVirtualButtonVisible(button6,1)  
button7=7
	
    AddVirtualButton(button7,615,40,40)
    SetVirtualButtonAlpha(button7,192)
    SetVirtualButtonColor(button7,255,255,255)
    SetVirtualButtonSize(button7,90)
    SetVirtualButtonText(button7,"person")
    SetVirtualButtonVisible(button7,1)  
button8=8
	
    AddVirtualButton(button8,710,40,40)
    SetVirtualButtonAlpha(button8,192)
    SetVirtualButtonColor(button8,255,255,255)
    SetVirtualButtonSize(button8,90)
    SetVirtualButtonText(button8,"others")
    SetVirtualButtonVisible(button8,1)  
button9=9
	
    AddVirtualButton(button9,805,40,40)
    SetVirtualButtonAlpha(button9,192)
    SetVirtualButtonColor(button9,255,255,255)
    SetVirtualButtonSize(button9,90)
    SetVirtualButtonText(button9,"back.1")
    SetVirtualButtonVisible(button9,1) 
button10=10
	
    AddVirtualButton(button10,900,40,40)
    SetVirtualButtonAlpha(button10,192)
    SetVirtualButtonColor(button10,255,255,255)
    SetVirtualButtonSize(button10,90)
    SetVirtualButtonText(button10,"back.2")
    SetVirtualButtonVisible(button10,1)  
button11=11
	
    AddVirtualButton(button11,995,40,40)
    SetVirtualButtonAlpha(button11,192)
    SetVirtualButtonColor(button11,255,255,255)
    SetVirtualButtonSize(button11,90)
    SetVirtualButtonText(button11,"back.3")
    SetVirtualButtonVisible(button11,1)  


do

		if GetVirtualButtonPressed(button1)=1
        Tela1()  
        endif
		
		if GetVirtualButtonPressed(button2)=1

        Tela2()
        endif
        
        if GetVirtualButtonPressed(button3)=1
        Tela3()
       
        endif
        
        if GetVirtualButtonPressed(button4)=1
        Tela4()
       
        endif
        
        if GetVirtualButtonPressed(button5)=1
        Tela5()
       
        endif
        
        if GetVirtualButtonPressed(button6)=1
        Tela6()
       
        endif
        
        if GetVirtualButtonPressed(button7)=1
        Tela7()
       
        endif
		
		 if GetVirtualButtonPressed(button8)=1
        Tela8()
       
        endif
        
         if GetVirtualButtonPressed(button9)=1
        Tela9()
       
        endif

		if GetVirtualButtonPressed(button10)=1
        Tela10()
       
        endif

		if GetVirtualButtonPressed(button11)=1	
        Tela11()
       
        endif
		
			sync()
loop

    
   
        
 
endfunction

//********************************MÚSICAS*********************************//


function Tela1()
	menu= GetFileExists ("menu.wav")
	if menu=1
    musica1= LoadSound("menu.wav")
    PlaySound (musica1, 100, 1, 0)
	repeat
    sync()
	until timer()>20
	StopSound(musica1)
	endif	
endfunction

function Tela2()
   ResetTimer()
   nivel1= GetFileExists ("nivel1.wav")
   if nivel1=1
   musica2= LoadSound("nivel1.wav")
   PlaySound (musica2, 10, 1, 0)
   repeat
   sync()
   until timer()>20
   StopSound(musica2)
   endif
  
endfunction

function Tela3()
   ResetTimer()
   nivel2= GetFileExists ("nivel2.wav")
   if nivel2=1
   musica3= LoadSound("nivel2.wav")
   PlaySound (musica3, 100, 1, 0)
   repeat
   sync()
   until timer()>20
   StopSound(musica3)
   endif
	
endfunction

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

function Tela5()
   ResetTimer()
   andar= GetFileExists ("andar.wav")
   if andar=1
   musica5= LoadSound("andar.wav")
   PlaySound (musica5, 100, 1, 0)
   repeat
   sync()
   until timer()>4
   StopSound(musica5)
   endif
	
endfunction
function Tela6()
   ResetTimer()
   inimigo= GetFileExists ("perdeu.wav")
   if inimigo=1
   musica6= LoadSound("perdeu.wav")
   PlaySound (musica6, 10, 100, 0)
   repeat
   sync()
   until timer()>12
   StopSound(musica6)
   endif
	
endfunction

//******************************PERSONAGENS*************************//
function Tela7()
	
	DeleteSprite(1)
	DeleteSprite(6)
	DeleteSprite(7)
	DeleteSprite(8)
	
	
	LoadImage ( 2, "pequenoprincipe.png" )
	CreateSprite (2,2)
	SetSpritePosition ( 2, 50, 390 )
	SetSpriteAnimation ( 2, 200, 210, 12 )
	PlaySprite ( 2, 3, 1, 1, 12 )
	
	LoadImage ( 3, "cobra.png" )
	CreateSprite ( 3,3 )
	SetSpritePosition ( 3, 300, 420 )
	SetSpriteAnimation ( 3, 300, 240, 6 )
	PlaySprite ( 3, 3, 1, 1, 12 )
	SetSpriteSize(3, 170,170)
	
	LoadImage ( 4, "geografo.png" )
	CreateSprite ( 4, 4 )
	SetSpritePosition ( 4, 550, 390 )
	SetSpriteAnimation ( 4, 200, 210, 8 )
	PlaySprite ( 4, 3, 1, 1, 8 )
	
	LoadImage(5, "rosa.png")
	CreateSprite(5,5)
	SetSpritePosition ( 5, 700, 495 )
	SetSpriteSize(5, 100,100)
	SetSpritePosition ( 5, 800, 495 )	 
	
endfunction

//***************************Imagens complementares**************************//
function Tela8()
		DeleteSprite(1)
	    DeleteSprite(2)
		DeleteSprite(3)
		DeleteSprite(4)
		DeleteSprite(5)
	    DeleteSprite(6)
		DeleteSprite(7)
		DeleteSprite(8)
		DeleteSprite(9)
	    DeleteSprite(10)
	    DeleteSprite(11)
	LoadImage (6, "objetos.png")
	CreateSprite(6,6)
	SetSpritePosition ( 6, 0, 390 )
	LoadImage (7, "ataques.png")
	CreateSprite(7,7)
	SetSpritePosition ( 7, 270, 390 )
	LoadImage (8, "plataformapronto.png")
	CreateSprite(8,8)
	SetSpritePosition ( 8, 400, 70 )
	setSpritesize(8,600,500)
endfunction

//***************************Background************************************//
function Tela9()
	DeleteSprite(6)
	DeleteSprite(7)
	DeleteSprite(8)
	DeleteSprite(1)
	DeleteSprite(2)
	DeleteSprite(3)
	DeleteSprite(4)
	DeleteSprite(5)	
	LoadImage (9, "fundonivel1.png")
	CreateSprite(9,9)
endfunction

function Tela10()
	DeleteSprite(9)
	DeleteSprite(1)
	DeleteSprite(2)
	DeleteSprite(3)
	DeleteSprite(4)
	DeleteSprite(5)
	LoadImage (10, "fundonivel2.png")
	CreateSprite(10,10)
endfunction

function Tela11()
	DeleteSprite(10)
	DeleteSprite(1)
	DeleteSprite(2)
	DeleteSprite(3)
	DeleteSprite(4)
	DeleteSprite(5)
	LoadImage (11, "fundonivel3.png")
	CreateSprite(11,11)
endfunction
	





