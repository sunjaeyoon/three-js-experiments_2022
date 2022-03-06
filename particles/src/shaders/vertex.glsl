varying vec2 vUv;
varying vec2 vCoordinates;
attribute vec3 aCoordinates;

void main(){
    vUv = uv;

    vec4 myPosition = modelViewMatrix * vec4(position, 1.0);
    
    gl_PointSize = 500. * (1./ -myPosition.z);
    gl_Position = projectionMatrix * myPosition;

    vCoordinates = aCoordinates.xy;
} 