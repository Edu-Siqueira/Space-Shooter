/// @description Insert description here
velocidade = 5;

Shot_Cooldown = room_speed;

Shot_Level = 1;

// criando metodo de tiro do player
Player_Shoot = function()
{
	instance_create_layer(x, y - sprite_height / 2, "Tiros", obj_player_shot);
}