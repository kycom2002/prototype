/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 539A7AD1
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)//	test to check collision and positioning of player$(13_10)//	may be optimized to code won't be needed here$(13_10)if (interact_status) {$(13_10)	show_debug_message("\tCollision with block [x]: " + string(x));$(13_10)	x = xprevious;$(13_10)	y = yprevious;	$(13_10)}$(13_10)"
/// @description Execute Code

//	test to check collision and positioning of player
//	may be optimized to code won't be needed here
if (interact_status) {
	show_debug_message("\tCollision with block [x]: " + string(x));
	x = xprevious;
	y = yprevious;	
}