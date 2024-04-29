#version 120
// Created by KI5

varying vec3 vertColour;
varying vec3 vertNormal;
varying vec2 texCoords0;
varying vec2 texCoords1;
varying vec4 positionEye;

attribute vec4 boneIndices;
attribute vec4 boneWeights;

uniform mat4 MatrixPalette[60];

vec2 SphereMap(in vec3 normal, in vec3 ecPosition3)
{
   float  m;
   vec3   r,u;

   u = normalize(ecPosition3);
   r = reflect(u, normal);
   m = 2.0 * sqrt(r.x * r.x + r.y * r.y + (r.z + 1.0) * (r.z + 1.0));

   return vec2 (r.x / m + 0.5, r.y / m + 0.5);
}

void main()
{
    vec4 position = vec4(gl_Vertex.xyz, 1.0);
    vec4 normal = vec4(gl_Normal.xyz, 0.0);

    texCoords0 = gl_MultiTexCoord0.st;
    texCoords1 = gl_MultiTexCoord1.st;

    mat4 boneEffect = mat4(0.0);
    if (boneWeights.x > 0.0)
        boneEffect += MatrixPalette[int(boneIndices.x)] * boneWeights.x;
    if (boneWeights.y > 0.0)
        boneEffect += MatrixPalette[int(boneIndices.y)] * boneWeights.y;
    if (boneWeights.z > 0.0)
        boneEffect += MatrixPalette[int(boneIndices.z)] * boneWeights.z;
    if (boneWeights.w > 0.0)
        boneEffect += MatrixPalette[int(boneIndices.w)] * boneWeights.w;

    normal = boneEffect * normal;
    vertNormal = normal.xyz;
    vertColour = vec3(1.0, 1.0, 1.0);
    positionEye = (gl_ModelViewMatrix * boneEffect * position) - vec4(0.0, 0.0, 0.0, 0);

    vec3 ecPosition3 = (gl_ModelViewMatrix * boneEffect * position).xyz;
    vec2 refTexCoord = SphereMap(normalize(vertNormal), ecPosition3);

    gl_TexCoord[0] = vec4(refTexCoord, 0.0, 1.0);

    gl_Position = gl_ModelViewProjectionMatrix * boneEffect * position;
}
