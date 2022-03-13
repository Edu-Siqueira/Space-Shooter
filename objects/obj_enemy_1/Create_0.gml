/// @description Insert description here
vspeed = 4;

// iniciando o alarme do tiro
alarm[0] = random_range(1, 2) * room_speed;

// definindo a pontuação ganha ao destruir inimigo
pontos = 10;

// checando se esse inimigo esta colidindo com outro inimigo
if (place_meeting(x, y, obj_enemy_1))
{
	// não executando o evento do destroy()
	instance_destroy(id, false);
}

// criando metodo de tiro do inimigo
Enemy_Shoot = function()
{
	if (y >= 0)
	{
		instance_create_layer(x, y + sprite_height / 2, "Tiros", obj_enemy_shot_01);
	}
}
