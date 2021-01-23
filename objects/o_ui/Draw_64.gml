/// @desc Draw Health

var _player_health = global.player_health;
var _player_health_max = global.player_health_max;
var _player_health_frac = frac(_player_health); 
_player_health -= _player_health_frac; 
// ^returns whole number for us to use

for (var i = 1; i <= _player_health_max; i++) 
{
	var _image_index = (i > _player_health);
	if (i == _player_health + 1) 
	{
		_image_index += (_player_health_frac > 0);
		_image_index += (_player_health_frac > 0.25);
		_image_index += (_player_health_frac > 0.5); 
	}
	draw_sprite(s_health, _image_index, 8 + ((i-1) * 28), 8); 
}
