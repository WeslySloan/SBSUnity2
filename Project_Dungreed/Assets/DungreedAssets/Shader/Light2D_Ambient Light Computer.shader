//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Light2D/Ambient Light Computer" {
Properties {
_MainTex ("Base (RGB) Trans (A)", 2D) = "white" { }
_ObstacleMul ("Obstacle Mul", Float) = 1.5
_ObstacleAdd ("Obstacle add", Float) = 0.1
_EmissionColorMul ("Emission color mul", Float) = 0.1
_SamplingDist ("Average sampling distance", Float) = 0.01
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  ZClip Off
  ZWrite Off
  GpuProgramID 39553
Program "vp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
"// shader disassembly not supported on DXBC"
}
}
}
}
}