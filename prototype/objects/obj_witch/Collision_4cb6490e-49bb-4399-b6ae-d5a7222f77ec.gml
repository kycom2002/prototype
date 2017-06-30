/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 322BAFF8
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)if (keyboard_check_pressed(ord("F"))) {$(13_10)	if (hide_ability) {$(13_10)		image_alpha = 1;$(13_10)		hide_ability = false;$(13_10)	} else {$(13_10)		image_alpha = .1;$(13_10)		hide_ability = true;$(13_10)	}$(13_10)}$(13_10)"
/// @description Execute Code

if (keyboard_check_pressed(ord("F"))) {
	if (hide_ability) {
		image_alpha = 1;
		hide_ability = false;
	} else {
		image_alpha = .1;
		hide_ability = true;
	}
}