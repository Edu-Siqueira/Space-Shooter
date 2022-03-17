/// @description Definindo a movimetação do player

// Movimentação do player
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

y += (down - up) * velocidade;
x += (right - left) * velocidade;

// tiro do player
// Player_Shoot();

// há um tempo de espera
// se o tempo de espera ainda não passou, ele não atira

// ativando o alarme pelo step a cada 1 segundo
// pensar em uma forma de ativar o alarme somente se ele não estiver ativo
if (keyboard_check(vk_space) && alarm[0] == -1)
{
	// ativando o alarme para garantir que o código
	// terá que esperar para criar o tiro
	alarm[0] = Shot_Cooldown;
	
	// método que cria o tiro
	Player_Shoot();
	
	// criar o tiro ao apertar espaço
	// e depois poder atirar somente após 1 segundo.
}

// fazendo com que o level do tiro suba sempre que
// que a seta para cima seja pressionada
// apenas se o level do tiro for menor do que 5
if (keyboard_check_pressed(vk_up))
{
	if (Shot_Level < 5)
	{
		Shot_Level++;
	}
	
	show_debug_message(Shot_Level);
}

// fazendo com que o level do tiro diminua sempre que
// que a seta para baixo seja pressionada
// apenas se o level do tiro for maior do que 1
if (keyboard_check_pressed(vk_down))
{
	if (Shot_Level > 1)
	{
		Shot_Level--;
	}
	
	show_debug_message(Shot_Level);
}

// impedindo o player de sair da tela
if (y > room_height)
{
	y = room_height;
}