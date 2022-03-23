/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// mudando a direção depois de se mover x pixels

// checando se ele se movimentou para a direita
if (x > xstart + 50 || x < xstart - 50)
{
	// inverter velocidade horizontal
	hspeed *= -1;
}