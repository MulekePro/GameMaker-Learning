function PlayerScriptS()
{

    var horizoltanspeed = keyboard_check(ord("D")) - keyboard_check(ord("A")); //retorna 1 se for D e -1 se For A
    var jump = keyboard_check_pressed(vk_space);


   if (!place_meeting(x + (horizoltanspeed * velocidadespeed),y, Objchao)){
	   x += horizoltanspeed * velocidadespeed;
	   
	    }
	   


	vspd += gravidade;


    if (jump && place_meeting(x, y + 1, Objchao)) //aqui verifico se o objeto player esta no chão com place_meeting e se a tecla foi pressionada 
    {
        vspd = -10; //tamanho do pulo
    }
	
	if (!place_meeting(x, y + vspd, Objchao)) //verifico se o player não esta no chão e vou aumentando a gravidade
    {
       
        y += vspd;
    }
    else //se ja tiver no chão eu reseto o vspd
    {

        vspd = 0;
    }
}