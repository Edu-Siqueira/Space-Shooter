/// @description Insert description here

// destruindo a instancia do inimigo ao sair da tela
if (y > room_height + 100)
{
	instance_destroy(id, false);
}