/// @description Definindo a movimetação do player

// Movimentação do player
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

y += (down - up) * velocidade;
x += (right - left) * velocidade;

// tiro do player
Player_Shoot();

// impedindo o player de sair da tela
if (y > room_height)
{
	y = room_height;
}