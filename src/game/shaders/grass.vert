﻿uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelViewMatrix;
uniform mat4 modelMatrix;

attribute vec3 position;
attribute vec3 terPos;
attribute vec2 uv;

varying vec2 vUv;

void main(){
    vUv = uv;
    vec3 finalPos = position;
    finalPos.x *= .05;
    finalPos.y += 4.0;
    finalPos += terPos;

    gl_Position = projectionMatrix * modelViewMatrix * vec4(finalPos, 1.0);
}