varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec3 size; // width, height, radius

void main() {
    float radius = size.z;
    vec2 texelSize = vec2(1.0 / size.x, 1.0 / size.y);
    vec4 color = vec4(0.0);
    float totalWeight = 0.0;

    for (float x = -radius; x <= radius; x++) {
        for (float y = -radius; y <= radius; y++) {
            float weight = 1.0; // Simple box blur for ease
            color += texture2D(gm_BaseTexture, v_vTexcoord + vec2(x, y) * texelSize) * weight;
            totalWeight += weight;
        }
    }
    gl_FragColor = (color / totalWeight) * v_vColour;
}