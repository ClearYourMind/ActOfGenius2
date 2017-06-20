// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // ob_sys
global.__objectDepths[1] = 0; // ob_game_master
global.__objectDepths[2] = 0; // ob_net
global.__objectDepths[3] = 0; // ob_control_keyboard
global.__objectDepths[4] = 0; // ob_game_object
global.__objectDepths[5] = -1; // ob_select
global.__objectDepths[6] = 0; // ob_unit_preloaded
global.__objectDepths[7] = 0; // ob_control
global.__objectDepths[8] = 0; // ob_tank_body
global.__objectDepths[9] = 0; // ob_tank_cannon
global.__objectDepths[10] = 0; // ob_tank_chassis
global.__objectDepths[11] = 0; // ob_unit
global.__objectDepths[12] = 0; // ob_body
global.__objectDepths[13] = 0; // ob_head
global.__objectDepths[14] = 0; // ob_chassis
global.__objectDepths[15] = 0; // ob_part
global.__objectDepths[16] = 0; // ob_shot_preloaded
global.__objectDepths[17] = 0; // ob_cannon
global.__objectDepths[18] = 0; // ob_shot
global.__objectDepths[19] = 0; // ob_shot_tank
global.__objectDepths[20] = 0; // ob_blood
global.__objectDepths[21] = 0; // ob_expl1
global.__objectDepths[22] = 0; // ob_expl
global.__objectDepths[23] = 0; // ob_expl_large
global.__objectDepths[24] = 0; // ob_expl3
global.__objectDepths[25] = 0; // ob_expl4
global.__objectDepths[26] = 0; // ob_expl5
global.__objectDepths[27] = 0; // ob_tank_head
global.__objectDepths[28] = 0; // ob_expl6
global.__objectDepths[29] = 0; // ob_expl7
global.__objectDepths[30] = 0; // ob_expl9
global.__objectDepths[31] = 0; // ob_shield_flash
global.__objectDepths[32] = 0; // ob_expl8
global.__objectDepths[33] = 0; // ob_text_cloud
global.__objectDepths[34] = 0; // ob_listbox
global.__objectDepths[35] = 0; // ob_textbox
global.__objectDepths[36] = 0; // ob_caption
global.__objectDepths[37] = 0; // ob_button
global.__objectDepths[38] = 0; // ob_gui
global.__objectDepths[39] = 0; // ob_expl2


global.__objectNames[0] = "ob_sys";
global.__objectNames[1] = "ob_game_master";
global.__objectNames[2] = "ob_net";
global.__objectNames[3] = "ob_control_keyboard";
global.__objectNames[4] = "ob_game_object";
global.__objectNames[5] = "ob_select";
global.__objectNames[6] = "ob_unit_preloaded";
global.__objectNames[7] = "ob_control";
global.__objectNames[8] = "ob_tank_body";
global.__objectNames[9] = "ob_tank_cannon";
global.__objectNames[10] = "ob_tank_chassis";
global.__objectNames[11] = "ob_unit";
global.__objectNames[12] = "ob_body";
global.__objectNames[13] = "ob_head";
global.__objectNames[14] = "ob_chassis";
global.__objectNames[15] = "ob_part";
global.__objectNames[16] = "ob_shot_preloaded";
global.__objectNames[17] = "ob_cannon";
global.__objectNames[18] = "ob_shot";
global.__objectNames[19] = "ob_shot_tank";
global.__objectNames[20] = "ob_blood";
global.__objectNames[21] = "ob_expl1";
global.__objectNames[22] = "ob_expl";
global.__objectNames[23] = "ob_expl_large";
global.__objectNames[24] = "ob_expl3";
global.__objectNames[25] = "ob_expl4";
global.__objectNames[26] = "ob_expl5";
global.__objectNames[27] = "ob_tank_head";
global.__objectNames[28] = "ob_expl6";
global.__objectNames[29] = "ob_expl7";
global.__objectNames[30] = "ob_expl9";
global.__objectNames[31] = "ob_shield_flash";
global.__objectNames[32] = "ob_expl8";
global.__objectNames[33] = "ob_text_cloud";
global.__objectNames[34] = "ob_listbox";
global.__objectNames[35] = "ob_textbox";
global.__objectNames[36] = "ob_caption";
global.__objectNames[37] = "ob_button";
global.__objectNames[38] = "ob_gui";
global.__objectNames[39] = "ob_expl2";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for