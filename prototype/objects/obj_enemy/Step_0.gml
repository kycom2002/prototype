/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4D3E4C58
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(place_meeting(x,y+2, obj_wall))$(13_10){$(13_10)	vspd =0;$(13_10)	$(13_10)}$(13_10)else$(13_10){$(13_10)	//gravity$(13_10)	if(vspd < 6)$(13_10)	{$(13_10)		vspd += grav;$(13_10)	}$(13_10)}$(13_10)y+=vspd;$(13_10)$(13_10)script_execute(state);$(13_10)$(13_10)"
/// @description Execute Code
if(place_meeting(x,y+2, obj_wall))
{
	vspd =0;
	
}
else
{
	//gravity
	if(vspd < 6)
	{
		vspd += grav;
	}
}
y+=vspd;

script_execute(state);