/// @description Insert description here

// destruindo instancia do objeto ao sair da room
if (y >= 1128)
{
	instance_destroy();
}

image_xscale = lerp(image_xscale, 0.7, 0.3);
image_yscale = lerp(image_yscale, 0.7, 0.3);