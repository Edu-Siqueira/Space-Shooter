/// @description Criando os alarmes
// You can write your code in this editor

//repeat(n): os códigos dentro desse método irão repetir n vezes 
// chamando o método que cria os inimigos

if (!instance_exists(obj_enemy_1)) // checando se há inimigos na tela
{
	var repetir = level * 10
	
	repeat(repetir) // numero de repetições = level atual vezes 10
	{
		criar_inimigo();
	}
}

// reiniciando o alarme
alarm[0] = room_speed * 5;
