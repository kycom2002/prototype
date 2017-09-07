/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 120460F0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)//aggroRange = 120;$(13_10)//grav =1;$(13_10)//enemySpeed = 2;$(13_10)//vspd = 0;$(13_10)$(13_10)//state = scr_enemy_static();$(13_10)$(13_10)//ghost = false;$(13_10)$(13_10)aggroRange = 120;$(13_10)vsp = 0;$(13_10)hsp= 2;$(13_10)ghsp=2.5;$(13_10)grav = 2;$(13_10)guard = 180;$(13_10)cons = 16;"
/// @description Execute Code
//aggroRange = 120;
//grav =1;
//enemySpeed = 2;
//vspd = 0;

//state = scr_enemy_static();

//ghost = false;

aggroRange = 120;
vsp = 0;
hsp= 2;
ghsp=2.5;
grav = 2;
guard = 180;
cons = 16;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 79CF03EA
/// @DnDArgument : "code" "/// State Vars$(13_10)$(13_10)enum enemyState { idle, Patrol, attack, flee }$(13_10)curState = enemyState.idle;"
/// State Vars

enum enemyState { idle, Patrol, attack, flee }
curState = enemyState.idle;