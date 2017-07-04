/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 333895E9
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//if(place_meeting(x-4,y,obj_witch) && keyboard_check(vk_right))$(13_10)//	{$(13_10)//	if(keyboard_check(ord("E")))$(13_10)//		{$(13_10)//			x+=2.5;$(13_10)//		}$(13_10)//	}$(13_10)	$(13_10)//if(place_meeting(x+4,y,obj_witch) && keyboard_check(vk_left))$(13_10)//	{$(13_10)//	if(keyboard_check(ord("E")))$(13_10)//		{$(13_10)//		x-=2.5;$(13_10)//		}$(13_10)//	}$(13_10)$(13_10)$(13_10)$(13_10)/*	testing out what this does$(13_10)show_debug_message("block...");$(13_10)hsp = obj_witch.hsp;$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if( obj_block.x != xpos && obj_block.y != ypos )$(13_10){$(13_10)	//moved = true;$(13_10)	if(place_meeting(x+hsp,y,obj_block))$(13_10)	{$(13_10)		show_debug_message("block...");$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_block))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		$(13_10)		}$(13_10)		hsp=0;$(13_10)		obj_witch.hsp = hsp;$(13_10)	$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)	//moved = false;$(13_10)	if(place_meeting(x+8,y,obj_witch) && keyboard_check(ord("E")))$(13_10)	{$(13_10)		$(13_10)		if(keyboard_check(vk_right))$(13_10)		{$(13_10)			show_debug_message("right + [block, witch]");$(13_10)			x+=2.5/2;$(13_10)		}$(13_10)		if(keyboard_check(vk_left))$(13_10)		{$(13_10)			show_debug_message("left + [block, witch]");$(13_10)			x-=2.5/2;$(13_10)		}$(13_10)		$(13_10)	}$(13_10)	if(place_meeting(x-8,y,obj_witch) && keyboard_check(ord("E")))$(13_10)	{$(13_10)		if(keyboard_check(vk_left))$(13_10)		{$(13_10)			show_debug_message("left + [witch, block]");$(13_10)			x-=2.5/2;$(13_10)		}$(13_10)		if(keyboard_check(vk_right))$(13_10)		{$(13_10)			show_debug_message("right + [witch, block]");$(13_10)			x+=2.5/2;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)*/$(13_10)$(13_10)$(13_10)vspd = 2;$(13_10)//	vertical collision with wall object$(13_10)if(place_meeting(x,y+vspd,obj_wall))$(13_10){$(13_10)	while(!place_meeting(x,y+sign(vspd),obj_wall))$(13_10)	{$(13_10)		y += sign(vspd);$(13_10)	}$(13_10)	vspd=0;$(13_10)} else $(13_10)	y += 4;"
/// @description Execute Code

//if(place_meeting(x-4,y,obj_witch) && keyboard_check(vk_right))
//	{
//	if(keyboard_check(ord("E")))
//		{
//			x+=2.5;
//		}
//	}
	
//if(place_meeting(x+4,y,obj_witch) && keyboard_check(vk_left))
//	{
//	if(keyboard_check(ord("E")))
//		{
//		x-=2.5;
//		}
//	}



/*	testing out what this does
show_debug_message("block...");
hsp = obj_witch.hsp;




if( obj_block.x != xpos && obj_block.y != ypos )
{
	//moved = true;
	if(place_meeting(x+hsp,y,obj_block))
	{
		show_debug_message("block...");
		while(!place_meeting(x+sign(hsp),y,obj_block))
		{
			x += sign(hsp);
		
		}
		hsp=0;
		obj_witch.hsp = hsp;
	
	}
}
else
{
	//moved = false;
	if(place_meeting(x+8,y,obj_witch) && keyboard_check(ord("E")))
	{
		
		if(keyboard_check(vk_right))
		{
			show_debug_message("right + [block, witch]");
			x+=2.5/2;
		}
		if(keyboard_check(vk_left))
		{
			show_debug_message("left + [block, witch]");
			x-=2.5/2;
		}
		
	}
	if(place_meeting(x-8,y,obj_witch) && keyboard_check(ord("E")))
	{
		if(keyboard_check(vk_left))
		{
			show_debug_message("left + [witch, block]");
			x-=2.5/2;
		}
		if(keyboard_check(vk_right))
		{
			show_debug_message("right + [witch, block]");
			x+=2.5/2;
		}
	}
	
}

*/


vspd = 2;
//	vertical collision with wall object
if(place_meeting(x,y+vspd,obj_wall))
{
	while(!place_meeting(x,y+sign(vspd),obj_wall))
	{
		y += sign(vspd);
	}
	vspd=0;
} else 
	y += 4;/**/