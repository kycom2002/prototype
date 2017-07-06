/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D3E4C58
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//if (sprite_index == sp_enemy) {$(13_10)//	if (ghost) {$(13_10)//		image_alpha += .02;$(13_10)//		if (image_alpha >= 1) ghost = false;$(13_10)//	} else {$(13_10)//		image_alpha -= .02;$(13_10)//		if (image_alpha <= 0) ghost = true;$(13_10)//	}$(13_10)//} else {$(13_10)//	image_alpha = 1;$(13_10)//}$(13_10)if(distance_to_object(obj_witch) < aggroRange)$(13_10){$(13_10)	if(!collision_line(x,y,obj_witch.x,y,obj_wall,false,false))$(13_10)	{$(13_10)		if(!obj_witch.hide_ability = true)$(13_10)		{$(13_10)		mp_potential_step(obj_witch.x,obj_witch.y,hsp,true);$(13_10)		sprite_index = sp_enemy_follow;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)else sprite_index = sp_enemy;$(13_10)$(13_10)$(13_10)$(13_10)if(place_meeting(x,y+2, obj_wall))$(13_10){$(13_10)	vsp =0;$(13_10)	$(13_10)}$(13_10)else$(13_10){$(13_10)	//gravity$(13_10)	if(vsp < 6)$(13_10)	{$(13_10)		vsp += grav;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)//script_execute(state);$(13_10)$(13_10)//switch(state)$(13_10)//{$(13_10)//	case e_state.idle:$(13_10)//	{$(13_10)//		hsp = 0;$(13_10)//		// gravity$(13_10)//		vsp = (min(7,vsp+0.05));$(13_10)//		if(distance_to_object(obj_witch) < 150) state= e_state.chase;$(13_10)//	}$(13_10)//	break;$(13_10)//	case e_state.chase:$(13_10)//	{$(13_10)//		dir = sign(obj_witch.x - x);$(13_10)//		hsp = dir * 2;$(13_10)//		// gravity$(13_10)//		vsp = (min(7,vsp+0.05));$(13_10)//		if(distance_to_object(obj_witch) > 179) state= e_state.idle;$(13_10)//	}$(13_10)//	break;$(13_10)//}$(13_10)if(place_meeting(x+hsp,y,obj_wall))$(13_10)	{$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		$(13_10)		}$(13_10)		hsp=0;$(13_10)	}$(13_10)$(13_10)	// vertical movement$(13_10)	y += vsp;$(13_10)$(13_10)	// vertical collision$(13_10)	if(place_meeting(x,y+vsp,obj_wall))$(13_10)	{$(13_10)		while(!place_meeting(x,y+sign(vsp),obj_wall))$(13_10)		{$(13_10)			y += sign(vsp);$(13_10)		$(13_10)		}$(13_10)		vsp=0;$(13_10)	}"
/// @description Execute Code
//if (sprite_index == sp_enemy) {
//	if (ghost) {
//		image_alpha += .02;
//		if (image_alpha >= 1) ghost = false;
//	} else {
//		image_alpha -= .02;
//		if (image_alpha <= 0) ghost = true;
//	}
//} else {
//	image_alpha = 1;
//}
if(distance_to_object(obj_witch) < aggroRange)
{
	if(!collision_line(x,y,obj_witch.x,y,obj_wall,false,false))
	{
		if(!obj_witch.hide_ability = true)
		{
		mp_potential_step(obj_witch.x,obj_witch.y,hsp,true);
		sprite_index = sp_enemy_follow;
		}
	}
}
else sprite_index = sp_enemy;



if(place_meeting(x,y+2, obj_wall))
{
	vsp =0;
	
}
else
{
	//gravity
	if(vsp < 6)
	{
		vsp += grav;
	}
}


//script_execute(state);

//switch(state)
//{
//	case e_state.idle:
//	{
//		hsp = 0;
//		// gravity
//		vsp = (min(7,vsp+0.05));
//		if(distance_to_object(obj_witch) < 150) state= e_state.chase;
//	}
//	break;
//	case e_state.chase:
//	{
//		dir = sign(obj_witch.x - x);
//		hsp = dir * 2;
//		// gravity
//		vsp = (min(7,vsp+0.05));
//		if(distance_to_object(obj_witch) > 179) state= e_state.idle;
//	}
//	break;
//}
if(place_meeting(x+hsp,y,obj_wall))
	{
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		
		}
		hsp=0;
	}

	// vertical movement
	y += vsp;

	// vertical collision
	if(place_meeting(x,y+vsp,obj_wall))
	{
		while(!place_meeting(x,y+sign(vsp),obj_wall))
		{
			y += sign(vsp);
		
		}
		vsp=0;
	}