//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Light2D/Light Auto Points" {
Properties {
_MainTex ("Light texture", 2D) = "white" { }
_ObstacleMul ("Obstacle Mul", Float) = 500
_EmissionColorMul ("Emission color mul", Float) = 1
_StepCountMul ("Raytracking point count multiplier", Float) = 2
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  Blend OneMinusDstColor One, OneMinusDstColor One
  ZClip Off
  ZWrite Off
  Cull Off
  GpuProgramID 14411
}
}
Fallback "Light2D/Light 80 Points"
}