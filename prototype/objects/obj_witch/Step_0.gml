/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5B08E4E4
/// @DnDArgument : "code" "/// Movement$(13_10)show_debug_message("\nStart of X: " + string(x));$(13_10)show_debug_message("Start of hsp: " + string(hsp));$(13_10)if(tired == false)$(13_10){$(13_10)	key_right = keyboard_check(vk_right);$(13_10)	key_left = -keyboard_check(vk_left);$(13_10)	key_jump = keyboard_check_pressed(vk_space);$(13_10)	key_action = keyboard_check_pressed(ord("E"));$(13_10)	if (key_action == 1) {$(13_10)		interact_status = !interact_status;$(13_10)		if (interact_status == false) block_ready = false;$(13_10)	}$(13_10)	move = key_right + key_left;$(13_10)	$(13_10)	hsp = move * walkSpeed;$(13_10)	$(13_10)// horizontal collision.$(13_10)	if (!block_ready)$(13_10)		if(interact_status) $(13_10)			if(place_meeting(x+hsp,y,obj_block))$(13_10)			{$(13_10)				while(!place_meeting(x+sign(hsp),y,obj_block))$(13_10)				{$(13_10)					x += sign(hsp);	$(13_10)				}$(13_10)				hsp=0;$(13_10)				block_ready = true;$(13_10)			}$(13_10)	//else $(13_10)	if(place_meeting(x+hsp,y,obj_wall))$(13_10)	{$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		$(13_10)		}$(13_10)		hsp=0;$(13_10)	}$(13_10)// horizontal movement$(13_10)y += vspd;$(13_10)$(13_10)$(13_10)$(13_10)// vertical collision$(13_10)	if(place_meeting(x,y+vspd,obj_wall))$(13_10)	{$(13_10)		while(!place_meeting(x,y+sign(vspd),obj_wall))$(13_10)		{$(13_10)			y += sign(vspd);$(13_10)		$(13_10)		}$(13_10)		vspd=0;$(13_10)	}$(13_10)$(13_10)$(13_10)	if(stamina<0) // stamina won't go blow 0$(13_10)	{$(13_10)		stamina =0;$(13_10)	}$(13_10)	if(stamina > 100) // maximum stamina$(13_10)	{$(13_10)		stamina = 100;$(13_10)	}$(13_10)	if (debug) stamina = 100;$(13_10)	$(13_10)$(13_10)// check if ground$(13_10)if(place_meeting(x,y+2, obj_wall))$(13_10){$(13_10)	vspd =0;$(13_10)	//jumping$(13_10)	if(key_jump)$(13_10)	{$(13_10)		vspd= -jspd;$(13_10)	}$(13_10)	$(13_10)}$(13_10)else$(13_10){$(13_10)	//gravity$(13_10)	if(vspd < 6)$(13_10)	{$(13_10)		vspd += grav;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)$(13_10)	stamina += 1/15;$(13_10)	//animate$(13_10)	if(move!=0) image_xscale = move;$(13_10)	$(13_10)	if(hsp!=0) sprite_index = sp_witch_Walking_right; $(13_10)	else sprite_index = sp_witch_Standing_right;$(13_10)	// run horizontal$(13_10)	if (keyboard_check(vk_shift))$(13_10)	{$(13_10)		if(key_right || -key_left)$(13_10)		{$(13_10)			sprite_index = sp_witch_Running_right;$(13_10)			hsp = move * runSpeed;$(13_10)			obj_witch.stamina -= 1/5;$(13_10)			if(place_meeting(x+hsp,y,obj_wall))$(13_10)			{$(13_10)				show_debug_message("\tRunning " + string(move) + " way with " + string(hsp) + " speed but next to wall");$(13_10)				stamina +=1/5;$(13_10)				while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)				{$(13_10)					x += sign(hsp);$(13_10)				}$(13_10)				hsp=0;$(13_10)				sprite_index = sp_witch_Standing_right;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	show_debug_message("x-coord for place meeting: " + string(x));$(13_10)	if(place_meeting(x+8,y,obj_block) && block_ready)$(13_10)	{$(13_10)		//hold = true;$(13_10)		//sprite_index = sp_witch_pushing_transition;$(13_10)		if(keyboard_check(vk_right))$(13_10)		{$(13_10)			show_debug_message("pushing right towards block");$(13_10)			sprite_index = sp_witch_pushing;$(13_10)			//hsp/=2;$(13_10)			stamina-=1/10;$(13_10)		} else if(keyboard_check(vk_left))$(13_10)		{$(13_10)			show_debug_message("pulling left away block");$(13_10)			show_debug_message("	move: " + string(move));$(13_10)			image_xscale = -move;$(13_10)			sprite_index = sp_witch_pulling;$(13_10)			//hsp/=2;$(13_10)			stamina-=1/10;$(13_10)		}$(13_10)		$(13_10)	} else if(place_meeting(x-8,y,obj_block) && block_ready)$(13_10)	{$(13_10)		//hold = true;$(13_10)		//sprite_index = sp_witch_pushing_transition;$(13_10)		if(keyboard_check(vk_left))$(13_10)		{$(13_10)			show_debug_message("pushing left towards block");$(13_10)			sprite_index = sp_witch_pushing;$(13_10)			//hsp/=2;$(13_10)			stamina-=1/10;$(13_10)		} else$(13_10)		if(keyboard_check(vk_right))$(13_10)		{$(13_10)			show_debug_message("pulling right away block");$(13_10)			image_xscale = -move;	$(13_10)			sprite_index = sp_witch_pulling;$(13_10)			//hsp/=2;$(13_10)			stamina-=1/10;$(13_10)		}$(13_10)	}$(13_10)	//if(place_meeting(x+10,y,obj_block) && keyboard_check(vk_right))$(13_10)	//{$(13_10)	//	if(keyboard_check(ord("E")))$(13_10)	//	{$(13_10)	//	sprite_index=sp_witch_walking_injured;$(13_10)	//	}$(13_10)	//}$(13_10)	//if(place_meeting(x-10,y,obj_block) && keyboard_check(vk_left))$(13_10)	//{$(13_10)	//	if(keyboard_check(ord("E")))$(13_10)	//	{$(13_10)	//	sprite_index=sp_witch_walking_injured;$(13_10)	//	}$(13_10)	//}$(13_10)	if(stamina <= 0)$(13_10)	{$(13_10)		tired = true;$(13_10)		sprite_index = sp_witch_Panting_right;$(13_10)		alarm[0] = 90;$(13_10)			$(13_10)	}$(13_10)	//vertical movement$(13_10)	show_debug_message("\tx: " + string(x) + "\n\thsp: " + string(hsp));$(13_10)	x += hsp;$(13_10)	$(13_10)	if (block_ready)$(13_10)		 inst_77BC2ED5.x += hsp;$(13_10)} else {$(13_10)	vspd = 2;$(13_10)	if(place_meeting(x,y+vspd,obj_wall))$(13_10)	{$(13_10)		while(!place_meeting(x,y+sign(vspd),obj_wall))$(13_10)		{$(13_10)			y += sign(vspd);$(13_10)		}$(13_10)		vspd=0;$(13_10)	} else $(13_10)		y += 1;$(13_10)}$(13_10)// Player death$(13_10)//image_alpha = hp/100;$(13_10)//removed to use hide ability.$(13_10)$(13_10)if (y >= 500) instance_create_depth(0,0,0,obj_gameover);$(13_10)if (hp <=0) instance_create_depth(0,0,0,obj_gameover);$(13_10)//game_end();$(13_10)$(13_10)$(13_10)//if(tired = false)$(13_10)//{$(13_10)	$(13_10)//	if(keyboard_check(vk_right))$(13_10)//	{$(13_10)//		x += walkSpeed;  $(13_10)//		image_speed = walkSpeed / 4; // how smooth your animate will be. $(13_10)//		sprite_index = sp_witch_Walking_right;$(13_10)//		if(keyboard_check(vk_shift))$(13_10)//		{$(13_10)//			x += runSpeed;$(13_10)//			sprite_index = sp_witch_Running_right;$(13_10)//			obj_witch.stamina -= 1/5;$(13_10)//			if(stamina < 0)$(13_10)//			{$(13_10)//				stamina = 0;$(13_10)//			}$(13_10)//			if(stamina == 0)$(13_10)//			{$(13_10)//				sprite_index = sp_witch_Walking_right;$(13_10)//				x -= runSpeed;$(13_10)//			}$(13_10)//		}$(13_10)//		if(stamina == 0)$(13_10)//		{$(13_10)//			tired = true;$(13_10)//			sprite_index = sp_witch_Panting_right;$(13_10)//			alarm[0]=90;$(13_10)	$(13_10)//		}$(13_10)		$(13_10)	$(13_10)			$(13_10)//	}$(13_10)	$(13_10)	$(13_10)//	if(keyboard_check(vk_left))$(13_10)//	{$(13_10)//		x -= walkSpeed;$(13_10)		$(13_10)//		image_speed = walkSpeed /4;$(13_10)//		sprite_index = sp_witch_Walking_left;$(13_10)//		if(keyboard_check(vk_shift))$(13_10)//		{$(13_10)//			x -= runSpeed;$(13_10)//			sprite_index = sp_witch_Running_left;$(13_10)//			obj_witch.stamina -= 1/5;$(13_10)//			if(stamina < 0)$(13_10)//			{$(13_10)//				stamina =0;$(13_10)//			}$(13_10)//			if(stamina == 0)$(13_10)//			{$(13_10)//				sprite_index = sp_witch_Walking_left;$(13_10)//				x += runSpeed;$(13_10)//			}$(13_10)//		}$(13_10)//		if(stamina == 0)$(13_10)//		{$(13_10)//			tired = true;$(13_10)//			sprite_index = sp_witch_Panting_left;$(13_10)//			alarm[0]=90;$(13_10)	$(13_10)//		}$(13_10)	$(13_10)	$(13_10)//	}$(13_10)	$(13_10)	$(13_10)//}$(13_10)$(13_10)//if(keyboard_check(vk_nokey))$(13_10)//{$(13_10)//	sprite_index = sp_witch_Standing_right;$(13_10)	$(13_10)//}$(13_10)$(13_10)$(13_10)//stamina += 1/15;"
/// Movement
show_debug_message("\nStart of X: " + string(x));
show_debug_message("Start of hsp: " + string(hsp));
if(tired == false)
{
	key_right = keyboard_check(vk_right);
	key_left = -keyboard_check(vk_left);
	key_jump = keyboard_check_pressed(vk_space);
	key_action = keyboard_check_pressed(ord("E"));
	if (key_action == 1) {
		interact_status = !interact_status;
		if (interact_status == false) block_ready = false;
	}
	move = key_right + key_left;
	
	hsp = move * walkSpeed;
	
// horizontal collision.
	if (!block_ready)
		if(interact_status) 
			if(place_meeting(x+hsp,y,obj_block))
			{
				while(!place_meeting(x+sign(hsp),y,obj_block))
				{
					x += sign(hsp);	
				}
				hsp=0;
				block_ready = true;
			}
	//else 
	if(place_meeting(x+hsp,y,obj_wall))
	{
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		
		}
		hsp=0;
	}
// horizontal movement
y += vspd;



// vertical collision
	if(place_meeting(x,y+vspd,obj_wall))
	{
		while(!place_meeting(x,y+sign(vspd),obj_wall))
		{
			y += sign(vspd);
		
		}
		vspd=0;
	}


	if(stamina<0) // stamina won't go blow 0
	{
		stamina =0;
	}
	if(stamina > 100) // maximum stamina
	{
		stamina = 100;
	}
	if (debug) stamina = 100;
	

// check if ground
if(place_meeting(x,y+2, obj_wall))
{
	vspd =0;
	//jumping
	if(key_jump)
	{
		vspd= -jspd;
	}
	
}
else
{
	//gravity
	if(vspd < 6)
	{
		vspd += grav;
	}
}



	stamina += 1/15;
	//animate
	if(move!=0) image_xscale = move;
	
	if(hsp!=0) sprite_index = sp_witch_Walking_right; 
	else sprite_index = sp_witch_Standing_right;
	// run horizontal
	if (keyboard_check(vk_shift))
	{
		if(key_right || -key_left)
		{
			sprite_index = sp_witch_Running_right;
			hsp = move * runSpeed;
			obj_witch.stamina -= 1/5;
			if(place_meeting(x+hsp,y,obj_wall))
			{
				show_debug_message("\tRunning " + string(move) + " way with " + string(hsp) + " speed but next to wall");
				stamina +=1/5;
				while(!place_meeting(x+sign(hsp),y,obj_wall))
				{
					x += sign(hsp);
				}
				hsp=0;
				sprite_index = sp_witch_Standing_right;
			}
		}
	}
	show_debug_message("x-coord for place meeting: " + string(x));
	if(place_meeting(x+8,y,obj_block) && block_ready)
	{
		//hold = true;
		//sprite_index = sp_witch_pushing_transition;
		if(keyboard_check(vk_right))
		{
			show_debug_message("pushing right towards block");
			sprite_index = sp_witch_pushing;
			//hsp/=2;
			stamina-=1/10;
		} else if(keyboard_check(vk_left))
		{
			show_debug_message("pulling left away block");
			show_debug_message("	move: " + string(move));
			image_xscale = -move;
			sprite_index = sp_witch_pulling;
			//hsp/=2;
			stamina-=1/10;
		}
		
	} else if(place_meeting(x-8,y,obj_block) && block_ready)
	{
		//hold = true;
		//sprite_index = sp_witch_pushing_transition;
		if(keyboard_check(vk_left))
		{
			show_debug_message("pushing left towards block");
			sprite_index = sp_witch_pushing;
			//hsp/=2;
			stamina-=1/10;
		} else
		if(keyboard_check(vk_right))
		{
			show_debug_message("pulling right away block");
			image_xscale = -move;	
			sprite_index = sp_witch_pulling;
			//hsp/=2;
			stamina-=1/10;
		}
	}
	//if(place_meeting(x+10,y,obj_block) && keyboard_check(vk_right))
	//{
	//	if(keyboard_check(ord("E")))
	//	{
	//	sprite_index=sp_witch_walking_injured;
	//	}
	//}
	//if(place_meeting(x-10,y,obj_block) && keyboard_check(vk_left))
	//{
	//	if(keyboard_check(ord("E")))
	//	{
	//	sprite_index=sp_witch_walking_injured;
	//	}
	//}
	if(stamina <= 0)
	{
		tired = true;
		sprite_index = sp_witch_Panting_right;
		alarm[0] = 90;
			
	}
	//vertical movement
	show_debug_message("\tx: " + string(x) + "\n\thsp: " + string(hsp));
	x += hsp;
	
	if (block_ready)
		 inst_77BC2ED5.x += hsp;
} else {
	vspd = 2;
	if(place_meeting(x,y+vspd,obj_wall))
	{
		while(!place_meeting(x,y+sign(vspd),obj_wall))
		{
			y += sign(vspd);
		}
		vspd=0;
	} else 
		y += 1;
}
// Player death
//image_alpha = hp/100;
//removed to use hide ability.

if (y >= 500) instance_create_depth(0,0,0,obj_gameover);
if (hp <=0) instance_create_depth(0,0,0,obj_gameover);
//game_end();


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