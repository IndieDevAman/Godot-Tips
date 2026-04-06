shader_type canvas_item;

uniform float wave_speed = 2.0;
uniform float wave_strength = 0.02;

void fragment() {
    vec2 uv = UV;

    uv.y += sin(uv.x * 10.0 + TIME * wave_speed) * wave_strength;

    COLOR = texture(TEXTURE, uv);
}
