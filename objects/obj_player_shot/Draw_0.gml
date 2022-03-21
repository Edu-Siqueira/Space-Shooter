/// @description Insert description here

// desenhando o tiro
draw_self();

// desenhando o brilho

// alterando a forma de como a gpu processa as cores
gpu_set_blendmode(bm_add);

draw_sprite_ext(brilho, image_index, x, y, image_xscale / 1.5, image_yscale / 1.5, image_angle, cores, 0.5);

// voltando ao normal
gpu_set_blendmode(bm_normal);