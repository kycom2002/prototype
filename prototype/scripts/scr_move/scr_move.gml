/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1130BA1B
/// @DnDArgument : "code" "/// horizontal collision.$(13_10)var hsp = argument[0];$(13_10)$(13_10)if(place_meeting(x+hsp,y,obj_wall))$(13_10)	{$(13_10)		while(!place_meeting(x+sign(hsp),y,obj_wall))$(13_10)		{$(13_10)			x += sign(hsp);$(13_10)		$(13_10)		}$(13_10)		hsp=0;$(13_10)	$(13_10)	}$(13_10)x+=hsp;$(13_10)$(13_10)if (keyboard_check(vk_shift))$(13_10)	{$(13_10)	if(key_right || -key_left)$(13_10)		{$(13_10)		rhsp = move * runSpeed;$(13_10)		obj_witch.stamina -= 1/5;$(13_10)		if(place_meeting(x+rhsp,y,obj_wall))$(13_10)			{$(13_10)				stamina +=1/5;$(13_10)				while(!place_meeting(x+sign(rhsp),y,obj_wall))$(13_10)				{$(13_10)					x += sign(hsp);$(13_10)					$(13_10)		$(13_10)				}$(13_10)				rhsp=0;$(13_10)				sprite_index=sp_witch_Standing_right;$(13_10)	$(13_10)			}$(13_10)		}x+=rhsp;$(13_10)	}$(13_10)"
/// horizontal collision.
var hsp = argument[0];

if(place_meeting(x+hsp,y,obj_wall))
	{
		while(!place_meeting(x+sign(hsp),y,obj_wall))
		{
			x += sign(hsp);
		
		}
		hsp=0;
	
	}
x+=hsp;

if (keyboard_check(vk_shift))
	{
	if(key_right || -key_left)
		{
		rhsp = move * runSpeed;
		obj_witch.stamina -= 1/5;
		if(place_meeting(x+rhsp,y,obj_wall))
			{
				stamina +=1/5;
				while(!place_meeting(x+sign(rhsp),y,obj_wall))
				{
					x += sign(hsp);
					
		
				}
				rhsp=0;
				sprite_index=sp_witch_Standing_right;
	
			}
		}x+=rhsp;
	}