/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 333895E9
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(place_meeting(x-4,y,obj_witch) && keyboard_check(vk_right))$(13_10)	{$(13_10)	if(keyboard_check(ord("E")))$(13_10)		{$(13_10)			x+=2.5;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)if(place_meeting(x+4,y,obj_witch) && keyboard_check(vk_left))$(13_10)	{$(13_10)	if(keyboard_check(ord("E")))$(13_10)		{$(13_10)		x-=2.5;$(13_10)		}$(13_10)	}"
/// @description Execute Code
if(place_meeting(x-4,y,obj_witch) && keyboard_check(vk_right))
	{
	if(keyboard_check(ord("E")))
		{
			x+=2.5;
		}
	}
	
if(place_meeting(x+4,y,obj_witch) && keyboard_check(vk_left))
	{
	if(keyboard_check(ord("E")))
		{
		x-=2.5;
		}
	}