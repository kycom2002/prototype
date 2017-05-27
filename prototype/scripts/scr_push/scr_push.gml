/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 30D53178
/// @DnDArgument : "code" "/// scr_push$(13_10)if(place_meeting(x+hsp,y,obj_block))$(13_10){$(13_10)	var block = instance_place(x+hsp,y,obj_block);$(13_10)	with(block)$(13_10)	{$(13_10)		scr_move(obj_witch.hsp/2);$(13_10)	}$(13_10)	hsp/=2;$(13_10)}$(13_10)$(13_10)"
/// scr_push
if(place_meeting(x+hsp,y,obj_block))
{
	var block = instance_place(x+hsp,y,obj_block);
	with(block)
	{
		scr_move(obj_witch.hsp/2);
	}
	hsp/=2;
}