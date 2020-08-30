function sc_syntax_guidelines() {
#region NAMING CONVENTIONS
	/* 
	   SPRITES = "s_spritename"
	   OBJECTS = "o_objectname" 
	   TILES = "ts_tilenames"
	   SCRIPTS = "sc_scriptname"
	   SHADERS = "sh_shadername"
	   SOUNDS = "a_soundname" 
	   PATHS = "p_pathname"
	   FONTS = "f_fontname"
	   TIMELINE = "t_timelinename" 
	   ROOMS = "r_roomname"
	   NOTES = "n_notename"
	   INCLUDED FILES = "i_includedfilenames"
	   EXTENSIONS = "e_extensionname" 
	   LAYERS = "l_layername" 
	 */
#endregion
#region GENERAL CONVENTIONS
	 /*`

		- COMMENTS = "// insert here" (space after //) 
 
		- EVENTS and SCRIPTS = at the top, use /// to describe event or script
 
		- Use REGIONS and COMMENTS to describe the code you're writing
 
		- FOR STATEMENTS, FORMAT LIKE DIS (example): 
			 if (place_meeting(x,y,o_yourmom)
				  {
			          suckdick = 0;
				  } 
		- Don't exceed EIGHTY (80) characters per line
		- Variables with MULTIPLE WORDS = no spaces, all lowercase, underscores
			ie. move_here = 0; 
		- TEMPORARY VARIABLES (var) use _ in front of variable name
			ie. var _move_here = 0; 
	*/
#endregion


}
