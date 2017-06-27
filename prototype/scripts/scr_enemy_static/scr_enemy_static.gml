/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 608FB77B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var dis;$(13_10)$(13_10)dis = point_distance(x,y,obj_witch.x,obj_witch.y);$(13_10)$(13_10)if(dis <= aggroRange)$(13_10){$(13_10)	scr_enemy_follow();$(13_10)}$(13_10)else$(13_10){$(13_10)	if(alarm[0] = -1)$(13_10)	{$(13_10)		alarm[0] = 2*room_speed;$(13_10)	}$(13_10)}"
/// @description Execute Code
var dis;

dis = point_distance(x,y,obj_witch.x,obj_witch.y);

if(dis <= aggroRange)
{
	scr_enemy_follow();
}
else
{
	if(alarm[0] = -1)
	{
		alarm[0] = 2*room_speed;
	}
}