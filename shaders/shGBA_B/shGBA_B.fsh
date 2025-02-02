//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define darken_screen 0.5
#define target_gamma 2.2
#define display_gamma 2.2
#define sat 1.0
#define lum 1.0
#define contrast 1.0
#define blr 0.0
#define blg 0.0
#define blb 0.0
#define r 0.845
#define g 0.68
#define b 0.755
#define rg 0.09
#define rb 0.16
#define gr 0.17
#define gb 0.085
#define br -0.015
#define bg 0.23
#define overscan_percent_x 0.0
#define overscan_percent_y 0.0

void main()
{
   vec4 screen = pow(texture2D(gm_BaseTexture, v_vTexcoord), vec4(target_gamma + darken_screen)).rgba;
   vec4 avglum = vec4(0.5);
   screen = mix(screen, avglum, (1.0 - contrast));
   
	//				r   g    b   black
	mat4 color = mat4(r,  rg,  rb, 0.0,  //red channel
				   gr,  g,   gb, 0.0,  //green channel
				   br,  bg,  b,  0.0,  //blue channel
				  blr, blg, blb,    0.0); //alpha channel; these numbers do nothing for our purposes.
			  
	mat4 adjust = mat4((1.0 - sat) * 0.3086 + sat, (1.0 - sat) * 0.3086, (1.0 - sat) * 0.3086, 1.0,
	(1.0 - sat) * 0.6094, (1.0 - sat) * 0.6094 + sat, (1.0 - sat) * 0.6094, 1.0,
	(1.0 - sat) * 0.0820, (1.0 - sat) * 0.0820, (1.0 - sat) * 0.0820 + sat, 1.0,
	0.0, 0.0, 0.0, 1.0);
	color *= adjust;
	screen = clamp(screen * lum, 0.0, 1.0);
	screen = color * screen;
	gl_FragColor = pow(screen, vec4(1.0 / display_gamma));
}
