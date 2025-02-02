//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 TextureSize;

#define BORDERMULT 14.0
#define GBAGAMMA 1.0

void main()
{
	vec2 texcoordInPixels = v_vTexcoord * TextureSize;
	vec2 centerCoord = floor(texcoordInPixels)+vec2(0.5,0.5);
	vec2 distFromCenter = abs(centerCoord - texcoordInPixels);

	float Y = max(distFromCenter.x,(distFromCenter.y));

	Y=Y*Y;
	float YY = Y*Y;
	float YYY = YY*Y;

	float LineWeight = YY - 2.7*YYY;
	LineWeight = 1.0 - BORDERMULT*LineWeight;

	vec3 colour = texture2D(gm_BaseTexture, 1./TextureSize*centerCoord).rgb*LineWeight;

	if (GBAGAMMA > 0.5) {
		colour.rgb*=0.6+0.4*(colour.rgb); //fake gamma because the pi is too slow!
	}
		
	gl_FragColor = vec4(colour.rgb , 1.0);
}
