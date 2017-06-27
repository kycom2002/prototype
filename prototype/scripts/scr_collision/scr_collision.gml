/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 608FB77B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var dis;$(13_10)$(13_10)dis = distance_to_object(obj_witch);$(13_10)$(13_10)if(dis < obj_enemy.aggroRange)$(13_10){$(13_10)	mp_potential_step(obj_witch.x, obj_witch.y, enemySpeed, true);$(13_10)}"
/// @description Execute Code
var dis;

dis = distance_to_object(obj_witch);

if(dis < obj_enemy.aggroRange)
{
	mp_potential_step(obj_witch.x, obj_witch.y, enemySpeed, true);
}