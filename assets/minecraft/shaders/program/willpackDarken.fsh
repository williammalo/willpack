#version 120

uniform sampler2D DiffuseSampler;
uniform vec2 OutSize;
varying vec2 texCoord;

//samples color from 81 places on the screen and averages them
vec4 averageColor=(
    texture2D(DiffuseSampler, vec2(0.1,0.1))+
    texture2D(DiffuseSampler, vec2(0.1,0.2))+
    texture2D(DiffuseSampler, vec2(0.1,0.3))+
    texture2D(DiffuseSampler, vec2(0.1,0.4))+
    texture2D(DiffuseSampler, vec2(0.1,0.5))+
    texture2D(DiffuseSampler, vec2(0.1,0.6))+
    texture2D(DiffuseSampler, vec2(0.1,0.7))+
    texture2D(DiffuseSampler, vec2(0.1,0.8))+
    texture2D(DiffuseSampler, vec2(0.1,0.9))+

    texture2D(DiffuseSampler, vec2(0.2,0.1))+
    texture2D(DiffuseSampler, vec2(0.2,0.2))+
    texture2D(DiffuseSampler, vec2(0.2,0.3))+
    texture2D(DiffuseSampler, vec2(0.2,0.4))+
    texture2D(DiffuseSampler, vec2(0.2,0.5))+
    texture2D(DiffuseSampler, vec2(0.2,0.6))+
    texture2D(DiffuseSampler, vec2(0.2,0.7))+
    texture2D(DiffuseSampler, vec2(0.2,0.8))+
    texture2D(DiffuseSampler, vec2(0.2,0.9))+

    texture2D(DiffuseSampler, vec2(0.3,0.1))+
    texture2D(DiffuseSampler, vec2(0.3,0.2))+
    texture2D(DiffuseSampler, vec2(0.3,0.3))+
    texture2D(DiffuseSampler, vec2(0.3,0.4))+
    texture2D(DiffuseSampler, vec2(0.3,0.5))+
    texture2D(DiffuseSampler, vec2(0.3,0.6))+
    texture2D(DiffuseSampler, vec2(0.3,0.7))+
    texture2D(DiffuseSampler, vec2(0.3,0.8))+
    texture2D(DiffuseSampler, vec2(0.3,0.9))+

    texture2D(DiffuseSampler, vec2(0.4,0.1))+
    texture2D(DiffuseSampler, vec2(0.4,0.2))+
    texture2D(DiffuseSampler, vec2(0.4,0.3))+
    texture2D(DiffuseSampler, vec2(0.4,0.4))+
    texture2D(DiffuseSampler, vec2(0.4,0.5))+
    texture2D(DiffuseSampler, vec2(0.4,0.6))+
    texture2D(DiffuseSampler, vec2(0.4,0.7))+
    texture2D(DiffuseSampler, vec2(0.4,0.8))+
    texture2D(DiffuseSampler, vec2(0.4,0.9))+

    texture2D(DiffuseSampler, vec2(0.5,0.1))+
    texture2D(DiffuseSampler, vec2(0.5,0.2))+
    texture2D(DiffuseSampler, vec2(0.5,0.3))+
    texture2D(DiffuseSampler, vec2(0.5,0.4))+
    texture2D(DiffuseSampler, vec2(0.5,0.5))+
    texture2D(DiffuseSampler, vec2(0.5,0.6))+
    texture2D(DiffuseSampler, vec2(0.5,0.7))+
    texture2D(DiffuseSampler, vec2(0.5,0.8))+
    texture2D(DiffuseSampler, vec2(0.5,0.9))+

    texture2D(DiffuseSampler, vec2(0.6,0.1))+
    texture2D(DiffuseSampler, vec2(0.6,0.2))+
    texture2D(DiffuseSampler, vec2(0.6,0.3))+
    texture2D(DiffuseSampler, vec2(0.6,0.4))+
    texture2D(DiffuseSampler, vec2(0.6,0.5))+
    texture2D(DiffuseSampler, vec2(0.6,0.6))+
    texture2D(DiffuseSampler, vec2(0.6,0.7))+
    texture2D(DiffuseSampler, vec2(0.6,0.8))+
    texture2D(DiffuseSampler, vec2(0.6,0.9))+

    texture2D(DiffuseSampler, vec2(0.7,0.1))+
    texture2D(DiffuseSampler, vec2(0.7,0.2))+
    texture2D(DiffuseSampler, vec2(0.7,0.3))+
    texture2D(DiffuseSampler, vec2(0.7,0.4))+
    texture2D(DiffuseSampler, vec2(0.7,0.5))+
    texture2D(DiffuseSampler, vec2(0.7,0.6))+
    texture2D(DiffuseSampler, vec2(0.7,0.7))+
    texture2D(DiffuseSampler, vec2(0.7,0.8))+
    texture2D(DiffuseSampler, vec2(0.7,0.9))+

    texture2D(DiffuseSampler, vec2(0.8,0.1))+
    texture2D(DiffuseSampler, vec2(0.8,0.2))+
    texture2D(DiffuseSampler, vec2(0.8,0.3))+
    texture2D(DiffuseSampler, vec2(0.8,0.4))+
    texture2D(DiffuseSampler, vec2(0.8,0.5))+
    texture2D(DiffuseSampler, vec2(0.8,0.6))+
    texture2D(DiffuseSampler, vec2(0.8,0.7))+
    texture2D(DiffuseSampler, vec2(0.8,0.8))+
    texture2D(DiffuseSampler, vec2(0.8,0.9))+

    texture2D(DiffuseSampler, vec2(0.9,0.1))+
    texture2D(DiffuseSampler, vec2(0.9,0.2))+
    texture2D(DiffuseSampler, vec2(0.9,0.3))+
    texture2D(DiffuseSampler, vec2(0.9,0.4))+
    texture2D(DiffuseSampler, vec2(0.9,0.5))+
    texture2D(DiffuseSampler, vec2(0.9,0.6))+
    texture2D(DiffuseSampler, vec2(0.9,0.7))+
    texture2D(DiffuseSampler, vec2(0.9,0.8))+
    texture2D(DiffuseSampler, vec2(0.9,0.9))
)/81.0;

float averageBrightness=(averageColor.r+averageColor.g+averageColor.b)/3.0;

//gets only the brightest parts of the image and makes the darker parts completely black
vec4 darken(vec4 fInput){
    vec4 darkened=max(fInput-0.9,0.0)*6.0;
    float darknum=(darkened.r+darkened.g+darkened.b)/3.0;
    
    return fInput*darknum*(2.0-averageBrightness);
}

void main() {
    vec4 color=texture2D(DiffuseSampler, texCoord);

    gl_FragColor = darken(color);
}
