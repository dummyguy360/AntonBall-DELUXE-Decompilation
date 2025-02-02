//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define reflectionBrightness 0.07
#define reflectionDistanceX 0.0
#define reflectionDistanceY 0.025
#define lightBrightness 1.0

const float speed = 2.0;
const float decay = 2.0;
const float coeff = 2.5;

void main()
{
    vec2 reflectionDistance = vec2(reflectionDistanceX,reflectionDistanceY);
	float sp = pow(speed, lightBrightness);
	float dc = pow(decay, -lightBrightness);
	float s = (sp - dc) / (sp + dc);
	vec2 radius = (v_vTexcoord - vec2(0.5, 0.5)) * vec2(coeff * s);
	radius = pow(abs(radius), vec2(4.0));
	vec3 bleed = vec3(0.12, 0.14, 0.19);
	bleed += (dot(radius, radius) + vec3(0.02, 0.03, 0.05)) * vec3(0.14, 0.18, 0.2);

	vec4 color = texture2D(gm_BaseTexture, v_vTexcoord);
	color.rgb += pow(bleed, pow(vec3(lightBrightness), vec3(-0.5)));

	vec4 reflection = texture2D(gm_BaseTexture, v_vTexcoord - reflectionDistance);
	color.rgb += reflection.rgb * reflectionBrightness;
	color.a = 1.0;
	gl_FragColor = color;
}
