//create particle system
snow = part_system_create()
part_system_depth(snow,50)

//Create a snowflake particle
snowflake = part_type_create()
part_type_shape(snowflake,pt_shape_snow);
part_type_orientation(snowflake,0,0,0,0,1);
part_type_size(snowflake,0.03,0.20,0,0);
part_type_speed(snowflake,1,1.5,0.05,0);
part_type_direction(snowflake,270,270,0,4);
part_type_life(snowflake,100,150)

//Make it snow!
snow_emitter = part_emitter_create(snow)
part_emitter_region(snow,snow_emitter,0-100,room_width+100,-10,-5,ps_shape_ellipse,ps_distr_linear)
part_emitter_stream(snow,snow_emitter,snowflake,1)