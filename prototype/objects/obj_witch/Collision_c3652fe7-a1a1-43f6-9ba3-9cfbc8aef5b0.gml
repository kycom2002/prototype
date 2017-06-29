/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 539A7AD1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)$(13_10)if (interact_status) {$(13_10)	show_debug_message("\tCollision with block [x]: " + string(x));$(13_10)	x = xprevious;$(13_10)	y = yprevious;$(13_10)	$(13_10)	/*$(13_10)	if (place_meeting(x+9, y, obj_block))$(13_10)		x -= 9;$(13_10)	if (place_meeting(x-9, y, obj_block))$(13_10)		x += 9;$(13_10)*/$(13_10)	$(13_10)}$(13_10)"
/// @description Execute Code


if (interact_status) {
	show_debug_message("\tCollision with block [x]: " + string(x));
	x = xprevious;
	y = yprevious;
	
	/*
	if (place_meeting(x+9, y, obj_block))
		x -= 9;
	if (place_meeting(x-9, y, obj_block))
		x += 9;
*/
	
}
/**/