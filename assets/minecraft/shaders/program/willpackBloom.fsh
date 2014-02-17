#version 120

uniform sampler2D DiffuseSampler;
uniform sampler2D DarkSampler;
uniform sampler2D DarkBlurSampler;
uniform vec2 OutSize;
varying vec2 texCoord;

void main() {
    vec4 color=texture2D(DiffuseSampler, texCoord);
    vec4 grayscale=vec4((color.r+color.g+color.b)/3.0);
    vec4 darkenedColor=texture2D(DarkSampler, texCoord);
    vec4 darkenedAndBlurred = texture2D(DarkBlurSampler, texCoord);

    //subtract unblurred darkened image from blurred darkened image to get the bloom overlay
    vec4 bloom=darkenedAndBlurred-darkenedColor;

    //make sure to remove any negative values
    bloom=max(bloom,0.0);

    //output bloom added to original image
    gl_FragColor = color+max(bloom-(grayscale*0.3),0.0)*0.8;
}
