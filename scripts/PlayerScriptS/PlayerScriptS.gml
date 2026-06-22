function PlayerScriptS()
{

    var horizoltanspeed = keyboard_check(ord("D")) - keyboard_check(ord("A")); //retorna 1 se for D e -1 se For A
    var verticalspeed = keyboard_check(ord("S")) - keyboard_check(ord("W"));

//place_meeting usa para prever o proximo passo
    if (!place_meeting(x + horizoltanspeed * velocidadespeed, y, Objchao))
    {
        x += horizoltanspeed * velocidadespeed;
    }

      
    if (!place_meeting(x, y + verticalspeed * velocidadespeed, Objchao))
    {
        y += verticalspeed * velocidadespeed;
    }
}