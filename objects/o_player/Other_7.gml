/// @desc Player Audio

if (sprite_index == s_player_walk) audio_play_sound(choose(sn_walk1,sn_walk2,sn_walk3,sn_walk4),2,false);

if (sprite_index == s_player_slide) audio_play_sound (sn_slide,1,false);

//if (sprite_index == s_player_jump) audio_play_sound (sn_jump,1,false);