// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct prev {
    vec2 _tex_coord;
    vec2 _texture_size1;
float _placeholder31;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
};
out_vertex _co1;
prev _PASSPREV31;
vec4 _r0011;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
uniform COMPAT_PRECISION vec2 PassPrev3TextureSize;
void main()
{
    vec2 _ps;
    _r0011 = VertexCoord.x*MVPMatrix[0];
    _r0011 = _r0011 + VertexCoord.y*MVPMatrix[1];
    _r0011 = _r0011 + VertexCoord.z*MVPMatrix[2];
    _r0011 = _r0011 + VertexCoord.w*MVPMatrix[3];
    _co1._position1 = _r0011;
    _co1._color1 = COLOR;
    _ps = vec2(1.00000000E+00/PassPrev3TextureSize.x, 1.00000000E+00/PassPrev3TextureSize.y);
    _co1._texCoord1 = TexCoord.xy;
    _co1._t1 = vec4(_ps.x, 0.00000000E+00, 0.00000000E+00, _ps.y);
    gl_Position = _r0011;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _co1._t1;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec2 _tex_coord;
struct prev {
    vec2 _tex_coord;
    vec2 _texture_size;
float _placeholder28;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
};
vec4 _TMP45;
vec2 _TMP43;
vec2 _TMP42;
bool _TMP41;
vec3 _TMP33;
vec3 _TMP34;
vec3 _TMP35;
vec3 _TMP36;
vec3 _TMP37;
vec3 _TMP38;
vec3 _TMP39;
vec3 _TMP40;
float _TMP44;
float _TMP18;
vec4 _TMP17;
float _TMP16;
vec4 _TMP15;
float _TMP14;
vec4 _TMP13;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec2 _TMP0;
uniform sampler2D Texture;
prev _PASSPREV31;
vec2 _x0056;
vec2 _val0058;
float _x0060;
float _TMP61;
float _x0068;
float _TMP69;
float _x0076;
float _TMP77;
float _x0084;
float _TMP85;
vec2 _c0094;
vec2 _c0096;
vec2 _c0098;
vec2 _c0100;
vec2 _c0102;
vec4 _r0116;
vec4 _TMP119;
vec4 _x0126;
float _TMP131;
float _x0134;
vec2 _c0136;
float _TMP139;
float _x0142;
vec2 _c0144;
float _TMP147;
float _x0150;
float _TMP151;
float _a0154;
float _TMP155;
float _a0158;
float _x0160;
float _TMP161;
float _x0168;
float _TMP169;
float _TMP175;
float _a0178;
float _TMP179;
float _a0182;
float _x0184;
float _TMP185;
float _x0192;
float _TMP193;
float _TMP199;
float _a0202;
float _TMP203;
float _a0206;
float _x0208;
float _TMP209;
float _x0216;
float _TMP217;
float _TMP223;
float _a0226;
float _TMP227;
float _a0230;
float _x0232;
float _TMP233;
float _x0240;
float _TMP241;
float _TMP247;
float _a0250;
float _TMP251;
float _a0254;
float _x0256;
float _TMP257;
vec4 _x0266;
vec4 _TMP267;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform COMPAT_PRECISION vec2 PassPrev3TextureSize;
uniform sampler2D PassPrev3Texture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    float _px;
    vec2 _pos;
    vec2 _dir;
    vec2 _g1;
    vec2 _g2;
    float _e;
    float _f;
    float _h;
    float _i;
    float _f4;
    float _h5;
    vec4 _icomp;
    vec4 _lparam;
    vec2 _addr;
    _x0056 = TEX0.xy*PassPrev3TextureSize;
    _TMP0 = fract(_x0056);
    _pos = _TMP0 - vec2( 5.00000000E-01, 5.00000000E-01);
    _val0058 = vec2(float((_pos.x > 0.00000000E+00)), float((_pos.y > 0.00000000E+00)));
    _dir = _val0058 - vec2(float((_pos.x < 0.00000000E+00)), float((_pos.y < 0.00000000E+00)));
    _x0060 = -_dir.y*_dir.x;
    _TMP44 = min(1.00000000E+00, _x0060);
    _TMP61 = max(0.00000000E+00, _TMP44);
    _x0068 = _dir.y*_dir.x;
    _TMP44 = min(1.00000000E+00, _x0068);
    _TMP69 = max(0.00000000E+00, _TMP44);
    _g1 = _dir*(_TMP61*TEX1.zw + _TMP69*TEX1.xy);
    _x0076 = _dir.y*_dir.x;
    _TMP44 = min(1.00000000E+00, _x0076);
    _TMP77 = max(0.00000000E+00, _TMP44);
    _x0084 = -_dir.y*_dir.x;
    _TMP44 = min(1.00000000E+00, _x0084);
    _TMP85 = max(0.00000000E+00, _TMP44);
    _g2 = _dir*(_TMP77*TEX1.zw + _TMP85*TEX1.xy);
    _TMP5 = COMPAT_TEXTURE(PassPrev3Texture, TEX0.xy);
    _c0094 = TEX0.xy + _g1;
    _TMP6 = COMPAT_TEXTURE(PassPrev3Texture, _c0094);
    _c0096 = TEX0.xy + _g2;
    _TMP7 = COMPAT_TEXTURE(PassPrev3Texture, _c0096);
    _c0098 = TEX0.xy + _g1 + _g2;
    _TMP8 = COMPAT_TEXTURE(PassPrev3Texture, _c0098);
    _c0100 = TEX0.xy + 2.00000000E+00*_g1;
    _TMP9 = COMPAT_TEXTURE(PassPrev3Texture, _c0100);
    _c0102 = TEX0.xy + 2.00000000E+00*_g2;
    _TMP10 = COMPAT_TEXTURE(PassPrev3Texture, _c0102);
    _e = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _f = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _h = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _i = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _f4 = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _h5 = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0116 = _dir.x*vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00);
    _r0116 = _r0116 + _dir.y*vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00);
    _TMP45 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _r0116);
    _TMP119 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP45);
    _x0126 = _TMP119 + 5.00000000E-01;
    _icomp = floor(_x0126);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP14 = dot(_TMP13, _icomp);
    _x0134 = 2.55000000E+02*_TMP14 + 5.00000000E-01;
    _TMP131 = floor(_x0134);
    _c0136 = TEX0.xy + _g1;
    _TMP15 = COMPAT_TEXTURE(Texture, _c0136);
    _TMP16 = dot(_TMP15, _icomp);
    _x0142 = 2.55000000E+02*_TMP16 + 5.00000000E-01;
    _TMP139 = floor(_x0142);
    _c0144 = TEX0.xy + _g2;
    _TMP17 = COMPAT_TEXTURE(Texture, _c0144);
    _TMP18 = dot(_TMP17, _icomp);
    _x0150 = 2.55000000E+02*_TMP18 + 5.00000000E-01;
    _TMP147 = floor(_x0150);
    if (_TMP139 == 8.00000000E+00) { 
        _lparam.xyz = vec3( 4.00000000E+00, 1.60000000E+01, 6.00000000E+00);
        _a0154 = _f - _f4;
        _TMP151 = abs(_a0154);
        _a0158 = _f - _i;
        _TMP155 = abs(_a0158);
        _px = float((_TMP151 <= _TMP155));
        _x0160 = 1.00000000E+00 - _px;
        _TMP44 = min(1.00000000E+00, _x0160);
        _TMP161 = max(0.00000000E+00, _TMP44);
        _addr.x = 2.00000000E+00*_px + _TMP161;
        _x0168 = 1.00000000E+00 - _px;
        _TMP44 = min(1.00000000E+00, _x0168);
        _TMP169 = max(0.00000000E+00, _TMP44);
        _addr.y = _TMP169;
    } else {
        if (_TMP147 == 7.00000000E+00) { 
            _lparam.xyz = vec3( 1.60000000E+01, 4.00000000E+00, 6.00000000E+00);
            _a0178 = _h - _h5;
            _TMP175 = abs(_a0178);
            _a0182 = _h - _i;
            _TMP179 = abs(_a0182);
            _px = float((_TMP175 <= _TMP179));
            _x0184 = 1.00000000E+00 - _px;
            _TMP44 = min(1.00000000E+00, _x0184);
            _TMP185 = max(0.00000000E+00, _TMP44);
            _addr.x = _TMP185;
            _x0192 = 1.00000000E+00 - _px;
            _TMP44 = min(1.00000000E+00, _x0192);
            _TMP193 = max(0.00000000E+00, _TMP44);
            _addr.y = 2.00000000E+00*_px + _TMP193;
        } else {
            if (_TMP139 == 6.00000000E+00) { 
                _lparam.xyz = vec3( 4.00000000E+00, 1.20000000E+01, 6.00000000E+00);
                _a0202 = _f - _f4;
                _TMP199 = abs(_a0202);
                _a0206 = _f - _i;
                _TMP203 = abs(_a0206);
                _px = float((_TMP199 <= _TMP203));
                _x0208 = 1.00000000E+00 - _px;
                _TMP44 = min(1.00000000E+00, _x0208);
                _TMP209 = max(0.00000000E+00, _TMP44);
                _addr.x = 2.00000000E+00*_px + _TMP209;
                _x0216 = 1.00000000E+00 - _px;
                _TMP44 = min(1.00000000E+00, _x0216);
                _TMP217 = max(0.00000000E+00, _TMP44);
                _addr.y = _TMP217;
            } else {
                if (_TMP147 == 5.00000000E+00) { 
                    _lparam.xyz = vec3( 1.20000000E+01, 4.00000000E+00, 6.00000000E+00);
                    _a0226 = _h - _h5;
                    _TMP223 = abs(_a0226);
                    _a0230 = _h - _i;
                    _TMP227 = abs(_a0230);
                    _px = float((_TMP223 <= _TMP227));
                    _x0232 = 1.00000000E+00 - _px;
                    _TMP44 = min(1.00000000E+00, _x0232);
                    _TMP233 = max(0.00000000E+00, _TMP44);
                    _addr.x = _TMP233;
                    _x0240 = 1.00000000E+00 - _px;
                    _TMP44 = min(1.00000000E+00, _x0240);
                    _TMP241 = max(0.00000000E+00, _TMP44);
                    _addr.y = 2.00000000E+00*_px + _TMP241;
                } else {
                    _a0250 = _e - _f;
                    _TMP247 = abs(_a0250);
                    _a0254 = _e - _h;
                    _TMP251 = abs(_a0254);
                    _px = float((_TMP247 <= _TMP251));
                    _addr.x = _px;
                    _x0256 = 1.00000000E+00 - _px;
                    _TMP44 = min(1.00000000E+00, _x0256);
                    _TMP257 = max(0.00000000E+00, _TMP44);
                    _addr.y = _TMP257;
                    if (_TMP131 == 8.00000000E+00) { 
                        _TMP33 = vec3( 4.00000000E+00, 1.60000000E+01, 2.00000000E+00);
                    } else {
                        if (_TMP131 == 7.00000000E+00) { 
                            _TMP34 = vec3( 1.60000000E+01, 4.00000000E+00, 2.00000000E+00);
                        } else {
                            if (_TMP131 == 6.00000000E+00) { 
                                _TMP35 = vec3( 4.00000000E+00, 1.20000000E+01, 2.00000000E+00);
                            } else {
                                if (_TMP131 == 5.00000000E+00) { 
                                    _TMP36 = vec3( 1.20000000E+01, 4.00000000E+00, 2.00000000E+00);
                                } else {
                                    if (_TMP131 == 4.00000000E+00) { 
                                        _TMP37 = vec3( 4.00000000E+00, 8.00000000E+00, 2.00000000E+00);
                                    } else {
                                        if (_TMP131 == 3.00000000E+00) { 
                                            _TMP38 = vec3( 8.00000000E+00, 4.00000000E+00, 2.00000000E+00);
                                        } else {
                                            if (_TMP131 == 2.00000000E+00) { 
                                                _TMP39 = vec3( 4.00000000E+00, 4.00000000E+00, 2.00000000E+00);
                                            } else {
                                                if (_TMP131 == 1.00000000E+00) { 
                                                    _TMP40 = vec3( 4.00000000E+00, 4.00000000E+00, 3.00000000E+00);
                                                } else {
                                                    _TMP40 = vec3( 4.00000000E+00, 4.00000000E+00, 4.00000000E+00);
                                                } 
                                                _TMP39 = _TMP40;
                                            } 
                                            _TMP38 = _TMP39;
                                        } 
                                        _TMP37 = _TMP38;
                                    } 
                                    _TMP36 = _TMP37;
                                } 
                                _TMP35 = _TMP36;
                            } 
                            _TMP34 = _TMP35;
                        } 
                        _TMP33 = _TMP34;
                    } 
                    _lparam.xyz = _TMP33;
                } 
            } 
        } 
    } 
    if (_dir.x*_dir.y < 0.00000000E+00) { 
        _TMP41 = true;
    } else {
        _TMP41 = false;
    } 
    _addr = _addr*_dir.yx;
    if (_TMP41) { 
        _TMP42 = _addr.yx;
    } else {
        _TMP42 = _addr;
    } 
    _lparam.xy = _lparam.xy*_dir.yx;
    if (_TMP41) { 
        _TMP43 = _lparam.yx;
    } else {
        _TMP43 = _lparam.xy;
    } 
    _lparam.xy = _TMP43;
    _addr.x = _TMP42.x + 2.00000000E+00;
    _addr.y = _TMP42.y + 2.00000000E+00;
    _lparam.w = _addr.x*8.00000000E+00 + _addr.y;
    _x0266 = (_lparam - vec4( -6.40000000E+01, -6.40000000E+01, -6.40000000E+01, -6.40000000E+01))/vec4( 1.28000000E+02, 1.28000000E+02, 1.28000000E+02, 1.28000000E+02);
    _TMP45 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0266);
    _TMP267 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP45);
    FragColor = _TMP267;
    return;
} 
#endif