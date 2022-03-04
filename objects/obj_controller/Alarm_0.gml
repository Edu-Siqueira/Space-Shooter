/// @description Criando os alarmes
// You can write your code in this editor

// iniciando a geração procedural de inimigos

// fazendo com que a posição X seja aleatória
enemy_x_range = random_range(32, 1888);

// fazendo com que a posição Y seja aleatória
enemy_y_range = random_range(-544, -96); 

instance_create_layer(enemy_x_range, enemy_y_range, "Inimigos", obj_enemy_1);

// reiniciando o alarme
alarm[0] = room_speed;
