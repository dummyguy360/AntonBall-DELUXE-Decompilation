//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define response_time 0.5

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform sampler2D tex3;
uniform sampler2D tex4;
uniform sampler2D tex5;
uniform sampler2D tex6;


void main()
{
    // Sample color from the current and previous frames, apply response time modifier
    // Response time effect implemented through an exponential dropoff algorithm
	
	vec3 curr_rgb = texture2D(gm_BaseTexture,v_vTexcoord).rgb;
	vec3 prev0_rgb = texture2D(tex0,v_vTexcoord).rgb;
	vec3 prev1_rgb = texture2D(tex1,v_vTexcoord).rgb;
	vec3 prev2_rgb = texture2D(tex2,v_vTexcoord).rgb;
	vec3 prev3_rgb = texture2D(tex3,v_vTexcoord).rgb;
	vec3 prev4_rgb = texture2D(tex4,v_vTexcoord).rgb;
	vec3 prev5_rgb = texture2D(tex5,v_vTexcoord).rgb;
	vec3 prev6_rgb = texture2D(tex6,v_vTexcoord).rgb;
	
    vec3 input_rgb = curr_rgb;
    input_rgb += (prev0_rgb - input_rgb) * response_time;
    input_rgb += (prev1_rgb - input_rgb) * pow(response_time, 2.0);
    input_rgb += (prev2_rgb - input_rgb) * pow(response_time, 3.0);
    input_rgb += (prev3_rgb - input_rgb) * pow(response_time, 4.0);
    input_rgb += (prev4_rgb - input_rgb) * pow(response_time, 5.0);
    input_rgb += (prev5_rgb - input_rgb) * pow(response_time, 6.0);
    input_rgb += (prev6_rgb - input_rgb) * pow(response_time, 7.0);

    gl_FragColor = vec4(input_rgb, 1.0);
} 
