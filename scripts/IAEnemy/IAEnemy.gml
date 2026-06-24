function IAEnemy(){


 vspdenemy += enemygravity;
 if (instance_exists(ObjPlayer)){
   var Go = sign(ObjPlayer.x -x) //ObjPlayer.x se refere a loc do player enquanto o outro x é do objeyo inimigo

  if!(place_meeting(x + Go * velocidadeenemy, y, Objchao)){
	    x += Go * velocidadeenemy;
      show_debug_message("andando ate " + string(x));
  }
    if(!place_meeting(x,y + vspdenemy, Objchao)){
			  y += vspdenemy;
  
  }
  else
  {
  vspdenemy = 0;
  }
  if(instance_exists(ObjPlayer)){
   if(place_meeting(x + Go *velocidadeenemy,y, ObjPlayer)){
	  instance_destroy(ObjPlayer);
  }
  }
 

 }
}