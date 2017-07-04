/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E5630A0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var dis = point_distance(x,y,obj_witch.x, obj_witch.y)$(13_10)$(13_10)//if(!collision_line(x,y,obj_witch.x,obj_witch.y,obj_wall,1,1)) alerted = true;$(13_10)$(13_10)if((dis <= aggroRange))$(13_10){$(13_10)	//Head towards witch$(13_10)	mp_potential_step(obj_witch.x, obj_witch.y, enemySpeed, true);$(13_10)	sprite_index = sp_enemy_follow;$(13_10)}$(13_10)else$(13_10){$(13_10)	state = scr_enemy_static();$(13_10)	alerted = false;$(13_10)	sprite_index = sp_enemy;$(13_10)	$(13_10)}"
/// @description Execute Code
var dis = point_distance(x,y,obj_witch.x, obj_witch.y)

//if(!collision_line(x,y,obj_witch.x,obj_witch.y,obj_wall,1,1)) alerted = true;

if((dis <= aggroRange))
{
	//Head towards witch
	mp_potential_step(obj_witch.x, obj_witch.y, enemySpeed, true);
	sprite_index = sp_enemy_follow;
}
else
{
	state = scr_enemy_static();
	alerted = false;
	sprite_index = sp_enemy;
	
}