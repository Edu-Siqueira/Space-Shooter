/// @description Insert description here
// You can write your code in this editor

// herdando eventos do pai
event_inherited();

// checando de que lado da room o inimigo está
if (x > room_width / 2)
{
	show_debug_message("esta na direita");
}

if (x < room_width / 2)
{
	show_debug_message("esta na esquerda");
}