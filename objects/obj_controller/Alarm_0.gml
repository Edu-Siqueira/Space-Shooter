/// @description Criando os alarmes
// You can write your code in this editor

// iniciando a geração procedural de inimigos

// fazendo com que a posição X seja aleatória
enemy_x_range = random_range(32, 1888);

// fazendo com que a posição Y seja aleatória
enemy_y_range = random_range(-544, -96);

// criando inimigo com base no level
// quanto maior o level = maior chance de inimigo mais forte
var chance = random_range(0, level);

var enemy = obj_enemy_1;

// se o valor da chance for maior do que 2
if (chance > 2)
{
	enemy = obj_enemy_2;
}

instance_create_layer(enemy_x_range, enemy_y_range, "Inimigos", enemy);

// reiniciando o alarme
alarm[0] = room_speed;
