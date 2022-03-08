/// @description Insert description here

// criando explosão ao ser destruido
instance_create_layer(x, y, "Inimigos", obj_enemy_explosion);

// ganhando pontos ao ser destruido
if (instance_exists(obj_controller))
{
	obj_controller.ganhar_pontos(pontos);
}
