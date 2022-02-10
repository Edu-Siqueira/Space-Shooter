/// @description Insert description here

// fazendo o inimigo atirar
if (y >= 0)
{
	instance_create_layer(x, y + sprite_height / 2, "Tiros", obj_enemy_shot_01);
}

// reiniciando o alarme
alarm[0] = random_range(1, 2) * room_speed;
