/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A659FB7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)draw_set_color(c_black);$(13_10)draw_set_font(fnt_small);$(13_10)draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_top);$(13_10)draw_text(view_xview[0]+10, view_yview[0]+10,"Stamina: "+string(obj_witch.stamina));$(13_10)draw_text(view_xview[0]+10, view_yview[0]+30,"Hp: "+string(obj_witch.hp));$(13_10)"
/// @description Execute Code
draw_set_color(c_black);
draw_set_font(fnt_small);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(view_xview[0]+10, view_yview[0]+10,"Stamina: "+string(obj_witch.stamina));
draw_text(view_xview[0]+10, view_yview[0]+30,"Hp: "+string(obj_witch.hp));