/// @description Insert description here
vspeed = 4;

// iniciando o alarme do tiro
alarm[0] = random_range(1, 2) * room_speed;

// criando metodo de tiro do inimigo
Enemy_Shoot = function()
{
	if (y >= 0)
	{
		instance_create_layer(x, y + sprite_height / 2, "Tiros", obj_enemy_shot_01);
	}
}
