/// @description Destruindo o tiro ao sair da tela

if (y <= -64)
{
	instance_destroy();
}

// diminuindo a escala do tiro

// lerp -> função de aproximação, faz um valor chegar em outro por meio de uma porcentagem
// lerp (valor que eu tenho, valor para chegar,  porcentagem de aproximação)

// fazendo o xscale chegar no valor original (1)
image_xscale = lerp(image_xscale, 1, 0.3);
image_yscale = lerp(image_yscale, 1, 0.3);