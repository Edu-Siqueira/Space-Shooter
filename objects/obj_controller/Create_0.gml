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