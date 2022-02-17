/// @description Insert description here
// You can write your code in this editor

draw_self();

// desenhando o brilho

// alterando a forma de como a gpu processa as cores
gpu_set_blendmode(bm_max);

draw_sprite_ext(spr_brilho_inimigo1, image_index, x, y, image_xscale * 0.7, image_yscale * 0.7, image_angle, cores, 0.5);

// voltando ao normal
gpu_set_blendmode(bm_normal);