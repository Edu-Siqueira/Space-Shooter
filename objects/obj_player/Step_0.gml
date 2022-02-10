/// @description Definindo a movimetação do player

// Movimentação do player
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

y += (down - up) * velocidade;
x += (right - left) * velocidade;

// tiro do player
var fire = keyboard_check_pressed(vk_space);

if (fire)
{
	instance_create_layer(x, y - sprite_height / 2, "Tiros", obj_player_shot);
}