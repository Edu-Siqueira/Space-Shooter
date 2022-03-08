/// @description Insert description here

// chamando o primeiro alarme
alarm[0] = room_speed;

// iniciando o sistema de pontos
pontos = 0;

// criando método para ganhar pontos
///@method ganhar_pontos(pontos)
ganhar_pontos = function(_pontos)
{
	pontos += _pontos;
}