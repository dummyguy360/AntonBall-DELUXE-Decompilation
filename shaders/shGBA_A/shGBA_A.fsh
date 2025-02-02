//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 SourceSize;

void main()
{
	vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
	vec3 arrayX[4];
	arrayX[0] = vec3(1.0, 0.2, 0.2);
	arrayX[1] = vec3(0.2, 1.0, 0.2);
	arrayX[2] = vec3(0.2, 0.2, 1.0);
	arrayX[3] = vec3(0.4, 0.4, 0.4);
	vec3 arrayY[4];
	arrayY[0] = vec3(1.0, 1.0, 1.0);
	arrayY[1] = vec3(1.0, 1.0, 1.0);
	arrayY[2] = vec3(1.0, 1.0, 1.0);
	arrayY[3] = vec3(0.9, 0.9, 0.9);
	color.rgb = pow(color.rgb, vec3(1.6, 1.6, 1.6));
	color.rgb *= arrayX[int(mod(v_vTexcoord.x * SourceSize.x * 4.0, 4.0))];
	color.rgb *= arrayY[int(mod(v_vTexcoord.y * SourceSize.y * 4.0, 4.0))];
	color.a = 0.8;
	gl_FragColor = color;
}
