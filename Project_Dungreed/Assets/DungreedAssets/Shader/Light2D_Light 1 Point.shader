//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Light2D/Light 1 Point" {
Properties {
_MainTex ("Light texture", 2D) = "white" { }
_ObstacleMul ("Obstacle Mul", Float) = 6
_EmissionColorMul ("Emission color mul", Float) = 1
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
  GpuProgramID 57390
Program "vp" {
SubProgram "d3d9 " {
Keywords { "ORTHOGRAPHIC_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "PERSPECTIVE_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PERSPECTIVE_CAMERA" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "ORTHOGRAPHIC_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "ORTHOGRAPHIC_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "PERSPECTIVE_CAMERA" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "PERSPECTIVE_CAMERA" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}