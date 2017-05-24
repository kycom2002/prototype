/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B08E4E4
/// @DnDArgument : "code" "/// Movement$(13_10)if(tired = false)$(13_10){$(13_10)	key_right = keyboard_check(vk_right);$(13_10)	key_left = -keyboard_check(vk_left);$(13_10)	$(13_10)	move = key_right + key_left;$(13_10)	$(13_10)	hsp = move * walkSpeed;$(13_10)	$(13_10)	$(13_10)	if(move!=0) image_xscale = move;$(13_10)	if(move!=0) sprite_index = sp_witch_Walking_right; else sprite_index = sp_witch_Standing_right;$(13_10)	if (keyboard_check(vk_shift))$(13_10)	{$(13_10)	if(key_right || -key_left)$(13_10)		{$(13_10)		sprite_index = sp_witch_Running_right;$(13_10)		hsp = move * runSpeed;$(13_10)		obj_witch.stamina -= 1/5;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)// horizontal collision.$(13_10)	if(place_meeting(x+hsp,y,obj_wall))$(13_10)	{$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		$(13_10)		}$(13_10)		hsp=0;$(13_10)	$(13_10)	}$(13_10)	if(stamina<0) // stamina won't go blow 0$(13_10)	{$(13_10)		stamina =0;$(13_10)	}$(13_10)	if(stamina > 100) // maximum stamina$(13_10)	{$(13_10)		stamina = 100;$(13_10)	}$(13_10)	if(stamina==0)$(13_10)	{$(13_10)		tired=true;$(13_10)		sprite_index = sp_witch_Panting_right;$(13_10)		alarm[0] = 90;$(13_10)			$(13_10)	}$(13_10)	stamina += 1/15;$(13_10)	x+=hsp;$(13_10)	$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)//if(tired = false)$(13_10)//{$(13_10)	$(13_10)//	if(keyboard_check(vk_right))$(13_10)//	{$(13_10)//		x += walkSpeed;  $(13_10)//		image_speed = walkSpeed / 4; // how smooth your animate will be. $(13_10)//		sprite_index = sp_witch_Walking_right;$(13_10)//		if(keyboard_check(vk_shift))$(13_10)//		{$(13_10)//			x += runSpeed;$(13_10)//			sprite_index = sp_witch_Running_right;$(13_10)//			obj_witch.stamina -= 1/5;$(13_10)//			if(stamina < 0)$(13_10)//			{$(13_10)//				stamina = 0;$(13_10)//			}$(13_10)//			if(stamina == 0)$(13_10)//			{$(13_10)//				sprite_index = sp_witch_Walking_right;$(13_10)//				x -= runSpeed;$(13_10)//			}$(13_10)//		}$(13_10)//		if(stamina == 0)$(13_10)//		{$(13_10)//			tired = true;$(13_10)//			sprite_index = sp_witch_Panting_right;$(13_10)//			alarm[0]=90;$(13_10)	$(13_10)//		}$(13_10)		$(13_10)	$(13_10)			$(13_10)//	}$(13_10)	$(13_10)	$(13_10)//	if(keyboard_check(vk_left))$(13_10)//	{$(13_10)//		x -= walkSpeed;$(13_10)		$(13_10)//		image_speed = walkSpeed /4;$(13_10)//		sprite_index = sp_witch_Walking_left;$(13_10)//		if(keyboard_check(vk_shift))$(13_10)//		{$(13_10)//			x -= runSpeed;$(13_10)//			sprite_index = sp_witch_Running_left;$(13_10)//			obj_witch.stamina -= 1/5;$(13_10)//			if(stamina < 0)$(13_10)//			{$(13_10)//				stamina =0;$(13_10)//			}$(13_10)//			if(stamina == 0)$(13_10)//			{$(13_10)//				sprite_index = sp_witch_Walking_left;$(13_10)//				x += runSpeed;$(13_10)//			}$(13_10)//		}$(13_10)//		if(stamina == 0)$(13_10)//		{$(13_10)//			tired = true;$(13_10)//			sprite_index = sp_witch_Panting_left;$(13_10)//			alarm[0]=90;$(13_10)	$(13_10)//		}$(13_10)	$(13_10)	$(13_10)//	}$(13_10)	$(13_10)	$(13_10)//}$(13_10)$(13_10)//if(keyboard_check(vk_nokey))$(13_10)//{$(13_10)//	sprite_index = sp_witch_Standing_right;$(13_10)	$(13_10)//}$(13_10)$(13_10)$(13_10)//stamina += 1/15;"
/// Movement
if(tired = false)
{
	key_right = keyboard_check(vk_right);
	key_left = -keyboard_check(vk_left);
	
	move = key_right + key_left;
	
	hsp = move * walkSpeed;
	
	
	if(move!=0) image_xscale = move;
	if(move!=0) sprite_index = sp_witch_Walking_right; else sprite_index = sp_witch_Standing_right;
	if (keyboard_check(vk_shift))
	{
	if(key_right || -key_left)
		{
		sprite_index = sp_witch_Running_right;
		hsp = move * runSpeed;
		obj_witch.stamina -= 1/5;
		}
	}
	
// horizontal collision.
	if(place_meeting(x+hsp,y,obj_wall))
	{
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		
		}
		hsp=0;
	
	}
	if(stamina<0) // stamina won't go blow 0
	{
		stamina =0;
	}
	if(stamina > 100) // maximum stamina
	{
		stamina = 100;
	}
	if(stamina==0)
	{
		tired=true;
		sprite_index = sp_witch_Panting_right;
		alarm[0] = 90;
			
	}
	stamina += 1/15;
	x+=hsp;
	
	
}


//if(tired = false)
//{
	
//	if(keyboard_check(vk_right))
//	{
//		x += walkSpeed;  
//		image_speed = walkSpeed / 4; // how smooth your animate will be. 
//		sprite_index = sp_witch_Walking_right;
//		if(keyboard_check(vk_shift))
//		{
//			x += runSpeed;
//			sprite_index = sp_witch_Running_right;
//			obj_witch.stamina -= 1/5;
//			if(stamina < 0)
//			{
//				stamina = 0;
//			}
//			if(stamina == 0)
//			{
//				sprite_index = sp_witch_Walking_right;
//				x -= runSpeed;
//			}
//		}
//		if(stamina == 0)
//		{
//			tired = true;
//			sprite_index = sp_witch_Panting_right;
//			alarm[0]=90;
	
//		}
		
	
			
//	}
	
	
//	if(keyboard_check(vk_left))
//	{
//		x -= walkSpeed;
		
//		image_speed = walkSpeed /4;
//		sprite_index = sp_witch_Walking_left;
//		if(keyboard_check(vk_shift))
//		{
//			x -= runSpeed;
//			sprite_index = sp_witch_Running_left;
//			obj_witch.stamina -= 1/5;
//			if(stamina < 0)
//			{
//				stamina =0;
//			}
//			if(stamina == 0)
//			{
//				sprite_index = sp_witch_Walking_left;
//				x += runSpeed;
//			}
//		}
//		if(stamina == 0)
//		{
//			tired = true;
//			sprite_index = sp_witch_Panting_left;
//			alarm[0]=90;
	
//		}
	
	
//	}
	
	
//}

//if(keyboard_check(vk_nokey))
//{
//	sprite_index = sp_witch_Standing_right;
	
//}


//stamina += 1/15;