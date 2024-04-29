﻿#version 120
// Created by KI5

varying vec3 vertColour; 
varying vec3 vertNormal;
varying vec2 texCoords0;
varying vec2 texCoords1;
varying vec4 positionEye;

uniform sampler2D Texture0;
uniform vec4 TexturePainColor;
uniform sampler2D TextureRust;
uniform float TextureRustA;
uniform sampler2D TextureMask;
uniform sampler2D TextureLights; 
uniform sampler2D TextureDamage1Overlay;
uniform sampler2D TextureDamage1Shell;
uniform sampler2D TextureDamage2Overlay;
uniform sampler2D TextureDamage2Shell;
uniform sampler2D TextureReflectionA;
uniform sampler2D TextureReflectionB;
uniform vec3 ReflectionParam;

uniform mat4 TextureUninstall1;
uniform mat4 TextureUninstall2;
uniform mat4 TextureLightsEnables1;
uniform mat4 TextureLightsEnables2;
uniform mat4 TextureDamage1Enables1;
uniform mat4 TextureDamage1Enables2;
uniform mat4 TextureDamage2Enables1;
uniform mat4 TextureDamage2Enables2;
uniform mat4 MatBlood1Enables1;
uniform mat4 MatBlood1Enables2;
uniform mat4 MatBlood2Enables1;
uniform mat4 MatBlood2Enables2;

uniform vec3 TintColour = vec3(1.0);

uniform vec3 AmbientColour;
uniform vec3 Light0Direction;
uniform vec3 Light0Colour;
uniform vec3 Light1Direction;
uniform vec3 Light1Colour;
uniform vec3 Light2Direction;
uniform vec3 Light2Colour;

#include "util/math"
#include "util/SphereMap"
#include "util/dommat4"

#include "vehicle_common.frag"

void main()
{
    vec3 normal = normalize(vertNormal);
    vec4 tex = texture2D(Texture0, texCoords0);
    
    vec3 col = tex.xyz;
    float dotprod;
    
    vec4 texColorMask = texture2D(TextureMask, texCoords0);
    vec4 texColorRust = texture2D(TextureRust, texCoords1);
    vec4 texColorLights = texture2D(TextureLights, texCoords0);
    vec4 texColorDamage1Overlay = texture2D(TextureDamage1Overlay, texCoords1);
    vec4 texColorDamage1Shell = texture2D(TextureDamage1Shell, texCoords1);
    vec4 texColorDamage2Overlay = texture2D(TextureDamage2Overlay, texCoords1);
    vec4 texColorDamage2Shell = texture2D(TextureDamage2Shell, texCoords1);

    vec3 lighting = AmbientColour;
    dotprod = max(dot(normal, normalize(Light0Direction)), 0.0);
    quantise(dotprod, 3.0);
    lighting += Light0Colour * dotprod;

    dotprod = max(dot(normal, normalize(Light1Direction)), 0.0);
    quantise(dotprod, 3.0);
    lighting += Light1Colour * dotprod;

    dotprod = max(dot(normal, normalize(Light2Direction)), 0.0);
    quantise(dotprod, 3.0);
    lighting += Light2Colour * dotprod;

    vec3 TintColourNew = desaturate(TintColour, 0.3);
    lighting.x = clamp(lighting.x, 0.0, 1.0);
    lighting.y = clamp(lighting.y, 0.0, 1.0);
    lighting.z = clamp(lighting.z, 0.0, 1.0);
    
    mat4 texen1 = mat4( 0.0 );
    texen1[0][0] = (1.0-step(0.01,length(texColorMask.xyz-colZone1)));
    texen1[0][1] = (1.0-step(0.01,length(texColorMask.xyz-colZone2)));
    texen1[0][2] = (1.0-step(0.01,length(texColorMask.xyz-colZone3)));
    texen1[0][3] = (1.0-step(0.01,length(texColorMask.xyz-colZone4)));
    texen1[1][0] = (1.0-step(0.01,length(texColorMask.xyz-colZone5)));
    texen1[1][1] = (1.0-step(0.01,length(texColorMask.xyz-colZone6)));
    texen1[1][2] = (1.0-step(0.01,length(texColorMask.xyz-colZone7)));
    texen1[1][3] = (1.0-step(0.01,length(texColorMask.xyz-colZone8)));
    texen1[2][0] = (1.0-step(0.01,length(texColorMask.xyz-colZone9)));
    texen1[2][1] = (1.0-step(0.01,length(texColorMask.xyz-colZone10)));
    texen1[2][2] = (1.0-step(0.01,length(texColorMask.xyz-colZone11)));
    texen1[2][3] = (1.0-step(0.01,length(texColorMask.xyz-colZone12)));
    texen1[3][0] = (1.0-step(0.01,length(texColorMask.xyz-colZone13)));
    texen1[3][1] = (1.0-step(0.01,length(texColorMask.xyz-colZone14)));
    texen1[3][2] = (1.0-step(0.01,length(texColorMask.xyz-colZone15)));
    texen1[3][3] = (1.0-step(0.01,length(texColorMask.xyz-colZone16)));

    mat4 texen2 = mat4( 0.0 );
    texen2[0][0] = (1.0-step(0.01,length(texColorMask.xyz-colZone17)));
    texen2[0][1] = (1.0-step(0.01,length(texColorMask.xyz-colZone18)));
    texen2[0][2] = (1.0-step(0.01,length(texColorMask.xyz-colZone19)));
    texen2[0][3] = (1.0-step(0.01,length(texColorMask.xyz-colZone20)));
    texen2[1][0] = (1.0-step(0.01,length(texColorMask.xyz-colZone21)));
    texen2[1][1] = (1.0-step(0.01,length(texColorMask.xyz-colZone22)));
    texen2[1][2] = (1.0-step(0.01,length(texColorMask.xyz-colZone23)));
    texen2[1][3] = (1.0-step(0.01,length(texColorMask.xyz-colZone24)));
    texen2[2][0] = (1.0-step(0.01,length(texColorMask.xyz-colZone25)));
    texen2[2][1] = (1.0-step(0.01,length(texColorMask.xyz-colZone26)));
    texen2[2][2] = (1.0-step(0.01,length(texColorMask.xyz-colZone27)));
    
    float t1en = step(0.5, dommat4(texen1, TextureLightsEnables1) + dommat4(texen2, TextureLightsEnables2) );
    float t2en = step(0.5, dommat4(texen1, TextureDamage1Enables1) + dommat4(texen2, TextureDamage1Enables2) );
    float t3en = step(0.5, dommat4(texen1, TextureDamage2Enables1) + dommat4(texen2, TextureDamage2Enables2) );
    float t4en = step(0.5, dommat4(texen1, TextureUninstall1) + dommat4(texen2, TextureUninstall2) );

    float windowAlpha = clamp(texen2[0][0] + texen1[1][2] + texen1[1][3] + texen1[2][0] + texen1[2][1] + texen1[2][2] + texen1[2][3], 0.0, 1.0);
    float frontAlpha = clamp(texen1[0][0] + texen2[0][1] + texen2[0][2], 0.0, 1.0);
    float tailAlpha = clamp(texen1[0][1] + texen2[0][3] + texen2[1][0] + texen2[1][1] + texen2[1][2], 0.0, 1.0);
    float noTintAlpha = clamp(windowAlpha + frontAlpha + tailAlpha, 0.0, 1.0);

    col = col*lighting*TintColourNew;

    float ref_en = texen2[0][0] + texen1[1][2] + texen1[1][3] + texen1[2][0] + texen1[2][1] + texen1[2][2] + texen1[2][3];
    vec2 refTexCoord = SphereMap( normalize(normal), positionEye.xyz );
    vec3 texRefA = texture2D(TextureReflectionA, refTexCoord).xyz;
    vec3 texRefB = texture2D(TextureReflectionB, refTexCoord).xyz;
    vec3 texRef = mix(texRefB, texRefA, ReflectionParam.x);
    
    col = mix(col, texRef, ref_en*(0.1+ReflectionParam.y*0.1)); // 0.6 max 0.1 min
    col = mix(col, texRef/4.0, (1.0-ref_en)*(0.05 + ReflectionParam.z*0.1)); // 0.2 max 
    
    col = mix(col, texColorLights.xyz, texColorLights.a*t1en);
    
    col = mix(col, texColorRust.xyz*lighting*TintColourNew, texColorRust.a*TextureRustA);
    
    vec3 paintColor = TexturePainColor.xyz;

    vec4 texColorBlood2 = texture2D(TextureDamage2Overlay, texCoords1);
    vec4 colmask = texture2D(TextureDamage1Overlay, texCoords1);
    float intensity = dommat4(texen1, MatBlood1Enables1) + dommat4(texen2, MatBlood1Enables2);
    float maskAlpha = step(0.5, dommat4(texen1, MatBlood2Enables1) + dommat4(texen2, MatBlood2Enables2));

    col = addBlood(texColorBlood2, colmask, intensity, maskAlpha * windowAlpha, lighting, TintColourNew, col);

    col = addDamage(col, texColorDamage1Shell, paintColor, lighting, TintColourNew, t2en*(1.0-noTintAlpha));
    col = mix(col, texColorDamage1Shell.xyz*lighting*TintColourNew, texColorDamage1Shell.a*t2en*noTintAlpha);

    col = addDamage(col, texColorDamage2Shell, paintColor, lighting, TintColourNew, t3en*(1.0-noTintAlpha));
    col = mix(col, texColorDamage2Shell.xyz*lighting*TintColourNew, texColorDamage2Shell.a*t3en*noTintAlpha);

    col = addBlood(texColorBlood2, colmask, intensity, maskAlpha * (1.0 - windowAlpha), lighting, TintColourNew, col);

    col = mix(col, vec3(0.2), t4en);

    col = colorDebug(col, texen1, texen2, windowAlpha, frontAlpha, tailAlpha, noTintAlpha, texColorMask);

    gl_FragColor = vec4(col, TexturePainColor.a);
}
