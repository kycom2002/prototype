/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E5630A0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var dis = point_distance(x,y,obj_witch.x, obj_witch.y)$(13_10)$(13_10)if(dis <= aggroRange)$(13_10){$(13_10)	//Head towards witch$(13_10)	mp_potential_step(obj_witch.x, obj_witch.y, enemySpeed, true);$(13_10)}"
/// @description Execute Code
var dis = point_distance(x,y,obj_witch.x, obj_witch.y)

if(dis <= aggroRange)
{
	//Head towards witch
	mp_potential_step(obj_witch.x, obj_witch.y, enemySpeed, true);
}