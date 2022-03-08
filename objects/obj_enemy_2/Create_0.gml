/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// definindo a pontução ganha ao destruir inimigo
pontos = 20;

// criando uma variavel de controle que define 
// se o inimigo pode se mover para os lados
move_to_side = true;

// criando a função de tiro do inimigo 2
Enemy_Shoot = function()
{
	if (y >= 0)
	{
		instance_create_layer(x, y + sprite_height / 3, "Tiros", obj_enemy_shot_02);
	}
}