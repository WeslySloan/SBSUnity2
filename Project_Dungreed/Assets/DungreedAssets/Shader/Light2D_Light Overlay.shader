//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Light2D/Light Overlay" {
Properties {
_GameTex ("Game", 2D) = "white" { }
_AmbientLightTex ("Ambient Light", 2D) = "black" { }
_LightIgnoresTex ("Light Ignores", 2D) = "black" { }
_LightSourcesTex ("Light Sources", 2D) = "black" { }
_LightSourcesMul ("Light Sources Multiplier", Float) = 1
_LightMul ("Resulting Light Multiplier", Float) = 2
_AdditiveLightPow ("Bloom Pow. Zero to turn off bloom.", Float) = 10
_AdditiveLightAdd ("Bloom Add", Float) = 0.2
}
SubShader {
 LOD 100
 Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
 Pass {
  LOD 100
  Tags { "IGNOREPROJECTOR" = "true" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
  ZClip Off
  ZWrite Off
  GpuProgramID 18448
Program "vp" {
SubProgram "d3d9 " {
Keywords { "DUMMY" "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DUMMY" "BLOOM_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "BLOOM_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "HDR" "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "HDR" "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "HDR" "BLOOM_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "HDR" "BLOOM_OFF" }
"// shader disassembly not supported on DXBC"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "DUMMY" "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "DUMMY" "BLOOM_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "DUMMY" "BLOOM_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "HDR" "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "HDR" "BLOOM_ON" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d9 " {
Keywords { "HDR" "BLOOM_OFF" }
"// shader disassembly not supported on DXBC"
}
SubProgram "d3d11 " {
Keywords { "HDR" "BLOOM_OFF" }
"// shader disassembly not supported on DXBC"
}
}
}
}
}