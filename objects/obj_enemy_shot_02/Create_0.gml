/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// definindo a velocidade do tiro
speed = 6;

// fazendo com que o tiro siga o player

// achando a direção que o tiro deve ir
// e indo para essa direção

// checando se o player existe no jogo
if (instance_exists(obj_player))
{
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}

image_angle = direction + 90;