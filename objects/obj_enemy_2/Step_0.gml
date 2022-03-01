/// @description Insert description here
// You can write your code in this editor

// herdando eventos do pai
event_inherited();

// checando se o inimigo ja passou 1/3 da tela
if (y > room_height / 3 && move_to_side == true)
{
	// checando de que lado da room o inimigo está
	if (x > room_width / 2)
	{
		show_debug_message("esta na direita");
		
		// fazendo o inimigo ir para a esquerda
		hspeed = -4;
		
		// avisando que o inimigo não pode mais se mover
		move_to_side = false;
	}

	if (x < room_width / 2)
	{
		show_debug_message("esta na esquerda");
		
		// fazendo o inimigo ir para a direita
		hspeed = 4;
		
		// avisando que o inimigo não pode mais se mover
		move_to_side = false;
	}
}