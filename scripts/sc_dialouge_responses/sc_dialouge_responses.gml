/// @arg Response
function sc_dialouge_responses(argument0) {
	switch(argument0)
	{
		case 0: break; 
		case 1: sc_new_text_box("You're just a fucking dickhead\nProbably an enviromentalist from Colorado\nor some shit", 3); activate.entity_activate_script = -1; break; 
		case 2: sc_new_text_box("Fuck yeah you will...go thru the gate", 3, ["3:yah","0:nah"]); activate.entity_activate_script = -1; break;
		case 3: sc_new_text_box("what a homie", 3); global.key = 1; activate.entity_activate_script = -1; break;
		case 4: sc_new_text_box("fuck off", 3); activate.entity_activate_script = -1; break;
		default: break;
	}


}
