/// @description Insert description here
velocidade = 5;

// criando metodo de tiro do player
Player_Shoot = function()
{
	var fire = keyboard_check_pressed(vk_space);

	if (fire)
	{
		instance_create_layer(x, y - sprite_height / 2, "Tiros", obj_player_shot);
	}
}