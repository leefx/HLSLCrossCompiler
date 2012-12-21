//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
//   fxc /T ps_5_0 /Fo sample1DLod.o /Fc sample1DLod.asm sample1DLod.hlsl
//
//
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   float LodToSample;                 // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// TextureSampler                    sampler      NA          NA    0        1
// TextureBase                       texture  float4          1d    0        1
// TextureDetail                     texture  float4          1d    1        1
// $Globals                          cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// TEXCOORD                 0   xyzw        0     NONE  float   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_Target                0   xyzw        0   TARGET  float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture1d (float,float,float,float) t0
dcl_resource_texture1d (float,float,float,float) t1
dcl_input_ps linear v0.x
dcl_output o0.xyzw
dcl_temps 2
sample_l_indexable(texture1d)(float,float,float,float) r0.xyzw, v0.x, t0.xyzw, s0, cb0[0].x
sample_l_indexable(texture1d)(float,float,float,float) r1.xyzw, v0.x, t1.xyzw, s0, cb0[0].x
mul o0.xyzw, r0.xyzw, r1.xyzw
ret 
// Approximately 4 instruction slots used
