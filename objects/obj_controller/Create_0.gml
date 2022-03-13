/// @description Insert description here

// chamando o primeiro alarme
alarm[0] = room_speed;

// iniciando o sistema de pontos
pontos = 0;

// iniciando o sistema de levels
level = 1;
next_level = 100;

// criando método para ganhar pontos
///@method ganhar_pontos(pontos)
ganhar_pontos = function(_pontos)
{
	pontos += _pontos;
	
	// aumentando o level ao atingir um numero de pontos
	if (pontos >= next_level)
	{
		level++;
	
		next_level = next_level * 2;
	}
}

// criando método para criar inimigos
criar_inimigo = function()
{
	// iniciando a geração procedural de inimigos

	// fazendo com que a posição X seja aleatória
	enemy_x_range = random_range(32, 1888);

	// fazendo com que a posição Y seja aleatória
	enemy_y_range = random_range(-1504, -96);

	// criando inimigo com base no level
	// quanto maior o level = maior chance de inimigo mais forte
	var chance = random_range(0, level);

	var enemy = obj_enemy_1;

	// se o valor da chance for maior do que 2
	if (chance > 2)
	{
		enemy = obj_enemy_2;
	}

	instance_create_layer(enemy_x_range, enemy_y_range, "Inimigos", enemy);
}