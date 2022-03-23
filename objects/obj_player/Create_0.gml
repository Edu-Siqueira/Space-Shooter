/// @description Insert description here
velocidade = 5;

Shot_Level = 1;

Shot_Cooldown = room_speed / Shot_Level;

Player_Shot_2 = function()
{
	// criando o tiro da asa esquerda
	var shot_left = instance_create_layer(x - 60, shot_y, "Tiros", obj_player_shot2);
	// mandando o tiro ir para a esquerda
	shot_left.hspeed = -5;
			
	// criando o tiro da asa direita
	var shot_right = instance_create_layer(x + 60, shot_y, "Tiros", obj_player_shot2);
	// mandando o tiro ir para a direita
	shot_right.hspeed = 5;
}

// criando metodo de tiro do player
Player_Shoot = function()
{
	var fire = keyboard_check(vk_space)
	
	shot_y = y - sprite_height / 3;
	
	if (fire && alarm[0] == -1)
	{
		// ativando o alarme para garantir que o código
		// terá que esperar para criar o tiro
		alarm[0] = Shot_Cooldown;
	
		// criar uma condição para definir o tiro dependendo do level
		
		// tiro do level 1
		if (Shot_Level == 1)
		{
			instance_create_layer(x, shot_y, "Tiros", obj_player_shot);
		}
		// tiro do level 2
		else if (Shot_Level == 2)
		{
			Player_Shot_2();
		}
		// tiro do level 3
		else if (Shot_Level == 3)
		{
			instance_create_layer(x, shot_y, "Tiros", obj_player_shot);
			obj_player_shot.vspeed = -13
			
			Player_Shot_2();
		}
	}
}