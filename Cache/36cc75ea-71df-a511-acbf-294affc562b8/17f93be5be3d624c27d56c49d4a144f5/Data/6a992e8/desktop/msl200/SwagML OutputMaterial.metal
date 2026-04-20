#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#ifdef useShaderGridSample
#undef useShaderGridSample
#endif
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
return 0;
}
}
#ifndef sc_TextureRenderingLayout_Regular
#define sc_TextureRenderingLayout_Regular 0
#define sc_TextureRenderingLayout_StereoInstancedClipped 1
#define sc_TextureRenderingLayout_StereoMultiview 2
#endif
// SCC_BACKEND_SHADER_FLAGS_BEGIN__
// SCC_BACKEND_SHADER_FLAGS_END__
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//output vec4 sc_FragData0 0
//sampler sampler camTexSmpSC 0:24
//sampler sampler drivingHairMaskSmpSC 0:25
//sampler sampler flowRelativeSmpSC 0:26
//sampler sampler flowSelectionSmpSC 0:27
//sampler sampler genTexSmpSC 0:28
//sampler sampler intensityTextureSmpSC 0:29
//sampler sampler sc_ScreenTextureSmpSC 0:34
//sampler sampler shaderMasksTexSmpSC 0:37
//sampler sampler sourceCropTexSmpSC 0:38
//sampler sampler sourceGarmentMaskSmpSC 0:39
//texture texture2D camTex 0:1:0:24
//texture texture2D drivingHairMask 0:2:0:25
//texture texture2D flowRelative 0:3:0:26
//texture texture2D flowSelection 0:4:0:27
//texture texture2D genTex 0:5:0:28
//texture texture2D intensityTexture 0:6:0:29
//texture texture2D sc_ScreenTexture 0:18:0:34
//texture texture2D shaderMasksTex 0:21:0:37
//texture texture2D sourceCropTex 0:22:0:38
//texture texture2D sourceGarmentMask 0:23:0:39
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:40:5408 {
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
//float4 sc_CurrentRenderTargetDims 3456
//sc_Camera_t sc_Camera 3472
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3504
//float4 sc_ShadowColor 3520
//float4x4 sc_ProjectorMatrix 3536
//float4 weights0 3616
//float4 weights1 3632
//float4 sc_StereoClipPlanes 3664:[2]:16
//float2 sc_TAAJitterOffset 3704
//float4 voxelization_params_0 3824
//float4 voxelization_params_frustum_lrbt 3840
//float4 voxelization_params_frustum_nf 3856
//float3 voxelization_params_camera_pos 3872
//float4x4 sc_ModelMatrixVoxelization 3888
//float correctedIntensity 3952
//float3x3 intensityTextureTransform 4016
//float4 intensityTextureUvMinMax 4064
//float4 intensityTextureBorderColor 4080
//int PreviewEnabled 4244
//float alphaTestThreshold 4252
//float3x3 camTexTransform 4304
//float4 camTexUvMinMax 4352
//float4 camTexBorderColor 4368
//float2 cropCenter 4384
//float2 cropSize 4392
//float flowHalfPx 4400
//float4 flowRelativeSize 4416
//float3x3 flowRelativeTransform 4464
//float4 flowRelativeUvMinMax 4512
//float4 flowRelativeBorderColor 4528
//float4 flowSelectionSize 4544
//float3x3 flowSelectionTransform 4592
//float4 flowSelectionUvMinMax 4640
//float4 flowSelectionBorderColor 4656
//float sx 4672
//float sy 4676
//float dx 4680
//float dy 4684
//float3x3 sourceCropTexTransform 4736
//float4 sourceCropTexUvMinMax 4784
//float4 sourceCropTexBorderColor 4800
//float3x3 sourceGarmentMaskTransform 4864
//float4 sourceGarmentMaskUvMinMax 4912
//float4 sourceGarmentMaskBorderColor 4928
//float shaderMaskHalfPx 4944
//float3x3 shaderMasksTexTransform 5008
//float4 shaderMasksTexUvMinMax 5056
//float4 shaderMasksTexBorderColor 5072
//float gridSampAlpha 5088
//float4 genTexSize 5104
//float3x3 genTexTransform 5152
//float4 genTexUvMinMax 5200
//float4 genTexBorderColor 5216
//float genHalfPx 5232
//float4 drivingHairMaskSize 5248
//float3x3 drivingHairMaskTransform 5296
//float4 drivingHairMaskUvMinMax 5344
//float4 drivingHairMaskBorderColor 5360
//float segShiftX 5376
//float segRatioX 5380
//float segShiftY 5384
//float segRatioY 5388
//float genAlpha 5392
//bool useShaderGridSample 5396
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR_BURN 2 0
//spec_const bool BLEND_MODE_COLOR_DODGE 3 0
//spec_const bool BLEND_MODE_COLOR 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_camTex 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_drivingHairMask 32 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_flowRelative 33 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_flowSelection 34 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_genTex 35 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 36 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_shaderMasksTex 37 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sourceCropTex 38 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sourceGarmentMask 39 0
//spec_const bool SC_USE_UV_MIN_MAX_camTex 40 0
//spec_const bool SC_USE_UV_MIN_MAX_drivingHairMask 41 0
//spec_const bool SC_USE_UV_MIN_MAX_flowRelative 42 0
//spec_const bool SC_USE_UV_MIN_MAX_flowSelection 43 0
//spec_const bool SC_USE_UV_MIN_MAX_genTex 44 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 45 0
//spec_const bool SC_USE_UV_MIN_MAX_shaderMasksTex 46 0
//spec_const bool SC_USE_UV_MIN_MAX_sourceCropTex 47 0
//spec_const bool SC_USE_UV_MIN_MAX_sourceGarmentMask 48 0
//spec_const bool SC_USE_UV_TRANSFORM_camTex 49 0
//spec_const bool SC_USE_UV_TRANSFORM_drivingHairMask 50 0
//spec_const bool SC_USE_UV_TRANSFORM_flowRelative 51 0
//spec_const bool SC_USE_UV_TRANSFORM_flowSelection 52 0
//spec_const bool SC_USE_UV_TRANSFORM_genTex 53 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 54 0
//spec_const bool SC_USE_UV_TRANSFORM_shaderMasksTex 55 0
//spec_const bool SC_USE_UV_TRANSFORM_sourceCropTex 56 0
//spec_const bool SC_USE_UV_TRANSFORM_sourceGarmentMask 57 0
//spec_const bool UseViewSpaceDepthVariant 58 1
//spec_const bool camTexHasSwappedViews 59 0
//spec_const bool drivingHairMaskHasSwappedViews 60 0
//spec_const bool flowRelativeHasSwappedViews 61 0
//spec_const bool flowSelectionHasSwappedViews 62 0
//spec_const bool genTexHasSwappedViews 63 0
//spec_const bool intensityTextureHasSwappedViews 64 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 65 0
//spec_const bool sc_BlendMode_Add 66 0
//spec_const bool sc_BlendMode_AlphaTest 67 0
//spec_const bool sc_BlendMode_AlphaToCoverage 68 0
//spec_const bool sc_BlendMode_ColoredGlass 69 0
//spec_const bool sc_BlendMode_Custom 70 0
//spec_const bool sc_BlendMode_Max 71 0
//spec_const bool sc_BlendMode_Min 72 0
//spec_const bool sc_BlendMode_MultiplyOriginal 73 0
//spec_const bool sc_BlendMode_Multiply 74 0
//spec_const bool sc_BlendMode_Normal 75 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 76 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 77 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 78 0
//spec_const bool sc_BlendMode_Screen 79 0
//spec_const bool sc_DepthOnly 80 0
//spec_const bool sc_FramebufferFetch 81 0
//spec_const bool sc_MotionVectorsPass 82 0
//spec_const bool sc_OITCompositingPass 83 0
//spec_const bool sc_OITDepthBoundsPass 84 0
//spec_const bool sc_OITDepthGatherPass 85 0
//spec_const bool sc_OutputBounds 86 0
//spec_const bool sc_ProjectiveShadowsCaster 87 0
//spec_const bool sc_ProjectiveShadowsReceiver 88 0
//spec_const bool sc_RenderAlphaToColor 89 0
//spec_const bool sc_ScreenTextureHasSwappedViews 90 0
//spec_const bool sc_TAAEnabled 91 0
//spec_const bool sc_VertexBlendingUseNormals 92 0
//spec_const bool sc_VertexBlending 93 0
//spec_const bool sc_Voxelization 94 0
//spec_const bool shaderMasksTexHasSwappedViews 95 0
//spec_const bool sourceCropTexHasSwappedViews 96 0
//spec_const bool sourceGarmentMaskHasSwappedViews 97 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_camTex 98 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_drivingHairMask 99 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_flowRelative 100 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_flowSelection 101 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_genTex 102 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 103 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_shaderMasksTex 104 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sourceCropTex 105 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask 106 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_camTex 107 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_drivingHairMask 108 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_flowRelative 109 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_flowSelection 110 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_genTex 111 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 112 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_shaderMasksTex 113 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sourceCropTex 114 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask 115 -1
//spec_const int camTexLayout 116 0
//spec_const int drivingHairMaskLayout 117 0
//spec_const int flowRelativeLayout 118 0
//spec_const int flowSelectionLayout 119 0
//spec_const int genTexLayout 120 0
//spec_const int intensityTextureLayout 121 0
//spec_const int sc_DepthBufferMode 122 0
//spec_const int sc_RenderingSpace 123 -1
//spec_const int sc_ScreenTextureLayout 124 0
//spec_const int sc_ShaderCacheConstant 125 0
//spec_const int sc_SkinBonesCount 126 0
//spec_const int sc_StereoRenderingMode 127 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 128 0
//spec_const int shaderMasksTexLayout 129 0
//spec_const int sourceCropTexLayout 130 0
//spec_const int sourceGarmentMaskLayout 131 0
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(0)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(2)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(3)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(4)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(5)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(6)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(7)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(8)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(9)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(10)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(11)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(12)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(13)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(14)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(15)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(16)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(17)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(18)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(19)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(20)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(21)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(22)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(23)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(25)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(26)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(27)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(28)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(30)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_camTex [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_camTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_camTex) ? SC_USE_CLAMP_TO_BORDER_camTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_drivingHairMask [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_drivingHairMask_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_drivingHairMask) ? SC_USE_CLAMP_TO_BORDER_drivingHairMask : false;
constant bool SC_USE_CLAMP_TO_BORDER_flowRelative [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_flowRelative_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_flowRelative) ? SC_USE_CLAMP_TO_BORDER_flowRelative : false;
constant bool SC_USE_CLAMP_TO_BORDER_flowSelection [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_flowSelection_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_flowSelection) ? SC_USE_CLAMP_TO_BORDER_flowSelection : false;
constant bool SC_USE_CLAMP_TO_BORDER_genTex [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_genTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_genTex) ? SC_USE_CLAMP_TO_BORDER_genTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(36)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_shaderMasksTex [[function_constant(37)]];
constant bool SC_USE_CLAMP_TO_BORDER_shaderMasksTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_shaderMasksTex) ? SC_USE_CLAMP_TO_BORDER_shaderMasksTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_sourceCropTex [[function_constant(38)]];
constant bool SC_USE_CLAMP_TO_BORDER_sourceCropTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_sourceCropTex) ? SC_USE_CLAMP_TO_BORDER_sourceCropTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_sourceGarmentMask [[function_constant(39)]];
constant bool SC_USE_CLAMP_TO_BORDER_sourceGarmentMask_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_sourceGarmentMask) ? SC_USE_CLAMP_TO_BORDER_sourceGarmentMask : false;
constant bool SC_USE_UV_MIN_MAX_camTex [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_camTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_camTex) ? SC_USE_UV_MIN_MAX_camTex : false;
constant bool SC_USE_UV_MIN_MAX_drivingHairMask [[function_constant(41)]];
constant bool SC_USE_UV_MIN_MAX_drivingHairMask_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_drivingHairMask) ? SC_USE_UV_MIN_MAX_drivingHairMask : false;
constant bool SC_USE_UV_MIN_MAX_flowRelative [[function_constant(42)]];
constant bool SC_USE_UV_MIN_MAX_flowRelative_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_flowRelative) ? SC_USE_UV_MIN_MAX_flowRelative : false;
constant bool SC_USE_UV_MIN_MAX_flowSelection [[function_constant(43)]];
constant bool SC_USE_UV_MIN_MAX_flowSelection_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_flowSelection) ? SC_USE_UV_MIN_MAX_flowSelection : false;
constant bool SC_USE_UV_MIN_MAX_genTex [[function_constant(44)]];
constant bool SC_USE_UV_MIN_MAX_genTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_genTex) ? SC_USE_UV_MIN_MAX_genTex : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(45)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_shaderMasksTex [[function_constant(46)]];
constant bool SC_USE_UV_MIN_MAX_shaderMasksTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_shaderMasksTex) ? SC_USE_UV_MIN_MAX_shaderMasksTex : false;
constant bool SC_USE_UV_MIN_MAX_sourceCropTex [[function_constant(47)]];
constant bool SC_USE_UV_MIN_MAX_sourceCropTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_sourceCropTex) ? SC_USE_UV_MIN_MAX_sourceCropTex : false;
constant bool SC_USE_UV_MIN_MAX_sourceGarmentMask [[function_constant(48)]];
constant bool SC_USE_UV_MIN_MAX_sourceGarmentMask_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_sourceGarmentMask) ? SC_USE_UV_MIN_MAX_sourceGarmentMask : false;
constant bool SC_USE_UV_TRANSFORM_camTex [[function_constant(49)]];
constant bool SC_USE_UV_TRANSFORM_camTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_camTex) ? SC_USE_UV_TRANSFORM_camTex : false;
constant bool SC_USE_UV_TRANSFORM_drivingHairMask [[function_constant(50)]];
constant bool SC_USE_UV_TRANSFORM_drivingHairMask_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_drivingHairMask) ? SC_USE_UV_TRANSFORM_drivingHairMask : false;
constant bool SC_USE_UV_TRANSFORM_flowRelative [[function_constant(51)]];
constant bool SC_USE_UV_TRANSFORM_flowRelative_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_flowRelative) ? SC_USE_UV_TRANSFORM_flowRelative : false;
constant bool SC_USE_UV_TRANSFORM_flowSelection [[function_constant(52)]];
constant bool SC_USE_UV_TRANSFORM_flowSelection_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_flowSelection) ? SC_USE_UV_TRANSFORM_flowSelection : false;
constant bool SC_USE_UV_TRANSFORM_genTex [[function_constant(53)]];
constant bool SC_USE_UV_TRANSFORM_genTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_genTex) ? SC_USE_UV_TRANSFORM_genTex : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(54)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_shaderMasksTex [[function_constant(55)]];
constant bool SC_USE_UV_TRANSFORM_shaderMasksTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_shaderMasksTex) ? SC_USE_UV_TRANSFORM_shaderMasksTex : false;
constant bool SC_USE_UV_TRANSFORM_sourceCropTex [[function_constant(56)]];
constant bool SC_USE_UV_TRANSFORM_sourceCropTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_sourceCropTex) ? SC_USE_UV_TRANSFORM_sourceCropTex : false;
constant bool SC_USE_UV_TRANSFORM_sourceGarmentMask [[function_constant(57)]];
constant bool SC_USE_UV_TRANSFORM_sourceGarmentMask_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_sourceGarmentMask) ? SC_USE_UV_TRANSFORM_sourceGarmentMask : false;
constant bool UseViewSpaceDepthVariant [[function_constant(58)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool camTexHasSwappedViews [[function_constant(59)]];
constant bool camTexHasSwappedViews_tmp = is_function_constant_defined(camTexHasSwappedViews) ? camTexHasSwappedViews : false;
constant bool drivingHairMaskHasSwappedViews [[function_constant(60)]];
constant bool drivingHairMaskHasSwappedViews_tmp = is_function_constant_defined(drivingHairMaskHasSwappedViews) ? drivingHairMaskHasSwappedViews : false;
constant bool flowRelativeHasSwappedViews [[function_constant(61)]];
constant bool flowRelativeHasSwappedViews_tmp = is_function_constant_defined(flowRelativeHasSwappedViews) ? flowRelativeHasSwappedViews : false;
constant bool flowSelectionHasSwappedViews [[function_constant(62)]];
constant bool flowSelectionHasSwappedViews_tmp = is_function_constant_defined(flowSelectionHasSwappedViews) ? flowSelectionHasSwappedViews : false;
constant bool genTexHasSwappedViews [[function_constant(63)]];
constant bool genTexHasSwappedViews_tmp = is_function_constant_defined(genTexHasSwappedViews) ? genTexHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(64)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(65)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(66)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(67)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(68)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(69)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(70)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(71)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(72)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(73)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(74)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(75)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(76)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(77)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(78)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(79)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(80)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(81)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(82)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(83)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(84)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(85)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(86)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(87)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(88)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(89)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(90)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(91)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(92)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(93)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(94)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool shaderMasksTexHasSwappedViews [[function_constant(95)]];
constant bool shaderMasksTexHasSwappedViews_tmp = is_function_constant_defined(shaderMasksTexHasSwappedViews) ? shaderMasksTexHasSwappedViews : false;
constant bool sourceCropTexHasSwappedViews [[function_constant(96)]];
constant bool sourceCropTexHasSwappedViews_tmp = is_function_constant_defined(sourceCropTexHasSwappedViews) ? sourceCropTexHasSwappedViews : false;
constant bool sourceGarmentMaskHasSwappedViews [[function_constant(97)]];
constant bool sourceGarmentMaskHasSwappedViews_tmp = is_function_constant_defined(sourceGarmentMaskHasSwappedViews) ? sourceGarmentMaskHasSwappedViews : false;
constant int SC_SOFTWARE_WRAP_MODE_U_camTex [[function_constant(98)]];
constant int SC_SOFTWARE_WRAP_MODE_U_camTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_camTex) ? SC_SOFTWARE_WRAP_MODE_U_camTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_drivingHairMask [[function_constant(99)]];
constant int SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask) ? SC_SOFTWARE_WRAP_MODE_U_drivingHairMask : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_flowRelative [[function_constant(100)]];
constant int SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_flowRelative) ? SC_SOFTWARE_WRAP_MODE_U_flowRelative : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_flowSelection [[function_constant(101)]];
constant int SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_flowSelection) ? SC_SOFTWARE_WRAP_MODE_U_flowSelection : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_genTex [[function_constant(102)]];
constant int SC_SOFTWARE_WRAP_MODE_U_genTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_genTex) ? SC_SOFTWARE_WRAP_MODE_U_genTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(103)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_shaderMasksTex [[function_constant(104)]];
constant int SC_SOFTWARE_WRAP_MODE_U_shaderMasksTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_shaderMasksTex) ? SC_SOFTWARE_WRAP_MODE_U_shaderMasksTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_sourceCropTex [[function_constant(105)]];
constant int SC_SOFTWARE_WRAP_MODE_U_sourceCropTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_sourceCropTex) ? SC_SOFTWARE_WRAP_MODE_U_sourceCropTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask [[function_constant(106)]];
constant int SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask) ? SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_camTex [[function_constant(107)]];
constant int SC_SOFTWARE_WRAP_MODE_V_camTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_camTex) ? SC_SOFTWARE_WRAP_MODE_V_camTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_drivingHairMask [[function_constant(108)]];
constant int SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_drivingHairMask) ? SC_SOFTWARE_WRAP_MODE_V_drivingHairMask : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_flowRelative [[function_constant(109)]];
constant int SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_flowRelative) ? SC_SOFTWARE_WRAP_MODE_V_flowRelative : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_flowSelection [[function_constant(110)]];
constant int SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_flowSelection) ? SC_SOFTWARE_WRAP_MODE_V_flowSelection : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_genTex [[function_constant(111)]];
constant int SC_SOFTWARE_WRAP_MODE_V_genTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_genTex) ? SC_SOFTWARE_WRAP_MODE_V_genTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(112)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_shaderMasksTex [[function_constant(113)]];
constant int SC_SOFTWARE_WRAP_MODE_V_shaderMasksTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_shaderMasksTex) ? SC_SOFTWARE_WRAP_MODE_V_shaderMasksTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_sourceCropTex [[function_constant(114)]];
constant int SC_SOFTWARE_WRAP_MODE_V_sourceCropTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_sourceCropTex) ? SC_SOFTWARE_WRAP_MODE_V_sourceCropTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask [[function_constant(115)]];
constant int SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask) ? SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask : -1;
constant int camTexLayout [[function_constant(116)]];
constant int camTexLayout_tmp = is_function_constant_defined(camTexLayout) ? camTexLayout : 0;
constant int drivingHairMaskLayout [[function_constant(117)]];
constant int drivingHairMaskLayout_tmp = is_function_constant_defined(drivingHairMaskLayout) ? drivingHairMaskLayout : 0;
constant int flowRelativeLayout [[function_constant(118)]];
constant int flowRelativeLayout_tmp = is_function_constant_defined(flowRelativeLayout) ? flowRelativeLayout : 0;
constant int flowSelectionLayout [[function_constant(119)]];
constant int flowSelectionLayout_tmp = is_function_constant_defined(flowSelectionLayout) ? flowSelectionLayout : 0;
constant int genTexLayout [[function_constant(120)]];
constant int genTexLayout_tmp = is_function_constant_defined(genTexLayout) ? genTexLayout : 0;
constant int intensityTextureLayout [[function_constant(121)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int sc_DepthBufferMode [[function_constant(122)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(123)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(124)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(125)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(126)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(127)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(128)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int shaderMasksTexLayout [[function_constant(129)]];
constant int shaderMasksTexLayout_tmp = is_function_constant_defined(shaderMasksTexLayout) ? shaderMasksTexLayout : 0;
constant int sourceCropTexLayout [[function_constant(130)]];
constant int sourceCropTexLayout_tmp = is_function_constant_defined(sourceCropTexLayout) ? sourceCropTexLayout : 0;
constant int sourceGarmentMaskLayout [[function_constant(131)]];
constant int sourceGarmentMaskLayout_tmp = is_function_constant_defined(sourceGarmentMaskLayout) ? sourceGarmentMaskLayout : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 camTexSize;
float4 camTexDims;
float4 camTexView;
float3x3 camTexTransform;
float4 camTexUvMinMax;
float4 camTexBorderColor;
float2 cropCenter;
float2 cropSize;
float flowHalfPx;
float4 flowRelativeSize;
float4 flowRelativeDims;
float4 flowRelativeView;
float3x3 flowRelativeTransform;
float4 flowRelativeUvMinMax;
float4 flowRelativeBorderColor;
float4 flowSelectionSize;
float4 flowSelectionDims;
float4 flowSelectionView;
float3x3 flowSelectionTransform;
float4 flowSelectionUvMinMax;
float4 flowSelectionBorderColor;
float sx;
float sy;
float dx;
float dy;
float4 sourceCropTexSize;
float4 sourceCropTexDims;
float4 sourceCropTexView;
float3x3 sourceCropTexTransform;
float4 sourceCropTexUvMinMax;
float4 sourceCropTexBorderColor;
float4 sourceGarmentMaskSize;
float4 sourceGarmentMaskDims;
float4 sourceGarmentMaskView;
float3x3 sourceGarmentMaskTransform;
float4 sourceGarmentMaskUvMinMax;
float4 sourceGarmentMaskBorderColor;
float shaderMaskHalfPx;
float4 shaderMasksTexSize;
float4 shaderMasksTexDims;
float4 shaderMasksTexView;
float3x3 shaderMasksTexTransform;
float4 shaderMasksTexUvMinMax;
float4 shaderMasksTexBorderColor;
float gridSampAlpha;
float4 genTexSize;
float4 genTexDims;
float4 genTexView;
float3x3 genTexTransform;
float4 genTexUvMinMax;
float4 genTexBorderColor;
float genHalfPx;
float4 drivingHairMaskSize;
float4 drivingHairMaskDims;
float4 drivingHairMaskView;
float3x3 drivingHairMaskTransform;
float4 drivingHairMaskUvMinMax;
float4 drivingHairMaskBorderColor;
float segShiftX;
float segRatioX;
float segShiftY;
float segRatioY;
float genAlpha;
int useShaderGridSample;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> camTex [[id(1)]];
texture2d<float> drivingHairMask [[id(2)]];
texture2d<float> flowRelative [[id(3)]];
texture2d<float> flowSelection [[id(4)]];
texture2d<float> genTex [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> sc_ScreenTexture [[id(18)]];
texture2d<float> shaderMasksTex [[id(21)]];
texture2d<float> sourceCropTex [[id(22)]];
texture2d<float> sourceGarmentMask [[id(23)]];
sampler camTexSmpSC [[id(24)]];
sampler drivingHairMaskSmpSC [[id(25)]];
sampler flowRelativeSmpSC [[id(26)]];
sampler flowSelectionSmpSC [[id(27)]];
sampler genTexSmpSC [[id(28)]];
sampler intensityTextureSmpSC [[id(29)]];
sampler sc_ScreenTextureSmpSC [[id(34)]];
sampler shaderMasksTexSmpSC [[id(37)]];
sampler sourceCropTexSmpSC [[id(38)]];
sampler sourceGarmentMaskSmpSC [[id(39)]];
constant userUniformsObj* UserUniforms [[id(40)]];
};
struct main_vert_out
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_0;
l9_0.position=in.position;
l9_0.normal=in.normal;
l9_0.tangent=in.tangent.xyz;
l9_0.texture0=in.texture0;
l9_0.texture1=in.texture1;
sc_Vertex_t l9_1=l9_0;
sc_Vertex_t param=l9_1;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_2=param;
param=l9_2;
}
sc_Vertex_t l9_3=param;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_4=l9_3;
float3 l9_5=in.blendShape0Pos;
float3 l9_6=in.blendShape0Normal;
float l9_7=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_8=l9_4;
float3 l9_9=l9_5;
float l9_10=l9_7;
float3 l9_11=l9_8.position.xyz+(l9_9*l9_10);
l9_8.position=float4(l9_11.x,l9_11.y,l9_11.z,l9_8.position.w);
l9_4=l9_8;
l9_4.normal+=(l9_6*l9_7);
l9_3=l9_4;
sc_Vertex_t l9_12=l9_3;
float3 l9_13=in.blendShape1Pos;
float3 l9_14=in.blendShape1Normal;
float l9_15=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_16=l9_12;
float3 l9_17=l9_13;
float l9_18=l9_15;
float3 l9_19=l9_16.position.xyz+(l9_17*l9_18);
l9_16.position=float4(l9_19.x,l9_19.y,l9_19.z,l9_16.position.w);
l9_12=l9_16;
l9_12.normal+=(l9_14*l9_15);
l9_3=l9_12;
sc_Vertex_t l9_20=l9_3;
float3 l9_21=in.blendShape2Pos;
float3 l9_22=in.blendShape2Normal;
float l9_23=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_24=l9_20;
float3 l9_25=l9_21;
float l9_26=l9_23;
float3 l9_27=l9_24.position.xyz+(l9_25*l9_26);
l9_24.position=float4(l9_27.x,l9_27.y,l9_27.z,l9_24.position.w);
l9_20=l9_24;
l9_20.normal+=(l9_22*l9_23);
l9_3=l9_20;
}
else
{
sc_Vertex_t l9_28=l9_3;
float3 l9_29=in.blendShape0Pos;
float l9_30=(*sc_set0.UserUniforms).weights0.x;
float3 l9_31=l9_28.position.xyz+(l9_29*l9_30);
l9_28.position=float4(l9_31.x,l9_31.y,l9_31.z,l9_28.position.w);
l9_3=l9_28;
sc_Vertex_t l9_32=l9_3;
float3 l9_33=in.blendShape1Pos;
float l9_34=(*sc_set0.UserUniforms).weights0.y;
float3 l9_35=l9_32.position.xyz+(l9_33*l9_34);
l9_32.position=float4(l9_35.x,l9_35.y,l9_35.z,l9_32.position.w);
l9_3=l9_32;
sc_Vertex_t l9_36=l9_3;
float3 l9_37=in.blendShape2Pos;
float l9_38=(*sc_set0.UserUniforms).weights0.z;
float3 l9_39=l9_36.position.xyz+(l9_37*l9_38);
l9_36.position=float4(l9_39.x,l9_39.y,l9_39.z,l9_36.position.w);
l9_3=l9_36;
sc_Vertex_t l9_40=l9_3;
float3 l9_41=in.blendShape3Pos;
float l9_42=(*sc_set0.UserUniforms).weights0.w;
float3 l9_43=l9_40.position.xyz+(l9_41*l9_42);
l9_40.position=float4(l9_43.x,l9_43.y,l9_43.z,l9_40.position.w);
l9_3=l9_40;
sc_Vertex_t l9_44=l9_3;
float3 l9_45=in.blendShape4Pos;
float l9_46=(*sc_set0.UserUniforms).weights1.x;
float3 l9_47=l9_44.position.xyz+(l9_45*l9_46);
l9_44.position=float4(l9_47.x,l9_47.y,l9_47.z,l9_44.position.w);
l9_3=l9_44;
sc_Vertex_t l9_48=l9_3;
float3 l9_49=in.blendShape5Pos;
float l9_50=(*sc_set0.UserUniforms).weights1.y;
float3 l9_51=l9_48.position.xyz+(l9_49*l9_50);
l9_48.position=float4(l9_51.x,l9_51.y,l9_51.z,l9_48.position.w);
l9_3=l9_48;
}
}
param=l9_3;
sc_Vertex_t l9_52=param;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_53=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_53=float4(1.0,fract(in.boneData.yzw));
l9_53.x-=dot(l9_53.yzw,float3(1.0));
}
float4 l9_54=l9_53;
float4 l9_55=l9_54;
int l9_56=int(in.boneData.x);
int l9_57=int(in.boneData.y);
int l9_58=int(in.boneData.z);
int l9_59=int(in.boneData.w);
int l9_60=l9_56;
float4 l9_61=l9_52.position;
float3 l9_62=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_63=l9_60;
float4 l9_64=(*sc_set0.sc_BonesUBO).sc_Bones[l9_63].boneMatrix[0];
float4 l9_65=(*sc_set0.sc_BonesUBO).sc_Bones[l9_63].boneMatrix[1];
float4 l9_66=(*sc_set0.sc_BonesUBO).sc_Bones[l9_63].boneMatrix[2];
float4 l9_67[3];
l9_67[0]=l9_64;
l9_67[1]=l9_65;
l9_67[2]=l9_66;
l9_62=float3(dot(l9_61,l9_67[0]),dot(l9_61,l9_67[1]),dot(l9_61,l9_67[2]));
}
else
{
l9_62=l9_61.xyz;
}
float3 l9_68=l9_62;
float3 l9_69=l9_68;
float l9_70=l9_55.x;
int l9_71=l9_57;
float4 l9_72=l9_52.position;
float3 l9_73=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_74=l9_71;
float4 l9_75=(*sc_set0.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[0];
float4 l9_76=(*sc_set0.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[1];
float4 l9_77=(*sc_set0.sc_BonesUBO).sc_Bones[l9_74].boneMatrix[2];
float4 l9_78[3];
l9_78[0]=l9_75;
l9_78[1]=l9_76;
l9_78[2]=l9_77;
l9_73=float3(dot(l9_72,l9_78[0]),dot(l9_72,l9_78[1]),dot(l9_72,l9_78[2]));
}
else
{
l9_73=l9_72.xyz;
}
float3 l9_79=l9_73;
float3 l9_80=l9_79;
float l9_81=l9_55.y;
int l9_82=l9_58;
float4 l9_83=l9_52.position;
float3 l9_84=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_85=l9_82;
float4 l9_86=(*sc_set0.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[0];
float4 l9_87=(*sc_set0.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[1];
float4 l9_88=(*sc_set0.sc_BonesUBO).sc_Bones[l9_85].boneMatrix[2];
float4 l9_89[3];
l9_89[0]=l9_86;
l9_89[1]=l9_87;
l9_89[2]=l9_88;
l9_84=float3(dot(l9_83,l9_89[0]),dot(l9_83,l9_89[1]),dot(l9_83,l9_89[2]));
}
else
{
l9_84=l9_83.xyz;
}
float3 l9_90=l9_84;
float3 l9_91=l9_90;
float l9_92=l9_55.z;
int l9_93=l9_59;
float4 l9_94=l9_52.position;
float3 l9_95=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_96=l9_93;
float4 l9_97=(*sc_set0.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[0];
float4 l9_98=(*sc_set0.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[1];
float4 l9_99=(*sc_set0.sc_BonesUBO).sc_Bones[l9_96].boneMatrix[2];
float4 l9_100[3];
l9_100[0]=l9_97;
l9_100[1]=l9_98;
l9_100[2]=l9_99;
l9_95=float3(dot(l9_94,l9_100[0]),dot(l9_94,l9_100[1]),dot(l9_94,l9_100[2]));
}
else
{
l9_95=l9_94.xyz;
}
float3 l9_101=l9_95;
float3 l9_102=(((l9_69*l9_70)+(l9_80*l9_81))+(l9_91*l9_92))+(l9_101*l9_55.w);
l9_52.position=float4(l9_102.x,l9_102.y,l9_102.z,l9_52.position.w);
int l9_103=l9_56;
float3x3 l9_104=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_103].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_103].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_103].normalMatrix[2].xyz));
float3x3 l9_105=l9_104;
float3x3 l9_106=l9_105;
int l9_107=l9_57;
float3x3 l9_108=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_107].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_107].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_107].normalMatrix[2].xyz));
float3x3 l9_109=l9_108;
float3x3 l9_110=l9_109;
int l9_111=l9_58;
float3x3 l9_112=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_111].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_111].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_111].normalMatrix[2].xyz));
float3x3 l9_113=l9_112;
float3x3 l9_114=l9_113;
int l9_115=l9_59;
float3x3 l9_116=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_115].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_115].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_115].normalMatrix[2].xyz));
float3x3 l9_117=l9_116;
float3x3 l9_118=l9_117;
l9_52.normal=((((l9_106*l9_52.normal)*l9_55.x)+((l9_110*l9_52.normal)*l9_55.y))+((l9_114*l9_52.normal)*l9_55.z))+((l9_118*l9_52.normal)*l9_55.w);
l9_52.tangent=((((l9_106*l9_52.tangent)*l9_55.x)+((l9_110*l9_52.tangent)*l9_55.y))+((l9_114*l9_52.tangent)*l9_55.z))+((l9_118*l9_52.tangent)*l9_55.w);
}
param=l9_52;
if (sc_RenderingSpace_tmp==3)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPosAndMotion=float4(float3(0.0).x,float3(0.0).y,float3(0.0).z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPosAndMotion=float4(param.position.xyz.x,param.position.xyz.y,param.position.xyz.z,out.varPosAndMotion.w);
out.varNormalAndMotion=float4(param.normal.x,param.normal.y,param.normal.z,out.varNormalAndMotion.w);
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
float3 l9_119=((*sc_set0.UserUniforms).sc_ModelMatrix*param.position).xyz;
out.varPosAndMotion=float4(l9_119.x,l9_119.y,l9_119.z,out.varPosAndMotion.w);
float3 l9_120=(*sc_set0.UserUniforms).sc_NormalMatrix*param.normal;
out.varNormalAndMotion=float4(l9_120.x,l9_120.y,l9_120.z,out.varNormalAndMotion.w);
float3 l9_121=(*sc_set0.UserUniforms).sc_NormalMatrix*param.tangent;
out.varTangent=float4(l9_121.x,l9_121.y,l9_121.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param.texture0.x=1.0-param.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param;
float3 WorldPosition=out.varPosAndMotion.xyz;
float3 WorldNormal=out.varNormalAndMotion.xyz;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPosAndMotion.xyz;
WorldNormal=out.varNormalAndMotion.xyz;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_1=v;
float3 param_2=WorldPosition;
float3 param_3=WorldNormal;
float3 param_4=WorldTangent;
float4 param_5=v.position;
out.varPosAndMotion=float4(param_2.x,param_2.y,param_2.z,out.varPosAndMotion.w);
float3 l9_122=normalize(param_3);
out.varNormalAndMotion=float4(l9_122.x,l9_122.y,l9_122.z,out.varNormalAndMotion.w);
float3 l9_123=normalize(param_4);
out.varTangent=float4(l9_123.x,l9_123.y,l9_123.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_124=param_1.position;
float4 l9_125=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_126=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_126=0;
}
else
{
l9_126=gl_InstanceIndex%2;
}
int l9_127=l9_126;
l9_125=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_127]*l9_124;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_128=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_128=0;
}
else
{
l9_128=gl_InstanceIndex%2;
}
int l9_129=l9_128;
l9_125=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_129]*l9_124;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_130=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_130=0;
}
else
{
l9_130=gl_InstanceIndex%2;
}
int l9_131=l9_130;
l9_125=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_131]*l9_124;
}
else
{
l9_125=l9_124;
}
}
}
float4 l9_132=l9_125;
out.varViewSpaceDepth=-l9_132.z;
}
float4 l9_133=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_133=param_5;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_134=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_134=0;
}
else
{
l9_134=gl_InstanceIndex%2;
}
int l9_135=l9_134;
l9_133=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_135]*param_1.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=gl_InstanceIndex%2;
}
int l9_137=l9_136;
l9_133=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_137]*float4(out.varPosAndMotion.xyz,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=gl_InstanceIndex%2;
}
int l9_139=l9_138;
l9_133=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_139]*float4(out.varPosAndMotion.xyz,1.0);
}
}
}
}
out.varTex01=float4(param_1.texture0,param_1.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_140=param_1.position;
float4 l9_141=l9_140;
if (sc_RenderingSpace_tmp==1)
{
l9_141=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_140;
}
float4 l9_142=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_141;
float2 l9_143=((l9_142.xy/float2(l9_142.w))*0.5)+float2(0.5);
out.varShadowTex=l9_143;
}
float4 l9_144=l9_133;
if (sc_DepthBufferMode_tmp==1)
{
int l9_145=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_145=0;
}
else
{
l9_145=gl_InstanceIndex%2;
}
int l9_146=l9_145;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_146][2].w!=0.0)
{
float l9_147=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_144.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_144.w))*l9_147)-1.0)*l9_144.w;
}
}
float4 l9_148=l9_144;
l9_133=l9_148;
float4 l9_149=l9_133;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_150=l9_149.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_149.w);
l9_149=float4(l9_150.x,l9_150.y,l9_149.z,l9_149.w);
}
float4 l9_151=l9_149;
l9_133=l9_151;
float4 l9_152=l9_133;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_152.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_153=l9_152;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_154=dot(l9_153,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_155=l9_154;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_155;
}
}
float4 l9_156=float4(l9_152.x,-l9_152.y,(l9_152.z*0.5)+(l9_152.w*0.5),l9_152.w);
out.gl_Position=l9_156;
if ((int(sc_Voxelization_tmp)!=0))
{
sc_Vertex_t l9_158=param_1;
sc_Vertex_t l9_159=l9_158;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_160=l9_159;
float3 l9_161=in.blendShape0Pos;
float3 l9_162=in.blendShape0Normal;
float l9_163=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_164=l9_160;
float3 l9_165=l9_161;
float l9_166=l9_163;
float3 l9_167=l9_164.position.xyz+(l9_165*l9_166);
l9_164.position=float4(l9_167.x,l9_167.y,l9_167.z,l9_164.position.w);
l9_160=l9_164;
l9_160.normal+=(l9_162*l9_163);
l9_159=l9_160;
sc_Vertex_t l9_168=l9_159;
float3 l9_169=in.blendShape1Pos;
float3 l9_170=in.blendShape1Normal;
float l9_171=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_172=l9_168;
float3 l9_173=l9_169;
float l9_174=l9_171;
float3 l9_175=l9_172.position.xyz+(l9_173*l9_174);
l9_172.position=float4(l9_175.x,l9_175.y,l9_175.z,l9_172.position.w);
l9_168=l9_172;
l9_168.normal+=(l9_170*l9_171);
l9_159=l9_168;
sc_Vertex_t l9_176=l9_159;
float3 l9_177=in.blendShape2Pos;
float3 l9_178=in.blendShape2Normal;
float l9_179=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_180=l9_176;
float3 l9_181=l9_177;
float l9_182=l9_179;
float3 l9_183=l9_180.position.xyz+(l9_181*l9_182);
l9_180.position=float4(l9_183.x,l9_183.y,l9_183.z,l9_180.position.w);
l9_176=l9_180;
l9_176.normal+=(l9_178*l9_179);
l9_159=l9_176;
}
else
{
sc_Vertex_t l9_184=l9_159;
float3 l9_185=in.blendShape0Pos;
float l9_186=(*sc_set0.UserUniforms).weights0.x;
float3 l9_187=l9_184.position.xyz+(l9_185*l9_186);
l9_184.position=float4(l9_187.x,l9_187.y,l9_187.z,l9_184.position.w);
l9_159=l9_184;
sc_Vertex_t l9_188=l9_159;
float3 l9_189=in.blendShape1Pos;
float l9_190=(*sc_set0.UserUniforms).weights0.y;
float3 l9_191=l9_188.position.xyz+(l9_189*l9_190);
l9_188.position=float4(l9_191.x,l9_191.y,l9_191.z,l9_188.position.w);
l9_159=l9_188;
sc_Vertex_t l9_192=l9_159;
float3 l9_193=in.blendShape2Pos;
float l9_194=(*sc_set0.UserUniforms).weights0.z;
float3 l9_195=l9_192.position.xyz+(l9_193*l9_194);
l9_192.position=float4(l9_195.x,l9_195.y,l9_195.z,l9_192.position.w);
l9_159=l9_192;
sc_Vertex_t l9_196=l9_159;
float3 l9_197=in.blendShape3Pos;
float l9_198=(*sc_set0.UserUniforms).weights0.w;
float3 l9_199=l9_196.position.xyz+(l9_197*l9_198);
l9_196.position=float4(l9_199.x,l9_199.y,l9_199.z,l9_196.position.w);
l9_159=l9_196;
sc_Vertex_t l9_200=l9_159;
float3 l9_201=in.blendShape4Pos;
float l9_202=(*sc_set0.UserUniforms).weights1.x;
float3 l9_203=l9_200.position.xyz+(l9_201*l9_202);
l9_200.position=float4(l9_203.x,l9_203.y,l9_203.z,l9_200.position.w);
l9_159=l9_200;
sc_Vertex_t l9_204=l9_159;
float3 l9_205=in.blendShape5Pos;
float l9_206=(*sc_set0.UserUniforms).weights1.y;
float3 l9_207=l9_204.position.xyz+(l9_205*l9_206);
l9_204.position=float4(l9_207.x,l9_207.y,l9_207.z,l9_204.position.w);
l9_159=l9_204;
}
}
l9_158=l9_159;
sc_Vertex_t l9_208=l9_158;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_209=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_209=float4(1.0,fract(in.boneData.yzw));
l9_209.x-=dot(l9_209.yzw,float3(1.0));
}
float4 l9_210=l9_209;
float4 l9_211=l9_210;
int l9_212=int(in.boneData.x);
int l9_213=int(in.boneData.y);
int l9_214=int(in.boneData.z);
int l9_215=int(in.boneData.w);
int l9_216=l9_212;
float4 l9_217=l9_208.position;
float3 l9_218=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_219=l9_216;
float4 l9_220=(*sc_set0.sc_BonesUBO).sc_Bones[l9_219].boneMatrix[0];
float4 l9_221=(*sc_set0.sc_BonesUBO).sc_Bones[l9_219].boneMatrix[1];
float4 l9_222=(*sc_set0.sc_BonesUBO).sc_Bones[l9_219].boneMatrix[2];
float4 l9_223[3];
l9_223[0]=l9_220;
l9_223[1]=l9_221;
l9_223[2]=l9_222;
l9_218=float3(dot(l9_217,l9_223[0]),dot(l9_217,l9_223[1]),dot(l9_217,l9_223[2]));
}
else
{
l9_218=l9_217.xyz;
}
float3 l9_224=l9_218;
float3 l9_225=l9_224;
float l9_226=l9_211.x;
int l9_227=l9_213;
float4 l9_228=l9_208.position;
float3 l9_229=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_230=l9_227;
float4 l9_231=(*sc_set0.sc_BonesUBO).sc_Bones[l9_230].boneMatrix[0];
float4 l9_232=(*sc_set0.sc_BonesUBO).sc_Bones[l9_230].boneMatrix[1];
float4 l9_233=(*sc_set0.sc_BonesUBO).sc_Bones[l9_230].boneMatrix[2];
float4 l9_234[3];
l9_234[0]=l9_231;
l9_234[1]=l9_232;
l9_234[2]=l9_233;
l9_229=float3(dot(l9_228,l9_234[0]),dot(l9_228,l9_234[1]),dot(l9_228,l9_234[2]));
}
else
{
l9_229=l9_228.xyz;
}
float3 l9_235=l9_229;
float3 l9_236=l9_235;
float l9_237=l9_211.y;
int l9_238=l9_214;
float4 l9_239=l9_208.position;
float3 l9_240=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_241=l9_238;
float4 l9_242=(*sc_set0.sc_BonesUBO).sc_Bones[l9_241].boneMatrix[0];
float4 l9_243=(*sc_set0.sc_BonesUBO).sc_Bones[l9_241].boneMatrix[1];
float4 l9_244=(*sc_set0.sc_BonesUBO).sc_Bones[l9_241].boneMatrix[2];
float4 l9_245[3];
l9_245[0]=l9_242;
l9_245[1]=l9_243;
l9_245[2]=l9_244;
l9_240=float3(dot(l9_239,l9_245[0]),dot(l9_239,l9_245[1]),dot(l9_239,l9_245[2]));
}
else
{
l9_240=l9_239.xyz;
}
float3 l9_246=l9_240;
float3 l9_247=l9_246;
float l9_248=l9_211.z;
int l9_249=l9_215;
float4 l9_250=l9_208.position;
float3 l9_251=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_252=l9_249;
float4 l9_253=(*sc_set0.sc_BonesUBO).sc_Bones[l9_252].boneMatrix[0];
float4 l9_254=(*sc_set0.sc_BonesUBO).sc_Bones[l9_252].boneMatrix[1];
float4 l9_255=(*sc_set0.sc_BonesUBO).sc_Bones[l9_252].boneMatrix[2];
float4 l9_256[3];
l9_256[0]=l9_253;
l9_256[1]=l9_254;
l9_256[2]=l9_255;
l9_251=float3(dot(l9_250,l9_256[0]),dot(l9_250,l9_256[1]),dot(l9_250,l9_256[2]));
}
else
{
l9_251=l9_250.xyz;
}
float3 l9_257=l9_251;
float3 l9_258=(((l9_225*l9_226)+(l9_236*l9_237))+(l9_247*l9_248))+(l9_257*l9_211.w);
l9_208.position=float4(l9_258.x,l9_258.y,l9_258.z,l9_208.position.w);
int l9_259=l9_212;
float3x3 l9_260=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_259].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_259].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_259].normalMatrix[2].xyz));
float3x3 l9_261=l9_260;
float3x3 l9_262=l9_261;
int l9_263=l9_213;
float3x3 l9_264=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_263].normalMatrix[2].xyz));
float3x3 l9_265=l9_264;
float3x3 l9_266=l9_265;
int l9_267=l9_214;
float3x3 l9_268=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_267].normalMatrix[2].xyz));
float3x3 l9_269=l9_268;
float3x3 l9_270=l9_269;
int l9_271=l9_215;
float3x3 l9_272=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_271].normalMatrix[2].xyz));
float3x3 l9_273=l9_272;
float3x3 l9_274=l9_273;
l9_208.normal=((((l9_262*l9_208.normal)*l9_211.x)+((l9_266*l9_208.normal)*l9_211.y))+((l9_270*l9_208.normal)*l9_211.z))+((l9_274*l9_208.normal)*l9_211.w);
l9_208.tangent=((((l9_262*l9_208.tangent)*l9_211.x)+((l9_266*l9_208.tangent)*l9_211.y))+((l9_270*l9_208.tangent)*l9_211.z))+((l9_274*l9_208.tangent)*l9_211.w);
}
l9_158=l9_208;
float l9_275=(*sc_set0.UserUniforms).voxelization_params_0.y;
float l9_276=(*sc_set0.UserUniforms).voxelization_params_0.z;
float l9_277=(*sc_set0.UserUniforms).voxelization_params_0.w;
float l9_278=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_279=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_280=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_281=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_282=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_283=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float3 l9_284=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float l9_285=l9_275/l9_276;
int l9_286=gl_InstanceIndex;
int l9_287=l9_286;
l9_158.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_158.position;
float3 l9_288=l9_158.position.xyz;
float3 l9_289=float3(float(l9_287%int(l9_277))*l9_275,float(l9_287/int(l9_277))*l9_275,(float(l9_287)*l9_285)+l9_282);
float3 l9_290=l9_288+l9_289;
float4 l9_291=float4(l9_290-l9_284,1.0);
float l9_292=l9_278;
float l9_293=l9_279;
float l9_294=l9_280;
float l9_295=l9_281;
float l9_296=l9_282;
float l9_297=l9_283;
float4x4 l9_298=float4x4(float4(2.0/(l9_293-l9_292),0.0,0.0,(-(l9_293+l9_292))/(l9_293-l9_292)),float4(0.0,2.0/(l9_295-l9_294),0.0,(-(l9_295+l9_294))/(l9_295-l9_294)),float4(0.0,0.0,(-2.0)/(l9_297-l9_296),(-(l9_297+l9_296))/(l9_297-l9_296)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_299=l9_298;
float4 l9_300=l9_299*l9_291;
l9_300.w=1.0;
out.varScreenPos=l9_300;
float4 l9_301=l9_300*1.0;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_301.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_302=l9_301;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_303=dot(l9_302,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_304=l9_303;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_304;
}
}
float4 l9_305=float4(l9_301.x,-l9_301.y,(l9_301.z*0.5)+(l9_301.w*0.5),l9_301.w);
out.gl_Position=l9_305;
param_1=l9_158;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
sc_Vertex_t l9_306=param_1;
sc_Vertex_t l9_307=l9_306;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_308=l9_307;
float3 l9_309=in.blendShape0Pos;
float3 l9_310=in.blendShape0Normal;
float l9_311=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_312=l9_308;
float3 l9_313=l9_309;
float l9_314=l9_311;
float3 l9_315=l9_312.position.xyz+(l9_313*l9_314);
l9_312.position=float4(l9_315.x,l9_315.y,l9_315.z,l9_312.position.w);
l9_308=l9_312;
l9_308.normal+=(l9_310*l9_311);
l9_307=l9_308;
sc_Vertex_t l9_316=l9_307;
float3 l9_317=in.blendShape1Pos;
float3 l9_318=in.blendShape1Normal;
float l9_319=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_320=l9_316;
float3 l9_321=l9_317;
float l9_322=l9_319;
float3 l9_323=l9_320.position.xyz+(l9_321*l9_322);
l9_320.position=float4(l9_323.x,l9_323.y,l9_323.z,l9_320.position.w);
l9_316=l9_320;
l9_316.normal+=(l9_318*l9_319);
l9_307=l9_316;
sc_Vertex_t l9_324=l9_307;
float3 l9_325=in.blendShape2Pos;
float3 l9_326=in.blendShape2Normal;
float l9_327=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_328=l9_324;
float3 l9_329=l9_325;
float l9_330=l9_327;
float3 l9_331=l9_328.position.xyz+(l9_329*l9_330);
l9_328.position=float4(l9_331.x,l9_331.y,l9_331.z,l9_328.position.w);
l9_324=l9_328;
l9_324.normal+=(l9_326*l9_327);
l9_307=l9_324;
}
else
{
sc_Vertex_t l9_332=l9_307;
float3 l9_333=in.blendShape0Pos;
float l9_334=(*sc_set0.UserUniforms).weights0.x;
float3 l9_335=l9_332.position.xyz+(l9_333*l9_334);
l9_332.position=float4(l9_335.x,l9_335.y,l9_335.z,l9_332.position.w);
l9_307=l9_332;
sc_Vertex_t l9_336=l9_307;
float3 l9_337=in.blendShape1Pos;
float l9_338=(*sc_set0.UserUniforms).weights0.y;
float3 l9_339=l9_336.position.xyz+(l9_337*l9_338);
l9_336.position=float4(l9_339.x,l9_339.y,l9_339.z,l9_336.position.w);
l9_307=l9_336;
sc_Vertex_t l9_340=l9_307;
float3 l9_341=in.blendShape2Pos;
float l9_342=(*sc_set0.UserUniforms).weights0.z;
float3 l9_343=l9_340.position.xyz+(l9_341*l9_342);
l9_340.position=float4(l9_343.x,l9_343.y,l9_343.z,l9_340.position.w);
l9_307=l9_340;
sc_Vertex_t l9_344=l9_307;
float3 l9_345=in.blendShape3Pos;
float l9_346=(*sc_set0.UserUniforms).weights0.w;
float3 l9_347=l9_344.position.xyz+(l9_345*l9_346);
l9_344.position=float4(l9_347.x,l9_347.y,l9_347.z,l9_344.position.w);
l9_307=l9_344;
sc_Vertex_t l9_348=l9_307;
float3 l9_349=in.blendShape4Pos;
float l9_350=(*sc_set0.UserUniforms).weights1.x;
float3 l9_351=l9_348.position.xyz+(l9_349*l9_350);
l9_348.position=float4(l9_351.x,l9_351.y,l9_351.z,l9_348.position.w);
l9_307=l9_348;
sc_Vertex_t l9_352=l9_307;
float3 l9_353=in.blendShape5Pos;
float l9_354=(*sc_set0.UserUniforms).weights1.y;
float3 l9_355=l9_352.position.xyz+(l9_353*l9_354);
l9_352.position=float4(l9_355.x,l9_355.y,l9_355.z,l9_352.position.w);
l9_307=l9_352;
}
}
l9_306=l9_307;
sc_Vertex_t l9_356=l9_306;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_357=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_357=float4(1.0,fract(in.boneData.yzw));
l9_357.x-=dot(l9_357.yzw,float3(1.0));
}
float4 l9_358=l9_357;
float4 l9_359=l9_358;
int l9_360=int(in.boneData.x);
int l9_361=int(in.boneData.y);
int l9_362=int(in.boneData.z);
int l9_363=int(in.boneData.w);
int l9_364=l9_360;
float4 l9_365=l9_356.position;
float3 l9_366=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_367=l9_364;
float4 l9_368=(*sc_set0.sc_BonesUBO).sc_Bones[l9_367].boneMatrix[0];
float4 l9_369=(*sc_set0.sc_BonesUBO).sc_Bones[l9_367].boneMatrix[1];
float4 l9_370=(*sc_set0.sc_BonesUBO).sc_Bones[l9_367].boneMatrix[2];
float4 l9_371[3];
l9_371[0]=l9_368;
l9_371[1]=l9_369;
l9_371[2]=l9_370;
l9_366=float3(dot(l9_365,l9_371[0]),dot(l9_365,l9_371[1]),dot(l9_365,l9_371[2]));
}
else
{
l9_366=l9_365.xyz;
}
float3 l9_372=l9_366;
float3 l9_373=l9_372;
float l9_374=l9_359.x;
int l9_375=l9_361;
float4 l9_376=l9_356.position;
float3 l9_377=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_378=l9_375;
float4 l9_379=(*sc_set0.sc_BonesUBO).sc_Bones[l9_378].boneMatrix[0];
float4 l9_380=(*sc_set0.sc_BonesUBO).sc_Bones[l9_378].boneMatrix[1];
float4 l9_381=(*sc_set0.sc_BonesUBO).sc_Bones[l9_378].boneMatrix[2];
float4 l9_382[3];
l9_382[0]=l9_379;
l9_382[1]=l9_380;
l9_382[2]=l9_381;
l9_377=float3(dot(l9_376,l9_382[0]),dot(l9_376,l9_382[1]),dot(l9_376,l9_382[2]));
}
else
{
l9_377=l9_376.xyz;
}
float3 l9_383=l9_377;
float3 l9_384=l9_383;
float l9_385=l9_359.y;
int l9_386=l9_362;
float4 l9_387=l9_356.position;
float3 l9_388=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_389=l9_386;
float4 l9_390=(*sc_set0.sc_BonesUBO).sc_Bones[l9_389].boneMatrix[0];
float4 l9_391=(*sc_set0.sc_BonesUBO).sc_Bones[l9_389].boneMatrix[1];
float4 l9_392=(*sc_set0.sc_BonesUBO).sc_Bones[l9_389].boneMatrix[2];
float4 l9_393[3];
l9_393[0]=l9_390;
l9_393[1]=l9_391;
l9_393[2]=l9_392;
l9_388=float3(dot(l9_387,l9_393[0]),dot(l9_387,l9_393[1]),dot(l9_387,l9_393[2]));
}
else
{
l9_388=l9_387.xyz;
}
float3 l9_394=l9_388;
float3 l9_395=l9_394;
float l9_396=l9_359.z;
int l9_397=l9_363;
float4 l9_398=l9_356.position;
float3 l9_399=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_400=l9_397;
float4 l9_401=(*sc_set0.sc_BonesUBO).sc_Bones[l9_400].boneMatrix[0];
float4 l9_402=(*sc_set0.sc_BonesUBO).sc_Bones[l9_400].boneMatrix[1];
float4 l9_403=(*sc_set0.sc_BonesUBO).sc_Bones[l9_400].boneMatrix[2];
float4 l9_404[3];
l9_404[0]=l9_401;
l9_404[1]=l9_402;
l9_404[2]=l9_403;
l9_399=float3(dot(l9_398,l9_404[0]),dot(l9_398,l9_404[1]),dot(l9_398,l9_404[2]));
}
else
{
l9_399=l9_398.xyz;
}
float3 l9_405=l9_399;
float3 l9_406=(((l9_373*l9_374)+(l9_384*l9_385))+(l9_395*l9_396))+(l9_405*l9_359.w);
l9_356.position=float4(l9_406.x,l9_406.y,l9_406.z,l9_356.position.w);
int l9_407=l9_360;
float3x3 l9_408=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_407].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_407].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_407].normalMatrix[2].xyz));
float3x3 l9_409=l9_408;
float3x3 l9_410=l9_409;
int l9_411=l9_361;
float3x3 l9_412=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_411].normalMatrix[2].xyz));
float3x3 l9_413=l9_412;
float3x3 l9_414=l9_413;
int l9_415=l9_362;
float3x3 l9_416=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_415].normalMatrix[2].xyz));
float3x3 l9_417=l9_416;
float3x3 l9_418=l9_417;
int l9_419=l9_363;
float3x3 l9_420=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_419].normalMatrix[2].xyz));
float3x3 l9_421=l9_420;
float3x3 l9_422=l9_421;
l9_356.normal=((((l9_410*l9_356.normal)*l9_359.x)+((l9_414*l9_356.normal)*l9_359.y))+((l9_418*l9_356.normal)*l9_359.z))+((l9_422*l9_356.normal)*l9_359.w);
l9_356.tangent=((((l9_410*l9_356.tangent)*l9_359.x)+((l9_414*l9_356.tangent)*l9_359.y))+((l9_418*l9_356.tangent)*l9_359.z))+((l9_422*l9_356.tangent)*l9_359.w);
}
l9_306=l9_356;
float3 l9_423=(*sc_set0.UserUniforms).voxelization_params_camera_pos;
float2 l9_424=((l9_306.position.xy/float2(l9_306.position.w))*0.5)+float2(0.5);
out.varTex01=float4(l9_424.x,l9_424.y,out.varTex01.z,out.varTex01.w);
l9_306.position=(*sc_set0.UserUniforms).sc_ModelMatrixVoxelization*l9_306.position;
float3 l9_425=l9_306.position.xyz-l9_423;
l9_306.position=float4(l9_425.x,l9_425.y,l9_425.z,l9_306.position.w);
out.varPosAndMotion=float4(l9_306.position.xyz.x,l9_306.position.xyz.y,l9_306.position.xyz.z,out.varPosAndMotion.w);
float3 l9_426=normalize(l9_306.normal);
out.varNormalAndMotion=float4(l9_426.x,l9_426.y,l9_426.z,out.varNormalAndMotion.w);
float l9_427=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.x;
float l9_428=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.y;
float l9_429=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.z;
float l9_430=(*sc_set0.UserUniforms).voxelization_params_frustum_lrbt.w;
float l9_431=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.x;
float l9_432=(*sc_set0.UserUniforms).voxelization_params_frustum_nf.y;
float l9_433=l9_427;
float l9_434=l9_428;
float l9_435=l9_429;
float l9_436=l9_430;
float l9_437=l9_431;
float l9_438=l9_432;
float4x4 l9_439=float4x4(float4(2.0/(l9_434-l9_433),0.0,0.0,(-(l9_434+l9_433))/(l9_434-l9_433)),float4(0.0,2.0/(l9_436-l9_435),0.0,(-(l9_436+l9_435))/(l9_436-l9_435)),float4(0.0,0.0,(-2.0)/(l9_438-l9_437),(-(l9_438+l9_437))/(l9_438-l9_437)),float4(0.0,0.0,0.0,1.0));
float4x4 l9_440=l9_439;
float4 l9_441=float4(0.0);
float3 l9_442=(l9_440*l9_306.position).xyz;
l9_441=float4(l9_442.x,l9_442.y,l9_442.z,l9_441.w);
l9_441.w=1.0;
out.varScreenPos=l9_441;
float4 l9_443=l9_441*1.0;
float4 l9_444=l9_443;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_444.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_445=l9_444;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_446=dot(l9_445,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_447=l9_446;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_447;
}
}
float4 l9_448=float4(l9_444.x,-l9_444.y,(l9_444.z*0.5)+(l9_444.w*0.5),l9_444.w);
out.gl_Position=l9_448;
param_1=l9_306;
}
}
v=param_1;
float3 param_6=out.varPosAndMotion.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float4 l9_449=((*sc_set0.UserUniforms).sc_PrevFrameModelMatrix*(*sc_set0.UserUniforms).sc_ModelMatrixInverse)*float4(param_6,1.0);
float3 l9_450=param_6;
float3 l9_451=l9_449.xyz;
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
int l9_452=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_452=0;
}
else
{
l9_452=gl_InstanceIndex%2;
}
int l9_453=l9_452;
float4 l9_454=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_453]*float4(l9_450,1.0);
float2 l9_455=l9_454.xy/float2(l9_454.w);
l9_454=float4(l9_455.x,l9_455.y,l9_454.z,l9_454.w);
int l9_456=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_456=0;
}
else
{
l9_456=gl_InstanceIndex%2;
}
int l9_457=l9_456;
float4 l9_458=(*sc_set0.UserUniforms).sc_PrevFrameViewProjectionMatrixArray[l9_457]*float4(l9_451,1.0);
float2 l9_459=l9_458.xy/float2(l9_458.w);
l9_458=float4(l9_459.x,l9_459.y,l9_458.z,l9_458.w);
float2 l9_460=(l9_454.xy-l9_458.xy)*0.5;
out.varPosAndMotion.w=l9_460.x;
out.varNormalAndMotion.w=l9_460.y;
}
}
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 gScreenCoord;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float shaderComplexityValue;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
float4 voxelization_params_0;
float4 voxelization_params_frustum_lrbt;
float4 voxelization_params_frustum_nf;
float3 voxelization_params_camera_pos;
float4x4 sc_ModelMatrixVoxelization;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 camTexSize;
float4 camTexDims;
float4 camTexView;
float3x3 camTexTransform;
float4 camTexUvMinMax;
float4 camTexBorderColor;
float2 cropCenter;
float2 cropSize;
float flowHalfPx;
float4 flowRelativeSize;
float4 flowRelativeDims;
float4 flowRelativeView;
float3x3 flowRelativeTransform;
float4 flowRelativeUvMinMax;
float4 flowRelativeBorderColor;
float4 flowSelectionSize;
float4 flowSelectionDims;
float4 flowSelectionView;
float3x3 flowSelectionTransform;
float4 flowSelectionUvMinMax;
float4 flowSelectionBorderColor;
float sx;
float sy;
float dx;
float dy;
float4 sourceCropTexSize;
float4 sourceCropTexDims;
float4 sourceCropTexView;
float3x3 sourceCropTexTransform;
float4 sourceCropTexUvMinMax;
float4 sourceCropTexBorderColor;
float4 sourceGarmentMaskSize;
float4 sourceGarmentMaskDims;
float4 sourceGarmentMaskView;
float3x3 sourceGarmentMaskTransform;
float4 sourceGarmentMaskUvMinMax;
float4 sourceGarmentMaskBorderColor;
float shaderMaskHalfPx;
float4 shaderMasksTexSize;
float4 shaderMasksTexDims;
float4 shaderMasksTexView;
float3x3 shaderMasksTexTransform;
float4 shaderMasksTexUvMinMax;
float4 shaderMasksTexBorderColor;
float gridSampAlpha;
float4 genTexSize;
float4 genTexDims;
float4 genTexView;
float3x3 genTexTransform;
float4 genTexUvMinMax;
float4 genTexBorderColor;
float genHalfPx;
float4 drivingHairMaskSize;
float4 drivingHairMaskDims;
float4 drivingHairMaskView;
float3x3 drivingHairMaskTransform;
float4 drivingHairMaskUvMinMax;
float4 drivingHairMaskBorderColor;
float segShiftX;
float segRatioX;
float segShiftY;
float segRatioY;
float genAlpha;
int useShaderGridSample;
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> camTex [[id(1)]];
texture2d<float> drivingHairMask [[id(2)]];
texture2d<float> flowRelative [[id(3)]];
texture2d<float> flowSelection [[id(4)]];
texture2d<float> genTex [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> sc_ScreenTexture [[id(18)]];
texture2d<float> shaderMasksTex [[id(21)]];
texture2d<float> sourceCropTex [[id(22)]];
texture2d<float> sourceGarmentMask [[id(23)]];
sampler camTexSmpSC [[id(24)]];
sampler drivingHairMaskSmpSC [[id(25)]];
sampler flowRelativeSmpSC [[id(26)]];
sampler flowSelectionSmpSC [[id(27)]];
sampler genTexSmpSC [[id(28)]];
sampler intensityTextureSmpSC [[id(29)]];
sampler sc_ScreenTextureSmpSC [[id(34)]];
sampler shaderMasksTexSmpSC [[id(37)]];
sampler sourceCropTexSmpSC [[id(38)]];
sampler sourceGarmentMaskSmpSC [[id(39)]];
constant userUniformsObj* UserUniforms [[id(40)]];
};
struct main_frag_out
{
float4 sc_FragData0 [[color(0)]];
};
struct main_frag_in
{
float4 varPosAndMotion [[user(locn0)]];
float4 varNormalAndMotion [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varTex01 [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
l9_236=l9_278;
float l9_279=l9_236.x;
int l9_280=l9_239.x;
bool l9_281=l9_245;
float l9_282=l9_246;
if ((l9_280==0)||(l9_280==3))
{
float l9_283=l9_279;
float l9_284=0.0;
float l9_285=1.0;
bool l9_286=l9_281;
float l9_287=l9_282;
float l9_288=fast::clamp(l9_283,l9_284,l9_285);
float l9_289=step(abs(l9_283-l9_288),9.9999997e-06);
l9_287*=(l9_289+((1.0-float(l9_286))*(1.0-l9_289)));
l9_283=l9_288;
l9_279=l9_283;
l9_282=l9_287;
}
l9_236.x=l9_279;
l9_246=l9_282;
float l9_290=l9_236.y;
int l9_291=l9_239.y;
bool l9_292=l9_245;
float l9_293=l9_246;
if ((l9_291==0)||(l9_291==3))
{
float l9_294=l9_290;
float l9_295=0.0;
float l9_296=1.0;
bool l9_297=l9_292;
float l9_298=l9_293;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
l9_290=l9_294;
l9_293=l9_298;
}
l9_236.y=l9_290;
l9_246=l9_293;
float2 l9_301=l9_236;
int l9_302=l9_234;
int l9_303=l9_235;
float l9_304=l9_244;
float2 l9_305=l9_301;
int l9_306=l9_302;
int l9_307=l9_303;
float3 l9_308=float3(0.0);
if (l9_306==0)
{
l9_308=float3(l9_305,0.0);
}
else
{
if (l9_306==1)
{
l9_308=float3(l9_305.x,(l9_305.y*0.5)+(0.5-(float(l9_307)*0.5)),0.0);
}
else
{
l9_308=float3(l9_305,float(l9_307));
}
}
float3 l9_309=l9_308;
float3 l9_310=l9_309;
float4 l9_311=intensityTexture.sample(intensityTextureSmpSC,l9_310.xy,bias(l9_304));
float4 l9_312=l9_311;
if (l9_242)
{
l9_312=mix(l9_243,l9_312,float4(l9_246));
}
float4 l9_313=l9_312;
float3 l9_314=l9_313.xyz;
float3 l9_315=l9_314;
float l9_316=16.0;
float l9_317=((((l9_315.x*256.0)+l9_315.y)+(l9_315.z/256.0))/257.00391)*l9_316;
float l9_318=l9_317;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_318=fast::max(l9_318,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_318=fast::min(l9_318,1.0);
}
float l9_319=l9_225;
float3 l9_320=param_8;
float3 l9_321=param_9;
float l9_322=l9_226;
float l9_323=l9_318;
float3 l9_324=transformColor(l9_319,l9_320,l9_321,l9_322,l9_323);
return l9_324;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 sc_OutputMotionVectorIfNeeded(thread const float4& finalColor,thread float4& varPosAndMotion,thread float4& varNormalAndMotion)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float2 param=float2(varPosAndMotion.w,varNormalAndMotion.w);
float l9_0=(param.x*5.0)+0.5;
float l9_1=floor(l9_0*65535.0);
float l9_2=floor(l9_1*0.00390625);
float2 l9_3=float2(l9_2/255.0,(l9_1-(l9_2*256.0))/255.0);
float l9_4=(param.y*5.0)+0.5;
float l9_5=floor(l9_4*65535.0);
float l9_6=floor(l9_5*0.00390625);
float2 l9_7=float2(l9_6/255.0,(l9_5-(l9_6*256.0))/255.0);
float4 l9_8=float4(l9_3,l9_7);
return l9_8;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
float2 N52_UVCenter=float2(0.0);
float2 N52_UVcropSize=float2(0.0);
float N52_FlowHalfPx=0.0;
float N52_sx=0.0;
float N52_sy=0.0;
float N52_dx=0.0;
float N52_dy=0.0;
float N52_shaderMasksHalfPx=0.0;
float N52_gridsampleAlpha=0.0;
float N52_genHalfPx=0.0;
float N52_segShiftX=0.0;
float N52_segRatioX=0.0;
float N52_segShiftY=0.0;
float N52_segRatioY=0.0;
float N52_generatedAlpha=0.0;
float N52_useShaderGridSample=0.0;
float4 N52_Result=float4(0.0);
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(1.0);
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
float4 l9_0=gl_FragCoord;
float2 l9_1=l9_0.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2=l9_1;
float2 l9_3=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_4=1;
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=in.varStereoViewID;
}
int l9_6=l9_5;
int l9_7=l9_6;
float3 l9_8=float3(l9_2,0.0);
int l9_9=l9_4;
int l9_10=l9_7;
if (l9_9==1)
{
l9_8.y=((2.0*l9_8.y)+float(l9_10))-1.0;
}
float2 l9_11=l9_8.xy;
l9_3=l9_11;
}
else
{
l9_3=l9_2;
}
float2 l9_12=l9_3;
float2 l9_13=l9_12;
Globals.gScreenCoord=l9_13;
float2 Output_N11=float2(0.0);
float2 param=(*sc_set0.UserUniforms).cropCenter;
Output_N11=param;
float2 Output_N12=float2(0.0);
float2 param_1=(*sc_set0.UserUniforms).cropSize;
Output_N12=param_1;
float Output_N20=0.0;
float param_2=(*sc_set0.UserUniforms).flowHalfPx;
Output_N20=param_2;
float Output_N46=0.0;
float param_3=(*sc_set0.UserUniforms).sx;
Output_N46=param_3;
float Output_N57=0.0;
float param_4=(*sc_set0.UserUniforms).sy;
Output_N57=param_4;
float Output_N42=0.0;
float param_5=(*sc_set0.UserUniforms).dx;
Output_N42=param_5;
float Output_N59=0.0;
float param_6=(*sc_set0.UserUniforms).dy;
Output_N59=param_6;
float Output_N26=0.0;
float param_7=(*sc_set0.UserUniforms).shaderMaskHalfPx;
Output_N26=param_7;
float Output_N34=0.0;
float param_8=(*sc_set0.UserUniforms).gridSampAlpha;
Output_N34=param_8;
float Output_N47=0.0;
float param_9=(*sc_set0.UserUniforms).genHalfPx;
Output_N47=param_9;
float Output_N116=0.0;
float param_10=(*sc_set0.UserUniforms).segShiftX;
Output_N116=param_10;
float Output_N118=0.0;
float param_11=(*sc_set0.UserUniforms).segRatioX;
Output_N118=param_11;
float Output_N121=0.0;
float param_12=(*sc_set0.UserUniforms).segShiftY;
Output_N121=param_12;
float Output_N130=0.0;
float param_13=(*sc_set0.UserUniforms).segRatioY;
Output_N130=param_13;
float Output_N17=0.0;
float param_14=(*sc_set0.UserUniforms).genAlpha;
Output_N17=param_14;
float Output_N5=0.0;
float param_15=float((*sc_set0.UserUniforms).useShaderGridSample!=0);
Output_N5=param_15;
float4 Result_N52=float4(0.0);
float2 param_16=Output_N11;
float2 param_17=Output_N12;
float param_18=Output_N20;
float param_19=Output_N46;
float param_20=Output_N57;
float param_21=Output_N42;
float param_22=Output_N59;
float param_23=Output_N26;
float param_24=Output_N34;
float param_25=Output_N47;
float param_26=Output_N116;
float param_27=Output_N118;
float param_28=Output_N121;
float param_29=Output_N130;
float param_30=Output_N17;
float param_31=Output_N5;
ssGlobals param_33=Globals;
ssGlobals tempGlobals=param_33;
float4 param_32=float4(0.0);
N52_UVCenter=param_16;
N52_UVcropSize=param_17;
N52_FlowHalfPx=param_18;
N52_sx=param_19;
N52_sy=param_20;
N52_dx=param_21;
N52_dy=param_22;
N52_shaderMasksHalfPx=param_23;
N52_gridsampleAlpha=param_24;
N52_genHalfPx=param_25;
N52_segShiftX=param_26;
N52_segRatioX=param_27;
N52_segShiftY=param_28;
N52_segRatioY=param_29;
N52_generatedAlpha=param_30;
N52_useShaderGridSample=param_31;
float2 l9_14=tempGlobals.gScreenCoord;
float2 l9_15=l9_14;
float2 l9_16=l9_15;
float4 l9_17=float4(0.0);
int l9_18;
if ((int(camTexHasSwappedViews_tmp)!=0))
{
int l9_19=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_19=0;
}
else
{
l9_19=in.varStereoViewID;
}
int l9_20=l9_19;
l9_18=1-l9_20;
}
else
{
int l9_21=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_21=0;
}
else
{
l9_21=in.varStereoViewID;
}
int l9_22=l9_21;
l9_18=l9_22;
}
int l9_23=l9_18;
int l9_24=camTexLayout_tmp;
int l9_25=l9_23;
float2 l9_26=l9_16;
bool l9_27=(int(SC_USE_UV_TRANSFORM_camTex_tmp)!=0);
float3x3 l9_28=(*sc_set0.UserUniforms).camTexTransform;
int2 l9_29=int2(SC_SOFTWARE_WRAP_MODE_U_camTex_tmp,SC_SOFTWARE_WRAP_MODE_V_camTex_tmp);
bool l9_30=(int(SC_USE_UV_MIN_MAX_camTex_tmp)!=0);
float4 l9_31=(*sc_set0.UserUniforms).camTexUvMinMax;
bool l9_32=(int(SC_USE_CLAMP_TO_BORDER_camTex_tmp)!=0);
float4 l9_33=(*sc_set0.UserUniforms).camTexBorderColor;
float l9_34=0.0;
bool l9_35=l9_32&&(!l9_30);
float l9_36=1.0;
float l9_37=l9_26.x;
int l9_38=l9_29.x;
if (l9_38==1)
{
l9_37=fract(l9_37);
}
else
{
if (l9_38==2)
{
float l9_39=fract(l9_37);
float l9_40=l9_37-l9_39;
float l9_41=step(0.25,fract(l9_40*0.5));
l9_37=mix(l9_39,1.0-l9_39,fast::clamp(l9_41,0.0,1.0));
}
}
l9_26.x=l9_37;
float l9_42=l9_26.y;
int l9_43=l9_29.y;
if (l9_43==1)
{
l9_42=fract(l9_42);
}
else
{
if (l9_43==2)
{
float l9_44=fract(l9_42);
float l9_45=l9_42-l9_44;
float l9_46=step(0.25,fract(l9_45*0.5));
l9_42=mix(l9_44,1.0-l9_44,fast::clamp(l9_46,0.0,1.0));
}
}
l9_26.y=l9_42;
if (l9_30)
{
bool l9_47=l9_32;
bool l9_48;
if (l9_47)
{
l9_48=l9_29.x==3;
}
else
{
l9_48=l9_47;
}
float l9_49=l9_26.x;
float l9_50=l9_31.x;
float l9_51=l9_31.z;
bool l9_52=l9_48;
float l9_53=l9_36;
float l9_54=fast::clamp(l9_49,l9_50,l9_51);
float l9_55=step(abs(l9_49-l9_54),9.9999997e-06);
l9_53*=(l9_55+((1.0-float(l9_52))*(1.0-l9_55)));
l9_49=l9_54;
l9_26.x=l9_49;
l9_36=l9_53;
bool l9_56=l9_32;
bool l9_57;
if (l9_56)
{
l9_57=l9_29.y==3;
}
else
{
l9_57=l9_56;
}
float l9_58=l9_26.y;
float l9_59=l9_31.y;
float l9_60=l9_31.w;
bool l9_61=l9_57;
float l9_62=l9_36;
float l9_63=fast::clamp(l9_58,l9_59,l9_60);
float l9_64=step(abs(l9_58-l9_63),9.9999997e-06);
l9_62*=(l9_64+((1.0-float(l9_61))*(1.0-l9_64)));
l9_58=l9_63;
l9_26.y=l9_58;
l9_36=l9_62;
}
float2 l9_65=l9_26;
bool l9_66=l9_27;
float3x3 l9_67=l9_28;
if (l9_66)
{
l9_65=float2((l9_67*float3(l9_65,1.0)).xy);
}
float2 l9_68=l9_65;
l9_26=l9_68;
float l9_69=l9_26.x;
int l9_70=l9_29.x;
bool l9_71=l9_35;
float l9_72=l9_36;
if ((l9_70==0)||(l9_70==3))
{
float l9_73=l9_69;
float l9_74=0.0;
float l9_75=1.0;
bool l9_76=l9_71;
float l9_77=l9_72;
float l9_78=fast::clamp(l9_73,l9_74,l9_75);
float l9_79=step(abs(l9_73-l9_78),9.9999997e-06);
l9_77*=(l9_79+((1.0-float(l9_76))*(1.0-l9_79)));
l9_73=l9_78;
l9_69=l9_73;
l9_72=l9_77;
}
l9_26.x=l9_69;
l9_36=l9_72;
float l9_80=l9_26.y;
int l9_81=l9_29.y;
bool l9_82=l9_35;
float l9_83=l9_36;
if ((l9_81==0)||(l9_81==3))
{
float l9_84=l9_80;
float l9_85=0.0;
float l9_86=1.0;
bool l9_87=l9_82;
float l9_88=l9_83;
float l9_89=fast::clamp(l9_84,l9_85,l9_86);
float l9_90=step(abs(l9_84-l9_89),9.9999997e-06);
l9_88*=(l9_90+((1.0-float(l9_87))*(1.0-l9_90)));
l9_84=l9_89;
l9_80=l9_84;
l9_83=l9_88;
}
l9_26.y=l9_80;
l9_36=l9_83;
float2 l9_91=l9_26;
int l9_92=l9_24;
int l9_93=l9_25;
float l9_94=l9_34;
float2 l9_95=l9_91;
int l9_96=l9_92;
int l9_97=l9_93;
float3 l9_98=float3(0.0);
if (l9_96==0)
{
l9_98=float3(l9_95,0.0);
}
else
{
if (l9_96==1)
{
l9_98=float3(l9_95.x,(l9_95.y*0.5)+(0.5-(float(l9_97)*0.5)),0.0);
}
else
{
l9_98=float3(l9_95,float(l9_97));
}
}
float3 l9_99=l9_98;
float3 l9_100=l9_99;
float4 l9_101=sc_set0.camTex.sample(sc_set0.camTexSmpSC,l9_100.xy,bias(l9_94));
float4 l9_102=l9_101;
if (l9_32)
{
l9_102=mix(l9_33,l9_102,float4(l9_36));
}
float4 l9_103=l9_102;
l9_17=l9_103;
float4 l9_104=l9_17;
float4 l9_105=l9_104;
float2 l9_106=l9_15;
float2 l9_107=N52_UVCenter;
float2 l9_108=N52_UVcropSize;
float2 l9_109=l9_108*0.5;
float2 l9_110=float2(1.0)/l9_108;
float2 l9_111=l9_106+((l9_107-l9_109)*(-1.0));
l9_111*=l9_110;
float2 l9_112=l9_111;
float2 l9_113=l9_112;
float2 l9_114=l9_113;
float2 l9_115=float2(N52_FlowHalfPx)+(((l9_114-float2(0.0))*((1.0-N52_FlowHalfPx)-N52_FlowHalfPx))/float2(1.000001));
l9_115=((l9_115-float2(0.5))*float2(1.0,-1.0))+float2(0.5);
float2 l9_116=float2(l9_115.x*0.2,l9_115.y);
float2 l9_117=float2((l9_115.x*0.2)+0.2,l9_115.y);
float2 l9_118=float2((l9_115.x*0.2)+0.40000001,l9_115.y);
float2 l9_119=float2((l9_115.x*0.2)+0.60000002,l9_115.y);
float2 l9_120=float2((l9_115.x*0.2)+0.80000001,l9_115.y);
float2 l9_121=float2(l9_115.x*0.33333334,l9_115.y);
float2 l9_122=float2((l9_115.x*0.33333334)+0.33333334,l9_115.y);
float2 l9_123=float2((l9_115.x*0.33333334)+0.66666669,l9_115.y);
float2 l9_124=l9_116;
float2 l9_125=float2(0.0);
l9_125=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_126=l9_125;
float2 l9_127=float2(1.0)/l9_126;
float2 l9_128=float2(0.0);
l9_128=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_129=l9_128;
float2 l9_130=(l9_124*l9_129)+float2(0.5);
float2 l9_131=fract(l9_130);
float2 l9_132=float2(0.0);
l9_132=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_133=l9_132;
l9_130=(floor(l9_130)/l9_133)-(l9_127/float2(2.0));
float2 l9_134=l9_130;
float4 l9_135=float4(0.0);
int l9_136;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_137=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_137=0;
}
else
{
l9_137=in.varStereoViewID;
}
int l9_138=l9_137;
l9_136=1-l9_138;
}
else
{
int l9_139=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_139=0;
}
else
{
l9_139=in.varStereoViewID;
}
int l9_140=l9_139;
l9_136=l9_140;
}
int l9_141=l9_136;
int l9_142=flowRelativeLayout_tmp;
int l9_143=l9_141;
float2 l9_144=l9_134;
bool l9_145=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_146=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_147=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_148=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_149=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_150=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_151=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_152=0.0;
bool l9_153=l9_150&&(!l9_148);
float l9_154=1.0;
float l9_155=l9_144.x;
int l9_156=l9_147.x;
if (l9_156==1)
{
l9_155=fract(l9_155);
}
else
{
if (l9_156==2)
{
float l9_157=fract(l9_155);
float l9_158=l9_155-l9_157;
float l9_159=step(0.25,fract(l9_158*0.5));
l9_155=mix(l9_157,1.0-l9_157,fast::clamp(l9_159,0.0,1.0));
}
}
l9_144.x=l9_155;
float l9_160=l9_144.y;
int l9_161=l9_147.y;
if (l9_161==1)
{
l9_160=fract(l9_160);
}
else
{
if (l9_161==2)
{
float l9_162=fract(l9_160);
float l9_163=l9_160-l9_162;
float l9_164=step(0.25,fract(l9_163*0.5));
l9_160=mix(l9_162,1.0-l9_162,fast::clamp(l9_164,0.0,1.0));
}
}
l9_144.y=l9_160;
if (l9_148)
{
bool l9_165=l9_150;
bool l9_166;
if (l9_165)
{
l9_166=l9_147.x==3;
}
else
{
l9_166=l9_165;
}
float l9_167=l9_144.x;
float l9_168=l9_149.x;
float l9_169=l9_149.z;
bool l9_170=l9_166;
float l9_171=l9_154;
float l9_172=fast::clamp(l9_167,l9_168,l9_169);
float l9_173=step(abs(l9_167-l9_172),9.9999997e-06);
l9_171*=(l9_173+((1.0-float(l9_170))*(1.0-l9_173)));
l9_167=l9_172;
l9_144.x=l9_167;
l9_154=l9_171;
bool l9_174=l9_150;
bool l9_175;
if (l9_174)
{
l9_175=l9_147.y==3;
}
else
{
l9_175=l9_174;
}
float l9_176=l9_144.y;
float l9_177=l9_149.y;
float l9_178=l9_149.w;
bool l9_179=l9_175;
float l9_180=l9_154;
float l9_181=fast::clamp(l9_176,l9_177,l9_178);
float l9_182=step(abs(l9_176-l9_181),9.9999997e-06);
l9_180*=(l9_182+((1.0-float(l9_179))*(1.0-l9_182)));
l9_176=l9_181;
l9_144.y=l9_176;
l9_154=l9_180;
}
float2 l9_183=l9_144;
bool l9_184=l9_145;
float3x3 l9_185=l9_146;
if (l9_184)
{
l9_183=float2((l9_185*float3(l9_183,1.0)).xy);
}
float2 l9_186=l9_183;
l9_144=l9_186;
float l9_187=l9_144.x;
int l9_188=l9_147.x;
bool l9_189=l9_153;
float l9_190=l9_154;
if ((l9_188==0)||(l9_188==3))
{
float l9_191=l9_187;
float l9_192=0.0;
float l9_193=1.0;
bool l9_194=l9_189;
float l9_195=l9_190;
float l9_196=fast::clamp(l9_191,l9_192,l9_193);
float l9_197=step(abs(l9_191-l9_196),9.9999997e-06);
l9_195*=(l9_197+((1.0-float(l9_194))*(1.0-l9_197)));
l9_191=l9_196;
l9_187=l9_191;
l9_190=l9_195;
}
l9_144.x=l9_187;
l9_154=l9_190;
float l9_198=l9_144.y;
int l9_199=l9_147.y;
bool l9_200=l9_153;
float l9_201=l9_154;
if ((l9_199==0)||(l9_199==3))
{
float l9_202=l9_198;
float l9_203=0.0;
float l9_204=1.0;
bool l9_205=l9_200;
float l9_206=l9_201;
float l9_207=fast::clamp(l9_202,l9_203,l9_204);
float l9_208=step(abs(l9_202-l9_207),9.9999997e-06);
l9_206*=(l9_208+((1.0-float(l9_205))*(1.0-l9_208)));
l9_202=l9_207;
l9_198=l9_202;
l9_201=l9_206;
}
l9_144.y=l9_198;
l9_154=l9_201;
float2 l9_209=l9_144;
int l9_210=l9_142;
int l9_211=l9_143;
float l9_212=l9_152;
float2 l9_213=l9_209;
int l9_214=l9_210;
int l9_215=l9_211;
float3 l9_216=float3(0.0);
if (l9_214==0)
{
l9_216=float3(l9_213,0.0);
}
else
{
if (l9_214==1)
{
l9_216=float3(l9_213.x,(l9_213.y*0.5)+(0.5-(float(l9_215)*0.5)),0.0);
}
else
{
l9_216=float3(l9_213,float(l9_215));
}
}
float3 l9_217=l9_216;
float3 l9_218=l9_217;
float4 l9_219=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_218.xy,bias(l9_212));
float4 l9_220=l9_219;
if (l9_150)
{
l9_220=mix(l9_151,l9_220,float4(l9_154));
}
float4 l9_221=l9_220;
l9_135=l9_221;
float4 l9_222=l9_135;
float4 l9_223=l9_222;
float2 l9_224=l9_130+float2(l9_127.x,0.0);
float4 l9_225=float4(0.0);
int l9_226;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_227=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_227=0;
}
else
{
l9_227=in.varStereoViewID;
}
int l9_228=l9_227;
l9_226=1-l9_228;
}
else
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=in.varStereoViewID;
}
int l9_230=l9_229;
l9_226=l9_230;
}
int l9_231=l9_226;
int l9_232=flowRelativeLayout_tmp;
int l9_233=l9_231;
float2 l9_234=l9_224;
bool l9_235=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_236=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_237=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_238=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_239=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_240=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_241=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_242=0.0;
bool l9_243=l9_240&&(!l9_238);
float l9_244=1.0;
float l9_245=l9_234.x;
int l9_246=l9_237.x;
if (l9_246==1)
{
l9_245=fract(l9_245);
}
else
{
if (l9_246==2)
{
float l9_247=fract(l9_245);
float l9_248=l9_245-l9_247;
float l9_249=step(0.25,fract(l9_248*0.5));
l9_245=mix(l9_247,1.0-l9_247,fast::clamp(l9_249,0.0,1.0));
}
}
l9_234.x=l9_245;
float l9_250=l9_234.y;
int l9_251=l9_237.y;
if (l9_251==1)
{
l9_250=fract(l9_250);
}
else
{
if (l9_251==2)
{
float l9_252=fract(l9_250);
float l9_253=l9_250-l9_252;
float l9_254=step(0.25,fract(l9_253*0.5));
l9_250=mix(l9_252,1.0-l9_252,fast::clamp(l9_254,0.0,1.0));
}
}
l9_234.y=l9_250;
if (l9_238)
{
bool l9_255=l9_240;
bool l9_256;
if (l9_255)
{
l9_256=l9_237.x==3;
}
else
{
l9_256=l9_255;
}
float l9_257=l9_234.x;
float l9_258=l9_239.x;
float l9_259=l9_239.z;
bool l9_260=l9_256;
float l9_261=l9_244;
float l9_262=fast::clamp(l9_257,l9_258,l9_259);
float l9_263=step(abs(l9_257-l9_262),9.9999997e-06);
l9_261*=(l9_263+((1.0-float(l9_260))*(1.0-l9_263)));
l9_257=l9_262;
l9_234.x=l9_257;
l9_244=l9_261;
bool l9_264=l9_240;
bool l9_265;
if (l9_264)
{
l9_265=l9_237.y==3;
}
else
{
l9_265=l9_264;
}
float l9_266=l9_234.y;
float l9_267=l9_239.y;
float l9_268=l9_239.w;
bool l9_269=l9_265;
float l9_270=l9_244;
float l9_271=fast::clamp(l9_266,l9_267,l9_268);
float l9_272=step(abs(l9_266-l9_271),9.9999997e-06);
l9_270*=(l9_272+((1.0-float(l9_269))*(1.0-l9_272)));
l9_266=l9_271;
l9_234.y=l9_266;
l9_244=l9_270;
}
float2 l9_273=l9_234;
bool l9_274=l9_235;
float3x3 l9_275=l9_236;
if (l9_274)
{
l9_273=float2((l9_275*float3(l9_273,1.0)).xy);
}
float2 l9_276=l9_273;
l9_234=l9_276;
float l9_277=l9_234.x;
int l9_278=l9_237.x;
bool l9_279=l9_243;
float l9_280=l9_244;
if ((l9_278==0)||(l9_278==3))
{
float l9_281=l9_277;
float l9_282=0.0;
float l9_283=1.0;
bool l9_284=l9_279;
float l9_285=l9_280;
float l9_286=fast::clamp(l9_281,l9_282,l9_283);
float l9_287=step(abs(l9_281-l9_286),9.9999997e-06);
l9_285*=(l9_287+((1.0-float(l9_284))*(1.0-l9_287)));
l9_281=l9_286;
l9_277=l9_281;
l9_280=l9_285;
}
l9_234.x=l9_277;
l9_244=l9_280;
float l9_288=l9_234.y;
int l9_289=l9_237.y;
bool l9_290=l9_243;
float l9_291=l9_244;
if ((l9_289==0)||(l9_289==3))
{
float l9_292=l9_288;
float l9_293=0.0;
float l9_294=1.0;
bool l9_295=l9_290;
float l9_296=l9_291;
float l9_297=fast::clamp(l9_292,l9_293,l9_294);
float l9_298=step(abs(l9_292-l9_297),9.9999997e-06);
l9_296*=(l9_298+((1.0-float(l9_295))*(1.0-l9_298)));
l9_292=l9_297;
l9_288=l9_292;
l9_291=l9_296;
}
l9_234.y=l9_288;
l9_244=l9_291;
float2 l9_299=l9_234;
int l9_300=l9_232;
int l9_301=l9_233;
float l9_302=l9_242;
float2 l9_303=l9_299;
int l9_304=l9_300;
int l9_305=l9_301;
float3 l9_306=float3(0.0);
if (l9_304==0)
{
l9_306=float3(l9_303,0.0);
}
else
{
if (l9_304==1)
{
l9_306=float3(l9_303.x,(l9_303.y*0.5)+(0.5-(float(l9_305)*0.5)),0.0);
}
else
{
l9_306=float3(l9_303,float(l9_305));
}
}
float3 l9_307=l9_306;
float3 l9_308=l9_307;
float4 l9_309=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_308.xy,bias(l9_302));
float4 l9_310=l9_309;
if (l9_240)
{
l9_310=mix(l9_241,l9_310,float4(l9_244));
}
float4 l9_311=l9_310;
l9_225=l9_311;
float4 l9_312=l9_225;
float4 l9_313=l9_312;
float2 l9_314=l9_130+float2(0.0,l9_127.y);
float4 l9_315=float4(0.0);
int l9_316;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_317=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_317=0;
}
else
{
l9_317=in.varStereoViewID;
}
int l9_318=l9_317;
l9_316=1-l9_318;
}
else
{
int l9_319=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_319=0;
}
else
{
l9_319=in.varStereoViewID;
}
int l9_320=l9_319;
l9_316=l9_320;
}
int l9_321=l9_316;
int l9_322=flowRelativeLayout_tmp;
int l9_323=l9_321;
float2 l9_324=l9_314;
bool l9_325=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_326=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_327=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_328=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_329=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_330=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_331=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_332=0.0;
bool l9_333=l9_330&&(!l9_328);
float l9_334=1.0;
float l9_335=l9_324.x;
int l9_336=l9_327.x;
if (l9_336==1)
{
l9_335=fract(l9_335);
}
else
{
if (l9_336==2)
{
float l9_337=fract(l9_335);
float l9_338=l9_335-l9_337;
float l9_339=step(0.25,fract(l9_338*0.5));
l9_335=mix(l9_337,1.0-l9_337,fast::clamp(l9_339,0.0,1.0));
}
}
l9_324.x=l9_335;
float l9_340=l9_324.y;
int l9_341=l9_327.y;
if (l9_341==1)
{
l9_340=fract(l9_340);
}
else
{
if (l9_341==2)
{
float l9_342=fract(l9_340);
float l9_343=l9_340-l9_342;
float l9_344=step(0.25,fract(l9_343*0.5));
l9_340=mix(l9_342,1.0-l9_342,fast::clamp(l9_344,0.0,1.0));
}
}
l9_324.y=l9_340;
if (l9_328)
{
bool l9_345=l9_330;
bool l9_346;
if (l9_345)
{
l9_346=l9_327.x==3;
}
else
{
l9_346=l9_345;
}
float l9_347=l9_324.x;
float l9_348=l9_329.x;
float l9_349=l9_329.z;
bool l9_350=l9_346;
float l9_351=l9_334;
float l9_352=fast::clamp(l9_347,l9_348,l9_349);
float l9_353=step(abs(l9_347-l9_352),9.9999997e-06);
l9_351*=(l9_353+((1.0-float(l9_350))*(1.0-l9_353)));
l9_347=l9_352;
l9_324.x=l9_347;
l9_334=l9_351;
bool l9_354=l9_330;
bool l9_355;
if (l9_354)
{
l9_355=l9_327.y==3;
}
else
{
l9_355=l9_354;
}
float l9_356=l9_324.y;
float l9_357=l9_329.y;
float l9_358=l9_329.w;
bool l9_359=l9_355;
float l9_360=l9_334;
float l9_361=fast::clamp(l9_356,l9_357,l9_358);
float l9_362=step(abs(l9_356-l9_361),9.9999997e-06);
l9_360*=(l9_362+((1.0-float(l9_359))*(1.0-l9_362)));
l9_356=l9_361;
l9_324.y=l9_356;
l9_334=l9_360;
}
float2 l9_363=l9_324;
bool l9_364=l9_325;
float3x3 l9_365=l9_326;
if (l9_364)
{
l9_363=float2((l9_365*float3(l9_363,1.0)).xy);
}
float2 l9_366=l9_363;
l9_324=l9_366;
float l9_367=l9_324.x;
int l9_368=l9_327.x;
bool l9_369=l9_333;
float l9_370=l9_334;
if ((l9_368==0)||(l9_368==3))
{
float l9_371=l9_367;
float l9_372=0.0;
float l9_373=1.0;
bool l9_374=l9_369;
float l9_375=l9_370;
float l9_376=fast::clamp(l9_371,l9_372,l9_373);
float l9_377=step(abs(l9_371-l9_376),9.9999997e-06);
l9_375*=(l9_377+((1.0-float(l9_374))*(1.0-l9_377)));
l9_371=l9_376;
l9_367=l9_371;
l9_370=l9_375;
}
l9_324.x=l9_367;
l9_334=l9_370;
float l9_378=l9_324.y;
int l9_379=l9_327.y;
bool l9_380=l9_333;
float l9_381=l9_334;
if ((l9_379==0)||(l9_379==3))
{
float l9_382=l9_378;
float l9_383=0.0;
float l9_384=1.0;
bool l9_385=l9_380;
float l9_386=l9_381;
float l9_387=fast::clamp(l9_382,l9_383,l9_384);
float l9_388=step(abs(l9_382-l9_387),9.9999997e-06);
l9_386*=(l9_388+((1.0-float(l9_385))*(1.0-l9_388)));
l9_382=l9_387;
l9_378=l9_382;
l9_381=l9_386;
}
l9_324.y=l9_378;
l9_334=l9_381;
float2 l9_389=l9_324;
int l9_390=l9_322;
int l9_391=l9_323;
float l9_392=l9_332;
float2 l9_393=l9_389;
int l9_394=l9_390;
int l9_395=l9_391;
float3 l9_396=float3(0.0);
if (l9_394==0)
{
l9_396=float3(l9_393,0.0);
}
else
{
if (l9_394==1)
{
l9_396=float3(l9_393.x,(l9_393.y*0.5)+(0.5-(float(l9_395)*0.5)),0.0);
}
else
{
l9_396=float3(l9_393,float(l9_395));
}
}
float3 l9_397=l9_396;
float3 l9_398=l9_397;
float4 l9_399=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_398.xy,bias(l9_392));
float4 l9_400=l9_399;
if (l9_330)
{
l9_400=mix(l9_331,l9_400,float4(l9_334));
}
float4 l9_401=l9_400;
l9_315=l9_401;
float4 l9_402=l9_315;
float4 l9_403=l9_402;
float2 l9_404=l9_130+float2(l9_127.x,l9_127.y);
float4 l9_405=float4(0.0);
int l9_406;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_407=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_407=0;
}
else
{
l9_407=in.varStereoViewID;
}
int l9_408=l9_407;
l9_406=1-l9_408;
}
else
{
int l9_409=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_409=0;
}
else
{
l9_409=in.varStereoViewID;
}
int l9_410=l9_409;
l9_406=l9_410;
}
int l9_411=l9_406;
int l9_412=flowRelativeLayout_tmp;
int l9_413=l9_411;
float2 l9_414=l9_404;
bool l9_415=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_416=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_417=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_418=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_419=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_420=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_421=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_422=0.0;
bool l9_423=l9_420&&(!l9_418);
float l9_424=1.0;
float l9_425=l9_414.x;
int l9_426=l9_417.x;
if (l9_426==1)
{
l9_425=fract(l9_425);
}
else
{
if (l9_426==2)
{
float l9_427=fract(l9_425);
float l9_428=l9_425-l9_427;
float l9_429=step(0.25,fract(l9_428*0.5));
l9_425=mix(l9_427,1.0-l9_427,fast::clamp(l9_429,0.0,1.0));
}
}
l9_414.x=l9_425;
float l9_430=l9_414.y;
int l9_431=l9_417.y;
if (l9_431==1)
{
l9_430=fract(l9_430);
}
else
{
if (l9_431==2)
{
float l9_432=fract(l9_430);
float l9_433=l9_430-l9_432;
float l9_434=step(0.25,fract(l9_433*0.5));
l9_430=mix(l9_432,1.0-l9_432,fast::clamp(l9_434,0.0,1.0));
}
}
l9_414.y=l9_430;
if (l9_418)
{
bool l9_435=l9_420;
bool l9_436;
if (l9_435)
{
l9_436=l9_417.x==3;
}
else
{
l9_436=l9_435;
}
float l9_437=l9_414.x;
float l9_438=l9_419.x;
float l9_439=l9_419.z;
bool l9_440=l9_436;
float l9_441=l9_424;
float l9_442=fast::clamp(l9_437,l9_438,l9_439);
float l9_443=step(abs(l9_437-l9_442),9.9999997e-06);
l9_441*=(l9_443+((1.0-float(l9_440))*(1.0-l9_443)));
l9_437=l9_442;
l9_414.x=l9_437;
l9_424=l9_441;
bool l9_444=l9_420;
bool l9_445;
if (l9_444)
{
l9_445=l9_417.y==3;
}
else
{
l9_445=l9_444;
}
float l9_446=l9_414.y;
float l9_447=l9_419.y;
float l9_448=l9_419.w;
bool l9_449=l9_445;
float l9_450=l9_424;
float l9_451=fast::clamp(l9_446,l9_447,l9_448);
float l9_452=step(abs(l9_446-l9_451),9.9999997e-06);
l9_450*=(l9_452+((1.0-float(l9_449))*(1.0-l9_452)));
l9_446=l9_451;
l9_414.y=l9_446;
l9_424=l9_450;
}
float2 l9_453=l9_414;
bool l9_454=l9_415;
float3x3 l9_455=l9_416;
if (l9_454)
{
l9_453=float2((l9_455*float3(l9_453,1.0)).xy);
}
float2 l9_456=l9_453;
l9_414=l9_456;
float l9_457=l9_414.x;
int l9_458=l9_417.x;
bool l9_459=l9_423;
float l9_460=l9_424;
if ((l9_458==0)||(l9_458==3))
{
float l9_461=l9_457;
float l9_462=0.0;
float l9_463=1.0;
bool l9_464=l9_459;
float l9_465=l9_460;
float l9_466=fast::clamp(l9_461,l9_462,l9_463);
float l9_467=step(abs(l9_461-l9_466),9.9999997e-06);
l9_465*=(l9_467+((1.0-float(l9_464))*(1.0-l9_467)));
l9_461=l9_466;
l9_457=l9_461;
l9_460=l9_465;
}
l9_414.x=l9_457;
l9_424=l9_460;
float l9_468=l9_414.y;
int l9_469=l9_417.y;
bool l9_470=l9_423;
float l9_471=l9_424;
if ((l9_469==0)||(l9_469==3))
{
float l9_472=l9_468;
float l9_473=0.0;
float l9_474=1.0;
bool l9_475=l9_470;
float l9_476=l9_471;
float l9_477=fast::clamp(l9_472,l9_473,l9_474);
float l9_478=step(abs(l9_472-l9_477),9.9999997e-06);
l9_476*=(l9_478+((1.0-float(l9_475))*(1.0-l9_478)));
l9_472=l9_477;
l9_468=l9_472;
l9_471=l9_476;
}
l9_414.y=l9_468;
l9_424=l9_471;
float2 l9_479=l9_414;
int l9_480=l9_412;
int l9_481=l9_413;
float l9_482=l9_422;
float2 l9_483=l9_479;
int l9_484=l9_480;
int l9_485=l9_481;
float3 l9_486=float3(0.0);
if (l9_484==0)
{
l9_486=float3(l9_483,0.0);
}
else
{
if (l9_484==1)
{
l9_486=float3(l9_483.x,(l9_483.y*0.5)+(0.5-(float(l9_485)*0.5)),0.0);
}
else
{
l9_486=float3(l9_483,float(l9_485));
}
}
float3 l9_487=l9_486;
float3 l9_488=l9_487;
float4 l9_489=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_488.xy,bias(l9_482));
float4 l9_490=l9_489;
if (l9_420)
{
l9_490=mix(l9_421,l9_490,float4(l9_424));
}
float4 l9_491=l9_490;
l9_405=l9_491;
float4 l9_492=l9_405;
float4 l9_493=l9_492;
float4 l9_494=mix(l9_223,l9_313,float4(l9_131.x));
float4 l9_495=mix(l9_403,l9_493,float4(l9_131.x));
float4 l9_496=mix(l9_494,l9_495,float4(l9_131.y));
float2 l9_497=l9_496.xy;
float2 l9_498=l9_117;
float2 l9_499=float2(0.0);
l9_499=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_500=l9_499;
float2 l9_501=float2(1.0)/l9_500;
float2 l9_502=float2(0.0);
l9_502=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_503=l9_502;
float2 l9_504=(l9_498*l9_503)+float2(0.5);
float2 l9_505=fract(l9_504);
float2 l9_506=float2(0.0);
l9_506=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_507=l9_506;
l9_504=(floor(l9_504)/l9_507)-(l9_501/float2(2.0));
float2 l9_508=l9_504;
float4 l9_509=float4(0.0);
int l9_510;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_511=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_511=0;
}
else
{
l9_511=in.varStereoViewID;
}
int l9_512=l9_511;
l9_510=1-l9_512;
}
else
{
int l9_513=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_513=0;
}
else
{
l9_513=in.varStereoViewID;
}
int l9_514=l9_513;
l9_510=l9_514;
}
int l9_515=l9_510;
int l9_516=flowRelativeLayout_tmp;
int l9_517=l9_515;
float2 l9_518=l9_508;
bool l9_519=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_520=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_521=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_522=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_523=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_524=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_525=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_526=0.0;
bool l9_527=l9_524&&(!l9_522);
float l9_528=1.0;
float l9_529=l9_518.x;
int l9_530=l9_521.x;
if (l9_530==1)
{
l9_529=fract(l9_529);
}
else
{
if (l9_530==2)
{
float l9_531=fract(l9_529);
float l9_532=l9_529-l9_531;
float l9_533=step(0.25,fract(l9_532*0.5));
l9_529=mix(l9_531,1.0-l9_531,fast::clamp(l9_533,0.0,1.0));
}
}
l9_518.x=l9_529;
float l9_534=l9_518.y;
int l9_535=l9_521.y;
if (l9_535==1)
{
l9_534=fract(l9_534);
}
else
{
if (l9_535==2)
{
float l9_536=fract(l9_534);
float l9_537=l9_534-l9_536;
float l9_538=step(0.25,fract(l9_537*0.5));
l9_534=mix(l9_536,1.0-l9_536,fast::clamp(l9_538,0.0,1.0));
}
}
l9_518.y=l9_534;
if (l9_522)
{
bool l9_539=l9_524;
bool l9_540;
if (l9_539)
{
l9_540=l9_521.x==3;
}
else
{
l9_540=l9_539;
}
float l9_541=l9_518.x;
float l9_542=l9_523.x;
float l9_543=l9_523.z;
bool l9_544=l9_540;
float l9_545=l9_528;
float l9_546=fast::clamp(l9_541,l9_542,l9_543);
float l9_547=step(abs(l9_541-l9_546),9.9999997e-06);
l9_545*=(l9_547+((1.0-float(l9_544))*(1.0-l9_547)));
l9_541=l9_546;
l9_518.x=l9_541;
l9_528=l9_545;
bool l9_548=l9_524;
bool l9_549;
if (l9_548)
{
l9_549=l9_521.y==3;
}
else
{
l9_549=l9_548;
}
float l9_550=l9_518.y;
float l9_551=l9_523.y;
float l9_552=l9_523.w;
bool l9_553=l9_549;
float l9_554=l9_528;
float l9_555=fast::clamp(l9_550,l9_551,l9_552);
float l9_556=step(abs(l9_550-l9_555),9.9999997e-06);
l9_554*=(l9_556+((1.0-float(l9_553))*(1.0-l9_556)));
l9_550=l9_555;
l9_518.y=l9_550;
l9_528=l9_554;
}
float2 l9_557=l9_518;
bool l9_558=l9_519;
float3x3 l9_559=l9_520;
if (l9_558)
{
l9_557=float2((l9_559*float3(l9_557,1.0)).xy);
}
float2 l9_560=l9_557;
l9_518=l9_560;
float l9_561=l9_518.x;
int l9_562=l9_521.x;
bool l9_563=l9_527;
float l9_564=l9_528;
if ((l9_562==0)||(l9_562==3))
{
float l9_565=l9_561;
float l9_566=0.0;
float l9_567=1.0;
bool l9_568=l9_563;
float l9_569=l9_564;
float l9_570=fast::clamp(l9_565,l9_566,l9_567);
float l9_571=step(abs(l9_565-l9_570),9.9999997e-06);
l9_569*=(l9_571+((1.0-float(l9_568))*(1.0-l9_571)));
l9_565=l9_570;
l9_561=l9_565;
l9_564=l9_569;
}
l9_518.x=l9_561;
l9_528=l9_564;
float l9_572=l9_518.y;
int l9_573=l9_521.y;
bool l9_574=l9_527;
float l9_575=l9_528;
if ((l9_573==0)||(l9_573==3))
{
float l9_576=l9_572;
float l9_577=0.0;
float l9_578=1.0;
bool l9_579=l9_574;
float l9_580=l9_575;
float l9_581=fast::clamp(l9_576,l9_577,l9_578);
float l9_582=step(abs(l9_576-l9_581),9.9999997e-06);
l9_580*=(l9_582+((1.0-float(l9_579))*(1.0-l9_582)));
l9_576=l9_581;
l9_572=l9_576;
l9_575=l9_580;
}
l9_518.y=l9_572;
l9_528=l9_575;
float2 l9_583=l9_518;
int l9_584=l9_516;
int l9_585=l9_517;
float l9_586=l9_526;
float2 l9_587=l9_583;
int l9_588=l9_584;
int l9_589=l9_585;
float3 l9_590=float3(0.0);
if (l9_588==0)
{
l9_590=float3(l9_587,0.0);
}
else
{
if (l9_588==1)
{
l9_590=float3(l9_587.x,(l9_587.y*0.5)+(0.5-(float(l9_589)*0.5)),0.0);
}
else
{
l9_590=float3(l9_587,float(l9_589));
}
}
float3 l9_591=l9_590;
float3 l9_592=l9_591;
float4 l9_593=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_592.xy,bias(l9_586));
float4 l9_594=l9_593;
if (l9_524)
{
l9_594=mix(l9_525,l9_594,float4(l9_528));
}
float4 l9_595=l9_594;
l9_509=l9_595;
float4 l9_596=l9_509;
float4 l9_597=l9_596;
float2 l9_598=l9_504+float2(l9_501.x,0.0);
float4 l9_599=float4(0.0);
int l9_600;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_601=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_601=0;
}
else
{
l9_601=in.varStereoViewID;
}
int l9_602=l9_601;
l9_600=1-l9_602;
}
else
{
int l9_603=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_603=0;
}
else
{
l9_603=in.varStereoViewID;
}
int l9_604=l9_603;
l9_600=l9_604;
}
int l9_605=l9_600;
int l9_606=flowRelativeLayout_tmp;
int l9_607=l9_605;
float2 l9_608=l9_598;
bool l9_609=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_610=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_611=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_612=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_613=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_614=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_615=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_616=0.0;
bool l9_617=l9_614&&(!l9_612);
float l9_618=1.0;
float l9_619=l9_608.x;
int l9_620=l9_611.x;
if (l9_620==1)
{
l9_619=fract(l9_619);
}
else
{
if (l9_620==2)
{
float l9_621=fract(l9_619);
float l9_622=l9_619-l9_621;
float l9_623=step(0.25,fract(l9_622*0.5));
l9_619=mix(l9_621,1.0-l9_621,fast::clamp(l9_623,0.0,1.0));
}
}
l9_608.x=l9_619;
float l9_624=l9_608.y;
int l9_625=l9_611.y;
if (l9_625==1)
{
l9_624=fract(l9_624);
}
else
{
if (l9_625==2)
{
float l9_626=fract(l9_624);
float l9_627=l9_624-l9_626;
float l9_628=step(0.25,fract(l9_627*0.5));
l9_624=mix(l9_626,1.0-l9_626,fast::clamp(l9_628,0.0,1.0));
}
}
l9_608.y=l9_624;
if (l9_612)
{
bool l9_629=l9_614;
bool l9_630;
if (l9_629)
{
l9_630=l9_611.x==3;
}
else
{
l9_630=l9_629;
}
float l9_631=l9_608.x;
float l9_632=l9_613.x;
float l9_633=l9_613.z;
bool l9_634=l9_630;
float l9_635=l9_618;
float l9_636=fast::clamp(l9_631,l9_632,l9_633);
float l9_637=step(abs(l9_631-l9_636),9.9999997e-06);
l9_635*=(l9_637+((1.0-float(l9_634))*(1.0-l9_637)));
l9_631=l9_636;
l9_608.x=l9_631;
l9_618=l9_635;
bool l9_638=l9_614;
bool l9_639;
if (l9_638)
{
l9_639=l9_611.y==3;
}
else
{
l9_639=l9_638;
}
float l9_640=l9_608.y;
float l9_641=l9_613.y;
float l9_642=l9_613.w;
bool l9_643=l9_639;
float l9_644=l9_618;
float l9_645=fast::clamp(l9_640,l9_641,l9_642);
float l9_646=step(abs(l9_640-l9_645),9.9999997e-06);
l9_644*=(l9_646+((1.0-float(l9_643))*(1.0-l9_646)));
l9_640=l9_645;
l9_608.y=l9_640;
l9_618=l9_644;
}
float2 l9_647=l9_608;
bool l9_648=l9_609;
float3x3 l9_649=l9_610;
if (l9_648)
{
l9_647=float2((l9_649*float3(l9_647,1.0)).xy);
}
float2 l9_650=l9_647;
l9_608=l9_650;
float l9_651=l9_608.x;
int l9_652=l9_611.x;
bool l9_653=l9_617;
float l9_654=l9_618;
if ((l9_652==0)||(l9_652==3))
{
float l9_655=l9_651;
float l9_656=0.0;
float l9_657=1.0;
bool l9_658=l9_653;
float l9_659=l9_654;
float l9_660=fast::clamp(l9_655,l9_656,l9_657);
float l9_661=step(abs(l9_655-l9_660),9.9999997e-06);
l9_659*=(l9_661+((1.0-float(l9_658))*(1.0-l9_661)));
l9_655=l9_660;
l9_651=l9_655;
l9_654=l9_659;
}
l9_608.x=l9_651;
l9_618=l9_654;
float l9_662=l9_608.y;
int l9_663=l9_611.y;
bool l9_664=l9_617;
float l9_665=l9_618;
if ((l9_663==0)||(l9_663==3))
{
float l9_666=l9_662;
float l9_667=0.0;
float l9_668=1.0;
bool l9_669=l9_664;
float l9_670=l9_665;
float l9_671=fast::clamp(l9_666,l9_667,l9_668);
float l9_672=step(abs(l9_666-l9_671),9.9999997e-06);
l9_670*=(l9_672+((1.0-float(l9_669))*(1.0-l9_672)));
l9_666=l9_671;
l9_662=l9_666;
l9_665=l9_670;
}
l9_608.y=l9_662;
l9_618=l9_665;
float2 l9_673=l9_608;
int l9_674=l9_606;
int l9_675=l9_607;
float l9_676=l9_616;
float2 l9_677=l9_673;
int l9_678=l9_674;
int l9_679=l9_675;
float3 l9_680=float3(0.0);
if (l9_678==0)
{
l9_680=float3(l9_677,0.0);
}
else
{
if (l9_678==1)
{
l9_680=float3(l9_677.x,(l9_677.y*0.5)+(0.5-(float(l9_679)*0.5)),0.0);
}
else
{
l9_680=float3(l9_677,float(l9_679));
}
}
float3 l9_681=l9_680;
float3 l9_682=l9_681;
float4 l9_683=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_682.xy,bias(l9_676));
float4 l9_684=l9_683;
if (l9_614)
{
l9_684=mix(l9_615,l9_684,float4(l9_618));
}
float4 l9_685=l9_684;
l9_599=l9_685;
float4 l9_686=l9_599;
float4 l9_687=l9_686;
float2 l9_688=l9_504+float2(0.0,l9_501.y);
float4 l9_689=float4(0.0);
int l9_690;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_691=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_691=0;
}
else
{
l9_691=in.varStereoViewID;
}
int l9_692=l9_691;
l9_690=1-l9_692;
}
else
{
int l9_693=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_693=0;
}
else
{
l9_693=in.varStereoViewID;
}
int l9_694=l9_693;
l9_690=l9_694;
}
int l9_695=l9_690;
int l9_696=flowRelativeLayout_tmp;
int l9_697=l9_695;
float2 l9_698=l9_688;
bool l9_699=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_700=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_701=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_702=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_703=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_704=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_705=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_706=0.0;
bool l9_707=l9_704&&(!l9_702);
float l9_708=1.0;
float l9_709=l9_698.x;
int l9_710=l9_701.x;
if (l9_710==1)
{
l9_709=fract(l9_709);
}
else
{
if (l9_710==2)
{
float l9_711=fract(l9_709);
float l9_712=l9_709-l9_711;
float l9_713=step(0.25,fract(l9_712*0.5));
l9_709=mix(l9_711,1.0-l9_711,fast::clamp(l9_713,0.0,1.0));
}
}
l9_698.x=l9_709;
float l9_714=l9_698.y;
int l9_715=l9_701.y;
if (l9_715==1)
{
l9_714=fract(l9_714);
}
else
{
if (l9_715==2)
{
float l9_716=fract(l9_714);
float l9_717=l9_714-l9_716;
float l9_718=step(0.25,fract(l9_717*0.5));
l9_714=mix(l9_716,1.0-l9_716,fast::clamp(l9_718,0.0,1.0));
}
}
l9_698.y=l9_714;
if (l9_702)
{
bool l9_719=l9_704;
bool l9_720;
if (l9_719)
{
l9_720=l9_701.x==3;
}
else
{
l9_720=l9_719;
}
float l9_721=l9_698.x;
float l9_722=l9_703.x;
float l9_723=l9_703.z;
bool l9_724=l9_720;
float l9_725=l9_708;
float l9_726=fast::clamp(l9_721,l9_722,l9_723);
float l9_727=step(abs(l9_721-l9_726),9.9999997e-06);
l9_725*=(l9_727+((1.0-float(l9_724))*(1.0-l9_727)));
l9_721=l9_726;
l9_698.x=l9_721;
l9_708=l9_725;
bool l9_728=l9_704;
bool l9_729;
if (l9_728)
{
l9_729=l9_701.y==3;
}
else
{
l9_729=l9_728;
}
float l9_730=l9_698.y;
float l9_731=l9_703.y;
float l9_732=l9_703.w;
bool l9_733=l9_729;
float l9_734=l9_708;
float l9_735=fast::clamp(l9_730,l9_731,l9_732);
float l9_736=step(abs(l9_730-l9_735),9.9999997e-06);
l9_734*=(l9_736+((1.0-float(l9_733))*(1.0-l9_736)));
l9_730=l9_735;
l9_698.y=l9_730;
l9_708=l9_734;
}
float2 l9_737=l9_698;
bool l9_738=l9_699;
float3x3 l9_739=l9_700;
if (l9_738)
{
l9_737=float2((l9_739*float3(l9_737,1.0)).xy);
}
float2 l9_740=l9_737;
l9_698=l9_740;
float l9_741=l9_698.x;
int l9_742=l9_701.x;
bool l9_743=l9_707;
float l9_744=l9_708;
if ((l9_742==0)||(l9_742==3))
{
float l9_745=l9_741;
float l9_746=0.0;
float l9_747=1.0;
bool l9_748=l9_743;
float l9_749=l9_744;
float l9_750=fast::clamp(l9_745,l9_746,l9_747);
float l9_751=step(abs(l9_745-l9_750),9.9999997e-06);
l9_749*=(l9_751+((1.0-float(l9_748))*(1.0-l9_751)));
l9_745=l9_750;
l9_741=l9_745;
l9_744=l9_749;
}
l9_698.x=l9_741;
l9_708=l9_744;
float l9_752=l9_698.y;
int l9_753=l9_701.y;
bool l9_754=l9_707;
float l9_755=l9_708;
if ((l9_753==0)||(l9_753==3))
{
float l9_756=l9_752;
float l9_757=0.0;
float l9_758=1.0;
bool l9_759=l9_754;
float l9_760=l9_755;
float l9_761=fast::clamp(l9_756,l9_757,l9_758);
float l9_762=step(abs(l9_756-l9_761),9.9999997e-06);
l9_760*=(l9_762+((1.0-float(l9_759))*(1.0-l9_762)));
l9_756=l9_761;
l9_752=l9_756;
l9_755=l9_760;
}
l9_698.y=l9_752;
l9_708=l9_755;
float2 l9_763=l9_698;
int l9_764=l9_696;
int l9_765=l9_697;
float l9_766=l9_706;
float2 l9_767=l9_763;
int l9_768=l9_764;
int l9_769=l9_765;
float3 l9_770=float3(0.0);
if (l9_768==0)
{
l9_770=float3(l9_767,0.0);
}
else
{
if (l9_768==1)
{
l9_770=float3(l9_767.x,(l9_767.y*0.5)+(0.5-(float(l9_769)*0.5)),0.0);
}
else
{
l9_770=float3(l9_767,float(l9_769));
}
}
float3 l9_771=l9_770;
float3 l9_772=l9_771;
float4 l9_773=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_772.xy,bias(l9_766));
float4 l9_774=l9_773;
if (l9_704)
{
l9_774=mix(l9_705,l9_774,float4(l9_708));
}
float4 l9_775=l9_774;
l9_689=l9_775;
float4 l9_776=l9_689;
float4 l9_777=l9_776;
float2 l9_778=l9_504+float2(l9_501.x,l9_501.y);
float4 l9_779=float4(0.0);
int l9_780;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_781=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_781=0;
}
else
{
l9_781=in.varStereoViewID;
}
int l9_782=l9_781;
l9_780=1-l9_782;
}
else
{
int l9_783=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_783=0;
}
else
{
l9_783=in.varStereoViewID;
}
int l9_784=l9_783;
l9_780=l9_784;
}
int l9_785=l9_780;
int l9_786=flowRelativeLayout_tmp;
int l9_787=l9_785;
float2 l9_788=l9_778;
bool l9_789=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_790=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_791=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_792=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_793=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_794=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_795=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_796=0.0;
bool l9_797=l9_794&&(!l9_792);
float l9_798=1.0;
float l9_799=l9_788.x;
int l9_800=l9_791.x;
if (l9_800==1)
{
l9_799=fract(l9_799);
}
else
{
if (l9_800==2)
{
float l9_801=fract(l9_799);
float l9_802=l9_799-l9_801;
float l9_803=step(0.25,fract(l9_802*0.5));
l9_799=mix(l9_801,1.0-l9_801,fast::clamp(l9_803,0.0,1.0));
}
}
l9_788.x=l9_799;
float l9_804=l9_788.y;
int l9_805=l9_791.y;
if (l9_805==1)
{
l9_804=fract(l9_804);
}
else
{
if (l9_805==2)
{
float l9_806=fract(l9_804);
float l9_807=l9_804-l9_806;
float l9_808=step(0.25,fract(l9_807*0.5));
l9_804=mix(l9_806,1.0-l9_806,fast::clamp(l9_808,0.0,1.0));
}
}
l9_788.y=l9_804;
if (l9_792)
{
bool l9_809=l9_794;
bool l9_810;
if (l9_809)
{
l9_810=l9_791.x==3;
}
else
{
l9_810=l9_809;
}
float l9_811=l9_788.x;
float l9_812=l9_793.x;
float l9_813=l9_793.z;
bool l9_814=l9_810;
float l9_815=l9_798;
float l9_816=fast::clamp(l9_811,l9_812,l9_813);
float l9_817=step(abs(l9_811-l9_816),9.9999997e-06);
l9_815*=(l9_817+((1.0-float(l9_814))*(1.0-l9_817)));
l9_811=l9_816;
l9_788.x=l9_811;
l9_798=l9_815;
bool l9_818=l9_794;
bool l9_819;
if (l9_818)
{
l9_819=l9_791.y==3;
}
else
{
l9_819=l9_818;
}
float l9_820=l9_788.y;
float l9_821=l9_793.y;
float l9_822=l9_793.w;
bool l9_823=l9_819;
float l9_824=l9_798;
float l9_825=fast::clamp(l9_820,l9_821,l9_822);
float l9_826=step(abs(l9_820-l9_825),9.9999997e-06);
l9_824*=(l9_826+((1.0-float(l9_823))*(1.0-l9_826)));
l9_820=l9_825;
l9_788.y=l9_820;
l9_798=l9_824;
}
float2 l9_827=l9_788;
bool l9_828=l9_789;
float3x3 l9_829=l9_790;
if (l9_828)
{
l9_827=float2((l9_829*float3(l9_827,1.0)).xy);
}
float2 l9_830=l9_827;
l9_788=l9_830;
float l9_831=l9_788.x;
int l9_832=l9_791.x;
bool l9_833=l9_797;
float l9_834=l9_798;
if ((l9_832==0)||(l9_832==3))
{
float l9_835=l9_831;
float l9_836=0.0;
float l9_837=1.0;
bool l9_838=l9_833;
float l9_839=l9_834;
float l9_840=fast::clamp(l9_835,l9_836,l9_837);
float l9_841=step(abs(l9_835-l9_840),9.9999997e-06);
l9_839*=(l9_841+((1.0-float(l9_838))*(1.0-l9_841)));
l9_835=l9_840;
l9_831=l9_835;
l9_834=l9_839;
}
l9_788.x=l9_831;
l9_798=l9_834;
float l9_842=l9_788.y;
int l9_843=l9_791.y;
bool l9_844=l9_797;
float l9_845=l9_798;
if ((l9_843==0)||(l9_843==3))
{
float l9_846=l9_842;
float l9_847=0.0;
float l9_848=1.0;
bool l9_849=l9_844;
float l9_850=l9_845;
float l9_851=fast::clamp(l9_846,l9_847,l9_848);
float l9_852=step(abs(l9_846-l9_851),9.9999997e-06);
l9_850*=(l9_852+((1.0-float(l9_849))*(1.0-l9_852)));
l9_846=l9_851;
l9_842=l9_846;
l9_845=l9_850;
}
l9_788.y=l9_842;
l9_798=l9_845;
float2 l9_853=l9_788;
int l9_854=l9_786;
int l9_855=l9_787;
float l9_856=l9_796;
float2 l9_857=l9_853;
int l9_858=l9_854;
int l9_859=l9_855;
float3 l9_860=float3(0.0);
if (l9_858==0)
{
l9_860=float3(l9_857,0.0);
}
else
{
if (l9_858==1)
{
l9_860=float3(l9_857.x,(l9_857.y*0.5)+(0.5-(float(l9_859)*0.5)),0.0);
}
else
{
l9_860=float3(l9_857,float(l9_859));
}
}
float3 l9_861=l9_860;
float3 l9_862=l9_861;
float4 l9_863=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_862.xy,bias(l9_856));
float4 l9_864=l9_863;
if (l9_794)
{
l9_864=mix(l9_795,l9_864,float4(l9_798));
}
float4 l9_865=l9_864;
l9_779=l9_865;
float4 l9_866=l9_779;
float4 l9_867=l9_866;
float4 l9_868=mix(l9_597,l9_687,float4(l9_505.x));
float4 l9_869=mix(l9_777,l9_867,float4(l9_505.x));
float4 l9_870=mix(l9_868,l9_869,float4(l9_505.y));
float2 l9_871=l9_870.xy;
float2 l9_872=l9_118;
float2 l9_873=float2(0.0);
l9_873=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_874=l9_873;
float2 l9_875=float2(1.0)/l9_874;
float2 l9_876=float2(0.0);
l9_876=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_877=l9_876;
float2 l9_878=(l9_872*l9_877)+float2(0.5);
float2 l9_879=fract(l9_878);
float2 l9_880=float2(0.0);
l9_880=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_881=l9_880;
l9_878=(floor(l9_878)/l9_881)-(l9_875/float2(2.0));
float2 l9_882=l9_878;
float4 l9_883=float4(0.0);
int l9_884;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_885=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_885=0;
}
else
{
l9_885=in.varStereoViewID;
}
int l9_886=l9_885;
l9_884=1-l9_886;
}
else
{
int l9_887=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_887=0;
}
else
{
l9_887=in.varStereoViewID;
}
int l9_888=l9_887;
l9_884=l9_888;
}
int l9_889=l9_884;
int l9_890=flowRelativeLayout_tmp;
int l9_891=l9_889;
float2 l9_892=l9_882;
bool l9_893=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_894=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_895=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_896=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_897=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_898=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_899=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_900=0.0;
bool l9_901=l9_898&&(!l9_896);
float l9_902=1.0;
float l9_903=l9_892.x;
int l9_904=l9_895.x;
if (l9_904==1)
{
l9_903=fract(l9_903);
}
else
{
if (l9_904==2)
{
float l9_905=fract(l9_903);
float l9_906=l9_903-l9_905;
float l9_907=step(0.25,fract(l9_906*0.5));
l9_903=mix(l9_905,1.0-l9_905,fast::clamp(l9_907,0.0,1.0));
}
}
l9_892.x=l9_903;
float l9_908=l9_892.y;
int l9_909=l9_895.y;
if (l9_909==1)
{
l9_908=fract(l9_908);
}
else
{
if (l9_909==2)
{
float l9_910=fract(l9_908);
float l9_911=l9_908-l9_910;
float l9_912=step(0.25,fract(l9_911*0.5));
l9_908=mix(l9_910,1.0-l9_910,fast::clamp(l9_912,0.0,1.0));
}
}
l9_892.y=l9_908;
if (l9_896)
{
bool l9_913=l9_898;
bool l9_914;
if (l9_913)
{
l9_914=l9_895.x==3;
}
else
{
l9_914=l9_913;
}
float l9_915=l9_892.x;
float l9_916=l9_897.x;
float l9_917=l9_897.z;
bool l9_918=l9_914;
float l9_919=l9_902;
float l9_920=fast::clamp(l9_915,l9_916,l9_917);
float l9_921=step(abs(l9_915-l9_920),9.9999997e-06);
l9_919*=(l9_921+((1.0-float(l9_918))*(1.0-l9_921)));
l9_915=l9_920;
l9_892.x=l9_915;
l9_902=l9_919;
bool l9_922=l9_898;
bool l9_923;
if (l9_922)
{
l9_923=l9_895.y==3;
}
else
{
l9_923=l9_922;
}
float l9_924=l9_892.y;
float l9_925=l9_897.y;
float l9_926=l9_897.w;
bool l9_927=l9_923;
float l9_928=l9_902;
float l9_929=fast::clamp(l9_924,l9_925,l9_926);
float l9_930=step(abs(l9_924-l9_929),9.9999997e-06);
l9_928*=(l9_930+((1.0-float(l9_927))*(1.0-l9_930)));
l9_924=l9_929;
l9_892.y=l9_924;
l9_902=l9_928;
}
float2 l9_931=l9_892;
bool l9_932=l9_893;
float3x3 l9_933=l9_894;
if (l9_932)
{
l9_931=float2((l9_933*float3(l9_931,1.0)).xy);
}
float2 l9_934=l9_931;
l9_892=l9_934;
float l9_935=l9_892.x;
int l9_936=l9_895.x;
bool l9_937=l9_901;
float l9_938=l9_902;
if ((l9_936==0)||(l9_936==3))
{
float l9_939=l9_935;
float l9_940=0.0;
float l9_941=1.0;
bool l9_942=l9_937;
float l9_943=l9_938;
float l9_944=fast::clamp(l9_939,l9_940,l9_941);
float l9_945=step(abs(l9_939-l9_944),9.9999997e-06);
l9_943*=(l9_945+((1.0-float(l9_942))*(1.0-l9_945)));
l9_939=l9_944;
l9_935=l9_939;
l9_938=l9_943;
}
l9_892.x=l9_935;
l9_902=l9_938;
float l9_946=l9_892.y;
int l9_947=l9_895.y;
bool l9_948=l9_901;
float l9_949=l9_902;
if ((l9_947==0)||(l9_947==3))
{
float l9_950=l9_946;
float l9_951=0.0;
float l9_952=1.0;
bool l9_953=l9_948;
float l9_954=l9_949;
float l9_955=fast::clamp(l9_950,l9_951,l9_952);
float l9_956=step(abs(l9_950-l9_955),9.9999997e-06);
l9_954*=(l9_956+((1.0-float(l9_953))*(1.0-l9_956)));
l9_950=l9_955;
l9_946=l9_950;
l9_949=l9_954;
}
l9_892.y=l9_946;
l9_902=l9_949;
float2 l9_957=l9_892;
int l9_958=l9_890;
int l9_959=l9_891;
float l9_960=l9_900;
float2 l9_961=l9_957;
int l9_962=l9_958;
int l9_963=l9_959;
float3 l9_964=float3(0.0);
if (l9_962==0)
{
l9_964=float3(l9_961,0.0);
}
else
{
if (l9_962==1)
{
l9_964=float3(l9_961.x,(l9_961.y*0.5)+(0.5-(float(l9_963)*0.5)),0.0);
}
else
{
l9_964=float3(l9_961,float(l9_963));
}
}
float3 l9_965=l9_964;
float3 l9_966=l9_965;
float4 l9_967=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_966.xy,bias(l9_960));
float4 l9_968=l9_967;
if (l9_898)
{
l9_968=mix(l9_899,l9_968,float4(l9_902));
}
float4 l9_969=l9_968;
l9_883=l9_969;
float4 l9_970=l9_883;
float4 l9_971=l9_970;
float2 l9_972=l9_878+float2(l9_875.x,0.0);
float4 l9_973=float4(0.0);
int l9_974;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_975=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_975=0;
}
else
{
l9_975=in.varStereoViewID;
}
int l9_976=l9_975;
l9_974=1-l9_976;
}
else
{
int l9_977=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_977=0;
}
else
{
l9_977=in.varStereoViewID;
}
int l9_978=l9_977;
l9_974=l9_978;
}
int l9_979=l9_974;
int l9_980=flowRelativeLayout_tmp;
int l9_981=l9_979;
float2 l9_982=l9_972;
bool l9_983=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_984=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_985=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_986=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_987=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_988=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_989=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_990=0.0;
bool l9_991=l9_988&&(!l9_986);
float l9_992=1.0;
float l9_993=l9_982.x;
int l9_994=l9_985.x;
if (l9_994==1)
{
l9_993=fract(l9_993);
}
else
{
if (l9_994==2)
{
float l9_995=fract(l9_993);
float l9_996=l9_993-l9_995;
float l9_997=step(0.25,fract(l9_996*0.5));
l9_993=mix(l9_995,1.0-l9_995,fast::clamp(l9_997,0.0,1.0));
}
}
l9_982.x=l9_993;
float l9_998=l9_982.y;
int l9_999=l9_985.y;
if (l9_999==1)
{
l9_998=fract(l9_998);
}
else
{
if (l9_999==2)
{
float l9_1000=fract(l9_998);
float l9_1001=l9_998-l9_1000;
float l9_1002=step(0.25,fract(l9_1001*0.5));
l9_998=mix(l9_1000,1.0-l9_1000,fast::clamp(l9_1002,0.0,1.0));
}
}
l9_982.y=l9_998;
if (l9_986)
{
bool l9_1003=l9_988;
bool l9_1004;
if (l9_1003)
{
l9_1004=l9_985.x==3;
}
else
{
l9_1004=l9_1003;
}
float l9_1005=l9_982.x;
float l9_1006=l9_987.x;
float l9_1007=l9_987.z;
bool l9_1008=l9_1004;
float l9_1009=l9_992;
float l9_1010=fast::clamp(l9_1005,l9_1006,l9_1007);
float l9_1011=step(abs(l9_1005-l9_1010),9.9999997e-06);
l9_1009*=(l9_1011+((1.0-float(l9_1008))*(1.0-l9_1011)));
l9_1005=l9_1010;
l9_982.x=l9_1005;
l9_992=l9_1009;
bool l9_1012=l9_988;
bool l9_1013;
if (l9_1012)
{
l9_1013=l9_985.y==3;
}
else
{
l9_1013=l9_1012;
}
float l9_1014=l9_982.y;
float l9_1015=l9_987.y;
float l9_1016=l9_987.w;
bool l9_1017=l9_1013;
float l9_1018=l9_992;
float l9_1019=fast::clamp(l9_1014,l9_1015,l9_1016);
float l9_1020=step(abs(l9_1014-l9_1019),9.9999997e-06);
l9_1018*=(l9_1020+((1.0-float(l9_1017))*(1.0-l9_1020)));
l9_1014=l9_1019;
l9_982.y=l9_1014;
l9_992=l9_1018;
}
float2 l9_1021=l9_982;
bool l9_1022=l9_983;
float3x3 l9_1023=l9_984;
if (l9_1022)
{
l9_1021=float2((l9_1023*float3(l9_1021,1.0)).xy);
}
float2 l9_1024=l9_1021;
l9_982=l9_1024;
float l9_1025=l9_982.x;
int l9_1026=l9_985.x;
bool l9_1027=l9_991;
float l9_1028=l9_992;
if ((l9_1026==0)||(l9_1026==3))
{
float l9_1029=l9_1025;
float l9_1030=0.0;
float l9_1031=1.0;
bool l9_1032=l9_1027;
float l9_1033=l9_1028;
float l9_1034=fast::clamp(l9_1029,l9_1030,l9_1031);
float l9_1035=step(abs(l9_1029-l9_1034),9.9999997e-06);
l9_1033*=(l9_1035+((1.0-float(l9_1032))*(1.0-l9_1035)));
l9_1029=l9_1034;
l9_1025=l9_1029;
l9_1028=l9_1033;
}
l9_982.x=l9_1025;
l9_992=l9_1028;
float l9_1036=l9_982.y;
int l9_1037=l9_985.y;
bool l9_1038=l9_991;
float l9_1039=l9_992;
if ((l9_1037==0)||(l9_1037==3))
{
float l9_1040=l9_1036;
float l9_1041=0.0;
float l9_1042=1.0;
bool l9_1043=l9_1038;
float l9_1044=l9_1039;
float l9_1045=fast::clamp(l9_1040,l9_1041,l9_1042);
float l9_1046=step(abs(l9_1040-l9_1045),9.9999997e-06);
l9_1044*=(l9_1046+((1.0-float(l9_1043))*(1.0-l9_1046)));
l9_1040=l9_1045;
l9_1036=l9_1040;
l9_1039=l9_1044;
}
l9_982.y=l9_1036;
l9_992=l9_1039;
float2 l9_1047=l9_982;
int l9_1048=l9_980;
int l9_1049=l9_981;
float l9_1050=l9_990;
float2 l9_1051=l9_1047;
int l9_1052=l9_1048;
int l9_1053=l9_1049;
float3 l9_1054=float3(0.0);
if (l9_1052==0)
{
l9_1054=float3(l9_1051,0.0);
}
else
{
if (l9_1052==1)
{
l9_1054=float3(l9_1051.x,(l9_1051.y*0.5)+(0.5-(float(l9_1053)*0.5)),0.0);
}
else
{
l9_1054=float3(l9_1051,float(l9_1053));
}
}
float3 l9_1055=l9_1054;
float3 l9_1056=l9_1055;
float4 l9_1057=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1056.xy,bias(l9_1050));
float4 l9_1058=l9_1057;
if (l9_988)
{
l9_1058=mix(l9_989,l9_1058,float4(l9_992));
}
float4 l9_1059=l9_1058;
l9_973=l9_1059;
float4 l9_1060=l9_973;
float4 l9_1061=l9_1060;
float2 l9_1062=l9_878+float2(0.0,l9_875.y);
float4 l9_1063=float4(0.0);
int l9_1064;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1065=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1065=0;
}
else
{
l9_1065=in.varStereoViewID;
}
int l9_1066=l9_1065;
l9_1064=1-l9_1066;
}
else
{
int l9_1067=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1067=0;
}
else
{
l9_1067=in.varStereoViewID;
}
int l9_1068=l9_1067;
l9_1064=l9_1068;
}
int l9_1069=l9_1064;
int l9_1070=flowRelativeLayout_tmp;
int l9_1071=l9_1069;
float2 l9_1072=l9_1062;
bool l9_1073=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1074=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1075=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1076=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1077=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1078=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1079=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1080=0.0;
bool l9_1081=l9_1078&&(!l9_1076);
float l9_1082=1.0;
float l9_1083=l9_1072.x;
int l9_1084=l9_1075.x;
if (l9_1084==1)
{
l9_1083=fract(l9_1083);
}
else
{
if (l9_1084==2)
{
float l9_1085=fract(l9_1083);
float l9_1086=l9_1083-l9_1085;
float l9_1087=step(0.25,fract(l9_1086*0.5));
l9_1083=mix(l9_1085,1.0-l9_1085,fast::clamp(l9_1087,0.0,1.0));
}
}
l9_1072.x=l9_1083;
float l9_1088=l9_1072.y;
int l9_1089=l9_1075.y;
if (l9_1089==1)
{
l9_1088=fract(l9_1088);
}
else
{
if (l9_1089==2)
{
float l9_1090=fract(l9_1088);
float l9_1091=l9_1088-l9_1090;
float l9_1092=step(0.25,fract(l9_1091*0.5));
l9_1088=mix(l9_1090,1.0-l9_1090,fast::clamp(l9_1092,0.0,1.0));
}
}
l9_1072.y=l9_1088;
if (l9_1076)
{
bool l9_1093=l9_1078;
bool l9_1094;
if (l9_1093)
{
l9_1094=l9_1075.x==3;
}
else
{
l9_1094=l9_1093;
}
float l9_1095=l9_1072.x;
float l9_1096=l9_1077.x;
float l9_1097=l9_1077.z;
bool l9_1098=l9_1094;
float l9_1099=l9_1082;
float l9_1100=fast::clamp(l9_1095,l9_1096,l9_1097);
float l9_1101=step(abs(l9_1095-l9_1100),9.9999997e-06);
l9_1099*=(l9_1101+((1.0-float(l9_1098))*(1.0-l9_1101)));
l9_1095=l9_1100;
l9_1072.x=l9_1095;
l9_1082=l9_1099;
bool l9_1102=l9_1078;
bool l9_1103;
if (l9_1102)
{
l9_1103=l9_1075.y==3;
}
else
{
l9_1103=l9_1102;
}
float l9_1104=l9_1072.y;
float l9_1105=l9_1077.y;
float l9_1106=l9_1077.w;
bool l9_1107=l9_1103;
float l9_1108=l9_1082;
float l9_1109=fast::clamp(l9_1104,l9_1105,l9_1106);
float l9_1110=step(abs(l9_1104-l9_1109),9.9999997e-06);
l9_1108*=(l9_1110+((1.0-float(l9_1107))*(1.0-l9_1110)));
l9_1104=l9_1109;
l9_1072.y=l9_1104;
l9_1082=l9_1108;
}
float2 l9_1111=l9_1072;
bool l9_1112=l9_1073;
float3x3 l9_1113=l9_1074;
if (l9_1112)
{
l9_1111=float2((l9_1113*float3(l9_1111,1.0)).xy);
}
float2 l9_1114=l9_1111;
l9_1072=l9_1114;
float l9_1115=l9_1072.x;
int l9_1116=l9_1075.x;
bool l9_1117=l9_1081;
float l9_1118=l9_1082;
if ((l9_1116==0)||(l9_1116==3))
{
float l9_1119=l9_1115;
float l9_1120=0.0;
float l9_1121=1.0;
bool l9_1122=l9_1117;
float l9_1123=l9_1118;
float l9_1124=fast::clamp(l9_1119,l9_1120,l9_1121);
float l9_1125=step(abs(l9_1119-l9_1124),9.9999997e-06);
l9_1123*=(l9_1125+((1.0-float(l9_1122))*(1.0-l9_1125)));
l9_1119=l9_1124;
l9_1115=l9_1119;
l9_1118=l9_1123;
}
l9_1072.x=l9_1115;
l9_1082=l9_1118;
float l9_1126=l9_1072.y;
int l9_1127=l9_1075.y;
bool l9_1128=l9_1081;
float l9_1129=l9_1082;
if ((l9_1127==0)||(l9_1127==3))
{
float l9_1130=l9_1126;
float l9_1131=0.0;
float l9_1132=1.0;
bool l9_1133=l9_1128;
float l9_1134=l9_1129;
float l9_1135=fast::clamp(l9_1130,l9_1131,l9_1132);
float l9_1136=step(abs(l9_1130-l9_1135),9.9999997e-06);
l9_1134*=(l9_1136+((1.0-float(l9_1133))*(1.0-l9_1136)));
l9_1130=l9_1135;
l9_1126=l9_1130;
l9_1129=l9_1134;
}
l9_1072.y=l9_1126;
l9_1082=l9_1129;
float2 l9_1137=l9_1072;
int l9_1138=l9_1070;
int l9_1139=l9_1071;
float l9_1140=l9_1080;
float2 l9_1141=l9_1137;
int l9_1142=l9_1138;
int l9_1143=l9_1139;
float3 l9_1144=float3(0.0);
if (l9_1142==0)
{
l9_1144=float3(l9_1141,0.0);
}
else
{
if (l9_1142==1)
{
l9_1144=float3(l9_1141.x,(l9_1141.y*0.5)+(0.5-(float(l9_1143)*0.5)),0.0);
}
else
{
l9_1144=float3(l9_1141,float(l9_1143));
}
}
float3 l9_1145=l9_1144;
float3 l9_1146=l9_1145;
float4 l9_1147=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1146.xy,bias(l9_1140));
float4 l9_1148=l9_1147;
if (l9_1078)
{
l9_1148=mix(l9_1079,l9_1148,float4(l9_1082));
}
float4 l9_1149=l9_1148;
l9_1063=l9_1149;
float4 l9_1150=l9_1063;
float4 l9_1151=l9_1150;
float2 l9_1152=l9_878+float2(l9_875.x,l9_875.y);
float4 l9_1153=float4(0.0);
int l9_1154;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1155=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1155=0;
}
else
{
l9_1155=in.varStereoViewID;
}
int l9_1156=l9_1155;
l9_1154=1-l9_1156;
}
else
{
int l9_1157=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1157=0;
}
else
{
l9_1157=in.varStereoViewID;
}
int l9_1158=l9_1157;
l9_1154=l9_1158;
}
int l9_1159=l9_1154;
int l9_1160=flowRelativeLayout_tmp;
int l9_1161=l9_1159;
float2 l9_1162=l9_1152;
bool l9_1163=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1164=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1165=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1166=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1167=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1168=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1169=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1170=0.0;
bool l9_1171=l9_1168&&(!l9_1166);
float l9_1172=1.0;
float l9_1173=l9_1162.x;
int l9_1174=l9_1165.x;
if (l9_1174==1)
{
l9_1173=fract(l9_1173);
}
else
{
if (l9_1174==2)
{
float l9_1175=fract(l9_1173);
float l9_1176=l9_1173-l9_1175;
float l9_1177=step(0.25,fract(l9_1176*0.5));
l9_1173=mix(l9_1175,1.0-l9_1175,fast::clamp(l9_1177,0.0,1.0));
}
}
l9_1162.x=l9_1173;
float l9_1178=l9_1162.y;
int l9_1179=l9_1165.y;
if (l9_1179==1)
{
l9_1178=fract(l9_1178);
}
else
{
if (l9_1179==2)
{
float l9_1180=fract(l9_1178);
float l9_1181=l9_1178-l9_1180;
float l9_1182=step(0.25,fract(l9_1181*0.5));
l9_1178=mix(l9_1180,1.0-l9_1180,fast::clamp(l9_1182,0.0,1.0));
}
}
l9_1162.y=l9_1178;
if (l9_1166)
{
bool l9_1183=l9_1168;
bool l9_1184;
if (l9_1183)
{
l9_1184=l9_1165.x==3;
}
else
{
l9_1184=l9_1183;
}
float l9_1185=l9_1162.x;
float l9_1186=l9_1167.x;
float l9_1187=l9_1167.z;
bool l9_1188=l9_1184;
float l9_1189=l9_1172;
float l9_1190=fast::clamp(l9_1185,l9_1186,l9_1187);
float l9_1191=step(abs(l9_1185-l9_1190),9.9999997e-06);
l9_1189*=(l9_1191+((1.0-float(l9_1188))*(1.0-l9_1191)));
l9_1185=l9_1190;
l9_1162.x=l9_1185;
l9_1172=l9_1189;
bool l9_1192=l9_1168;
bool l9_1193;
if (l9_1192)
{
l9_1193=l9_1165.y==3;
}
else
{
l9_1193=l9_1192;
}
float l9_1194=l9_1162.y;
float l9_1195=l9_1167.y;
float l9_1196=l9_1167.w;
bool l9_1197=l9_1193;
float l9_1198=l9_1172;
float l9_1199=fast::clamp(l9_1194,l9_1195,l9_1196);
float l9_1200=step(abs(l9_1194-l9_1199),9.9999997e-06);
l9_1198*=(l9_1200+((1.0-float(l9_1197))*(1.0-l9_1200)));
l9_1194=l9_1199;
l9_1162.y=l9_1194;
l9_1172=l9_1198;
}
float2 l9_1201=l9_1162;
bool l9_1202=l9_1163;
float3x3 l9_1203=l9_1164;
if (l9_1202)
{
l9_1201=float2((l9_1203*float3(l9_1201,1.0)).xy);
}
float2 l9_1204=l9_1201;
l9_1162=l9_1204;
float l9_1205=l9_1162.x;
int l9_1206=l9_1165.x;
bool l9_1207=l9_1171;
float l9_1208=l9_1172;
if ((l9_1206==0)||(l9_1206==3))
{
float l9_1209=l9_1205;
float l9_1210=0.0;
float l9_1211=1.0;
bool l9_1212=l9_1207;
float l9_1213=l9_1208;
float l9_1214=fast::clamp(l9_1209,l9_1210,l9_1211);
float l9_1215=step(abs(l9_1209-l9_1214),9.9999997e-06);
l9_1213*=(l9_1215+((1.0-float(l9_1212))*(1.0-l9_1215)));
l9_1209=l9_1214;
l9_1205=l9_1209;
l9_1208=l9_1213;
}
l9_1162.x=l9_1205;
l9_1172=l9_1208;
float l9_1216=l9_1162.y;
int l9_1217=l9_1165.y;
bool l9_1218=l9_1171;
float l9_1219=l9_1172;
if ((l9_1217==0)||(l9_1217==3))
{
float l9_1220=l9_1216;
float l9_1221=0.0;
float l9_1222=1.0;
bool l9_1223=l9_1218;
float l9_1224=l9_1219;
float l9_1225=fast::clamp(l9_1220,l9_1221,l9_1222);
float l9_1226=step(abs(l9_1220-l9_1225),9.9999997e-06);
l9_1224*=(l9_1226+((1.0-float(l9_1223))*(1.0-l9_1226)));
l9_1220=l9_1225;
l9_1216=l9_1220;
l9_1219=l9_1224;
}
l9_1162.y=l9_1216;
l9_1172=l9_1219;
float2 l9_1227=l9_1162;
int l9_1228=l9_1160;
int l9_1229=l9_1161;
float l9_1230=l9_1170;
float2 l9_1231=l9_1227;
int l9_1232=l9_1228;
int l9_1233=l9_1229;
float3 l9_1234=float3(0.0);
if (l9_1232==0)
{
l9_1234=float3(l9_1231,0.0);
}
else
{
if (l9_1232==1)
{
l9_1234=float3(l9_1231.x,(l9_1231.y*0.5)+(0.5-(float(l9_1233)*0.5)),0.0);
}
else
{
l9_1234=float3(l9_1231,float(l9_1233));
}
}
float3 l9_1235=l9_1234;
float3 l9_1236=l9_1235;
float4 l9_1237=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1236.xy,bias(l9_1230));
float4 l9_1238=l9_1237;
if (l9_1168)
{
l9_1238=mix(l9_1169,l9_1238,float4(l9_1172));
}
float4 l9_1239=l9_1238;
l9_1153=l9_1239;
float4 l9_1240=l9_1153;
float4 l9_1241=l9_1240;
float4 l9_1242=mix(l9_971,l9_1061,float4(l9_879.x));
float4 l9_1243=mix(l9_1151,l9_1241,float4(l9_879.x));
float4 l9_1244=mix(l9_1242,l9_1243,float4(l9_879.y));
float2 l9_1245=l9_1244.xy;
float2 l9_1246=l9_119;
float2 l9_1247=float2(0.0);
l9_1247=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1248=l9_1247;
float2 l9_1249=float2(1.0)/l9_1248;
float2 l9_1250=float2(0.0);
l9_1250=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1251=l9_1250;
float2 l9_1252=(l9_1246*l9_1251)+float2(0.5);
float2 l9_1253=fract(l9_1252);
float2 l9_1254=float2(0.0);
l9_1254=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1255=l9_1254;
l9_1252=(floor(l9_1252)/l9_1255)-(l9_1249/float2(2.0));
float2 l9_1256=l9_1252;
float4 l9_1257=float4(0.0);
int l9_1258;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1259=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1259=0;
}
else
{
l9_1259=in.varStereoViewID;
}
int l9_1260=l9_1259;
l9_1258=1-l9_1260;
}
else
{
int l9_1261=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1261=0;
}
else
{
l9_1261=in.varStereoViewID;
}
int l9_1262=l9_1261;
l9_1258=l9_1262;
}
int l9_1263=l9_1258;
int l9_1264=flowRelativeLayout_tmp;
int l9_1265=l9_1263;
float2 l9_1266=l9_1256;
bool l9_1267=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1268=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1269=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1270=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1271=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1272=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1273=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1274=0.0;
bool l9_1275=l9_1272&&(!l9_1270);
float l9_1276=1.0;
float l9_1277=l9_1266.x;
int l9_1278=l9_1269.x;
if (l9_1278==1)
{
l9_1277=fract(l9_1277);
}
else
{
if (l9_1278==2)
{
float l9_1279=fract(l9_1277);
float l9_1280=l9_1277-l9_1279;
float l9_1281=step(0.25,fract(l9_1280*0.5));
l9_1277=mix(l9_1279,1.0-l9_1279,fast::clamp(l9_1281,0.0,1.0));
}
}
l9_1266.x=l9_1277;
float l9_1282=l9_1266.y;
int l9_1283=l9_1269.y;
if (l9_1283==1)
{
l9_1282=fract(l9_1282);
}
else
{
if (l9_1283==2)
{
float l9_1284=fract(l9_1282);
float l9_1285=l9_1282-l9_1284;
float l9_1286=step(0.25,fract(l9_1285*0.5));
l9_1282=mix(l9_1284,1.0-l9_1284,fast::clamp(l9_1286,0.0,1.0));
}
}
l9_1266.y=l9_1282;
if (l9_1270)
{
bool l9_1287=l9_1272;
bool l9_1288;
if (l9_1287)
{
l9_1288=l9_1269.x==3;
}
else
{
l9_1288=l9_1287;
}
float l9_1289=l9_1266.x;
float l9_1290=l9_1271.x;
float l9_1291=l9_1271.z;
bool l9_1292=l9_1288;
float l9_1293=l9_1276;
float l9_1294=fast::clamp(l9_1289,l9_1290,l9_1291);
float l9_1295=step(abs(l9_1289-l9_1294),9.9999997e-06);
l9_1293*=(l9_1295+((1.0-float(l9_1292))*(1.0-l9_1295)));
l9_1289=l9_1294;
l9_1266.x=l9_1289;
l9_1276=l9_1293;
bool l9_1296=l9_1272;
bool l9_1297;
if (l9_1296)
{
l9_1297=l9_1269.y==3;
}
else
{
l9_1297=l9_1296;
}
float l9_1298=l9_1266.y;
float l9_1299=l9_1271.y;
float l9_1300=l9_1271.w;
bool l9_1301=l9_1297;
float l9_1302=l9_1276;
float l9_1303=fast::clamp(l9_1298,l9_1299,l9_1300);
float l9_1304=step(abs(l9_1298-l9_1303),9.9999997e-06);
l9_1302*=(l9_1304+((1.0-float(l9_1301))*(1.0-l9_1304)));
l9_1298=l9_1303;
l9_1266.y=l9_1298;
l9_1276=l9_1302;
}
float2 l9_1305=l9_1266;
bool l9_1306=l9_1267;
float3x3 l9_1307=l9_1268;
if (l9_1306)
{
l9_1305=float2((l9_1307*float3(l9_1305,1.0)).xy);
}
float2 l9_1308=l9_1305;
l9_1266=l9_1308;
float l9_1309=l9_1266.x;
int l9_1310=l9_1269.x;
bool l9_1311=l9_1275;
float l9_1312=l9_1276;
if ((l9_1310==0)||(l9_1310==3))
{
float l9_1313=l9_1309;
float l9_1314=0.0;
float l9_1315=1.0;
bool l9_1316=l9_1311;
float l9_1317=l9_1312;
float l9_1318=fast::clamp(l9_1313,l9_1314,l9_1315);
float l9_1319=step(abs(l9_1313-l9_1318),9.9999997e-06);
l9_1317*=(l9_1319+((1.0-float(l9_1316))*(1.0-l9_1319)));
l9_1313=l9_1318;
l9_1309=l9_1313;
l9_1312=l9_1317;
}
l9_1266.x=l9_1309;
l9_1276=l9_1312;
float l9_1320=l9_1266.y;
int l9_1321=l9_1269.y;
bool l9_1322=l9_1275;
float l9_1323=l9_1276;
if ((l9_1321==0)||(l9_1321==3))
{
float l9_1324=l9_1320;
float l9_1325=0.0;
float l9_1326=1.0;
bool l9_1327=l9_1322;
float l9_1328=l9_1323;
float l9_1329=fast::clamp(l9_1324,l9_1325,l9_1326);
float l9_1330=step(abs(l9_1324-l9_1329),9.9999997e-06);
l9_1328*=(l9_1330+((1.0-float(l9_1327))*(1.0-l9_1330)));
l9_1324=l9_1329;
l9_1320=l9_1324;
l9_1323=l9_1328;
}
l9_1266.y=l9_1320;
l9_1276=l9_1323;
float2 l9_1331=l9_1266;
int l9_1332=l9_1264;
int l9_1333=l9_1265;
float l9_1334=l9_1274;
float2 l9_1335=l9_1331;
int l9_1336=l9_1332;
int l9_1337=l9_1333;
float3 l9_1338=float3(0.0);
if (l9_1336==0)
{
l9_1338=float3(l9_1335,0.0);
}
else
{
if (l9_1336==1)
{
l9_1338=float3(l9_1335.x,(l9_1335.y*0.5)+(0.5-(float(l9_1337)*0.5)),0.0);
}
else
{
l9_1338=float3(l9_1335,float(l9_1337));
}
}
float3 l9_1339=l9_1338;
float3 l9_1340=l9_1339;
float4 l9_1341=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1340.xy,bias(l9_1334));
float4 l9_1342=l9_1341;
if (l9_1272)
{
l9_1342=mix(l9_1273,l9_1342,float4(l9_1276));
}
float4 l9_1343=l9_1342;
l9_1257=l9_1343;
float4 l9_1344=l9_1257;
float4 l9_1345=l9_1344;
float2 l9_1346=l9_1252+float2(l9_1249.x,0.0);
float4 l9_1347=float4(0.0);
int l9_1348;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1349=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1349=0;
}
else
{
l9_1349=in.varStereoViewID;
}
int l9_1350=l9_1349;
l9_1348=1-l9_1350;
}
else
{
int l9_1351=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1351=0;
}
else
{
l9_1351=in.varStereoViewID;
}
int l9_1352=l9_1351;
l9_1348=l9_1352;
}
int l9_1353=l9_1348;
int l9_1354=flowRelativeLayout_tmp;
int l9_1355=l9_1353;
float2 l9_1356=l9_1346;
bool l9_1357=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1358=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1359=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1360=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1361=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1362=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1363=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1364=0.0;
bool l9_1365=l9_1362&&(!l9_1360);
float l9_1366=1.0;
float l9_1367=l9_1356.x;
int l9_1368=l9_1359.x;
if (l9_1368==1)
{
l9_1367=fract(l9_1367);
}
else
{
if (l9_1368==2)
{
float l9_1369=fract(l9_1367);
float l9_1370=l9_1367-l9_1369;
float l9_1371=step(0.25,fract(l9_1370*0.5));
l9_1367=mix(l9_1369,1.0-l9_1369,fast::clamp(l9_1371,0.0,1.0));
}
}
l9_1356.x=l9_1367;
float l9_1372=l9_1356.y;
int l9_1373=l9_1359.y;
if (l9_1373==1)
{
l9_1372=fract(l9_1372);
}
else
{
if (l9_1373==2)
{
float l9_1374=fract(l9_1372);
float l9_1375=l9_1372-l9_1374;
float l9_1376=step(0.25,fract(l9_1375*0.5));
l9_1372=mix(l9_1374,1.0-l9_1374,fast::clamp(l9_1376,0.0,1.0));
}
}
l9_1356.y=l9_1372;
if (l9_1360)
{
bool l9_1377=l9_1362;
bool l9_1378;
if (l9_1377)
{
l9_1378=l9_1359.x==3;
}
else
{
l9_1378=l9_1377;
}
float l9_1379=l9_1356.x;
float l9_1380=l9_1361.x;
float l9_1381=l9_1361.z;
bool l9_1382=l9_1378;
float l9_1383=l9_1366;
float l9_1384=fast::clamp(l9_1379,l9_1380,l9_1381);
float l9_1385=step(abs(l9_1379-l9_1384),9.9999997e-06);
l9_1383*=(l9_1385+((1.0-float(l9_1382))*(1.0-l9_1385)));
l9_1379=l9_1384;
l9_1356.x=l9_1379;
l9_1366=l9_1383;
bool l9_1386=l9_1362;
bool l9_1387;
if (l9_1386)
{
l9_1387=l9_1359.y==3;
}
else
{
l9_1387=l9_1386;
}
float l9_1388=l9_1356.y;
float l9_1389=l9_1361.y;
float l9_1390=l9_1361.w;
bool l9_1391=l9_1387;
float l9_1392=l9_1366;
float l9_1393=fast::clamp(l9_1388,l9_1389,l9_1390);
float l9_1394=step(abs(l9_1388-l9_1393),9.9999997e-06);
l9_1392*=(l9_1394+((1.0-float(l9_1391))*(1.0-l9_1394)));
l9_1388=l9_1393;
l9_1356.y=l9_1388;
l9_1366=l9_1392;
}
float2 l9_1395=l9_1356;
bool l9_1396=l9_1357;
float3x3 l9_1397=l9_1358;
if (l9_1396)
{
l9_1395=float2((l9_1397*float3(l9_1395,1.0)).xy);
}
float2 l9_1398=l9_1395;
l9_1356=l9_1398;
float l9_1399=l9_1356.x;
int l9_1400=l9_1359.x;
bool l9_1401=l9_1365;
float l9_1402=l9_1366;
if ((l9_1400==0)||(l9_1400==3))
{
float l9_1403=l9_1399;
float l9_1404=0.0;
float l9_1405=1.0;
bool l9_1406=l9_1401;
float l9_1407=l9_1402;
float l9_1408=fast::clamp(l9_1403,l9_1404,l9_1405);
float l9_1409=step(abs(l9_1403-l9_1408),9.9999997e-06);
l9_1407*=(l9_1409+((1.0-float(l9_1406))*(1.0-l9_1409)));
l9_1403=l9_1408;
l9_1399=l9_1403;
l9_1402=l9_1407;
}
l9_1356.x=l9_1399;
l9_1366=l9_1402;
float l9_1410=l9_1356.y;
int l9_1411=l9_1359.y;
bool l9_1412=l9_1365;
float l9_1413=l9_1366;
if ((l9_1411==0)||(l9_1411==3))
{
float l9_1414=l9_1410;
float l9_1415=0.0;
float l9_1416=1.0;
bool l9_1417=l9_1412;
float l9_1418=l9_1413;
float l9_1419=fast::clamp(l9_1414,l9_1415,l9_1416);
float l9_1420=step(abs(l9_1414-l9_1419),9.9999997e-06);
l9_1418*=(l9_1420+((1.0-float(l9_1417))*(1.0-l9_1420)));
l9_1414=l9_1419;
l9_1410=l9_1414;
l9_1413=l9_1418;
}
l9_1356.y=l9_1410;
l9_1366=l9_1413;
float2 l9_1421=l9_1356;
int l9_1422=l9_1354;
int l9_1423=l9_1355;
float l9_1424=l9_1364;
float2 l9_1425=l9_1421;
int l9_1426=l9_1422;
int l9_1427=l9_1423;
float3 l9_1428=float3(0.0);
if (l9_1426==0)
{
l9_1428=float3(l9_1425,0.0);
}
else
{
if (l9_1426==1)
{
l9_1428=float3(l9_1425.x,(l9_1425.y*0.5)+(0.5-(float(l9_1427)*0.5)),0.0);
}
else
{
l9_1428=float3(l9_1425,float(l9_1427));
}
}
float3 l9_1429=l9_1428;
float3 l9_1430=l9_1429;
float4 l9_1431=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1430.xy,bias(l9_1424));
float4 l9_1432=l9_1431;
if (l9_1362)
{
l9_1432=mix(l9_1363,l9_1432,float4(l9_1366));
}
float4 l9_1433=l9_1432;
l9_1347=l9_1433;
float4 l9_1434=l9_1347;
float4 l9_1435=l9_1434;
float2 l9_1436=l9_1252+float2(0.0,l9_1249.y);
float4 l9_1437=float4(0.0);
int l9_1438;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1439=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1439=0;
}
else
{
l9_1439=in.varStereoViewID;
}
int l9_1440=l9_1439;
l9_1438=1-l9_1440;
}
else
{
int l9_1441=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1441=0;
}
else
{
l9_1441=in.varStereoViewID;
}
int l9_1442=l9_1441;
l9_1438=l9_1442;
}
int l9_1443=l9_1438;
int l9_1444=flowRelativeLayout_tmp;
int l9_1445=l9_1443;
float2 l9_1446=l9_1436;
bool l9_1447=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1448=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1449=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1450=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1451=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1452=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1453=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1454=0.0;
bool l9_1455=l9_1452&&(!l9_1450);
float l9_1456=1.0;
float l9_1457=l9_1446.x;
int l9_1458=l9_1449.x;
if (l9_1458==1)
{
l9_1457=fract(l9_1457);
}
else
{
if (l9_1458==2)
{
float l9_1459=fract(l9_1457);
float l9_1460=l9_1457-l9_1459;
float l9_1461=step(0.25,fract(l9_1460*0.5));
l9_1457=mix(l9_1459,1.0-l9_1459,fast::clamp(l9_1461,0.0,1.0));
}
}
l9_1446.x=l9_1457;
float l9_1462=l9_1446.y;
int l9_1463=l9_1449.y;
if (l9_1463==1)
{
l9_1462=fract(l9_1462);
}
else
{
if (l9_1463==2)
{
float l9_1464=fract(l9_1462);
float l9_1465=l9_1462-l9_1464;
float l9_1466=step(0.25,fract(l9_1465*0.5));
l9_1462=mix(l9_1464,1.0-l9_1464,fast::clamp(l9_1466,0.0,1.0));
}
}
l9_1446.y=l9_1462;
if (l9_1450)
{
bool l9_1467=l9_1452;
bool l9_1468;
if (l9_1467)
{
l9_1468=l9_1449.x==3;
}
else
{
l9_1468=l9_1467;
}
float l9_1469=l9_1446.x;
float l9_1470=l9_1451.x;
float l9_1471=l9_1451.z;
bool l9_1472=l9_1468;
float l9_1473=l9_1456;
float l9_1474=fast::clamp(l9_1469,l9_1470,l9_1471);
float l9_1475=step(abs(l9_1469-l9_1474),9.9999997e-06);
l9_1473*=(l9_1475+((1.0-float(l9_1472))*(1.0-l9_1475)));
l9_1469=l9_1474;
l9_1446.x=l9_1469;
l9_1456=l9_1473;
bool l9_1476=l9_1452;
bool l9_1477;
if (l9_1476)
{
l9_1477=l9_1449.y==3;
}
else
{
l9_1477=l9_1476;
}
float l9_1478=l9_1446.y;
float l9_1479=l9_1451.y;
float l9_1480=l9_1451.w;
bool l9_1481=l9_1477;
float l9_1482=l9_1456;
float l9_1483=fast::clamp(l9_1478,l9_1479,l9_1480);
float l9_1484=step(abs(l9_1478-l9_1483),9.9999997e-06);
l9_1482*=(l9_1484+((1.0-float(l9_1481))*(1.0-l9_1484)));
l9_1478=l9_1483;
l9_1446.y=l9_1478;
l9_1456=l9_1482;
}
float2 l9_1485=l9_1446;
bool l9_1486=l9_1447;
float3x3 l9_1487=l9_1448;
if (l9_1486)
{
l9_1485=float2((l9_1487*float3(l9_1485,1.0)).xy);
}
float2 l9_1488=l9_1485;
l9_1446=l9_1488;
float l9_1489=l9_1446.x;
int l9_1490=l9_1449.x;
bool l9_1491=l9_1455;
float l9_1492=l9_1456;
if ((l9_1490==0)||(l9_1490==3))
{
float l9_1493=l9_1489;
float l9_1494=0.0;
float l9_1495=1.0;
bool l9_1496=l9_1491;
float l9_1497=l9_1492;
float l9_1498=fast::clamp(l9_1493,l9_1494,l9_1495);
float l9_1499=step(abs(l9_1493-l9_1498),9.9999997e-06);
l9_1497*=(l9_1499+((1.0-float(l9_1496))*(1.0-l9_1499)));
l9_1493=l9_1498;
l9_1489=l9_1493;
l9_1492=l9_1497;
}
l9_1446.x=l9_1489;
l9_1456=l9_1492;
float l9_1500=l9_1446.y;
int l9_1501=l9_1449.y;
bool l9_1502=l9_1455;
float l9_1503=l9_1456;
if ((l9_1501==0)||(l9_1501==3))
{
float l9_1504=l9_1500;
float l9_1505=0.0;
float l9_1506=1.0;
bool l9_1507=l9_1502;
float l9_1508=l9_1503;
float l9_1509=fast::clamp(l9_1504,l9_1505,l9_1506);
float l9_1510=step(abs(l9_1504-l9_1509),9.9999997e-06);
l9_1508*=(l9_1510+((1.0-float(l9_1507))*(1.0-l9_1510)));
l9_1504=l9_1509;
l9_1500=l9_1504;
l9_1503=l9_1508;
}
l9_1446.y=l9_1500;
l9_1456=l9_1503;
float2 l9_1511=l9_1446;
int l9_1512=l9_1444;
int l9_1513=l9_1445;
float l9_1514=l9_1454;
float2 l9_1515=l9_1511;
int l9_1516=l9_1512;
int l9_1517=l9_1513;
float3 l9_1518=float3(0.0);
if (l9_1516==0)
{
l9_1518=float3(l9_1515,0.0);
}
else
{
if (l9_1516==1)
{
l9_1518=float3(l9_1515.x,(l9_1515.y*0.5)+(0.5-(float(l9_1517)*0.5)),0.0);
}
else
{
l9_1518=float3(l9_1515,float(l9_1517));
}
}
float3 l9_1519=l9_1518;
float3 l9_1520=l9_1519;
float4 l9_1521=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1520.xy,bias(l9_1514));
float4 l9_1522=l9_1521;
if (l9_1452)
{
l9_1522=mix(l9_1453,l9_1522,float4(l9_1456));
}
float4 l9_1523=l9_1522;
l9_1437=l9_1523;
float4 l9_1524=l9_1437;
float4 l9_1525=l9_1524;
float2 l9_1526=l9_1252+float2(l9_1249.x,l9_1249.y);
float4 l9_1527=float4(0.0);
int l9_1528;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1529=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1529=0;
}
else
{
l9_1529=in.varStereoViewID;
}
int l9_1530=l9_1529;
l9_1528=1-l9_1530;
}
else
{
int l9_1531=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1531=0;
}
else
{
l9_1531=in.varStereoViewID;
}
int l9_1532=l9_1531;
l9_1528=l9_1532;
}
int l9_1533=l9_1528;
int l9_1534=flowRelativeLayout_tmp;
int l9_1535=l9_1533;
float2 l9_1536=l9_1526;
bool l9_1537=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1538=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1539=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1540=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1541=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1542=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1543=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1544=0.0;
bool l9_1545=l9_1542&&(!l9_1540);
float l9_1546=1.0;
float l9_1547=l9_1536.x;
int l9_1548=l9_1539.x;
if (l9_1548==1)
{
l9_1547=fract(l9_1547);
}
else
{
if (l9_1548==2)
{
float l9_1549=fract(l9_1547);
float l9_1550=l9_1547-l9_1549;
float l9_1551=step(0.25,fract(l9_1550*0.5));
l9_1547=mix(l9_1549,1.0-l9_1549,fast::clamp(l9_1551,0.0,1.0));
}
}
l9_1536.x=l9_1547;
float l9_1552=l9_1536.y;
int l9_1553=l9_1539.y;
if (l9_1553==1)
{
l9_1552=fract(l9_1552);
}
else
{
if (l9_1553==2)
{
float l9_1554=fract(l9_1552);
float l9_1555=l9_1552-l9_1554;
float l9_1556=step(0.25,fract(l9_1555*0.5));
l9_1552=mix(l9_1554,1.0-l9_1554,fast::clamp(l9_1556,0.0,1.0));
}
}
l9_1536.y=l9_1552;
if (l9_1540)
{
bool l9_1557=l9_1542;
bool l9_1558;
if (l9_1557)
{
l9_1558=l9_1539.x==3;
}
else
{
l9_1558=l9_1557;
}
float l9_1559=l9_1536.x;
float l9_1560=l9_1541.x;
float l9_1561=l9_1541.z;
bool l9_1562=l9_1558;
float l9_1563=l9_1546;
float l9_1564=fast::clamp(l9_1559,l9_1560,l9_1561);
float l9_1565=step(abs(l9_1559-l9_1564),9.9999997e-06);
l9_1563*=(l9_1565+((1.0-float(l9_1562))*(1.0-l9_1565)));
l9_1559=l9_1564;
l9_1536.x=l9_1559;
l9_1546=l9_1563;
bool l9_1566=l9_1542;
bool l9_1567;
if (l9_1566)
{
l9_1567=l9_1539.y==3;
}
else
{
l9_1567=l9_1566;
}
float l9_1568=l9_1536.y;
float l9_1569=l9_1541.y;
float l9_1570=l9_1541.w;
bool l9_1571=l9_1567;
float l9_1572=l9_1546;
float l9_1573=fast::clamp(l9_1568,l9_1569,l9_1570);
float l9_1574=step(abs(l9_1568-l9_1573),9.9999997e-06);
l9_1572*=(l9_1574+((1.0-float(l9_1571))*(1.0-l9_1574)));
l9_1568=l9_1573;
l9_1536.y=l9_1568;
l9_1546=l9_1572;
}
float2 l9_1575=l9_1536;
bool l9_1576=l9_1537;
float3x3 l9_1577=l9_1538;
if (l9_1576)
{
l9_1575=float2((l9_1577*float3(l9_1575,1.0)).xy);
}
float2 l9_1578=l9_1575;
l9_1536=l9_1578;
float l9_1579=l9_1536.x;
int l9_1580=l9_1539.x;
bool l9_1581=l9_1545;
float l9_1582=l9_1546;
if ((l9_1580==0)||(l9_1580==3))
{
float l9_1583=l9_1579;
float l9_1584=0.0;
float l9_1585=1.0;
bool l9_1586=l9_1581;
float l9_1587=l9_1582;
float l9_1588=fast::clamp(l9_1583,l9_1584,l9_1585);
float l9_1589=step(abs(l9_1583-l9_1588),9.9999997e-06);
l9_1587*=(l9_1589+((1.0-float(l9_1586))*(1.0-l9_1589)));
l9_1583=l9_1588;
l9_1579=l9_1583;
l9_1582=l9_1587;
}
l9_1536.x=l9_1579;
l9_1546=l9_1582;
float l9_1590=l9_1536.y;
int l9_1591=l9_1539.y;
bool l9_1592=l9_1545;
float l9_1593=l9_1546;
if ((l9_1591==0)||(l9_1591==3))
{
float l9_1594=l9_1590;
float l9_1595=0.0;
float l9_1596=1.0;
bool l9_1597=l9_1592;
float l9_1598=l9_1593;
float l9_1599=fast::clamp(l9_1594,l9_1595,l9_1596);
float l9_1600=step(abs(l9_1594-l9_1599),9.9999997e-06);
l9_1598*=(l9_1600+((1.0-float(l9_1597))*(1.0-l9_1600)));
l9_1594=l9_1599;
l9_1590=l9_1594;
l9_1593=l9_1598;
}
l9_1536.y=l9_1590;
l9_1546=l9_1593;
float2 l9_1601=l9_1536;
int l9_1602=l9_1534;
int l9_1603=l9_1535;
float l9_1604=l9_1544;
float2 l9_1605=l9_1601;
int l9_1606=l9_1602;
int l9_1607=l9_1603;
float3 l9_1608=float3(0.0);
if (l9_1606==0)
{
l9_1608=float3(l9_1605,0.0);
}
else
{
if (l9_1606==1)
{
l9_1608=float3(l9_1605.x,(l9_1605.y*0.5)+(0.5-(float(l9_1607)*0.5)),0.0);
}
else
{
l9_1608=float3(l9_1605,float(l9_1607));
}
}
float3 l9_1609=l9_1608;
float3 l9_1610=l9_1609;
float4 l9_1611=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1610.xy,bias(l9_1604));
float4 l9_1612=l9_1611;
if (l9_1542)
{
l9_1612=mix(l9_1543,l9_1612,float4(l9_1546));
}
float4 l9_1613=l9_1612;
l9_1527=l9_1613;
float4 l9_1614=l9_1527;
float4 l9_1615=l9_1614;
float4 l9_1616=mix(l9_1345,l9_1435,float4(l9_1253.x));
float4 l9_1617=mix(l9_1525,l9_1615,float4(l9_1253.x));
float4 l9_1618=mix(l9_1616,l9_1617,float4(l9_1253.y));
float2 l9_1619=l9_1618.xy;
float2 l9_1620=l9_120;
float2 l9_1621=float2(0.0);
l9_1621=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1622=l9_1621;
float2 l9_1623=float2(1.0)/l9_1622;
float2 l9_1624=float2(0.0);
l9_1624=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1625=l9_1624;
float2 l9_1626=(l9_1620*l9_1625)+float2(0.5);
float2 l9_1627=fract(l9_1626);
float2 l9_1628=float2(0.0);
l9_1628=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1629=l9_1628;
l9_1626=(floor(l9_1626)/l9_1629)-(l9_1623/float2(2.0));
float2 l9_1630=l9_1626;
float4 l9_1631=float4(0.0);
int l9_1632;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1633=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1633=0;
}
else
{
l9_1633=in.varStereoViewID;
}
int l9_1634=l9_1633;
l9_1632=1-l9_1634;
}
else
{
int l9_1635=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1635=0;
}
else
{
l9_1635=in.varStereoViewID;
}
int l9_1636=l9_1635;
l9_1632=l9_1636;
}
int l9_1637=l9_1632;
int l9_1638=flowRelativeLayout_tmp;
int l9_1639=l9_1637;
float2 l9_1640=l9_1630;
bool l9_1641=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1642=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1643=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1644=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1645=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1646=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1647=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1648=0.0;
bool l9_1649=l9_1646&&(!l9_1644);
float l9_1650=1.0;
float l9_1651=l9_1640.x;
int l9_1652=l9_1643.x;
if (l9_1652==1)
{
l9_1651=fract(l9_1651);
}
else
{
if (l9_1652==2)
{
float l9_1653=fract(l9_1651);
float l9_1654=l9_1651-l9_1653;
float l9_1655=step(0.25,fract(l9_1654*0.5));
l9_1651=mix(l9_1653,1.0-l9_1653,fast::clamp(l9_1655,0.0,1.0));
}
}
l9_1640.x=l9_1651;
float l9_1656=l9_1640.y;
int l9_1657=l9_1643.y;
if (l9_1657==1)
{
l9_1656=fract(l9_1656);
}
else
{
if (l9_1657==2)
{
float l9_1658=fract(l9_1656);
float l9_1659=l9_1656-l9_1658;
float l9_1660=step(0.25,fract(l9_1659*0.5));
l9_1656=mix(l9_1658,1.0-l9_1658,fast::clamp(l9_1660,0.0,1.0));
}
}
l9_1640.y=l9_1656;
if (l9_1644)
{
bool l9_1661=l9_1646;
bool l9_1662;
if (l9_1661)
{
l9_1662=l9_1643.x==3;
}
else
{
l9_1662=l9_1661;
}
float l9_1663=l9_1640.x;
float l9_1664=l9_1645.x;
float l9_1665=l9_1645.z;
bool l9_1666=l9_1662;
float l9_1667=l9_1650;
float l9_1668=fast::clamp(l9_1663,l9_1664,l9_1665);
float l9_1669=step(abs(l9_1663-l9_1668),9.9999997e-06);
l9_1667*=(l9_1669+((1.0-float(l9_1666))*(1.0-l9_1669)));
l9_1663=l9_1668;
l9_1640.x=l9_1663;
l9_1650=l9_1667;
bool l9_1670=l9_1646;
bool l9_1671;
if (l9_1670)
{
l9_1671=l9_1643.y==3;
}
else
{
l9_1671=l9_1670;
}
float l9_1672=l9_1640.y;
float l9_1673=l9_1645.y;
float l9_1674=l9_1645.w;
bool l9_1675=l9_1671;
float l9_1676=l9_1650;
float l9_1677=fast::clamp(l9_1672,l9_1673,l9_1674);
float l9_1678=step(abs(l9_1672-l9_1677),9.9999997e-06);
l9_1676*=(l9_1678+((1.0-float(l9_1675))*(1.0-l9_1678)));
l9_1672=l9_1677;
l9_1640.y=l9_1672;
l9_1650=l9_1676;
}
float2 l9_1679=l9_1640;
bool l9_1680=l9_1641;
float3x3 l9_1681=l9_1642;
if (l9_1680)
{
l9_1679=float2((l9_1681*float3(l9_1679,1.0)).xy);
}
float2 l9_1682=l9_1679;
l9_1640=l9_1682;
float l9_1683=l9_1640.x;
int l9_1684=l9_1643.x;
bool l9_1685=l9_1649;
float l9_1686=l9_1650;
if ((l9_1684==0)||(l9_1684==3))
{
float l9_1687=l9_1683;
float l9_1688=0.0;
float l9_1689=1.0;
bool l9_1690=l9_1685;
float l9_1691=l9_1686;
float l9_1692=fast::clamp(l9_1687,l9_1688,l9_1689);
float l9_1693=step(abs(l9_1687-l9_1692),9.9999997e-06);
l9_1691*=(l9_1693+((1.0-float(l9_1690))*(1.0-l9_1693)));
l9_1687=l9_1692;
l9_1683=l9_1687;
l9_1686=l9_1691;
}
l9_1640.x=l9_1683;
l9_1650=l9_1686;
float l9_1694=l9_1640.y;
int l9_1695=l9_1643.y;
bool l9_1696=l9_1649;
float l9_1697=l9_1650;
if ((l9_1695==0)||(l9_1695==3))
{
float l9_1698=l9_1694;
float l9_1699=0.0;
float l9_1700=1.0;
bool l9_1701=l9_1696;
float l9_1702=l9_1697;
float l9_1703=fast::clamp(l9_1698,l9_1699,l9_1700);
float l9_1704=step(abs(l9_1698-l9_1703),9.9999997e-06);
l9_1702*=(l9_1704+((1.0-float(l9_1701))*(1.0-l9_1704)));
l9_1698=l9_1703;
l9_1694=l9_1698;
l9_1697=l9_1702;
}
l9_1640.y=l9_1694;
l9_1650=l9_1697;
float2 l9_1705=l9_1640;
int l9_1706=l9_1638;
int l9_1707=l9_1639;
float l9_1708=l9_1648;
float2 l9_1709=l9_1705;
int l9_1710=l9_1706;
int l9_1711=l9_1707;
float3 l9_1712=float3(0.0);
if (l9_1710==0)
{
l9_1712=float3(l9_1709,0.0);
}
else
{
if (l9_1710==1)
{
l9_1712=float3(l9_1709.x,(l9_1709.y*0.5)+(0.5-(float(l9_1711)*0.5)),0.0);
}
else
{
l9_1712=float3(l9_1709,float(l9_1711));
}
}
float3 l9_1713=l9_1712;
float3 l9_1714=l9_1713;
float4 l9_1715=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1714.xy,bias(l9_1708));
float4 l9_1716=l9_1715;
if (l9_1646)
{
l9_1716=mix(l9_1647,l9_1716,float4(l9_1650));
}
float4 l9_1717=l9_1716;
l9_1631=l9_1717;
float4 l9_1718=l9_1631;
float4 l9_1719=l9_1718;
float2 l9_1720=l9_1626+float2(l9_1623.x,0.0);
float4 l9_1721=float4(0.0);
int l9_1722;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1723=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1723=0;
}
else
{
l9_1723=in.varStereoViewID;
}
int l9_1724=l9_1723;
l9_1722=1-l9_1724;
}
else
{
int l9_1725=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1725=0;
}
else
{
l9_1725=in.varStereoViewID;
}
int l9_1726=l9_1725;
l9_1722=l9_1726;
}
int l9_1727=l9_1722;
int l9_1728=flowRelativeLayout_tmp;
int l9_1729=l9_1727;
float2 l9_1730=l9_1720;
bool l9_1731=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1732=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1733=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1734=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1735=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1736=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1737=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1738=0.0;
bool l9_1739=l9_1736&&(!l9_1734);
float l9_1740=1.0;
float l9_1741=l9_1730.x;
int l9_1742=l9_1733.x;
if (l9_1742==1)
{
l9_1741=fract(l9_1741);
}
else
{
if (l9_1742==2)
{
float l9_1743=fract(l9_1741);
float l9_1744=l9_1741-l9_1743;
float l9_1745=step(0.25,fract(l9_1744*0.5));
l9_1741=mix(l9_1743,1.0-l9_1743,fast::clamp(l9_1745,0.0,1.0));
}
}
l9_1730.x=l9_1741;
float l9_1746=l9_1730.y;
int l9_1747=l9_1733.y;
if (l9_1747==1)
{
l9_1746=fract(l9_1746);
}
else
{
if (l9_1747==2)
{
float l9_1748=fract(l9_1746);
float l9_1749=l9_1746-l9_1748;
float l9_1750=step(0.25,fract(l9_1749*0.5));
l9_1746=mix(l9_1748,1.0-l9_1748,fast::clamp(l9_1750,0.0,1.0));
}
}
l9_1730.y=l9_1746;
if (l9_1734)
{
bool l9_1751=l9_1736;
bool l9_1752;
if (l9_1751)
{
l9_1752=l9_1733.x==3;
}
else
{
l9_1752=l9_1751;
}
float l9_1753=l9_1730.x;
float l9_1754=l9_1735.x;
float l9_1755=l9_1735.z;
bool l9_1756=l9_1752;
float l9_1757=l9_1740;
float l9_1758=fast::clamp(l9_1753,l9_1754,l9_1755);
float l9_1759=step(abs(l9_1753-l9_1758),9.9999997e-06);
l9_1757*=(l9_1759+((1.0-float(l9_1756))*(1.0-l9_1759)));
l9_1753=l9_1758;
l9_1730.x=l9_1753;
l9_1740=l9_1757;
bool l9_1760=l9_1736;
bool l9_1761;
if (l9_1760)
{
l9_1761=l9_1733.y==3;
}
else
{
l9_1761=l9_1760;
}
float l9_1762=l9_1730.y;
float l9_1763=l9_1735.y;
float l9_1764=l9_1735.w;
bool l9_1765=l9_1761;
float l9_1766=l9_1740;
float l9_1767=fast::clamp(l9_1762,l9_1763,l9_1764);
float l9_1768=step(abs(l9_1762-l9_1767),9.9999997e-06);
l9_1766*=(l9_1768+((1.0-float(l9_1765))*(1.0-l9_1768)));
l9_1762=l9_1767;
l9_1730.y=l9_1762;
l9_1740=l9_1766;
}
float2 l9_1769=l9_1730;
bool l9_1770=l9_1731;
float3x3 l9_1771=l9_1732;
if (l9_1770)
{
l9_1769=float2((l9_1771*float3(l9_1769,1.0)).xy);
}
float2 l9_1772=l9_1769;
l9_1730=l9_1772;
float l9_1773=l9_1730.x;
int l9_1774=l9_1733.x;
bool l9_1775=l9_1739;
float l9_1776=l9_1740;
if ((l9_1774==0)||(l9_1774==3))
{
float l9_1777=l9_1773;
float l9_1778=0.0;
float l9_1779=1.0;
bool l9_1780=l9_1775;
float l9_1781=l9_1776;
float l9_1782=fast::clamp(l9_1777,l9_1778,l9_1779);
float l9_1783=step(abs(l9_1777-l9_1782),9.9999997e-06);
l9_1781*=(l9_1783+((1.0-float(l9_1780))*(1.0-l9_1783)));
l9_1777=l9_1782;
l9_1773=l9_1777;
l9_1776=l9_1781;
}
l9_1730.x=l9_1773;
l9_1740=l9_1776;
float l9_1784=l9_1730.y;
int l9_1785=l9_1733.y;
bool l9_1786=l9_1739;
float l9_1787=l9_1740;
if ((l9_1785==0)||(l9_1785==3))
{
float l9_1788=l9_1784;
float l9_1789=0.0;
float l9_1790=1.0;
bool l9_1791=l9_1786;
float l9_1792=l9_1787;
float l9_1793=fast::clamp(l9_1788,l9_1789,l9_1790);
float l9_1794=step(abs(l9_1788-l9_1793),9.9999997e-06);
l9_1792*=(l9_1794+((1.0-float(l9_1791))*(1.0-l9_1794)));
l9_1788=l9_1793;
l9_1784=l9_1788;
l9_1787=l9_1792;
}
l9_1730.y=l9_1784;
l9_1740=l9_1787;
float2 l9_1795=l9_1730;
int l9_1796=l9_1728;
int l9_1797=l9_1729;
float l9_1798=l9_1738;
float2 l9_1799=l9_1795;
int l9_1800=l9_1796;
int l9_1801=l9_1797;
float3 l9_1802=float3(0.0);
if (l9_1800==0)
{
l9_1802=float3(l9_1799,0.0);
}
else
{
if (l9_1800==1)
{
l9_1802=float3(l9_1799.x,(l9_1799.y*0.5)+(0.5-(float(l9_1801)*0.5)),0.0);
}
else
{
l9_1802=float3(l9_1799,float(l9_1801));
}
}
float3 l9_1803=l9_1802;
float3 l9_1804=l9_1803;
float4 l9_1805=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1804.xy,bias(l9_1798));
float4 l9_1806=l9_1805;
if (l9_1736)
{
l9_1806=mix(l9_1737,l9_1806,float4(l9_1740));
}
float4 l9_1807=l9_1806;
l9_1721=l9_1807;
float4 l9_1808=l9_1721;
float4 l9_1809=l9_1808;
float2 l9_1810=l9_1626+float2(0.0,l9_1623.y);
float4 l9_1811=float4(0.0);
int l9_1812;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1813=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1813=0;
}
else
{
l9_1813=in.varStereoViewID;
}
int l9_1814=l9_1813;
l9_1812=1-l9_1814;
}
else
{
int l9_1815=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1815=0;
}
else
{
l9_1815=in.varStereoViewID;
}
int l9_1816=l9_1815;
l9_1812=l9_1816;
}
int l9_1817=l9_1812;
int l9_1818=flowRelativeLayout_tmp;
int l9_1819=l9_1817;
float2 l9_1820=l9_1810;
bool l9_1821=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1822=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1823=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1824=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1825=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1826=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1827=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1828=0.0;
bool l9_1829=l9_1826&&(!l9_1824);
float l9_1830=1.0;
float l9_1831=l9_1820.x;
int l9_1832=l9_1823.x;
if (l9_1832==1)
{
l9_1831=fract(l9_1831);
}
else
{
if (l9_1832==2)
{
float l9_1833=fract(l9_1831);
float l9_1834=l9_1831-l9_1833;
float l9_1835=step(0.25,fract(l9_1834*0.5));
l9_1831=mix(l9_1833,1.0-l9_1833,fast::clamp(l9_1835,0.0,1.0));
}
}
l9_1820.x=l9_1831;
float l9_1836=l9_1820.y;
int l9_1837=l9_1823.y;
if (l9_1837==1)
{
l9_1836=fract(l9_1836);
}
else
{
if (l9_1837==2)
{
float l9_1838=fract(l9_1836);
float l9_1839=l9_1836-l9_1838;
float l9_1840=step(0.25,fract(l9_1839*0.5));
l9_1836=mix(l9_1838,1.0-l9_1838,fast::clamp(l9_1840,0.0,1.0));
}
}
l9_1820.y=l9_1836;
if (l9_1824)
{
bool l9_1841=l9_1826;
bool l9_1842;
if (l9_1841)
{
l9_1842=l9_1823.x==3;
}
else
{
l9_1842=l9_1841;
}
float l9_1843=l9_1820.x;
float l9_1844=l9_1825.x;
float l9_1845=l9_1825.z;
bool l9_1846=l9_1842;
float l9_1847=l9_1830;
float l9_1848=fast::clamp(l9_1843,l9_1844,l9_1845);
float l9_1849=step(abs(l9_1843-l9_1848),9.9999997e-06);
l9_1847*=(l9_1849+((1.0-float(l9_1846))*(1.0-l9_1849)));
l9_1843=l9_1848;
l9_1820.x=l9_1843;
l9_1830=l9_1847;
bool l9_1850=l9_1826;
bool l9_1851;
if (l9_1850)
{
l9_1851=l9_1823.y==3;
}
else
{
l9_1851=l9_1850;
}
float l9_1852=l9_1820.y;
float l9_1853=l9_1825.y;
float l9_1854=l9_1825.w;
bool l9_1855=l9_1851;
float l9_1856=l9_1830;
float l9_1857=fast::clamp(l9_1852,l9_1853,l9_1854);
float l9_1858=step(abs(l9_1852-l9_1857),9.9999997e-06);
l9_1856*=(l9_1858+((1.0-float(l9_1855))*(1.0-l9_1858)));
l9_1852=l9_1857;
l9_1820.y=l9_1852;
l9_1830=l9_1856;
}
float2 l9_1859=l9_1820;
bool l9_1860=l9_1821;
float3x3 l9_1861=l9_1822;
if (l9_1860)
{
l9_1859=float2((l9_1861*float3(l9_1859,1.0)).xy);
}
float2 l9_1862=l9_1859;
l9_1820=l9_1862;
float l9_1863=l9_1820.x;
int l9_1864=l9_1823.x;
bool l9_1865=l9_1829;
float l9_1866=l9_1830;
if ((l9_1864==0)||(l9_1864==3))
{
float l9_1867=l9_1863;
float l9_1868=0.0;
float l9_1869=1.0;
bool l9_1870=l9_1865;
float l9_1871=l9_1866;
float l9_1872=fast::clamp(l9_1867,l9_1868,l9_1869);
float l9_1873=step(abs(l9_1867-l9_1872),9.9999997e-06);
l9_1871*=(l9_1873+((1.0-float(l9_1870))*(1.0-l9_1873)));
l9_1867=l9_1872;
l9_1863=l9_1867;
l9_1866=l9_1871;
}
l9_1820.x=l9_1863;
l9_1830=l9_1866;
float l9_1874=l9_1820.y;
int l9_1875=l9_1823.y;
bool l9_1876=l9_1829;
float l9_1877=l9_1830;
if ((l9_1875==0)||(l9_1875==3))
{
float l9_1878=l9_1874;
float l9_1879=0.0;
float l9_1880=1.0;
bool l9_1881=l9_1876;
float l9_1882=l9_1877;
float l9_1883=fast::clamp(l9_1878,l9_1879,l9_1880);
float l9_1884=step(abs(l9_1878-l9_1883),9.9999997e-06);
l9_1882*=(l9_1884+((1.0-float(l9_1881))*(1.0-l9_1884)));
l9_1878=l9_1883;
l9_1874=l9_1878;
l9_1877=l9_1882;
}
l9_1820.y=l9_1874;
l9_1830=l9_1877;
float2 l9_1885=l9_1820;
int l9_1886=l9_1818;
int l9_1887=l9_1819;
float l9_1888=l9_1828;
float2 l9_1889=l9_1885;
int l9_1890=l9_1886;
int l9_1891=l9_1887;
float3 l9_1892=float3(0.0);
if (l9_1890==0)
{
l9_1892=float3(l9_1889,0.0);
}
else
{
if (l9_1890==1)
{
l9_1892=float3(l9_1889.x,(l9_1889.y*0.5)+(0.5-(float(l9_1891)*0.5)),0.0);
}
else
{
l9_1892=float3(l9_1889,float(l9_1891));
}
}
float3 l9_1893=l9_1892;
float3 l9_1894=l9_1893;
float4 l9_1895=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1894.xy,bias(l9_1888));
float4 l9_1896=l9_1895;
if (l9_1826)
{
l9_1896=mix(l9_1827,l9_1896,float4(l9_1830));
}
float4 l9_1897=l9_1896;
l9_1811=l9_1897;
float4 l9_1898=l9_1811;
float4 l9_1899=l9_1898;
float2 l9_1900=l9_1626+float2(l9_1623.x,l9_1623.y);
float4 l9_1901=float4(0.0);
int l9_1902;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1903=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1903=0;
}
else
{
l9_1903=in.varStereoViewID;
}
int l9_1904=l9_1903;
l9_1902=1-l9_1904;
}
else
{
int l9_1905=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1905=0;
}
else
{
l9_1905=in.varStereoViewID;
}
int l9_1906=l9_1905;
l9_1902=l9_1906;
}
int l9_1907=l9_1902;
int l9_1908=flowRelativeLayout_tmp;
int l9_1909=l9_1907;
float2 l9_1910=l9_1900;
bool l9_1911=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1912=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1913=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1914=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1915=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1916=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1917=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1918=0.0;
bool l9_1919=l9_1916&&(!l9_1914);
float l9_1920=1.0;
float l9_1921=l9_1910.x;
int l9_1922=l9_1913.x;
if (l9_1922==1)
{
l9_1921=fract(l9_1921);
}
else
{
if (l9_1922==2)
{
float l9_1923=fract(l9_1921);
float l9_1924=l9_1921-l9_1923;
float l9_1925=step(0.25,fract(l9_1924*0.5));
l9_1921=mix(l9_1923,1.0-l9_1923,fast::clamp(l9_1925,0.0,1.0));
}
}
l9_1910.x=l9_1921;
float l9_1926=l9_1910.y;
int l9_1927=l9_1913.y;
if (l9_1927==1)
{
l9_1926=fract(l9_1926);
}
else
{
if (l9_1927==2)
{
float l9_1928=fract(l9_1926);
float l9_1929=l9_1926-l9_1928;
float l9_1930=step(0.25,fract(l9_1929*0.5));
l9_1926=mix(l9_1928,1.0-l9_1928,fast::clamp(l9_1930,0.0,1.0));
}
}
l9_1910.y=l9_1926;
if (l9_1914)
{
bool l9_1931=l9_1916;
bool l9_1932;
if (l9_1931)
{
l9_1932=l9_1913.x==3;
}
else
{
l9_1932=l9_1931;
}
float l9_1933=l9_1910.x;
float l9_1934=l9_1915.x;
float l9_1935=l9_1915.z;
bool l9_1936=l9_1932;
float l9_1937=l9_1920;
float l9_1938=fast::clamp(l9_1933,l9_1934,l9_1935);
float l9_1939=step(abs(l9_1933-l9_1938),9.9999997e-06);
l9_1937*=(l9_1939+((1.0-float(l9_1936))*(1.0-l9_1939)));
l9_1933=l9_1938;
l9_1910.x=l9_1933;
l9_1920=l9_1937;
bool l9_1940=l9_1916;
bool l9_1941;
if (l9_1940)
{
l9_1941=l9_1913.y==3;
}
else
{
l9_1941=l9_1940;
}
float l9_1942=l9_1910.y;
float l9_1943=l9_1915.y;
float l9_1944=l9_1915.w;
bool l9_1945=l9_1941;
float l9_1946=l9_1920;
float l9_1947=fast::clamp(l9_1942,l9_1943,l9_1944);
float l9_1948=step(abs(l9_1942-l9_1947),9.9999997e-06);
l9_1946*=(l9_1948+((1.0-float(l9_1945))*(1.0-l9_1948)));
l9_1942=l9_1947;
l9_1910.y=l9_1942;
l9_1920=l9_1946;
}
float2 l9_1949=l9_1910;
bool l9_1950=l9_1911;
float3x3 l9_1951=l9_1912;
if (l9_1950)
{
l9_1949=float2((l9_1951*float3(l9_1949,1.0)).xy);
}
float2 l9_1952=l9_1949;
l9_1910=l9_1952;
float l9_1953=l9_1910.x;
int l9_1954=l9_1913.x;
bool l9_1955=l9_1919;
float l9_1956=l9_1920;
if ((l9_1954==0)||(l9_1954==3))
{
float l9_1957=l9_1953;
float l9_1958=0.0;
float l9_1959=1.0;
bool l9_1960=l9_1955;
float l9_1961=l9_1956;
float l9_1962=fast::clamp(l9_1957,l9_1958,l9_1959);
float l9_1963=step(abs(l9_1957-l9_1962),9.9999997e-06);
l9_1961*=(l9_1963+((1.0-float(l9_1960))*(1.0-l9_1963)));
l9_1957=l9_1962;
l9_1953=l9_1957;
l9_1956=l9_1961;
}
l9_1910.x=l9_1953;
l9_1920=l9_1956;
float l9_1964=l9_1910.y;
int l9_1965=l9_1913.y;
bool l9_1966=l9_1919;
float l9_1967=l9_1920;
if ((l9_1965==0)||(l9_1965==3))
{
float l9_1968=l9_1964;
float l9_1969=0.0;
float l9_1970=1.0;
bool l9_1971=l9_1966;
float l9_1972=l9_1967;
float l9_1973=fast::clamp(l9_1968,l9_1969,l9_1970);
float l9_1974=step(abs(l9_1968-l9_1973),9.9999997e-06);
l9_1972*=(l9_1974+((1.0-float(l9_1971))*(1.0-l9_1974)));
l9_1968=l9_1973;
l9_1964=l9_1968;
l9_1967=l9_1972;
}
l9_1910.y=l9_1964;
l9_1920=l9_1967;
float2 l9_1975=l9_1910;
int l9_1976=l9_1908;
int l9_1977=l9_1909;
float l9_1978=l9_1918;
float2 l9_1979=l9_1975;
int l9_1980=l9_1976;
int l9_1981=l9_1977;
float3 l9_1982=float3(0.0);
if (l9_1980==0)
{
l9_1982=float3(l9_1979,0.0);
}
else
{
if (l9_1980==1)
{
l9_1982=float3(l9_1979.x,(l9_1979.y*0.5)+(0.5-(float(l9_1981)*0.5)),0.0);
}
else
{
l9_1982=float3(l9_1979,float(l9_1981));
}
}
float3 l9_1983=l9_1982;
float3 l9_1984=l9_1983;
float4 l9_1985=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1984.xy,bias(l9_1978));
float4 l9_1986=l9_1985;
if (l9_1916)
{
l9_1986=mix(l9_1917,l9_1986,float4(l9_1920));
}
float4 l9_1987=l9_1986;
l9_1901=l9_1987;
float4 l9_1988=l9_1901;
float4 l9_1989=l9_1988;
float4 l9_1990=mix(l9_1719,l9_1809,float4(l9_1627.x));
float4 l9_1991=mix(l9_1899,l9_1989,float4(l9_1627.x));
float4 l9_1992=mix(l9_1990,l9_1991,float4(l9_1627.y));
float2 l9_1993=l9_1992.xy;
float2 l9_1994=l9_121;
float2 l9_1995=float2(0.0);
l9_1995=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_1996=l9_1995;
float2 l9_1997=float2(1.0)/l9_1996;
float2 l9_1998=float2(0.0);
l9_1998=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_1999=l9_1998;
float2 l9_2000=(l9_1994*l9_1999)+float2(0.5);
float2 l9_2001=fract(l9_2000);
float2 l9_2002=float2(0.0);
l9_2002=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2003=l9_2002;
l9_2000=(floor(l9_2000)/l9_2003)-(l9_1997/float2(2.0));
float2 l9_2004=l9_2000;
float4 l9_2005=float4(0.0);
int l9_2006;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2007=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2007=0;
}
else
{
l9_2007=in.varStereoViewID;
}
int l9_2008=l9_2007;
l9_2006=1-l9_2008;
}
else
{
int l9_2009=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2009=0;
}
else
{
l9_2009=in.varStereoViewID;
}
int l9_2010=l9_2009;
l9_2006=l9_2010;
}
int l9_2011=l9_2006;
int l9_2012=flowSelectionLayout_tmp;
int l9_2013=l9_2011;
float2 l9_2014=l9_2004;
bool l9_2015=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2016=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2017=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2018=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2019=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2020=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2021=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2022=0.0;
bool l9_2023=l9_2020&&(!l9_2018);
float l9_2024=1.0;
float l9_2025=l9_2014.x;
int l9_2026=l9_2017.x;
if (l9_2026==1)
{
l9_2025=fract(l9_2025);
}
else
{
if (l9_2026==2)
{
float l9_2027=fract(l9_2025);
float l9_2028=l9_2025-l9_2027;
float l9_2029=step(0.25,fract(l9_2028*0.5));
l9_2025=mix(l9_2027,1.0-l9_2027,fast::clamp(l9_2029,0.0,1.0));
}
}
l9_2014.x=l9_2025;
float l9_2030=l9_2014.y;
int l9_2031=l9_2017.y;
if (l9_2031==1)
{
l9_2030=fract(l9_2030);
}
else
{
if (l9_2031==2)
{
float l9_2032=fract(l9_2030);
float l9_2033=l9_2030-l9_2032;
float l9_2034=step(0.25,fract(l9_2033*0.5));
l9_2030=mix(l9_2032,1.0-l9_2032,fast::clamp(l9_2034,0.0,1.0));
}
}
l9_2014.y=l9_2030;
if (l9_2018)
{
bool l9_2035=l9_2020;
bool l9_2036;
if (l9_2035)
{
l9_2036=l9_2017.x==3;
}
else
{
l9_2036=l9_2035;
}
float l9_2037=l9_2014.x;
float l9_2038=l9_2019.x;
float l9_2039=l9_2019.z;
bool l9_2040=l9_2036;
float l9_2041=l9_2024;
float l9_2042=fast::clamp(l9_2037,l9_2038,l9_2039);
float l9_2043=step(abs(l9_2037-l9_2042),9.9999997e-06);
l9_2041*=(l9_2043+((1.0-float(l9_2040))*(1.0-l9_2043)));
l9_2037=l9_2042;
l9_2014.x=l9_2037;
l9_2024=l9_2041;
bool l9_2044=l9_2020;
bool l9_2045;
if (l9_2044)
{
l9_2045=l9_2017.y==3;
}
else
{
l9_2045=l9_2044;
}
float l9_2046=l9_2014.y;
float l9_2047=l9_2019.y;
float l9_2048=l9_2019.w;
bool l9_2049=l9_2045;
float l9_2050=l9_2024;
float l9_2051=fast::clamp(l9_2046,l9_2047,l9_2048);
float l9_2052=step(abs(l9_2046-l9_2051),9.9999997e-06);
l9_2050*=(l9_2052+((1.0-float(l9_2049))*(1.0-l9_2052)));
l9_2046=l9_2051;
l9_2014.y=l9_2046;
l9_2024=l9_2050;
}
float2 l9_2053=l9_2014;
bool l9_2054=l9_2015;
float3x3 l9_2055=l9_2016;
if (l9_2054)
{
l9_2053=float2((l9_2055*float3(l9_2053,1.0)).xy);
}
float2 l9_2056=l9_2053;
l9_2014=l9_2056;
float l9_2057=l9_2014.x;
int l9_2058=l9_2017.x;
bool l9_2059=l9_2023;
float l9_2060=l9_2024;
if ((l9_2058==0)||(l9_2058==3))
{
float l9_2061=l9_2057;
float l9_2062=0.0;
float l9_2063=1.0;
bool l9_2064=l9_2059;
float l9_2065=l9_2060;
float l9_2066=fast::clamp(l9_2061,l9_2062,l9_2063);
float l9_2067=step(abs(l9_2061-l9_2066),9.9999997e-06);
l9_2065*=(l9_2067+((1.0-float(l9_2064))*(1.0-l9_2067)));
l9_2061=l9_2066;
l9_2057=l9_2061;
l9_2060=l9_2065;
}
l9_2014.x=l9_2057;
l9_2024=l9_2060;
float l9_2068=l9_2014.y;
int l9_2069=l9_2017.y;
bool l9_2070=l9_2023;
float l9_2071=l9_2024;
if ((l9_2069==0)||(l9_2069==3))
{
float l9_2072=l9_2068;
float l9_2073=0.0;
float l9_2074=1.0;
bool l9_2075=l9_2070;
float l9_2076=l9_2071;
float l9_2077=fast::clamp(l9_2072,l9_2073,l9_2074);
float l9_2078=step(abs(l9_2072-l9_2077),9.9999997e-06);
l9_2076*=(l9_2078+((1.0-float(l9_2075))*(1.0-l9_2078)));
l9_2072=l9_2077;
l9_2068=l9_2072;
l9_2071=l9_2076;
}
l9_2014.y=l9_2068;
l9_2024=l9_2071;
float2 l9_2079=l9_2014;
int l9_2080=l9_2012;
int l9_2081=l9_2013;
float l9_2082=l9_2022;
float2 l9_2083=l9_2079;
int l9_2084=l9_2080;
int l9_2085=l9_2081;
float3 l9_2086=float3(0.0);
if (l9_2084==0)
{
l9_2086=float3(l9_2083,0.0);
}
else
{
if (l9_2084==1)
{
l9_2086=float3(l9_2083.x,(l9_2083.y*0.5)+(0.5-(float(l9_2085)*0.5)),0.0);
}
else
{
l9_2086=float3(l9_2083,float(l9_2085));
}
}
float3 l9_2087=l9_2086;
float3 l9_2088=l9_2087;
float4 l9_2089=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2088.xy,bias(l9_2082));
float4 l9_2090=l9_2089;
if (l9_2020)
{
l9_2090=mix(l9_2021,l9_2090,float4(l9_2024));
}
float4 l9_2091=l9_2090;
l9_2005=l9_2091;
float4 l9_2092=l9_2005;
float4 l9_2093=l9_2092;
float2 l9_2094=l9_2000+float2(l9_1997.x,0.0);
float4 l9_2095=float4(0.0);
int l9_2096;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2097=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2097=0;
}
else
{
l9_2097=in.varStereoViewID;
}
int l9_2098=l9_2097;
l9_2096=1-l9_2098;
}
else
{
int l9_2099=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2099=0;
}
else
{
l9_2099=in.varStereoViewID;
}
int l9_2100=l9_2099;
l9_2096=l9_2100;
}
int l9_2101=l9_2096;
int l9_2102=flowSelectionLayout_tmp;
int l9_2103=l9_2101;
float2 l9_2104=l9_2094;
bool l9_2105=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2106=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2107=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2108=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2109=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2110=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2111=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2112=0.0;
bool l9_2113=l9_2110&&(!l9_2108);
float l9_2114=1.0;
float l9_2115=l9_2104.x;
int l9_2116=l9_2107.x;
if (l9_2116==1)
{
l9_2115=fract(l9_2115);
}
else
{
if (l9_2116==2)
{
float l9_2117=fract(l9_2115);
float l9_2118=l9_2115-l9_2117;
float l9_2119=step(0.25,fract(l9_2118*0.5));
l9_2115=mix(l9_2117,1.0-l9_2117,fast::clamp(l9_2119,0.0,1.0));
}
}
l9_2104.x=l9_2115;
float l9_2120=l9_2104.y;
int l9_2121=l9_2107.y;
if (l9_2121==1)
{
l9_2120=fract(l9_2120);
}
else
{
if (l9_2121==2)
{
float l9_2122=fract(l9_2120);
float l9_2123=l9_2120-l9_2122;
float l9_2124=step(0.25,fract(l9_2123*0.5));
l9_2120=mix(l9_2122,1.0-l9_2122,fast::clamp(l9_2124,0.0,1.0));
}
}
l9_2104.y=l9_2120;
if (l9_2108)
{
bool l9_2125=l9_2110;
bool l9_2126;
if (l9_2125)
{
l9_2126=l9_2107.x==3;
}
else
{
l9_2126=l9_2125;
}
float l9_2127=l9_2104.x;
float l9_2128=l9_2109.x;
float l9_2129=l9_2109.z;
bool l9_2130=l9_2126;
float l9_2131=l9_2114;
float l9_2132=fast::clamp(l9_2127,l9_2128,l9_2129);
float l9_2133=step(abs(l9_2127-l9_2132),9.9999997e-06);
l9_2131*=(l9_2133+((1.0-float(l9_2130))*(1.0-l9_2133)));
l9_2127=l9_2132;
l9_2104.x=l9_2127;
l9_2114=l9_2131;
bool l9_2134=l9_2110;
bool l9_2135;
if (l9_2134)
{
l9_2135=l9_2107.y==3;
}
else
{
l9_2135=l9_2134;
}
float l9_2136=l9_2104.y;
float l9_2137=l9_2109.y;
float l9_2138=l9_2109.w;
bool l9_2139=l9_2135;
float l9_2140=l9_2114;
float l9_2141=fast::clamp(l9_2136,l9_2137,l9_2138);
float l9_2142=step(abs(l9_2136-l9_2141),9.9999997e-06);
l9_2140*=(l9_2142+((1.0-float(l9_2139))*(1.0-l9_2142)));
l9_2136=l9_2141;
l9_2104.y=l9_2136;
l9_2114=l9_2140;
}
float2 l9_2143=l9_2104;
bool l9_2144=l9_2105;
float3x3 l9_2145=l9_2106;
if (l9_2144)
{
l9_2143=float2((l9_2145*float3(l9_2143,1.0)).xy);
}
float2 l9_2146=l9_2143;
l9_2104=l9_2146;
float l9_2147=l9_2104.x;
int l9_2148=l9_2107.x;
bool l9_2149=l9_2113;
float l9_2150=l9_2114;
if ((l9_2148==0)||(l9_2148==3))
{
float l9_2151=l9_2147;
float l9_2152=0.0;
float l9_2153=1.0;
bool l9_2154=l9_2149;
float l9_2155=l9_2150;
float l9_2156=fast::clamp(l9_2151,l9_2152,l9_2153);
float l9_2157=step(abs(l9_2151-l9_2156),9.9999997e-06);
l9_2155*=(l9_2157+((1.0-float(l9_2154))*(1.0-l9_2157)));
l9_2151=l9_2156;
l9_2147=l9_2151;
l9_2150=l9_2155;
}
l9_2104.x=l9_2147;
l9_2114=l9_2150;
float l9_2158=l9_2104.y;
int l9_2159=l9_2107.y;
bool l9_2160=l9_2113;
float l9_2161=l9_2114;
if ((l9_2159==0)||(l9_2159==3))
{
float l9_2162=l9_2158;
float l9_2163=0.0;
float l9_2164=1.0;
bool l9_2165=l9_2160;
float l9_2166=l9_2161;
float l9_2167=fast::clamp(l9_2162,l9_2163,l9_2164);
float l9_2168=step(abs(l9_2162-l9_2167),9.9999997e-06);
l9_2166*=(l9_2168+((1.0-float(l9_2165))*(1.0-l9_2168)));
l9_2162=l9_2167;
l9_2158=l9_2162;
l9_2161=l9_2166;
}
l9_2104.y=l9_2158;
l9_2114=l9_2161;
float2 l9_2169=l9_2104;
int l9_2170=l9_2102;
int l9_2171=l9_2103;
float l9_2172=l9_2112;
float2 l9_2173=l9_2169;
int l9_2174=l9_2170;
int l9_2175=l9_2171;
float3 l9_2176=float3(0.0);
if (l9_2174==0)
{
l9_2176=float3(l9_2173,0.0);
}
else
{
if (l9_2174==1)
{
l9_2176=float3(l9_2173.x,(l9_2173.y*0.5)+(0.5-(float(l9_2175)*0.5)),0.0);
}
else
{
l9_2176=float3(l9_2173,float(l9_2175));
}
}
float3 l9_2177=l9_2176;
float3 l9_2178=l9_2177;
float4 l9_2179=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2178.xy,bias(l9_2172));
float4 l9_2180=l9_2179;
if (l9_2110)
{
l9_2180=mix(l9_2111,l9_2180,float4(l9_2114));
}
float4 l9_2181=l9_2180;
l9_2095=l9_2181;
float4 l9_2182=l9_2095;
float4 l9_2183=l9_2182;
float2 l9_2184=l9_2000+float2(0.0,l9_1997.y);
float4 l9_2185=float4(0.0);
int l9_2186;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2187=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2187=0;
}
else
{
l9_2187=in.varStereoViewID;
}
int l9_2188=l9_2187;
l9_2186=1-l9_2188;
}
else
{
int l9_2189=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2189=0;
}
else
{
l9_2189=in.varStereoViewID;
}
int l9_2190=l9_2189;
l9_2186=l9_2190;
}
int l9_2191=l9_2186;
int l9_2192=flowSelectionLayout_tmp;
int l9_2193=l9_2191;
float2 l9_2194=l9_2184;
bool l9_2195=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2196=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2197=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2198=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2199=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2200=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2201=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2202=0.0;
bool l9_2203=l9_2200&&(!l9_2198);
float l9_2204=1.0;
float l9_2205=l9_2194.x;
int l9_2206=l9_2197.x;
if (l9_2206==1)
{
l9_2205=fract(l9_2205);
}
else
{
if (l9_2206==2)
{
float l9_2207=fract(l9_2205);
float l9_2208=l9_2205-l9_2207;
float l9_2209=step(0.25,fract(l9_2208*0.5));
l9_2205=mix(l9_2207,1.0-l9_2207,fast::clamp(l9_2209,0.0,1.0));
}
}
l9_2194.x=l9_2205;
float l9_2210=l9_2194.y;
int l9_2211=l9_2197.y;
if (l9_2211==1)
{
l9_2210=fract(l9_2210);
}
else
{
if (l9_2211==2)
{
float l9_2212=fract(l9_2210);
float l9_2213=l9_2210-l9_2212;
float l9_2214=step(0.25,fract(l9_2213*0.5));
l9_2210=mix(l9_2212,1.0-l9_2212,fast::clamp(l9_2214,0.0,1.0));
}
}
l9_2194.y=l9_2210;
if (l9_2198)
{
bool l9_2215=l9_2200;
bool l9_2216;
if (l9_2215)
{
l9_2216=l9_2197.x==3;
}
else
{
l9_2216=l9_2215;
}
float l9_2217=l9_2194.x;
float l9_2218=l9_2199.x;
float l9_2219=l9_2199.z;
bool l9_2220=l9_2216;
float l9_2221=l9_2204;
float l9_2222=fast::clamp(l9_2217,l9_2218,l9_2219);
float l9_2223=step(abs(l9_2217-l9_2222),9.9999997e-06);
l9_2221*=(l9_2223+((1.0-float(l9_2220))*(1.0-l9_2223)));
l9_2217=l9_2222;
l9_2194.x=l9_2217;
l9_2204=l9_2221;
bool l9_2224=l9_2200;
bool l9_2225;
if (l9_2224)
{
l9_2225=l9_2197.y==3;
}
else
{
l9_2225=l9_2224;
}
float l9_2226=l9_2194.y;
float l9_2227=l9_2199.y;
float l9_2228=l9_2199.w;
bool l9_2229=l9_2225;
float l9_2230=l9_2204;
float l9_2231=fast::clamp(l9_2226,l9_2227,l9_2228);
float l9_2232=step(abs(l9_2226-l9_2231),9.9999997e-06);
l9_2230*=(l9_2232+((1.0-float(l9_2229))*(1.0-l9_2232)));
l9_2226=l9_2231;
l9_2194.y=l9_2226;
l9_2204=l9_2230;
}
float2 l9_2233=l9_2194;
bool l9_2234=l9_2195;
float3x3 l9_2235=l9_2196;
if (l9_2234)
{
l9_2233=float2((l9_2235*float3(l9_2233,1.0)).xy);
}
float2 l9_2236=l9_2233;
l9_2194=l9_2236;
float l9_2237=l9_2194.x;
int l9_2238=l9_2197.x;
bool l9_2239=l9_2203;
float l9_2240=l9_2204;
if ((l9_2238==0)||(l9_2238==3))
{
float l9_2241=l9_2237;
float l9_2242=0.0;
float l9_2243=1.0;
bool l9_2244=l9_2239;
float l9_2245=l9_2240;
float l9_2246=fast::clamp(l9_2241,l9_2242,l9_2243);
float l9_2247=step(abs(l9_2241-l9_2246),9.9999997e-06);
l9_2245*=(l9_2247+((1.0-float(l9_2244))*(1.0-l9_2247)));
l9_2241=l9_2246;
l9_2237=l9_2241;
l9_2240=l9_2245;
}
l9_2194.x=l9_2237;
l9_2204=l9_2240;
float l9_2248=l9_2194.y;
int l9_2249=l9_2197.y;
bool l9_2250=l9_2203;
float l9_2251=l9_2204;
if ((l9_2249==0)||(l9_2249==3))
{
float l9_2252=l9_2248;
float l9_2253=0.0;
float l9_2254=1.0;
bool l9_2255=l9_2250;
float l9_2256=l9_2251;
float l9_2257=fast::clamp(l9_2252,l9_2253,l9_2254);
float l9_2258=step(abs(l9_2252-l9_2257),9.9999997e-06);
l9_2256*=(l9_2258+((1.0-float(l9_2255))*(1.0-l9_2258)));
l9_2252=l9_2257;
l9_2248=l9_2252;
l9_2251=l9_2256;
}
l9_2194.y=l9_2248;
l9_2204=l9_2251;
float2 l9_2259=l9_2194;
int l9_2260=l9_2192;
int l9_2261=l9_2193;
float l9_2262=l9_2202;
float2 l9_2263=l9_2259;
int l9_2264=l9_2260;
int l9_2265=l9_2261;
float3 l9_2266=float3(0.0);
if (l9_2264==0)
{
l9_2266=float3(l9_2263,0.0);
}
else
{
if (l9_2264==1)
{
l9_2266=float3(l9_2263.x,(l9_2263.y*0.5)+(0.5-(float(l9_2265)*0.5)),0.0);
}
else
{
l9_2266=float3(l9_2263,float(l9_2265));
}
}
float3 l9_2267=l9_2266;
float3 l9_2268=l9_2267;
float4 l9_2269=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2268.xy,bias(l9_2262));
float4 l9_2270=l9_2269;
if (l9_2200)
{
l9_2270=mix(l9_2201,l9_2270,float4(l9_2204));
}
float4 l9_2271=l9_2270;
l9_2185=l9_2271;
float4 l9_2272=l9_2185;
float4 l9_2273=l9_2272;
float2 l9_2274=l9_2000+float2(l9_1997.x,l9_1997.y);
float4 l9_2275=float4(0.0);
int l9_2276;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2277=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2277=0;
}
else
{
l9_2277=in.varStereoViewID;
}
int l9_2278=l9_2277;
l9_2276=1-l9_2278;
}
else
{
int l9_2279=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2279=0;
}
else
{
l9_2279=in.varStereoViewID;
}
int l9_2280=l9_2279;
l9_2276=l9_2280;
}
int l9_2281=l9_2276;
int l9_2282=flowSelectionLayout_tmp;
int l9_2283=l9_2281;
float2 l9_2284=l9_2274;
bool l9_2285=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2286=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2287=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2288=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2289=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2290=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2291=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2292=0.0;
bool l9_2293=l9_2290&&(!l9_2288);
float l9_2294=1.0;
float l9_2295=l9_2284.x;
int l9_2296=l9_2287.x;
if (l9_2296==1)
{
l9_2295=fract(l9_2295);
}
else
{
if (l9_2296==2)
{
float l9_2297=fract(l9_2295);
float l9_2298=l9_2295-l9_2297;
float l9_2299=step(0.25,fract(l9_2298*0.5));
l9_2295=mix(l9_2297,1.0-l9_2297,fast::clamp(l9_2299,0.0,1.0));
}
}
l9_2284.x=l9_2295;
float l9_2300=l9_2284.y;
int l9_2301=l9_2287.y;
if (l9_2301==1)
{
l9_2300=fract(l9_2300);
}
else
{
if (l9_2301==2)
{
float l9_2302=fract(l9_2300);
float l9_2303=l9_2300-l9_2302;
float l9_2304=step(0.25,fract(l9_2303*0.5));
l9_2300=mix(l9_2302,1.0-l9_2302,fast::clamp(l9_2304,0.0,1.0));
}
}
l9_2284.y=l9_2300;
if (l9_2288)
{
bool l9_2305=l9_2290;
bool l9_2306;
if (l9_2305)
{
l9_2306=l9_2287.x==3;
}
else
{
l9_2306=l9_2305;
}
float l9_2307=l9_2284.x;
float l9_2308=l9_2289.x;
float l9_2309=l9_2289.z;
bool l9_2310=l9_2306;
float l9_2311=l9_2294;
float l9_2312=fast::clamp(l9_2307,l9_2308,l9_2309);
float l9_2313=step(abs(l9_2307-l9_2312),9.9999997e-06);
l9_2311*=(l9_2313+((1.0-float(l9_2310))*(1.0-l9_2313)));
l9_2307=l9_2312;
l9_2284.x=l9_2307;
l9_2294=l9_2311;
bool l9_2314=l9_2290;
bool l9_2315;
if (l9_2314)
{
l9_2315=l9_2287.y==3;
}
else
{
l9_2315=l9_2314;
}
float l9_2316=l9_2284.y;
float l9_2317=l9_2289.y;
float l9_2318=l9_2289.w;
bool l9_2319=l9_2315;
float l9_2320=l9_2294;
float l9_2321=fast::clamp(l9_2316,l9_2317,l9_2318);
float l9_2322=step(abs(l9_2316-l9_2321),9.9999997e-06);
l9_2320*=(l9_2322+((1.0-float(l9_2319))*(1.0-l9_2322)));
l9_2316=l9_2321;
l9_2284.y=l9_2316;
l9_2294=l9_2320;
}
float2 l9_2323=l9_2284;
bool l9_2324=l9_2285;
float3x3 l9_2325=l9_2286;
if (l9_2324)
{
l9_2323=float2((l9_2325*float3(l9_2323,1.0)).xy);
}
float2 l9_2326=l9_2323;
l9_2284=l9_2326;
float l9_2327=l9_2284.x;
int l9_2328=l9_2287.x;
bool l9_2329=l9_2293;
float l9_2330=l9_2294;
if ((l9_2328==0)||(l9_2328==3))
{
float l9_2331=l9_2327;
float l9_2332=0.0;
float l9_2333=1.0;
bool l9_2334=l9_2329;
float l9_2335=l9_2330;
float l9_2336=fast::clamp(l9_2331,l9_2332,l9_2333);
float l9_2337=step(abs(l9_2331-l9_2336),9.9999997e-06);
l9_2335*=(l9_2337+((1.0-float(l9_2334))*(1.0-l9_2337)));
l9_2331=l9_2336;
l9_2327=l9_2331;
l9_2330=l9_2335;
}
l9_2284.x=l9_2327;
l9_2294=l9_2330;
float l9_2338=l9_2284.y;
int l9_2339=l9_2287.y;
bool l9_2340=l9_2293;
float l9_2341=l9_2294;
if ((l9_2339==0)||(l9_2339==3))
{
float l9_2342=l9_2338;
float l9_2343=0.0;
float l9_2344=1.0;
bool l9_2345=l9_2340;
float l9_2346=l9_2341;
float l9_2347=fast::clamp(l9_2342,l9_2343,l9_2344);
float l9_2348=step(abs(l9_2342-l9_2347),9.9999997e-06);
l9_2346*=(l9_2348+((1.0-float(l9_2345))*(1.0-l9_2348)));
l9_2342=l9_2347;
l9_2338=l9_2342;
l9_2341=l9_2346;
}
l9_2284.y=l9_2338;
l9_2294=l9_2341;
float2 l9_2349=l9_2284;
int l9_2350=l9_2282;
int l9_2351=l9_2283;
float l9_2352=l9_2292;
float2 l9_2353=l9_2349;
int l9_2354=l9_2350;
int l9_2355=l9_2351;
float3 l9_2356=float3(0.0);
if (l9_2354==0)
{
l9_2356=float3(l9_2353,0.0);
}
else
{
if (l9_2354==1)
{
l9_2356=float3(l9_2353.x,(l9_2353.y*0.5)+(0.5-(float(l9_2355)*0.5)),0.0);
}
else
{
l9_2356=float3(l9_2353,float(l9_2355));
}
}
float3 l9_2357=l9_2356;
float3 l9_2358=l9_2357;
float4 l9_2359=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2358.xy,bias(l9_2352));
float4 l9_2360=l9_2359;
if (l9_2290)
{
l9_2360=mix(l9_2291,l9_2360,float4(l9_2294));
}
float4 l9_2361=l9_2360;
l9_2275=l9_2361;
float4 l9_2362=l9_2275;
float4 l9_2363=l9_2362;
float4 l9_2364=mix(l9_2093,l9_2183,float4(l9_2001.x));
float4 l9_2365=mix(l9_2273,l9_2363,float4(l9_2001.x));
float4 l9_2366=mix(l9_2364,l9_2365,float4(l9_2001.y));
float4 l9_2367=l9_2366;
float2 l9_2368=l9_122;
float2 l9_2369=float2(0.0);
l9_2369=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2370=l9_2369;
float2 l9_2371=float2(1.0)/l9_2370;
float2 l9_2372=float2(0.0);
l9_2372=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2373=l9_2372;
float2 l9_2374=(l9_2368*l9_2373)+float2(0.5);
float2 l9_2375=fract(l9_2374);
float2 l9_2376=float2(0.0);
l9_2376=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2377=l9_2376;
l9_2374=(floor(l9_2374)/l9_2377)-(l9_2371/float2(2.0));
float2 l9_2378=l9_2374;
float4 l9_2379=float4(0.0);
int l9_2380;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2381=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2381=0;
}
else
{
l9_2381=in.varStereoViewID;
}
int l9_2382=l9_2381;
l9_2380=1-l9_2382;
}
else
{
int l9_2383=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2383=0;
}
else
{
l9_2383=in.varStereoViewID;
}
int l9_2384=l9_2383;
l9_2380=l9_2384;
}
int l9_2385=l9_2380;
int l9_2386=flowSelectionLayout_tmp;
int l9_2387=l9_2385;
float2 l9_2388=l9_2378;
bool l9_2389=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2390=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2391=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2392=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2393=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2394=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2395=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2396=0.0;
bool l9_2397=l9_2394&&(!l9_2392);
float l9_2398=1.0;
float l9_2399=l9_2388.x;
int l9_2400=l9_2391.x;
if (l9_2400==1)
{
l9_2399=fract(l9_2399);
}
else
{
if (l9_2400==2)
{
float l9_2401=fract(l9_2399);
float l9_2402=l9_2399-l9_2401;
float l9_2403=step(0.25,fract(l9_2402*0.5));
l9_2399=mix(l9_2401,1.0-l9_2401,fast::clamp(l9_2403,0.0,1.0));
}
}
l9_2388.x=l9_2399;
float l9_2404=l9_2388.y;
int l9_2405=l9_2391.y;
if (l9_2405==1)
{
l9_2404=fract(l9_2404);
}
else
{
if (l9_2405==2)
{
float l9_2406=fract(l9_2404);
float l9_2407=l9_2404-l9_2406;
float l9_2408=step(0.25,fract(l9_2407*0.5));
l9_2404=mix(l9_2406,1.0-l9_2406,fast::clamp(l9_2408,0.0,1.0));
}
}
l9_2388.y=l9_2404;
if (l9_2392)
{
bool l9_2409=l9_2394;
bool l9_2410;
if (l9_2409)
{
l9_2410=l9_2391.x==3;
}
else
{
l9_2410=l9_2409;
}
float l9_2411=l9_2388.x;
float l9_2412=l9_2393.x;
float l9_2413=l9_2393.z;
bool l9_2414=l9_2410;
float l9_2415=l9_2398;
float l9_2416=fast::clamp(l9_2411,l9_2412,l9_2413);
float l9_2417=step(abs(l9_2411-l9_2416),9.9999997e-06);
l9_2415*=(l9_2417+((1.0-float(l9_2414))*(1.0-l9_2417)));
l9_2411=l9_2416;
l9_2388.x=l9_2411;
l9_2398=l9_2415;
bool l9_2418=l9_2394;
bool l9_2419;
if (l9_2418)
{
l9_2419=l9_2391.y==3;
}
else
{
l9_2419=l9_2418;
}
float l9_2420=l9_2388.y;
float l9_2421=l9_2393.y;
float l9_2422=l9_2393.w;
bool l9_2423=l9_2419;
float l9_2424=l9_2398;
float l9_2425=fast::clamp(l9_2420,l9_2421,l9_2422);
float l9_2426=step(abs(l9_2420-l9_2425),9.9999997e-06);
l9_2424*=(l9_2426+((1.0-float(l9_2423))*(1.0-l9_2426)));
l9_2420=l9_2425;
l9_2388.y=l9_2420;
l9_2398=l9_2424;
}
float2 l9_2427=l9_2388;
bool l9_2428=l9_2389;
float3x3 l9_2429=l9_2390;
if (l9_2428)
{
l9_2427=float2((l9_2429*float3(l9_2427,1.0)).xy);
}
float2 l9_2430=l9_2427;
l9_2388=l9_2430;
float l9_2431=l9_2388.x;
int l9_2432=l9_2391.x;
bool l9_2433=l9_2397;
float l9_2434=l9_2398;
if ((l9_2432==0)||(l9_2432==3))
{
float l9_2435=l9_2431;
float l9_2436=0.0;
float l9_2437=1.0;
bool l9_2438=l9_2433;
float l9_2439=l9_2434;
float l9_2440=fast::clamp(l9_2435,l9_2436,l9_2437);
float l9_2441=step(abs(l9_2435-l9_2440),9.9999997e-06);
l9_2439*=(l9_2441+((1.0-float(l9_2438))*(1.0-l9_2441)));
l9_2435=l9_2440;
l9_2431=l9_2435;
l9_2434=l9_2439;
}
l9_2388.x=l9_2431;
l9_2398=l9_2434;
float l9_2442=l9_2388.y;
int l9_2443=l9_2391.y;
bool l9_2444=l9_2397;
float l9_2445=l9_2398;
if ((l9_2443==0)||(l9_2443==3))
{
float l9_2446=l9_2442;
float l9_2447=0.0;
float l9_2448=1.0;
bool l9_2449=l9_2444;
float l9_2450=l9_2445;
float l9_2451=fast::clamp(l9_2446,l9_2447,l9_2448);
float l9_2452=step(abs(l9_2446-l9_2451),9.9999997e-06);
l9_2450*=(l9_2452+((1.0-float(l9_2449))*(1.0-l9_2452)));
l9_2446=l9_2451;
l9_2442=l9_2446;
l9_2445=l9_2450;
}
l9_2388.y=l9_2442;
l9_2398=l9_2445;
float2 l9_2453=l9_2388;
int l9_2454=l9_2386;
int l9_2455=l9_2387;
float l9_2456=l9_2396;
float2 l9_2457=l9_2453;
int l9_2458=l9_2454;
int l9_2459=l9_2455;
float3 l9_2460=float3(0.0);
if (l9_2458==0)
{
l9_2460=float3(l9_2457,0.0);
}
else
{
if (l9_2458==1)
{
l9_2460=float3(l9_2457.x,(l9_2457.y*0.5)+(0.5-(float(l9_2459)*0.5)),0.0);
}
else
{
l9_2460=float3(l9_2457,float(l9_2459));
}
}
float3 l9_2461=l9_2460;
float3 l9_2462=l9_2461;
float4 l9_2463=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2462.xy,bias(l9_2456));
float4 l9_2464=l9_2463;
if (l9_2394)
{
l9_2464=mix(l9_2395,l9_2464,float4(l9_2398));
}
float4 l9_2465=l9_2464;
l9_2379=l9_2465;
float4 l9_2466=l9_2379;
float4 l9_2467=l9_2466;
float2 l9_2468=l9_2374+float2(l9_2371.x,0.0);
float4 l9_2469=float4(0.0);
int l9_2470;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2471=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2471=0;
}
else
{
l9_2471=in.varStereoViewID;
}
int l9_2472=l9_2471;
l9_2470=1-l9_2472;
}
else
{
int l9_2473=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2473=0;
}
else
{
l9_2473=in.varStereoViewID;
}
int l9_2474=l9_2473;
l9_2470=l9_2474;
}
int l9_2475=l9_2470;
int l9_2476=flowSelectionLayout_tmp;
int l9_2477=l9_2475;
float2 l9_2478=l9_2468;
bool l9_2479=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2480=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2481=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2482=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2483=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2484=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2485=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2486=0.0;
bool l9_2487=l9_2484&&(!l9_2482);
float l9_2488=1.0;
float l9_2489=l9_2478.x;
int l9_2490=l9_2481.x;
if (l9_2490==1)
{
l9_2489=fract(l9_2489);
}
else
{
if (l9_2490==2)
{
float l9_2491=fract(l9_2489);
float l9_2492=l9_2489-l9_2491;
float l9_2493=step(0.25,fract(l9_2492*0.5));
l9_2489=mix(l9_2491,1.0-l9_2491,fast::clamp(l9_2493,0.0,1.0));
}
}
l9_2478.x=l9_2489;
float l9_2494=l9_2478.y;
int l9_2495=l9_2481.y;
if (l9_2495==1)
{
l9_2494=fract(l9_2494);
}
else
{
if (l9_2495==2)
{
float l9_2496=fract(l9_2494);
float l9_2497=l9_2494-l9_2496;
float l9_2498=step(0.25,fract(l9_2497*0.5));
l9_2494=mix(l9_2496,1.0-l9_2496,fast::clamp(l9_2498,0.0,1.0));
}
}
l9_2478.y=l9_2494;
if (l9_2482)
{
bool l9_2499=l9_2484;
bool l9_2500;
if (l9_2499)
{
l9_2500=l9_2481.x==3;
}
else
{
l9_2500=l9_2499;
}
float l9_2501=l9_2478.x;
float l9_2502=l9_2483.x;
float l9_2503=l9_2483.z;
bool l9_2504=l9_2500;
float l9_2505=l9_2488;
float l9_2506=fast::clamp(l9_2501,l9_2502,l9_2503);
float l9_2507=step(abs(l9_2501-l9_2506),9.9999997e-06);
l9_2505*=(l9_2507+((1.0-float(l9_2504))*(1.0-l9_2507)));
l9_2501=l9_2506;
l9_2478.x=l9_2501;
l9_2488=l9_2505;
bool l9_2508=l9_2484;
bool l9_2509;
if (l9_2508)
{
l9_2509=l9_2481.y==3;
}
else
{
l9_2509=l9_2508;
}
float l9_2510=l9_2478.y;
float l9_2511=l9_2483.y;
float l9_2512=l9_2483.w;
bool l9_2513=l9_2509;
float l9_2514=l9_2488;
float l9_2515=fast::clamp(l9_2510,l9_2511,l9_2512);
float l9_2516=step(abs(l9_2510-l9_2515),9.9999997e-06);
l9_2514*=(l9_2516+((1.0-float(l9_2513))*(1.0-l9_2516)));
l9_2510=l9_2515;
l9_2478.y=l9_2510;
l9_2488=l9_2514;
}
float2 l9_2517=l9_2478;
bool l9_2518=l9_2479;
float3x3 l9_2519=l9_2480;
if (l9_2518)
{
l9_2517=float2((l9_2519*float3(l9_2517,1.0)).xy);
}
float2 l9_2520=l9_2517;
l9_2478=l9_2520;
float l9_2521=l9_2478.x;
int l9_2522=l9_2481.x;
bool l9_2523=l9_2487;
float l9_2524=l9_2488;
if ((l9_2522==0)||(l9_2522==3))
{
float l9_2525=l9_2521;
float l9_2526=0.0;
float l9_2527=1.0;
bool l9_2528=l9_2523;
float l9_2529=l9_2524;
float l9_2530=fast::clamp(l9_2525,l9_2526,l9_2527);
float l9_2531=step(abs(l9_2525-l9_2530),9.9999997e-06);
l9_2529*=(l9_2531+((1.0-float(l9_2528))*(1.0-l9_2531)));
l9_2525=l9_2530;
l9_2521=l9_2525;
l9_2524=l9_2529;
}
l9_2478.x=l9_2521;
l9_2488=l9_2524;
float l9_2532=l9_2478.y;
int l9_2533=l9_2481.y;
bool l9_2534=l9_2487;
float l9_2535=l9_2488;
if ((l9_2533==0)||(l9_2533==3))
{
float l9_2536=l9_2532;
float l9_2537=0.0;
float l9_2538=1.0;
bool l9_2539=l9_2534;
float l9_2540=l9_2535;
float l9_2541=fast::clamp(l9_2536,l9_2537,l9_2538);
float l9_2542=step(abs(l9_2536-l9_2541),9.9999997e-06);
l9_2540*=(l9_2542+((1.0-float(l9_2539))*(1.0-l9_2542)));
l9_2536=l9_2541;
l9_2532=l9_2536;
l9_2535=l9_2540;
}
l9_2478.y=l9_2532;
l9_2488=l9_2535;
float2 l9_2543=l9_2478;
int l9_2544=l9_2476;
int l9_2545=l9_2477;
float l9_2546=l9_2486;
float2 l9_2547=l9_2543;
int l9_2548=l9_2544;
int l9_2549=l9_2545;
float3 l9_2550=float3(0.0);
if (l9_2548==0)
{
l9_2550=float3(l9_2547,0.0);
}
else
{
if (l9_2548==1)
{
l9_2550=float3(l9_2547.x,(l9_2547.y*0.5)+(0.5-(float(l9_2549)*0.5)),0.0);
}
else
{
l9_2550=float3(l9_2547,float(l9_2549));
}
}
float3 l9_2551=l9_2550;
float3 l9_2552=l9_2551;
float4 l9_2553=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2552.xy,bias(l9_2546));
float4 l9_2554=l9_2553;
if (l9_2484)
{
l9_2554=mix(l9_2485,l9_2554,float4(l9_2488));
}
float4 l9_2555=l9_2554;
l9_2469=l9_2555;
float4 l9_2556=l9_2469;
float4 l9_2557=l9_2556;
float2 l9_2558=l9_2374+float2(0.0,l9_2371.y);
float4 l9_2559=float4(0.0);
int l9_2560;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2561=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2561=0;
}
else
{
l9_2561=in.varStereoViewID;
}
int l9_2562=l9_2561;
l9_2560=1-l9_2562;
}
else
{
int l9_2563=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2563=0;
}
else
{
l9_2563=in.varStereoViewID;
}
int l9_2564=l9_2563;
l9_2560=l9_2564;
}
int l9_2565=l9_2560;
int l9_2566=flowSelectionLayout_tmp;
int l9_2567=l9_2565;
float2 l9_2568=l9_2558;
bool l9_2569=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2570=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2571=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2572=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2573=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2574=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2575=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2576=0.0;
bool l9_2577=l9_2574&&(!l9_2572);
float l9_2578=1.0;
float l9_2579=l9_2568.x;
int l9_2580=l9_2571.x;
if (l9_2580==1)
{
l9_2579=fract(l9_2579);
}
else
{
if (l9_2580==2)
{
float l9_2581=fract(l9_2579);
float l9_2582=l9_2579-l9_2581;
float l9_2583=step(0.25,fract(l9_2582*0.5));
l9_2579=mix(l9_2581,1.0-l9_2581,fast::clamp(l9_2583,0.0,1.0));
}
}
l9_2568.x=l9_2579;
float l9_2584=l9_2568.y;
int l9_2585=l9_2571.y;
if (l9_2585==1)
{
l9_2584=fract(l9_2584);
}
else
{
if (l9_2585==2)
{
float l9_2586=fract(l9_2584);
float l9_2587=l9_2584-l9_2586;
float l9_2588=step(0.25,fract(l9_2587*0.5));
l9_2584=mix(l9_2586,1.0-l9_2586,fast::clamp(l9_2588,0.0,1.0));
}
}
l9_2568.y=l9_2584;
if (l9_2572)
{
bool l9_2589=l9_2574;
bool l9_2590;
if (l9_2589)
{
l9_2590=l9_2571.x==3;
}
else
{
l9_2590=l9_2589;
}
float l9_2591=l9_2568.x;
float l9_2592=l9_2573.x;
float l9_2593=l9_2573.z;
bool l9_2594=l9_2590;
float l9_2595=l9_2578;
float l9_2596=fast::clamp(l9_2591,l9_2592,l9_2593);
float l9_2597=step(abs(l9_2591-l9_2596),9.9999997e-06);
l9_2595*=(l9_2597+((1.0-float(l9_2594))*(1.0-l9_2597)));
l9_2591=l9_2596;
l9_2568.x=l9_2591;
l9_2578=l9_2595;
bool l9_2598=l9_2574;
bool l9_2599;
if (l9_2598)
{
l9_2599=l9_2571.y==3;
}
else
{
l9_2599=l9_2598;
}
float l9_2600=l9_2568.y;
float l9_2601=l9_2573.y;
float l9_2602=l9_2573.w;
bool l9_2603=l9_2599;
float l9_2604=l9_2578;
float l9_2605=fast::clamp(l9_2600,l9_2601,l9_2602);
float l9_2606=step(abs(l9_2600-l9_2605),9.9999997e-06);
l9_2604*=(l9_2606+((1.0-float(l9_2603))*(1.0-l9_2606)));
l9_2600=l9_2605;
l9_2568.y=l9_2600;
l9_2578=l9_2604;
}
float2 l9_2607=l9_2568;
bool l9_2608=l9_2569;
float3x3 l9_2609=l9_2570;
if (l9_2608)
{
l9_2607=float2((l9_2609*float3(l9_2607,1.0)).xy);
}
float2 l9_2610=l9_2607;
l9_2568=l9_2610;
float l9_2611=l9_2568.x;
int l9_2612=l9_2571.x;
bool l9_2613=l9_2577;
float l9_2614=l9_2578;
if ((l9_2612==0)||(l9_2612==3))
{
float l9_2615=l9_2611;
float l9_2616=0.0;
float l9_2617=1.0;
bool l9_2618=l9_2613;
float l9_2619=l9_2614;
float l9_2620=fast::clamp(l9_2615,l9_2616,l9_2617);
float l9_2621=step(abs(l9_2615-l9_2620),9.9999997e-06);
l9_2619*=(l9_2621+((1.0-float(l9_2618))*(1.0-l9_2621)));
l9_2615=l9_2620;
l9_2611=l9_2615;
l9_2614=l9_2619;
}
l9_2568.x=l9_2611;
l9_2578=l9_2614;
float l9_2622=l9_2568.y;
int l9_2623=l9_2571.y;
bool l9_2624=l9_2577;
float l9_2625=l9_2578;
if ((l9_2623==0)||(l9_2623==3))
{
float l9_2626=l9_2622;
float l9_2627=0.0;
float l9_2628=1.0;
bool l9_2629=l9_2624;
float l9_2630=l9_2625;
float l9_2631=fast::clamp(l9_2626,l9_2627,l9_2628);
float l9_2632=step(abs(l9_2626-l9_2631),9.9999997e-06);
l9_2630*=(l9_2632+((1.0-float(l9_2629))*(1.0-l9_2632)));
l9_2626=l9_2631;
l9_2622=l9_2626;
l9_2625=l9_2630;
}
l9_2568.y=l9_2622;
l9_2578=l9_2625;
float2 l9_2633=l9_2568;
int l9_2634=l9_2566;
int l9_2635=l9_2567;
float l9_2636=l9_2576;
float2 l9_2637=l9_2633;
int l9_2638=l9_2634;
int l9_2639=l9_2635;
float3 l9_2640=float3(0.0);
if (l9_2638==0)
{
l9_2640=float3(l9_2637,0.0);
}
else
{
if (l9_2638==1)
{
l9_2640=float3(l9_2637.x,(l9_2637.y*0.5)+(0.5-(float(l9_2639)*0.5)),0.0);
}
else
{
l9_2640=float3(l9_2637,float(l9_2639));
}
}
float3 l9_2641=l9_2640;
float3 l9_2642=l9_2641;
float4 l9_2643=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2642.xy,bias(l9_2636));
float4 l9_2644=l9_2643;
if (l9_2574)
{
l9_2644=mix(l9_2575,l9_2644,float4(l9_2578));
}
float4 l9_2645=l9_2644;
l9_2559=l9_2645;
float4 l9_2646=l9_2559;
float4 l9_2647=l9_2646;
float2 l9_2648=l9_2374+float2(l9_2371.x,l9_2371.y);
float4 l9_2649=float4(0.0);
int l9_2650;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2651=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2651=0;
}
else
{
l9_2651=in.varStereoViewID;
}
int l9_2652=l9_2651;
l9_2650=1-l9_2652;
}
else
{
int l9_2653=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2653=0;
}
else
{
l9_2653=in.varStereoViewID;
}
int l9_2654=l9_2653;
l9_2650=l9_2654;
}
int l9_2655=l9_2650;
int l9_2656=flowSelectionLayout_tmp;
int l9_2657=l9_2655;
float2 l9_2658=l9_2648;
bool l9_2659=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2660=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2661=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2662=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2663=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2664=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2665=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2666=0.0;
bool l9_2667=l9_2664&&(!l9_2662);
float l9_2668=1.0;
float l9_2669=l9_2658.x;
int l9_2670=l9_2661.x;
if (l9_2670==1)
{
l9_2669=fract(l9_2669);
}
else
{
if (l9_2670==2)
{
float l9_2671=fract(l9_2669);
float l9_2672=l9_2669-l9_2671;
float l9_2673=step(0.25,fract(l9_2672*0.5));
l9_2669=mix(l9_2671,1.0-l9_2671,fast::clamp(l9_2673,0.0,1.0));
}
}
l9_2658.x=l9_2669;
float l9_2674=l9_2658.y;
int l9_2675=l9_2661.y;
if (l9_2675==1)
{
l9_2674=fract(l9_2674);
}
else
{
if (l9_2675==2)
{
float l9_2676=fract(l9_2674);
float l9_2677=l9_2674-l9_2676;
float l9_2678=step(0.25,fract(l9_2677*0.5));
l9_2674=mix(l9_2676,1.0-l9_2676,fast::clamp(l9_2678,0.0,1.0));
}
}
l9_2658.y=l9_2674;
if (l9_2662)
{
bool l9_2679=l9_2664;
bool l9_2680;
if (l9_2679)
{
l9_2680=l9_2661.x==3;
}
else
{
l9_2680=l9_2679;
}
float l9_2681=l9_2658.x;
float l9_2682=l9_2663.x;
float l9_2683=l9_2663.z;
bool l9_2684=l9_2680;
float l9_2685=l9_2668;
float l9_2686=fast::clamp(l9_2681,l9_2682,l9_2683);
float l9_2687=step(abs(l9_2681-l9_2686),9.9999997e-06);
l9_2685*=(l9_2687+((1.0-float(l9_2684))*(1.0-l9_2687)));
l9_2681=l9_2686;
l9_2658.x=l9_2681;
l9_2668=l9_2685;
bool l9_2688=l9_2664;
bool l9_2689;
if (l9_2688)
{
l9_2689=l9_2661.y==3;
}
else
{
l9_2689=l9_2688;
}
float l9_2690=l9_2658.y;
float l9_2691=l9_2663.y;
float l9_2692=l9_2663.w;
bool l9_2693=l9_2689;
float l9_2694=l9_2668;
float l9_2695=fast::clamp(l9_2690,l9_2691,l9_2692);
float l9_2696=step(abs(l9_2690-l9_2695),9.9999997e-06);
l9_2694*=(l9_2696+((1.0-float(l9_2693))*(1.0-l9_2696)));
l9_2690=l9_2695;
l9_2658.y=l9_2690;
l9_2668=l9_2694;
}
float2 l9_2697=l9_2658;
bool l9_2698=l9_2659;
float3x3 l9_2699=l9_2660;
if (l9_2698)
{
l9_2697=float2((l9_2699*float3(l9_2697,1.0)).xy);
}
float2 l9_2700=l9_2697;
l9_2658=l9_2700;
float l9_2701=l9_2658.x;
int l9_2702=l9_2661.x;
bool l9_2703=l9_2667;
float l9_2704=l9_2668;
if ((l9_2702==0)||(l9_2702==3))
{
float l9_2705=l9_2701;
float l9_2706=0.0;
float l9_2707=1.0;
bool l9_2708=l9_2703;
float l9_2709=l9_2704;
float l9_2710=fast::clamp(l9_2705,l9_2706,l9_2707);
float l9_2711=step(abs(l9_2705-l9_2710),9.9999997e-06);
l9_2709*=(l9_2711+((1.0-float(l9_2708))*(1.0-l9_2711)));
l9_2705=l9_2710;
l9_2701=l9_2705;
l9_2704=l9_2709;
}
l9_2658.x=l9_2701;
l9_2668=l9_2704;
float l9_2712=l9_2658.y;
int l9_2713=l9_2661.y;
bool l9_2714=l9_2667;
float l9_2715=l9_2668;
if ((l9_2713==0)||(l9_2713==3))
{
float l9_2716=l9_2712;
float l9_2717=0.0;
float l9_2718=1.0;
bool l9_2719=l9_2714;
float l9_2720=l9_2715;
float l9_2721=fast::clamp(l9_2716,l9_2717,l9_2718);
float l9_2722=step(abs(l9_2716-l9_2721),9.9999997e-06);
l9_2720*=(l9_2722+((1.0-float(l9_2719))*(1.0-l9_2722)));
l9_2716=l9_2721;
l9_2712=l9_2716;
l9_2715=l9_2720;
}
l9_2658.y=l9_2712;
l9_2668=l9_2715;
float2 l9_2723=l9_2658;
int l9_2724=l9_2656;
int l9_2725=l9_2657;
float l9_2726=l9_2666;
float2 l9_2727=l9_2723;
int l9_2728=l9_2724;
int l9_2729=l9_2725;
float3 l9_2730=float3(0.0);
if (l9_2728==0)
{
l9_2730=float3(l9_2727,0.0);
}
else
{
if (l9_2728==1)
{
l9_2730=float3(l9_2727.x,(l9_2727.y*0.5)+(0.5-(float(l9_2729)*0.5)),0.0);
}
else
{
l9_2730=float3(l9_2727,float(l9_2729));
}
}
float3 l9_2731=l9_2730;
float3 l9_2732=l9_2731;
float4 l9_2733=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2732.xy,bias(l9_2726));
float4 l9_2734=l9_2733;
if (l9_2664)
{
l9_2734=mix(l9_2665,l9_2734,float4(l9_2668));
}
float4 l9_2735=l9_2734;
l9_2649=l9_2735;
float4 l9_2736=l9_2649;
float4 l9_2737=l9_2736;
float4 l9_2738=mix(l9_2467,l9_2557,float4(l9_2375.x));
float4 l9_2739=mix(l9_2647,l9_2737,float4(l9_2375.x));
float4 l9_2740=mix(l9_2738,l9_2739,float4(l9_2375.y));
float4 l9_2741=l9_2740;
float2 l9_2742=l9_123;
float2 l9_2743=float2(0.0);
l9_2743=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2744=l9_2743;
float2 l9_2745=float2(1.0)/l9_2744;
float2 l9_2746=float2(0.0);
l9_2746=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2747=l9_2746;
float2 l9_2748=(l9_2742*l9_2747)+float2(0.5);
float2 l9_2749=fract(l9_2748);
float2 l9_2750=float2(0.0);
l9_2750=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2751=l9_2750;
l9_2748=(floor(l9_2748)/l9_2751)-(l9_2745/float2(2.0));
float2 l9_2752=l9_2748;
float4 l9_2753=float4(0.0);
int l9_2754;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2755=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2755=0;
}
else
{
l9_2755=in.varStereoViewID;
}
int l9_2756=l9_2755;
l9_2754=1-l9_2756;
}
else
{
int l9_2757=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2757=0;
}
else
{
l9_2757=in.varStereoViewID;
}
int l9_2758=l9_2757;
l9_2754=l9_2758;
}
int l9_2759=l9_2754;
int l9_2760=flowSelectionLayout_tmp;
int l9_2761=l9_2759;
float2 l9_2762=l9_2752;
bool l9_2763=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2764=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2765=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2766=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2767=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2768=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2769=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2770=0.0;
bool l9_2771=l9_2768&&(!l9_2766);
float l9_2772=1.0;
float l9_2773=l9_2762.x;
int l9_2774=l9_2765.x;
if (l9_2774==1)
{
l9_2773=fract(l9_2773);
}
else
{
if (l9_2774==2)
{
float l9_2775=fract(l9_2773);
float l9_2776=l9_2773-l9_2775;
float l9_2777=step(0.25,fract(l9_2776*0.5));
l9_2773=mix(l9_2775,1.0-l9_2775,fast::clamp(l9_2777,0.0,1.0));
}
}
l9_2762.x=l9_2773;
float l9_2778=l9_2762.y;
int l9_2779=l9_2765.y;
if (l9_2779==1)
{
l9_2778=fract(l9_2778);
}
else
{
if (l9_2779==2)
{
float l9_2780=fract(l9_2778);
float l9_2781=l9_2778-l9_2780;
float l9_2782=step(0.25,fract(l9_2781*0.5));
l9_2778=mix(l9_2780,1.0-l9_2780,fast::clamp(l9_2782,0.0,1.0));
}
}
l9_2762.y=l9_2778;
if (l9_2766)
{
bool l9_2783=l9_2768;
bool l9_2784;
if (l9_2783)
{
l9_2784=l9_2765.x==3;
}
else
{
l9_2784=l9_2783;
}
float l9_2785=l9_2762.x;
float l9_2786=l9_2767.x;
float l9_2787=l9_2767.z;
bool l9_2788=l9_2784;
float l9_2789=l9_2772;
float l9_2790=fast::clamp(l9_2785,l9_2786,l9_2787);
float l9_2791=step(abs(l9_2785-l9_2790),9.9999997e-06);
l9_2789*=(l9_2791+((1.0-float(l9_2788))*(1.0-l9_2791)));
l9_2785=l9_2790;
l9_2762.x=l9_2785;
l9_2772=l9_2789;
bool l9_2792=l9_2768;
bool l9_2793;
if (l9_2792)
{
l9_2793=l9_2765.y==3;
}
else
{
l9_2793=l9_2792;
}
float l9_2794=l9_2762.y;
float l9_2795=l9_2767.y;
float l9_2796=l9_2767.w;
bool l9_2797=l9_2793;
float l9_2798=l9_2772;
float l9_2799=fast::clamp(l9_2794,l9_2795,l9_2796);
float l9_2800=step(abs(l9_2794-l9_2799),9.9999997e-06);
l9_2798*=(l9_2800+((1.0-float(l9_2797))*(1.0-l9_2800)));
l9_2794=l9_2799;
l9_2762.y=l9_2794;
l9_2772=l9_2798;
}
float2 l9_2801=l9_2762;
bool l9_2802=l9_2763;
float3x3 l9_2803=l9_2764;
if (l9_2802)
{
l9_2801=float2((l9_2803*float3(l9_2801,1.0)).xy);
}
float2 l9_2804=l9_2801;
l9_2762=l9_2804;
float l9_2805=l9_2762.x;
int l9_2806=l9_2765.x;
bool l9_2807=l9_2771;
float l9_2808=l9_2772;
if ((l9_2806==0)||(l9_2806==3))
{
float l9_2809=l9_2805;
float l9_2810=0.0;
float l9_2811=1.0;
bool l9_2812=l9_2807;
float l9_2813=l9_2808;
float l9_2814=fast::clamp(l9_2809,l9_2810,l9_2811);
float l9_2815=step(abs(l9_2809-l9_2814),9.9999997e-06);
l9_2813*=(l9_2815+((1.0-float(l9_2812))*(1.0-l9_2815)));
l9_2809=l9_2814;
l9_2805=l9_2809;
l9_2808=l9_2813;
}
l9_2762.x=l9_2805;
l9_2772=l9_2808;
float l9_2816=l9_2762.y;
int l9_2817=l9_2765.y;
bool l9_2818=l9_2771;
float l9_2819=l9_2772;
if ((l9_2817==0)||(l9_2817==3))
{
float l9_2820=l9_2816;
float l9_2821=0.0;
float l9_2822=1.0;
bool l9_2823=l9_2818;
float l9_2824=l9_2819;
float l9_2825=fast::clamp(l9_2820,l9_2821,l9_2822);
float l9_2826=step(abs(l9_2820-l9_2825),9.9999997e-06);
l9_2824*=(l9_2826+((1.0-float(l9_2823))*(1.0-l9_2826)));
l9_2820=l9_2825;
l9_2816=l9_2820;
l9_2819=l9_2824;
}
l9_2762.y=l9_2816;
l9_2772=l9_2819;
float2 l9_2827=l9_2762;
int l9_2828=l9_2760;
int l9_2829=l9_2761;
float l9_2830=l9_2770;
float2 l9_2831=l9_2827;
int l9_2832=l9_2828;
int l9_2833=l9_2829;
float3 l9_2834=float3(0.0);
if (l9_2832==0)
{
l9_2834=float3(l9_2831,0.0);
}
else
{
if (l9_2832==1)
{
l9_2834=float3(l9_2831.x,(l9_2831.y*0.5)+(0.5-(float(l9_2833)*0.5)),0.0);
}
else
{
l9_2834=float3(l9_2831,float(l9_2833));
}
}
float3 l9_2835=l9_2834;
float3 l9_2836=l9_2835;
float4 l9_2837=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2836.xy,bias(l9_2830));
float4 l9_2838=l9_2837;
if (l9_2768)
{
l9_2838=mix(l9_2769,l9_2838,float4(l9_2772));
}
float4 l9_2839=l9_2838;
l9_2753=l9_2839;
float4 l9_2840=l9_2753;
float4 l9_2841=l9_2840;
float2 l9_2842=l9_2748+float2(l9_2745.x,0.0);
float4 l9_2843=float4(0.0);
int l9_2844;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2845=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2845=0;
}
else
{
l9_2845=in.varStereoViewID;
}
int l9_2846=l9_2845;
l9_2844=1-l9_2846;
}
else
{
int l9_2847=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2847=0;
}
else
{
l9_2847=in.varStereoViewID;
}
int l9_2848=l9_2847;
l9_2844=l9_2848;
}
int l9_2849=l9_2844;
int l9_2850=flowSelectionLayout_tmp;
int l9_2851=l9_2849;
float2 l9_2852=l9_2842;
bool l9_2853=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2854=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2855=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2856=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2857=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2858=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2859=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2860=0.0;
bool l9_2861=l9_2858&&(!l9_2856);
float l9_2862=1.0;
float l9_2863=l9_2852.x;
int l9_2864=l9_2855.x;
if (l9_2864==1)
{
l9_2863=fract(l9_2863);
}
else
{
if (l9_2864==2)
{
float l9_2865=fract(l9_2863);
float l9_2866=l9_2863-l9_2865;
float l9_2867=step(0.25,fract(l9_2866*0.5));
l9_2863=mix(l9_2865,1.0-l9_2865,fast::clamp(l9_2867,0.0,1.0));
}
}
l9_2852.x=l9_2863;
float l9_2868=l9_2852.y;
int l9_2869=l9_2855.y;
if (l9_2869==1)
{
l9_2868=fract(l9_2868);
}
else
{
if (l9_2869==2)
{
float l9_2870=fract(l9_2868);
float l9_2871=l9_2868-l9_2870;
float l9_2872=step(0.25,fract(l9_2871*0.5));
l9_2868=mix(l9_2870,1.0-l9_2870,fast::clamp(l9_2872,0.0,1.0));
}
}
l9_2852.y=l9_2868;
if (l9_2856)
{
bool l9_2873=l9_2858;
bool l9_2874;
if (l9_2873)
{
l9_2874=l9_2855.x==3;
}
else
{
l9_2874=l9_2873;
}
float l9_2875=l9_2852.x;
float l9_2876=l9_2857.x;
float l9_2877=l9_2857.z;
bool l9_2878=l9_2874;
float l9_2879=l9_2862;
float l9_2880=fast::clamp(l9_2875,l9_2876,l9_2877);
float l9_2881=step(abs(l9_2875-l9_2880),9.9999997e-06);
l9_2879*=(l9_2881+((1.0-float(l9_2878))*(1.0-l9_2881)));
l9_2875=l9_2880;
l9_2852.x=l9_2875;
l9_2862=l9_2879;
bool l9_2882=l9_2858;
bool l9_2883;
if (l9_2882)
{
l9_2883=l9_2855.y==3;
}
else
{
l9_2883=l9_2882;
}
float l9_2884=l9_2852.y;
float l9_2885=l9_2857.y;
float l9_2886=l9_2857.w;
bool l9_2887=l9_2883;
float l9_2888=l9_2862;
float l9_2889=fast::clamp(l9_2884,l9_2885,l9_2886);
float l9_2890=step(abs(l9_2884-l9_2889),9.9999997e-06);
l9_2888*=(l9_2890+((1.0-float(l9_2887))*(1.0-l9_2890)));
l9_2884=l9_2889;
l9_2852.y=l9_2884;
l9_2862=l9_2888;
}
float2 l9_2891=l9_2852;
bool l9_2892=l9_2853;
float3x3 l9_2893=l9_2854;
if (l9_2892)
{
l9_2891=float2((l9_2893*float3(l9_2891,1.0)).xy);
}
float2 l9_2894=l9_2891;
l9_2852=l9_2894;
float l9_2895=l9_2852.x;
int l9_2896=l9_2855.x;
bool l9_2897=l9_2861;
float l9_2898=l9_2862;
if ((l9_2896==0)||(l9_2896==3))
{
float l9_2899=l9_2895;
float l9_2900=0.0;
float l9_2901=1.0;
bool l9_2902=l9_2897;
float l9_2903=l9_2898;
float l9_2904=fast::clamp(l9_2899,l9_2900,l9_2901);
float l9_2905=step(abs(l9_2899-l9_2904),9.9999997e-06);
l9_2903*=(l9_2905+((1.0-float(l9_2902))*(1.0-l9_2905)));
l9_2899=l9_2904;
l9_2895=l9_2899;
l9_2898=l9_2903;
}
l9_2852.x=l9_2895;
l9_2862=l9_2898;
float l9_2906=l9_2852.y;
int l9_2907=l9_2855.y;
bool l9_2908=l9_2861;
float l9_2909=l9_2862;
if ((l9_2907==0)||(l9_2907==3))
{
float l9_2910=l9_2906;
float l9_2911=0.0;
float l9_2912=1.0;
bool l9_2913=l9_2908;
float l9_2914=l9_2909;
float l9_2915=fast::clamp(l9_2910,l9_2911,l9_2912);
float l9_2916=step(abs(l9_2910-l9_2915),9.9999997e-06);
l9_2914*=(l9_2916+((1.0-float(l9_2913))*(1.0-l9_2916)));
l9_2910=l9_2915;
l9_2906=l9_2910;
l9_2909=l9_2914;
}
l9_2852.y=l9_2906;
l9_2862=l9_2909;
float2 l9_2917=l9_2852;
int l9_2918=l9_2850;
int l9_2919=l9_2851;
float l9_2920=l9_2860;
float2 l9_2921=l9_2917;
int l9_2922=l9_2918;
int l9_2923=l9_2919;
float3 l9_2924=float3(0.0);
if (l9_2922==0)
{
l9_2924=float3(l9_2921,0.0);
}
else
{
if (l9_2922==1)
{
l9_2924=float3(l9_2921.x,(l9_2921.y*0.5)+(0.5-(float(l9_2923)*0.5)),0.0);
}
else
{
l9_2924=float3(l9_2921,float(l9_2923));
}
}
float3 l9_2925=l9_2924;
float3 l9_2926=l9_2925;
float4 l9_2927=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2926.xy,bias(l9_2920));
float4 l9_2928=l9_2927;
if (l9_2858)
{
l9_2928=mix(l9_2859,l9_2928,float4(l9_2862));
}
float4 l9_2929=l9_2928;
l9_2843=l9_2929;
float4 l9_2930=l9_2843;
float4 l9_2931=l9_2930;
float2 l9_2932=l9_2748+float2(0.0,l9_2745.y);
float4 l9_2933=float4(0.0);
int l9_2934;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2935=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2935=0;
}
else
{
l9_2935=in.varStereoViewID;
}
int l9_2936=l9_2935;
l9_2934=1-l9_2936;
}
else
{
int l9_2937=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2937=0;
}
else
{
l9_2937=in.varStereoViewID;
}
int l9_2938=l9_2937;
l9_2934=l9_2938;
}
int l9_2939=l9_2934;
int l9_2940=flowSelectionLayout_tmp;
int l9_2941=l9_2939;
float2 l9_2942=l9_2932;
bool l9_2943=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2944=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2945=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2946=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2947=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2948=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2949=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2950=0.0;
bool l9_2951=l9_2948&&(!l9_2946);
float l9_2952=1.0;
float l9_2953=l9_2942.x;
int l9_2954=l9_2945.x;
if (l9_2954==1)
{
l9_2953=fract(l9_2953);
}
else
{
if (l9_2954==2)
{
float l9_2955=fract(l9_2953);
float l9_2956=l9_2953-l9_2955;
float l9_2957=step(0.25,fract(l9_2956*0.5));
l9_2953=mix(l9_2955,1.0-l9_2955,fast::clamp(l9_2957,0.0,1.0));
}
}
l9_2942.x=l9_2953;
float l9_2958=l9_2942.y;
int l9_2959=l9_2945.y;
if (l9_2959==1)
{
l9_2958=fract(l9_2958);
}
else
{
if (l9_2959==2)
{
float l9_2960=fract(l9_2958);
float l9_2961=l9_2958-l9_2960;
float l9_2962=step(0.25,fract(l9_2961*0.5));
l9_2958=mix(l9_2960,1.0-l9_2960,fast::clamp(l9_2962,0.0,1.0));
}
}
l9_2942.y=l9_2958;
if (l9_2946)
{
bool l9_2963=l9_2948;
bool l9_2964;
if (l9_2963)
{
l9_2964=l9_2945.x==3;
}
else
{
l9_2964=l9_2963;
}
float l9_2965=l9_2942.x;
float l9_2966=l9_2947.x;
float l9_2967=l9_2947.z;
bool l9_2968=l9_2964;
float l9_2969=l9_2952;
float l9_2970=fast::clamp(l9_2965,l9_2966,l9_2967);
float l9_2971=step(abs(l9_2965-l9_2970),9.9999997e-06);
l9_2969*=(l9_2971+((1.0-float(l9_2968))*(1.0-l9_2971)));
l9_2965=l9_2970;
l9_2942.x=l9_2965;
l9_2952=l9_2969;
bool l9_2972=l9_2948;
bool l9_2973;
if (l9_2972)
{
l9_2973=l9_2945.y==3;
}
else
{
l9_2973=l9_2972;
}
float l9_2974=l9_2942.y;
float l9_2975=l9_2947.y;
float l9_2976=l9_2947.w;
bool l9_2977=l9_2973;
float l9_2978=l9_2952;
float l9_2979=fast::clamp(l9_2974,l9_2975,l9_2976);
float l9_2980=step(abs(l9_2974-l9_2979),9.9999997e-06);
l9_2978*=(l9_2980+((1.0-float(l9_2977))*(1.0-l9_2980)));
l9_2974=l9_2979;
l9_2942.y=l9_2974;
l9_2952=l9_2978;
}
float2 l9_2981=l9_2942;
bool l9_2982=l9_2943;
float3x3 l9_2983=l9_2944;
if (l9_2982)
{
l9_2981=float2((l9_2983*float3(l9_2981,1.0)).xy);
}
float2 l9_2984=l9_2981;
l9_2942=l9_2984;
float l9_2985=l9_2942.x;
int l9_2986=l9_2945.x;
bool l9_2987=l9_2951;
float l9_2988=l9_2952;
if ((l9_2986==0)||(l9_2986==3))
{
float l9_2989=l9_2985;
float l9_2990=0.0;
float l9_2991=1.0;
bool l9_2992=l9_2987;
float l9_2993=l9_2988;
float l9_2994=fast::clamp(l9_2989,l9_2990,l9_2991);
float l9_2995=step(abs(l9_2989-l9_2994),9.9999997e-06);
l9_2993*=(l9_2995+((1.0-float(l9_2992))*(1.0-l9_2995)));
l9_2989=l9_2994;
l9_2985=l9_2989;
l9_2988=l9_2993;
}
l9_2942.x=l9_2985;
l9_2952=l9_2988;
float l9_2996=l9_2942.y;
int l9_2997=l9_2945.y;
bool l9_2998=l9_2951;
float l9_2999=l9_2952;
if ((l9_2997==0)||(l9_2997==3))
{
float l9_3000=l9_2996;
float l9_3001=0.0;
float l9_3002=1.0;
bool l9_3003=l9_2998;
float l9_3004=l9_2999;
float l9_3005=fast::clamp(l9_3000,l9_3001,l9_3002);
float l9_3006=step(abs(l9_3000-l9_3005),9.9999997e-06);
l9_3004*=(l9_3006+((1.0-float(l9_3003))*(1.0-l9_3006)));
l9_3000=l9_3005;
l9_2996=l9_3000;
l9_2999=l9_3004;
}
l9_2942.y=l9_2996;
l9_2952=l9_2999;
float2 l9_3007=l9_2942;
int l9_3008=l9_2940;
int l9_3009=l9_2941;
float l9_3010=l9_2950;
float2 l9_3011=l9_3007;
int l9_3012=l9_3008;
int l9_3013=l9_3009;
float3 l9_3014=float3(0.0);
if (l9_3012==0)
{
l9_3014=float3(l9_3011,0.0);
}
else
{
if (l9_3012==1)
{
l9_3014=float3(l9_3011.x,(l9_3011.y*0.5)+(0.5-(float(l9_3013)*0.5)),0.0);
}
else
{
l9_3014=float3(l9_3011,float(l9_3013));
}
}
float3 l9_3015=l9_3014;
float3 l9_3016=l9_3015;
float4 l9_3017=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_3016.xy,bias(l9_3010));
float4 l9_3018=l9_3017;
if (l9_2948)
{
l9_3018=mix(l9_2949,l9_3018,float4(l9_2952));
}
float4 l9_3019=l9_3018;
l9_2933=l9_3019;
float4 l9_3020=l9_2933;
float4 l9_3021=l9_3020;
float2 l9_3022=l9_2748+float2(l9_2745.x,l9_2745.y);
float4 l9_3023=float4(0.0);
int l9_3024;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_3025=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3025=0;
}
else
{
l9_3025=in.varStereoViewID;
}
int l9_3026=l9_3025;
l9_3024=1-l9_3026;
}
else
{
int l9_3027=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3027=0;
}
else
{
l9_3027=in.varStereoViewID;
}
int l9_3028=l9_3027;
l9_3024=l9_3028;
}
int l9_3029=l9_3024;
int l9_3030=flowSelectionLayout_tmp;
int l9_3031=l9_3029;
float2 l9_3032=l9_3022;
bool l9_3033=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_3034=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_3035=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_3036=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_3037=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_3038=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_3039=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_3040=0.0;
bool l9_3041=l9_3038&&(!l9_3036);
float l9_3042=1.0;
float l9_3043=l9_3032.x;
int l9_3044=l9_3035.x;
if (l9_3044==1)
{
l9_3043=fract(l9_3043);
}
else
{
if (l9_3044==2)
{
float l9_3045=fract(l9_3043);
float l9_3046=l9_3043-l9_3045;
float l9_3047=step(0.25,fract(l9_3046*0.5));
l9_3043=mix(l9_3045,1.0-l9_3045,fast::clamp(l9_3047,0.0,1.0));
}
}
l9_3032.x=l9_3043;
float l9_3048=l9_3032.y;
int l9_3049=l9_3035.y;
if (l9_3049==1)
{
l9_3048=fract(l9_3048);
}
else
{
if (l9_3049==2)
{
float l9_3050=fract(l9_3048);
float l9_3051=l9_3048-l9_3050;
float l9_3052=step(0.25,fract(l9_3051*0.5));
l9_3048=mix(l9_3050,1.0-l9_3050,fast::clamp(l9_3052,0.0,1.0));
}
}
l9_3032.y=l9_3048;
if (l9_3036)
{
bool l9_3053=l9_3038;
bool l9_3054;
if (l9_3053)
{
l9_3054=l9_3035.x==3;
}
else
{
l9_3054=l9_3053;
}
float l9_3055=l9_3032.x;
float l9_3056=l9_3037.x;
float l9_3057=l9_3037.z;
bool l9_3058=l9_3054;
float l9_3059=l9_3042;
float l9_3060=fast::clamp(l9_3055,l9_3056,l9_3057);
float l9_3061=step(abs(l9_3055-l9_3060),9.9999997e-06);
l9_3059*=(l9_3061+((1.0-float(l9_3058))*(1.0-l9_3061)));
l9_3055=l9_3060;
l9_3032.x=l9_3055;
l9_3042=l9_3059;
bool l9_3062=l9_3038;
bool l9_3063;
if (l9_3062)
{
l9_3063=l9_3035.y==3;
}
else
{
l9_3063=l9_3062;
}
float l9_3064=l9_3032.y;
float l9_3065=l9_3037.y;
float l9_3066=l9_3037.w;
bool l9_3067=l9_3063;
float l9_3068=l9_3042;
float l9_3069=fast::clamp(l9_3064,l9_3065,l9_3066);
float l9_3070=step(abs(l9_3064-l9_3069),9.9999997e-06);
l9_3068*=(l9_3070+((1.0-float(l9_3067))*(1.0-l9_3070)));
l9_3064=l9_3069;
l9_3032.y=l9_3064;
l9_3042=l9_3068;
}
float2 l9_3071=l9_3032;
bool l9_3072=l9_3033;
float3x3 l9_3073=l9_3034;
if (l9_3072)
{
l9_3071=float2((l9_3073*float3(l9_3071,1.0)).xy);
}
float2 l9_3074=l9_3071;
l9_3032=l9_3074;
float l9_3075=l9_3032.x;
int l9_3076=l9_3035.x;
bool l9_3077=l9_3041;
float l9_3078=l9_3042;
if ((l9_3076==0)||(l9_3076==3))
{
float l9_3079=l9_3075;
float l9_3080=0.0;
float l9_3081=1.0;
bool l9_3082=l9_3077;
float l9_3083=l9_3078;
float l9_3084=fast::clamp(l9_3079,l9_3080,l9_3081);
float l9_3085=step(abs(l9_3079-l9_3084),9.9999997e-06);
l9_3083*=(l9_3085+((1.0-float(l9_3082))*(1.0-l9_3085)));
l9_3079=l9_3084;
l9_3075=l9_3079;
l9_3078=l9_3083;
}
l9_3032.x=l9_3075;
l9_3042=l9_3078;
float l9_3086=l9_3032.y;
int l9_3087=l9_3035.y;
bool l9_3088=l9_3041;
float l9_3089=l9_3042;
if ((l9_3087==0)||(l9_3087==3))
{
float l9_3090=l9_3086;
float l9_3091=0.0;
float l9_3092=1.0;
bool l9_3093=l9_3088;
float l9_3094=l9_3089;
float l9_3095=fast::clamp(l9_3090,l9_3091,l9_3092);
float l9_3096=step(abs(l9_3090-l9_3095),9.9999997e-06);
l9_3094*=(l9_3096+((1.0-float(l9_3093))*(1.0-l9_3096)));
l9_3090=l9_3095;
l9_3086=l9_3090;
l9_3089=l9_3094;
}
l9_3032.y=l9_3086;
l9_3042=l9_3089;
float2 l9_3097=l9_3032;
int l9_3098=l9_3030;
int l9_3099=l9_3031;
float l9_3100=l9_3040;
float2 l9_3101=l9_3097;
int l9_3102=l9_3098;
int l9_3103=l9_3099;
float3 l9_3104=float3(0.0);
if (l9_3102==0)
{
l9_3104=float3(l9_3101,0.0);
}
else
{
if (l9_3102==1)
{
l9_3104=float3(l9_3101.x,(l9_3101.y*0.5)+(0.5-(float(l9_3103)*0.5)),0.0);
}
else
{
l9_3104=float3(l9_3101,float(l9_3103));
}
}
float3 l9_3105=l9_3104;
float3 l9_3106=l9_3105;
float4 l9_3107=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_3106.xy,bias(l9_3100));
float4 l9_3108=l9_3107;
if (l9_3038)
{
l9_3108=mix(l9_3039,l9_3108,float4(l9_3042));
}
float4 l9_3109=l9_3108;
l9_3023=l9_3109;
float4 l9_3110=l9_3023;
float4 l9_3111=l9_3110;
float4 l9_3112=mix(l9_2841,l9_2931,float4(l9_2749.x));
float4 l9_3113=mix(l9_3021,l9_3111,float4(l9_2749.x));
float4 l9_3114=mix(l9_3112,l9_3113,float4(l9_2749.y));
float4 l9_3115=l9_3114;
float l9_3116=fast::max(fast::max(fast::max(fast::max(l9_2367.x,l9_2367.y),l9_2741.x),l9_2741.y),l9_3115.x);
float l9_3117=exp(l9_2367.x-l9_3116);
float l9_3118=exp(l9_2367.y-l9_3116);
float l9_3119=exp(l9_2741.x-l9_3116);
float l9_3120=exp(l9_2741.y-l9_3116);
float l9_3121=exp(l9_3115.x-l9_3116);
float l9_3122=(((l9_3117+l9_3118)+l9_3119)+l9_3120)+l9_3121;
l9_3117/=l9_3122;
l9_3118/=l9_3122;
l9_3119/=l9_3122;
l9_3120/=l9_3122;
l9_3121/=l9_3122;
float2 l9_3123=((((l9_497*l9_3117)+(l9_871*l9_3118))+(l9_1245*l9_3119))+(l9_1619*l9_3120))+(l9_1993*l9_3121);
float2 l9_3124=((l9_115*2.0)-float2(1.0))+l9_3123;
float2 l9_3125=l9_3124;
float2 l9_3126=float2(N52_sx,N52_sy);
float2 l9_3127=float2(N52_dx,N52_dy);
float2 l9_3128=l9_3125;
l9_3128*=l9_3126;
l9_3128+=l9_3127;
l9_3128+=float2(1.0);
l9_3128/=float2(2.0);
float2 l9_3129=l9_3128;
float2 l9_3130=l9_3129;
l9_3130=float2(l9_3130.x,1.0-l9_3130.y);
float2 l9_3131=l9_3130;
float4 l9_3132=float4(0.0);
int l9_3133;
if ((int(sourceCropTexHasSwappedViews_tmp)!=0))
{
int l9_3134=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3134=0;
}
else
{
l9_3134=in.varStereoViewID;
}
int l9_3135=l9_3134;
l9_3133=1-l9_3135;
}
else
{
int l9_3136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3136=0;
}
else
{
l9_3136=in.varStereoViewID;
}
int l9_3137=l9_3136;
l9_3133=l9_3137;
}
int l9_3138=l9_3133;
int l9_3139=sourceCropTexLayout_tmp;
int l9_3140=l9_3138;
float2 l9_3141=l9_3131;
bool l9_3142=(int(SC_USE_UV_TRANSFORM_sourceCropTex_tmp)!=0);
float3x3 l9_3143=(*sc_set0.UserUniforms).sourceCropTexTransform;
int2 l9_3144=int2(SC_SOFTWARE_WRAP_MODE_U_sourceCropTex_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceCropTex_tmp);
bool l9_3145=(int(SC_USE_UV_MIN_MAX_sourceCropTex_tmp)!=0);
float4 l9_3146=(*sc_set0.UserUniforms).sourceCropTexUvMinMax;
bool l9_3147=(int(SC_USE_CLAMP_TO_BORDER_sourceCropTex_tmp)!=0);
float4 l9_3148=(*sc_set0.UserUniforms).sourceCropTexBorderColor;
float l9_3149=0.0;
bool l9_3150=l9_3147&&(!l9_3145);
float l9_3151=1.0;
float l9_3152=l9_3141.x;
int l9_3153=l9_3144.x;
if (l9_3153==1)
{
l9_3152=fract(l9_3152);
}
else
{
if (l9_3153==2)
{
float l9_3154=fract(l9_3152);
float l9_3155=l9_3152-l9_3154;
float l9_3156=step(0.25,fract(l9_3155*0.5));
l9_3152=mix(l9_3154,1.0-l9_3154,fast::clamp(l9_3156,0.0,1.0));
}
}
l9_3141.x=l9_3152;
float l9_3157=l9_3141.y;
int l9_3158=l9_3144.y;
if (l9_3158==1)
{
l9_3157=fract(l9_3157);
}
else
{
if (l9_3158==2)
{
float l9_3159=fract(l9_3157);
float l9_3160=l9_3157-l9_3159;
float l9_3161=step(0.25,fract(l9_3160*0.5));
l9_3157=mix(l9_3159,1.0-l9_3159,fast::clamp(l9_3161,0.0,1.0));
}
}
l9_3141.y=l9_3157;
if (l9_3145)
{
bool l9_3162=l9_3147;
bool l9_3163;
if (l9_3162)
{
l9_3163=l9_3144.x==3;
}
else
{
l9_3163=l9_3162;
}
float l9_3164=l9_3141.x;
float l9_3165=l9_3146.x;
float l9_3166=l9_3146.z;
bool l9_3167=l9_3163;
float l9_3168=l9_3151;
float l9_3169=fast::clamp(l9_3164,l9_3165,l9_3166);
float l9_3170=step(abs(l9_3164-l9_3169),9.9999997e-06);
l9_3168*=(l9_3170+((1.0-float(l9_3167))*(1.0-l9_3170)));
l9_3164=l9_3169;
l9_3141.x=l9_3164;
l9_3151=l9_3168;
bool l9_3171=l9_3147;
bool l9_3172;
if (l9_3171)
{
l9_3172=l9_3144.y==3;
}
else
{
l9_3172=l9_3171;
}
float l9_3173=l9_3141.y;
float l9_3174=l9_3146.y;
float l9_3175=l9_3146.w;
bool l9_3176=l9_3172;
float l9_3177=l9_3151;
float l9_3178=fast::clamp(l9_3173,l9_3174,l9_3175);
float l9_3179=step(abs(l9_3173-l9_3178),9.9999997e-06);
l9_3177*=(l9_3179+((1.0-float(l9_3176))*(1.0-l9_3179)));
l9_3173=l9_3178;
l9_3141.y=l9_3173;
l9_3151=l9_3177;
}
float2 l9_3180=l9_3141;
bool l9_3181=l9_3142;
float3x3 l9_3182=l9_3143;
if (l9_3181)
{
l9_3180=float2((l9_3182*float3(l9_3180,1.0)).xy);
}
float2 l9_3183=l9_3180;
l9_3141=l9_3183;
float l9_3184=l9_3141.x;
int l9_3185=l9_3144.x;
bool l9_3186=l9_3150;
float l9_3187=l9_3151;
if ((l9_3185==0)||(l9_3185==3))
{
float l9_3188=l9_3184;
float l9_3189=0.0;
float l9_3190=1.0;
bool l9_3191=l9_3186;
float l9_3192=l9_3187;
float l9_3193=fast::clamp(l9_3188,l9_3189,l9_3190);
float l9_3194=step(abs(l9_3188-l9_3193),9.9999997e-06);
l9_3192*=(l9_3194+((1.0-float(l9_3191))*(1.0-l9_3194)));
l9_3188=l9_3193;
l9_3184=l9_3188;
l9_3187=l9_3192;
}
l9_3141.x=l9_3184;
l9_3151=l9_3187;
float l9_3195=l9_3141.y;
int l9_3196=l9_3144.y;
bool l9_3197=l9_3150;
float l9_3198=l9_3151;
if ((l9_3196==0)||(l9_3196==3))
{
float l9_3199=l9_3195;
float l9_3200=0.0;
float l9_3201=1.0;
bool l9_3202=l9_3197;
float l9_3203=l9_3198;
float l9_3204=fast::clamp(l9_3199,l9_3200,l9_3201);
float l9_3205=step(abs(l9_3199-l9_3204),9.9999997e-06);
l9_3203*=(l9_3205+((1.0-float(l9_3202))*(1.0-l9_3205)));
l9_3199=l9_3204;
l9_3195=l9_3199;
l9_3198=l9_3203;
}
l9_3141.y=l9_3195;
l9_3151=l9_3198;
float2 l9_3206=l9_3141;
int l9_3207=l9_3139;
int l9_3208=l9_3140;
float l9_3209=l9_3149;
float2 l9_3210=l9_3206;
int l9_3211=l9_3207;
int l9_3212=l9_3208;
float3 l9_3213=float3(0.0);
if (l9_3211==0)
{
l9_3213=float3(l9_3210,0.0);
}
else
{
if (l9_3211==1)
{
l9_3213=float3(l9_3210.x,(l9_3210.y*0.5)+(0.5-(float(l9_3212)*0.5)),0.0);
}
else
{
l9_3213=float3(l9_3210,float(l9_3212));
}
}
float3 l9_3214=l9_3213;
float3 l9_3215=l9_3214;
float4 l9_3216=sc_set0.sourceCropTex.sample(sc_set0.sourceCropTexSmpSC,l9_3215.xy,bias(l9_3209));
float4 l9_3217=l9_3216;
if (l9_3147)
{
l9_3217=mix(l9_3148,l9_3217,float4(l9_3151));
}
float4 l9_3218=l9_3217;
l9_3132=l9_3218;
float4 l9_3219=l9_3132;
float4 l9_3220=l9_3219;
float2 l9_3221=l9_3124;
l9_3221.y=((-0.5)*l9_3221.y)+0.5;
l9_3221.x=(0.5*l9_3221.x)+0.5;
float2 l9_3222=l9_3221;
float4 l9_3223=float4(0.0);
int l9_3224;
if ((int(sourceGarmentMaskHasSwappedViews_tmp)!=0))
{
int l9_3225=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3225=0;
}
else
{
l9_3225=in.varStereoViewID;
}
int l9_3226=l9_3225;
l9_3224=1-l9_3226;
}
else
{
int l9_3227=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3227=0;
}
else
{
l9_3227=in.varStereoViewID;
}
int l9_3228=l9_3227;
l9_3224=l9_3228;
}
int l9_3229=l9_3224;
int l9_3230=sourceGarmentMaskLayout_tmp;
int l9_3231=l9_3229;
float2 l9_3232=l9_3222;
bool l9_3233=(int(SC_USE_UV_TRANSFORM_sourceGarmentMask_tmp)!=0);
float3x3 l9_3234=(*sc_set0.UserUniforms).sourceGarmentMaskTransform;
int2 l9_3235=int2(SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask_tmp);
bool l9_3236=(int(SC_USE_UV_MIN_MAX_sourceGarmentMask_tmp)!=0);
float4 l9_3237=(*sc_set0.UserUniforms).sourceGarmentMaskUvMinMax;
bool l9_3238=(int(SC_USE_CLAMP_TO_BORDER_sourceGarmentMask_tmp)!=0);
float4 l9_3239=(*sc_set0.UserUniforms).sourceGarmentMaskBorderColor;
float l9_3240=0.0;
bool l9_3241=l9_3238&&(!l9_3236);
float l9_3242=1.0;
float l9_3243=l9_3232.x;
int l9_3244=l9_3235.x;
if (l9_3244==1)
{
l9_3243=fract(l9_3243);
}
else
{
if (l9_3244==2)
{
float l9_3245=fract(l9_3243);
float l9_3246=l9_3243-l9_3245;
float l9_3247=step(0.25,fract(l9_3246*0.5));
l9_3243=mix(l9_3245,1.0-l9_3245,fast::clamp(l9_3247,0.0,1.0));
}
}
l9_3232.x=l9_3243;
float l9_3248=l9_3232.y;
int l9_3249=l9_3235.y;
if (l9_3249==1)
{
l9_3248=fract(l9_3248);
}
else
{
if (l9_3249==2)
{
float l9_3250=fract(l9_3248);
float l9_3251=l9_3248-l9_3250;
float l9_3252=step(0.25,fract(l9_3251*0.5));
l9_3248=mix(l9_3250,1.0-l9_3250,fast::clamp(l9_3252,0.0,1.0));
}
}
l9_3232.y=l9_3248;
if (l9_3236)
{
bool l9_3253=l9_3238;
bool l9_3254;
if (l9_3253)
{
l9_3254=l9_3235.x==3;
}
else
{
l9_3254=l9_3253;
}
float l9_3255=l9_3232.x;
float l9_3256=l9_3237.x;
float l9_3257=l9_3237.z;
bool l9_3258=l9_3254;
float l9_3259=l9_3242;
float l9_3260=fast::clamp(l9_3255,l9_3256,l9_3257);
float l9_3261=step(abs(l9_3255-l9_3260),9.9999997e-06);
l9_3259*=(l9_3261+((1.0-float(l9_3258))*(1.0-l9_3261)));
l9_3255=l9_3260;
l9_3232.x=l9_3255;
l9_3242=l9_3259;
bool l9_3262=l9_3238;
bool l9_3263;
if (l9_3262)
{
l9_3263=l9_3235.y==3;
}
else
{
l9_3263=l9_3262;
}
float l9_3264=l9_3232.y;
float l9_3265=l9_3237.y;
float l9_3266=l9_3237.w;
bool l9_3267=l9_3263;
float l9_3268=l9_3242;
float l9_3269=fast::clamp(l9_3264,l9_3265,l9_3266);
float l9_3270=step(abs(l9_3264-l9_3269),9.9999997e-06);
l9_3268*=(l9_3270+((1.0-float(l9_3267))*(1.0-l9_3270)));
l9_3264=l9_3269;
l9_3232.y=l9_3264;
l9_3242=l9_3268;
}
float2 l9_3271=l9_3232;
bool l9_3272=l9_3233;
float3x3 l9_3273=l9_3234;
if (l9_3272)
{
l9_3271=float2((l9_3273*float3(l9_3271,1.0)).xy);
}
float2 l9_3274=l9_3271;
l9_3232=l9_3274;
float l9_3275=l9_3232.x;
int l9_3276=l9_3235.x;
bool l9_3277=l9_3241;
float l9_3278=l9_3242;
if ((l9_3276==0)||(l9_3276==3))
{
float l9_3279=l9_3275;
float l9_3280=0.0;
float l9_3281=1.0;
bool l9_3282=l9_3277;
float l9_3283=l9_3278;
float l9_3284=fast::clamp(l9_3279,l9_3280,l9_3281);
float l9_3285=step(abs(l9_3279-l9_3284),9.9999997e-06);
l9_3283*=(l9_3285+((1.0-float(l9_3282))*(1.0-l9_3285)));
l9_3279=l9_3284;
l9_3275=l9_3279;
l9_3278=l9_3283;
}
l9_3232.x=l9_3275;
l9_3242=l9_3278;
float l9_3286=l9_3232.y;
int l9_3287=l9_3235.y;
bool l9_3288=l9_3241;
float l9_3289=l9_3242;
if ((l9_3287==0)||(l9_3287==3))
{
float l9_3290=l9_3286;
float l9_3291=0.0;
float l9_3292=1.0;
bool l9_3293=l9_3288;
float l9_3294=l9_3289;
float l9_3295=fast::clamp(l9_3290,l9_3291,l9_3292);
float l9_3296=step(abs(l9_3290-l9_3295),9.9999997e-06);
l9_3294*=(l9_3296+((1.0-float(l9_3293))*(1.0-l9_3296)));
l9_3290=l9_3295;
l9_3286=l9_3290;
l9_3289=l9_3294;
}
l9_3232.y=l9_3286;
l9_3242=l9_3289;
float2 l9_3297=l9_3232;
int l9_3298=l9_3230;
int l9_3299=l9_3231;
float l9_3300=l9_3240;
float2 l9_3301=l9_3297;
int l9_3302=l9_3298;
int l9_3303=l9_3299;
float3 l9_3304=float3(0.0);
if (l9_3302==0)
{
l9_3304=float3(l9_3301,0.0);
}
else
{
if (l9_3302==1)
{
l9_3304=float3(l9_3301.x,(l9_3301.y*0.5)+(0.5-(float(l9_3303)*0.5)),0.0);
}
else
{
l9_3304=float3(l9_3301,float(l9_3303));
}
}
float3 l9_3305=l9_3304;
float3 l9_3306=l9_3305;
float4 l9_3307=sc_set0.sourceGarmentMask.sample(sc_set0.sourceGarmentMaskSmpSC,l9_3306.xy,bias(l9_3300));
float4 l9_3308=l9_3307;
if (l9_3238)
{
l9_3308=mix(l9_3239,l9_3308,float4(l9_3242));
}
float4 l9_3309=l9_3308;
l9_3223=l9_3309;
float4 l9_3310=l9_3223;
float4 l9_3311=l9_3310;
float l9_3312=l9_3311.x;
float2 l9_3313=float2(N52_shaderMasksHalfPx)+(((l9_114-float2(0.0))*((1.0-N52_shaderMasksHalfPx)-N52_shaderMasksHalfPx))/float2(1.000001));
float2 l9_3314=l9_3313;
float4 l9_3315=float4(0.0);
int l9_3316;
if ((int(shaderMasksTexHasSwappedViews_tmp)!=0))
{
int l9_3317=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3317=0;
}
else
{
l9_3317=in.varStereoViewID;
}
int l9_3318=l9_3317;
l9_3316=1-l9_3318;
}
else
{
int l9_3319=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3319=0;
}
else
{
l9_3319=in.varStereoViewID;
}
int l9_3320=l9_3319;
l9_3316=l9_3320;
}
int l9_3321=l9_3316;
int l9_3322=shaderMasksTexLayout_tmp;
int l9_3323=l9_3321;
float2 l9_3324=l9_3314;
bool l9_3325=(int(SC_USE_UV_TRANSFORM_shaderMasksTex_tmp)!=0);
float3x3 l9_3326=(*sc_set0.UserUniforms).shaderMasksTexTransform;
int2 l9_3327=int2(SC_SOFTWARE_WRAP_MODE_U_shaderMasksTex_tmp,SC_SOFTWARE_WRAP_MODE_V_shaderMasksTex_tmp);
bool l9_3328=(int(SC_USE_UV_MIN_MAX_shaderMasksTex_tmp)!=0);
float4 l9_3329=(*sc_set0.UserUniforms).shaderMasksTexUvMinMax;
bool l9_3330=(int(SC_USE_CLAMP_TO_BORDER_shaderMasksTex_tmp)!=0);
float4 l9_3331=(*sc_set0.UserUniforms).shaderMasksTexBorderColor;
float l9_3332=0.0;
bool l9_3333=l9_3330&&(!l9_3328);
float l9_3334=1.0;
float l9_3335=l9_3324.x;
int l9_3336=l9_3327.x;
if (l9_3336==1)
{
l9_3335=fract(l9_3335);
}
else
{
if (l9_3336==2)
{
float l9_3337=fract(l9_3335);
float l9_3338=l9_3335-l9_3337;
float l9_3339=step(0.25,fract(l9_3338*0.5));
l9_3335=mix(l9_3337,1.0-l9_3337,fast::clamp(l9_3339,0.0,1.0));
}
}
l9_3324.x=l9_3335;
float l9_3340=l9_3324.y;
int l9_3341=l9_3327.y;
if (l9_3341==1)
{
l9_3340=fract(l9_3340);
}
else
{
if (l9_3341==2)
{
float l9_3342=fract(l9_3340);
float l9_3343=l9_3340-l9_3342;
float l9_3344=step(0.25,fract(l9_3343*0.5));
l9_3340=mix(l9_3342,1.0-l9_3342,fast::clamp(l9_3344,0.0,1.0));
}
}
l9_3324.y=l9_3340;
if (l9_3328)
{
bool l9_3345=l9_3330;
bool l9_3346;
if (l9_3345)
{
l9_3346=l9_3327.x==3;
}
else
{
l9_3346=l9_3345;
}
float l9_3347=l9_3324.x;
float l9_3348=l9_3329.x;
float l9_3349=l9_3329.z;
bool l9_3350=l9_3346;
float l9_3351=l9_3334;
float l9_3352=fast::clamp(l9_3347,l9_3348,l9_3349);
float l9_3353=step(abs(l9_3347-l9_3352),9.9999997e-06);
l9_3351*=(l9_3353+((1.0-float(l9_3350))*(1.0-l9_3353)));
l9_3347=l9_3352;
l9_3324.x=l9_3347;
l9_3334=l9_3351;
bool l9_3354=l9_3330;
bool l9_3355;
if (l9_3354)
{
l9_3355=l9_3327.y==3;
}
else
{
l9_3355=l9_3354;
}
float l9_3356=l9_3324.y;
float l9_3357=l9_3329.y;
float l9_3358=l9_3329.w;
bool l9_3359=l9_3355;
float l9_3360=l9_3334;
float l9_3361=fast::clamp(l9_3356,l9_3357,l9_3358);
float l9_3362=step(abs(l9_3356-l9_3361),9.9999997e-06);
l9_3360*=(l9_3362+((1.0-float(l9_3359))*(1.0-l9_3362)));
l9_3356=l9_3361;
l9_3324.y=l9_3356;
l9_3334=l9_3360;
}
float2 l9_3363=l9_3324;
bool l9_3364=l9_3325;
float3x3 l9_3365=l9_3326;
if (l9_3364)
{
l9_3363=float2((l9_3365*float3(l9_3363,1.0)).xy);
}
float2 l9_3366=l9_3363;
l9_3324=l9_3366;
float l9_3367=l9_3324.x;
int l9_3368=l9_3327.x;
bool l9_3369=l9_3333;
float l9_3370=l9_3334;
if ((l9_3368==0)||(l9_3368==3))
{
float l9_3371=l9_3367;
float l9_3372=0.0;
float l9_3373=1.0;
bool l9_3374=l9_3369;
float l9_3375=l9_3370;
float l9_3376=fast::clamp(l9_3371,l9_3372,l9_3373);
float l9_3377=step(abs(l9_3371-l9_3376),9.9999997e-06);
l9_3375*=(l9_3377+((1.0-float(l9_3374))*(1.0-l9_3377)));
l9_3371=l9_3376;
l9_3367=l9_3371;
l9_3370=l9_3375;
}
l9_3324.x=l9_3367;
l9_3334=l9_3370;
float l9_3378=l9_3324.y;
int l9_3379=l9_3327.y;
bool l9_3380=l9_3333;
float l9_3381=l9_3334;
if ((l9_3379==0)||(l9_3379==3))
{
float l9_3382=l9_3378;
float l9_3383=0.0;
float l9_3384=1.0;
bool l9_3385=l9_3380;
float l9_3386=l9_3381;
float l9_3387=fast::clamp(l9_3382,l9_3383,l9_3384);
float l9_3388=step(abs(l9_3382-l9_3387),9.9999997e-06);
l9_3386*=(l9_3388+((1.0-float(l9_3385))*(1.0-l9_3388)));
l9_3382=l9_3387;
l9_3378=l9_3382;
l9_3381=l9_3386;
}
l9_3324.y=l9_3378;
l9_3334=l9_3381;
float2 l9_3389=l9_3324;
int l9_3390=l9_3322;
int l9_3391=l9_3323;
float l9_3392=l9_3332;
float2 l9_3393=l9_3389;
int l9_3394=l9_3390;
int l9_3395=l9_3391;
float3 l9_3396=float3(0.0);
if (l9_3394==0)
{
l9_3396=float3(l9_3393,0.0);
}
else
{
if (l9_3394==1)
{
l9_3396=float3(l9_3393.x,(l9_3393.y*0.5)+(0.5-(float(l9_3395)*0.5)),0.0);
}
else
{
l9_3396=float3(l9_3393,float(l9_3395));
}
}
float3 l9_3397=l9_3396;
float3 l9_3398=l9_3397;
float4 l9_3399=sc_set0.shaderMasksTex.sample(sc_set0.shaderMasksTexSmpSC,l9_3398.xy,bias(l9_3392));
float4 l9_3400=l9_3399;
if (l9_3330)
{
l9_3400=mix(l9_3331,l9_3400,float4(l9_3334));
}
float4 l9_3401=l9_3400;
l9_3315=l9_3401;
float4 l9_3402=l9_3315;
float4 l9_3403=l9_3402;
float l9_3404=(step(0.80000001,l9_3312)*l9_3403.w)*N52_gridsampleAlpha;
float2 l9_3405=float2(N52_genHalfPx)+(((l9_114-float2(0.0))*((1.0-N52_genHalfPx)-N52_genHalfPx))/float2(1.000001));
l9_3405=((l9_3405-float2(0.5))*float2(1.0,-1.0))+float2(0.5);
float2 l9_3406=l9_3405;
float2 l9_3407=float2(0.0);
l9_3407=(*sc_set0.UserUniforms).genTexSize.xy;
float2 l9_3408=l9_3407;
float2 l9_3409=float2(1.0)/l9_3408;
float2 l9_3410=float2(0.0);
l9_3410=(*sc_set0.UserUniforms).genTexSize.xy;
float2 l9_3411=l9_3410;
float2 l9_3412=(l9_3406*l9_3411)+float2(0.5);
float2 l9_3413=fract(l9_3412);
float2 l9_3414=float2(0.0);
l9_3414=(*sc_set0.UserUniforms).genTexSize.xy;
float2 l9_3415=l9_3414;
l9_3412=(floor(l9_3412)/l9_3415)-(l9_3409/float2(2.0));
float2 l9_3416=l9_3412;
float4 l9_3417=float4(0.0);
int l9_3418;
if ((int(genTexHasSwappedViews_tmp)!=0))
{
int l9_3419=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3419=0;
}
else
{
l9_3419=in.varStereoViewID;
}
int l9_3420=l9_3419;
l9_3418=1-l9_3420;
}
else
{
int l9_3421=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3421=0;
}
else
{
l9_3421=in.varStereoViewID;
}
int l9_3422=l9_3421;
l9_3418=l9_3422;
}
int l9_3423=l9_3418;
int l9_3424=genTexLayout_tmp;
int l9_3425=l9_3423;
float2 l9_3426=l9_3416;
bool l9_3427=(int(SC_USE_UV_TRANSFORM_genTex_tmp)!=0);
float3x3 l9_3428=(*sc_set0.UserUniforms).genTexTransform;
int2 l9_3429=int2(SC_SOFTWARE_WRAP_MODE_U_genTex_tmp,SC_SOFTWARE_WRAP_MODE_V_genTex_tmp);
bool l9_3430=(int(SC_USE_UV_MIN_MAX_genTex_tmp)!=0);
float4 l9_3431=(*sc_set0.UserUniforms).genTexUvMinMax;
bool l9_3432=(int(SC_USE_CLAMP_TO_BORDER_genTex_tmp)!=0);
float4 l9_3433=(*sc_set0.UserUniforms).genTexBorderColor;
float l9_3434=0.0;
bool l9_3435=l9_3432&&(!l9_3430);
float l9_3436=1.0;
float l9_3437=l9_3426.x;
int l9_3438=l9_3429.x;
if (l9_3438==1)
{
l9_3437=fract(l9_3437);
}
else
{
if (l9_3438==2)
{
float l9_3439=fract(l9_3437);
float l9_3440=l9_3437-l9_3439;
float l9_3441=step(0.25,fract(l9_3440*0.5));
l9_3437=mix(l9_3439,1.0-l9_3439,fast::clamp(l9_3441,0.0,1.0));
}
}
l9_3426.x=l9_3437;
float l9_3442=l9_3426.y;
int l9_3443=l9_3429.y;
if (l9_3443==1)
{
l9_3442=fract(l9_3442);
}
else
{
if (l9_3443==2)
{
float l9_3444=fract(l9_3442);
float l9_3445=l9_3442-l9_3444;
float l9_3446=step(0.25,fract(l9_3445*0.5));
l9_3442=mix(l9_3444,1.0-l9_3444,fast::clamp(l9_3446,0.0,1.0));
}
}
l9_3426.y=l9_3442;
if (l9_3430)
{
bool l9_3447=l9_3432;
bool l9_3448;
if (l9_3447)
{
l9_3448=l9_3429.x==3;
}
else
{
l9_3448=l9_3447;
}
float l9_3449=l9_3426.x;
float l9_3450=l9_3431.x;
float l9_3451=l9_3431.z;
bool l9_3452=l9_3448;
float l9_3453=l9_3436;
float l9_3454=fast::clamp(l9_3449,l9_3450,l9_3451);
float l9_3455=step(abs(l9_3449-l9_3454),9.9999997e-06);
l9_3453*=(l9_3455+((1.0-float(l9_3452))*(1.0-l9_3455)));
l9_3449=l9_3454;
l9_3426.x=l9_3449;
l9_3436=l9_3453;
bool l9_3456=l9_3432;
bool l9_3457;
if (l9_3456)
{
l9_3457=l9_3429.y==3;
}
else
{
l9_3457=l9_3456;
}
float l9_3458=l9_3426.y;
float l9_3459=l9_3431.y;
float l9_3460=l9_3431.w;
bool l9_3461=l9_3457;
float l9_3462=l9_3436;
float l9_3463=fast::clamp(l9_3458,l9_3459,l9_3460);
float l9_3464=step(abs(l9_3458-l9_3463),9.9999997e-06);
l9_3462*=(l9_3464+((1.0-float(l9_3461))*(1.0-l9_3464)));
l9_3458=l9_3463;
l9_3426.y=l9_3458;
l9_3436=l9_3462;
}
float2 l9_3465=l9_3426;
bool l9_3466=l9_3427;
float3x3 l9_3467=l9_3428;
if (l9_3466)
{
l9_3465=float2((l9_3467*float3(l9_3465,1.0)).xy);
}
float2 l9_3468=l9_3465;
l9_3426=l9_3468;
float l9_3469=l9_3426.x;
int l9_3470=l9_3429.x;
bool l9_3471=l9_3435;
float l9_3472=l9_3436;
if ((l9_3470==0)||(l9_3470==3))
{
float l9_3473=l9_3469;
float l9_3474=0.0;
float l9_3475=1.0;
bool l9_3476=l9_3471;
float l9_3477=l9_3472;
float l9_3478=fast::clamp(l9_3473,l9_3474,l9_3475);
float l9_3479=step(abs(l9_3473-l9_3478),9.9999997e-06);
l9_3477*=(l9_3479+((1.0-float(l9_3476))*(1.0-l9_3479)));
l9_3473=l9_3478;
l9_3469=l9_3473;
l9_3472=l9_3477;
}
l9_3426.x=l9_3469;
l9_3436=l9_3472;
float l9_3480=l9_3426.y;
int l9_3481=l9_3429.y;
bool l9_3482=l9_3435;
float l9_3483=l9_3436;
if ((l9_3481==0)||(l9_3481==3))
{
float l9_3484=l9_3480;
float l9_3485=0.0;
float l9_3486=1.0;
bool l9_3487=l9_3482;
float l9_3488=l9_3483;
float l9_3489=fast::clamp(l9_3484,l9_3485,l9_3486);
float l9_3490=step(abs(l9_3484-l9_3489),9.9999997e-06);
l9_3488*=(l9_3490+((1.0-float(l9_3487))*(1.0-l9_3490)));
l9_3484=l9_3489;
l9_3480=l9_3484;
l9_3483=l9_3488;
}
l9_3426.y=l9_3480;
l9_3436=l9_3483;
float2 l9_3491=l9_3426;
int l9_3492=l9_3424;
int l9_3493=l9_3425;
float l9_3494=l9_3434;
float2 l9_3495=l9_3491;
int l9_3496=l9_3492;
int l9_3497=l9_3493;
float3 l9_3498=float3(0.0);
if (l9_3496==0)
{
l9_3498=float3(l9_3495,0.0);
}
else
{
if (l9_3496==1)
{
l9_3498=float3(l9_3495.x,(l9_3495.y*0.5)+(0.5-(float(l9_3497)*0.5)),0.0);
}
else
{
l9_3498=float3(l9_3495,float(l9_3497));
}
}
float3 l9_3499=l9_3498;
float3 l9_3500=l9_3499;
float4 l9_3501=sc_set0.genTex.sample(sc_set0.genTexSmpSC,l9_3500.xy,bias(l9_3494));
float4 l9_3502=l9_3501;
if (l9_3432)
{
l9_3502=mix(l9_3433,l9_3502,float4(l9_3436));
}
float4 l9_3503=l9_3502;
l9_3417=l9_3503;
float4 l9_3504=l9_3417;
float4 l9_3505=l9_3504;
float2 l9_3506=l9_3412+float2(l9_3409.x,0.0);
float4 l9_3507=float4(0.0);
int l9_3508;
if ((int(genTexHasSwappedViews_tmp)!=0))
{
int l9_3509=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3509=0;
}
else
{
l9_3509=in.varStereoViewID;
}
int l9_3510=l9_3509;
l9_3508=1-l9_3510;
}
else
{
int l9_3511=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3511=0;
}
else
{
l9_3511=in.varStereoViewID;
}
int l9_3512=l9_3511;
l9_3508=l9_3512;
}
int l9_3513=l9_3508;
int l9_3514=genTexLayout_tmp;
int l9_3515=l9_3513;
float2 l9_3516=l9_3506;
bool l9_3517=(int(SC_USE_UV_TRANSFORM_genTex_tmp)!=0);
float3x3 l9_3518=(*sc_set0.UserUniforms).genTexTransform;
int2 l9_3519=int2(SC_SOFTWARE_WRAP_MODE_U_genTex_tmp,SC_SOFTWARE_WRAP_MODE_V_genTex_tmp);
bool l9_3520=(int(SC_USE_UV_MIN_MAX_genTex_tmp)!=0);
float4 l9_3521=(*sc_set0.UserUniforms).genTexUvMinMax;
bool l9_3522=(int(SC_USE_CLAMP_TO_BORDER_genTex_tmp)!=0);
float4 l9_3523=(*sc_set0.UserUniforms).genTexBorderColor;
float l9_3524=0.0;
bool l9_3525=l9_3522&&(!l9_3520);
float l9_3526=1.0;
float l9_3527=l9_3516.x;
int l9_3528=l9_3519.x;
if (l9_3528==1)
{
l9_3527=fract(l9_3527);
}
else
{
if (l9_3528==2)
{
float l9_3529=fract(l9_3527);
float l9_3530=l9_3527-l9_3529;
float l9_3531=step(0.25,fract(l9_3530*0.5));
l9_3527=mix(l9_3529,1.0-l9_3529,fast::clamp(l9_3531,0.0,1.0));
}
}
l9_3516.x=l9_3527;
float l9_3532=l9_3516.y;
int l9_3533=l9_3519.y;
if (l9_3533==1)
{
l9_3532=fract(l9_3532);
}
else
{
if (l9_3533==2)
{
float l9_3534=fract(l9_3532);
float l9_3535=l9_3532-l9_3534;
float l9_3536=step(0.25,fract(l9_3535*0.5));
l9_3532=mix(l9_3534,1.0-l9_3534,fast::clamp(l9_3536,0.0,1.0));
}
}
l9_3516.y=l9_3532;
if (l9_3520)
{
bool l9_3537=l9_3522;
bool l9_3538;
if (l9_3537)
{
l9_3538=l9_3519.x==3;
}
else
{
l9_3538=l9_3537;
}
float l9_3539=l9_3516.x;
float l9_3540=l9_3521.x;
float l9_3541=l9_3521.z;
bool l9_3542=l9_3538;
float l9_3543=l9_3526;
float l9_3544=fast::clamp(l9_3539,l9_3540,l9_3541);
float l9_3545=step(abs(l9_3539-l9_3544),9.9999997e-06);
l9_3543*=(l9_3545+((1.0-float(l9_3542))*(1.0-l9_3545)));
l9_3539=l9_3544;
l9_3516.x=l9_3539;
l9_3526=l9_3543;
bool l9_3546=l9_3522;
bool l9_3547;
if (l9_3546)
{
l9_3547=l9_3519.y==3;
}
else
{
l9_3547=l9_3546;
}
float l9_3548=l9_3516.y;
float l9_3549=l9_3521.y;
float l9_3550=l9_3521.w;
bool l9_3551=l9_3547;
float l9_3552=l9_3526;
float l9_3553=fast::clamp(l9_3548,l9_3549,l9_3550);
float l9_3554=step(abs(l9_3548-l9_3553),9.9999997e-06);
l9_3552*=(l9_3554+((1.0-float(l9_3551))*(1.0-l9_3554)));
l9_3548=l9_3553;
l9_3516.y=l9_3548;
l9_3526=l9_3552;
}
float2 l9_3555=l9_3516;
bool l9_3556=l9_3517;
float3x3 l9_3557=l9_3518;
if (l9_3556)
{
l9_3555=float2((l9_3557*float3(l9_3555,1.0)).xy);
}
float2 l9_3558=l9_3555;
l9_3516=l9_3558;
float l9_3559=l9_3516.x;
int l9_3560=l9_3519.x;
bool l9_3561=l9_3525;
float l9_3562=l9_3526;
if ((l9_3560==0)||(l9_3560==3))
{
float l9_3563=l9_3559;
float l9_3564=0.0;
float l9_3565=1.0;
bool l9_3566=l9_3561;
float l9_3567=l9_3562;
float l9_3568=fast::clamp(l9_3563,l9_3564,l9_3565);
float l9_3569=step(abs(l9_3563-l9_3568),9.9999997e-06);
l9_3567*=(l9_3569+((1.0-float(l9_3566))*(1.0-l9_3569)));
l9_3563=l9_3568;
l9_3559=l9_3563;
l9_3562=l9_3567;
}
l9_3516.x=l9_3559;
l9_3526=l9_3562;
float l9_3570=l9_3516.y;
int l9_3571=l9_3519.y;
bool l9_3572=l9_3525;
float l9_3573=l9_3526;
if ((l9_3571==0)||(l9_3571==3))
{
float l9_3574=l9_3570;
float l9_3575=0.0;
float l9_3576=1.0;
bool l9_3577=l9_3572;
float l9_3578=l9_3573;
float l9_3579=fast::clamp(l9_3574,l9_3575,l9_3576);
float l9_3580=step(abs(l9_3574-l9_3579),9.9999997e-06);
l9_3578*=(l9_3580+((1.0-float(l9_3577))*(1.0-l9_3580)));
l9_3574=l9_3579;
l9_3570=l9_3574;
l9_3573=l9_3578;
}
l9_3516.y=l9_3570;
l9_3526=l9_3573;
float2 l9_3581=l9_3516;
int l9_3582=l9_3514;
int l9_3583=l9_3515;
float l9_3584=l9_3524;
float2 l9_3585=l9_3581;
int l9_3586=l9_3582;
int l9_3587=l9_3583;
float3 l9_3588=float3(0.0);
if (l9_3586==0)
{
l9_3588=float3(l9_3585,0.0);
}
else
{
if (l9_3586==1)
{
l9_3588=float3(l9_3585.x,(l9_3585.y*0.5)+(0.5-(float(l9_3587)*0.5)),0.0);
}
else
{
l9_3588=float3(l9_3585,float(l9_3587));
}
}
float3 l9_3589=l9_3588;
float3 l9_3590=l9_3589;
float4 l9_3591=sc_set0.genTex.sample(sc_set0.genTexSmpSC,l9_3590.xy,bias(l9_3584));
float4 l9_3592=l9_3591;
if (l9_3522)
{
l9_3592=mix(l9_3523,l9_3592,float4(l9_3526));
}
float4 l9_3593=l9_3592;
l9_3507=l9_3593;
float4 l9_3594=l9_3507;
float4 l9_3595=l9_3594;
float2 l9_3596=l9_3412+float2(0.0,l9_3409.y);
float4 l9_3597=float4(0.0);
int l9_3598;
if ((int(genTexHasSwappedViews_tmp)!=0))
{
int l9_3599=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3599=0;
}
else
{
l9_3599=in.varStereoViewID;
}
int l9_3600=l9_3599;
l9_3598=1-l9_3600;
}
else
{
int l9_3601=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3601=0;
}
else
{
l9_3601=in.varStereoViewID;
}
int l9_3602=l9_3601;
l9_3598=l9_3602;
}
int l9_3603=l9_3598;
int l9_3604=genTexLayout_tmp;
int l9_3605=l9_3603;
float2 l9_3606=l9_3596;
bool l9_3607=(int(SC_USE_UV_TRANSFORM_genTex_tmp)!=0);
float3x3 l9_3608=(*sc_set0.UserUniforms).genTexTransform;
int2 l9_3609=int2(SC_SOFTWARE_WRAP_MODE_U_genTex_tmp,SC_SOFTWARE_WRAP_MODE_V_genTex_tmp);
bool l9_3610=(int(SC_USE_UV_MIN_MAX_genTex_tmp)!=0);
float4 l9_3611=(*sc_set0.UserUniforms).genTexUvMinMax;
bool l9_3612=(int(SC_USE_CLAMP_TO_BORDER_genTex_tmp)!=0);
float4 l9_3613=(*sc_set0.UserUniforms).genTexBorderColor;
float l9_3614=0.0;
bool l9_3615=l9_3612&&(!l9_3610);
float l9_3616=1.0;
float l9_3617=l9_3606.x;
int l9_3618=l9_3609.x;
if (l9_3618==1)
{
l9_3617=fract(l9_3617);
}
else
{
if (l9_3618==2)
{
float l9_3619=fract(l9_3617);
float l9_3620=l9_3617-l9_3619;
float l9_3621=step(0.25,fract(l9_3620*0.5));
l9_3617=mix(l9_3619,1.0-l9_3619,fast::clamp(l9_3621,0.0,1.0));
}
}
l9_3606.x=l9_3617;
float l9_3622=l9_3606.y;
int l9_3623=l9_3609.y;
if (l9_3623==1)
{
l9_3622=fract(l9_3622);
}
else
{
if (l9_3623==2)
{
float l9_3624=fract(l9_3622);
float l9_3625=l9_3622-l9_3624;
float l9_3626=step(0.25,fract(l9_3625*0.5));
l9_3622=mix(l9_3624,1.0-l9_3624,fast::clamp(l9_3626,0.0,1.0));
}
}
l9_3606.y=l9_3622;
if (l9_3610)
{
bool l9_3627=l9_3612;
bool l9_3628;
if (l9_3627)
{
l9_3628=l9_3609.x==3;
}
else
{
l9_3628=l9_3627;
}
float l9_3629=l9_3606.x;
float l9_3630=l9_3611.x;
float l9_3631=l9_3611.z;
bool l9_3632=l9_3628;
float l9_3633=l9_3616;
float l9_3634=fast::clamp(l9_3629,l9_3630,l9_3631);
float l9_3635=step(abs(l9_3629-l9_3634),9.9999997e-06);
l9_3633*=(l9_3635+((1.0-float(l9_3632))*(1.0-l9_3635)));
l9_3629=l9_3634;
l9_3606.x=l9_3629;
l9_3616=l9_3633;
bool l9_3636=l9_3612;
bool l9_3637;
if (l9_3636)
{
l9_3637=l9_3609.y==3;
}
else
{
l9_3637=l9_3636;
}
float l9_3638=l9_3606.y;
float l9_3639=l9_3611.y;
float l9_3640=l9_3611.w;
bool l9_3641=l9_3637;
float l9_3642=l9_3616;
float l9_3643=fast::clamp(l9_3638,l9_3639,l9_3640);
float l9_3644=step(abs(l9_3638-l9_3643),9.9999997e-06);
l9_3642*=(l9_3644+((1.0-float(l9_3641))*(1.0-l9_3644)));
l9_3638=l9_3643;
l9_3606.y=l9_3638;
l9_3616=l9_3642;
}
float2 l9_3645=l9_3606;
bool l9_3646=l9_3607;
float3x3 l9_3647=l9_3608;
if (l9_3646)
{
l9_3645=float2((l9_3647*float3(l9_3645,1.0)).xy);
}
float2 l9_3648=l9_3645;
l9_3606=l9_3648;
float l9_3649=l9_3606.x;
int l9_3650=l9_3609.x;
bool l9_3651=l9_3615;
float l9_3652=l9_3616;
if ((l9_3650==0)||(l9_3650==3))
{
float l9_3653=l9_3649;
float l9_3654=0.0;
float l9_3655=1.0;
bool l9_3656=l9_3651;
float l9_3657=l9_3652;
float l9_3658=fast::clamp(l9_3653,l9_3654,l9_3655);
float l9_3659=step(abs(l9_3653-l9_3658),9.9999997e-06);
l9_3657*=(l9_3659+((1.0-float(l9_3656))*(1.0-l9_3659)));
l9_3653=l9_3658;
l9_3649=l9_3653;
l9_3652=l9_3657;
}
l9_3606.x=l9_3649;
l9_3616=l9_3652;
float l9_3660=l9_3606.y;
int l9_3661=l9_3609.y;
bool l9_3662=l9_3615;
float l9_3663=l9_3616;
if ((l9_3661==0)||(l9_3661==3))
{
float l9_3664=l9_3660;
float l9_3665=0.0;
float l9_3666=1.0;
bool l9_3667=l9_3662;
float l9_3668=l9_3663;
float l9_3669=fast::clamp(l9_3664,l9_3665,l9_3666);
float l9_3670=step(abs(l9_3664-l9_3669),9.9999997e-06);
l9_3668*=(l9_3670+((1.0-float(l9_3667))*(1.0-l9_3670)));
l9_3664=l9_3669;
l9_3660=l9_3664;
l9_3663=l9_3668;
}
l9_3606.y=l9_3660;
l9_3616=l9_3663;
float2 l9_3671=l9_3606;
int l9_3672=l9_3604;
int l9_3673=l9_3605;
float l9_3674=l9_3614;
float2 l9_3675=l9_3671;
int l9_3676=l9_3672;
int l9_3677=l9_3673;
float3 l9_3678=float3(0.0);
if (l9_3676==0)
{
l9_3678=float3(l9_3675,0.0);
}
else
{
if (l9_3676==1)
{
l9_3678=float3(l9_3675.x,(l9_3675.y*0.5)+(0.5-(float(l9_3677)*0.5)),0.0);
}
else
{
l9_3678=float3(l9_3675,float(l9_3677));
}
}
float3 l9_3679=l9_3678;
float3 l9_3680=l9_3679;
float4 l9_3681=sc_set0.genTex.sample(sc_set0.genTexSmpSC,l9_3680.xy,bias(l9_3674));
float4 l9_3682=l9_3681;
if (l9_3612)
{
l9_3682=mix(l9_3613,l9_3682,float4(l9_3616));
}
float4 l9_3683=l9_3682;
l9_3597=l9_3683;
float4 l9_3684=l9_3597;
float4 l9_3685=l9_3684;
float2 l9_3686=l9_3412+float2(l9_3409.x,l9_3409.y);
float4 l9_3687=float4(0.0);
int l9_3688;
if ((int(genTexHasSwappedViews_tmp)!=0))
{
int l9_3689=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3689=0;
}
else
{
l9_3689=in.varStereoViewID;
}
int l9_3690=l9_3689;
l9_3688=1-l9_3690;
}
else
{
int l9_3691=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3691=0;
}
else
{
l9_3691=in.varStereoViewID;
}
int l9_3692=l9_3691;
l9_3688=l9_3692;
}
int l9_3693=l9_3688;
int l9_3694=genTexLayout_tmp;
int l9_3695=l9_3693;
float2 l9_3696=l9_3686;
bool l9_3697=(int(SC_USE_UV_TRANSFORM_genTex_tmp)!=0);
float3x3 l9_3698=(*sc_set0.UserUniforms).genTexTransform;
int2 l9_3699=int2(SC_SOFTWARE_WRAP_MODE_U_genTex_tmp,SC_SOFTWARE_WRAP_MODE_V_genTex_tmp);
bool l9_3700=(int(SC_USE_UV_MIN_MAX_genTex_tmp)!=0);
float4 l9_3701=(*sc_set0.UserUniforms).genTexUvMinMax;
bool l9_3702=(int(SC_USE_CLAMP_TO_BORDER_genTex_tmp)!=0);
float4 l9_3703=(*sc_set0.UserUniforms).genTexBorderColor;
float l9_3704=0.0;
bool l9_3705=l9_3702&&(!l9_3700);
float l9_3706=1.0;
float l9_3707=l9_3696.x;
int l9_3708=l9_3699.x;
if (l9_3708==1)
{
l9_3707=fract(l9_3707);
}
else
{
if (l9_3708==2)
{
float l9_3709=fract(l9_3707);
float l9_3710=l9_3707-l9_3709;
float l9_3711=step(0.25,fract(l9_3710*0.5));
l9_3707=mix(l9_3709,1.0-l9_3709,fast::clamp(l9_3711,0.0,1.0));
}
}
l9_3696.x=l9_3707;
float l9_3712=l9_3696.y;
int l9_3713=l9_3699.y;
if (l9_3713==1)
{
l9_3712=fract(l9_3712);
}
else
{
if (l9_3713==2)
{
float l9_3714=fract(l9_3712);
float l9_3715=l9_3712-l9_3714;
float l9_3716=step(0.25,fract(l9_3715*0.5));
l9_3712=mix(l9_3714,1.0-l9_3714,fast::clamp(l9_3716,0.0,1.0));
}
}
l9_3696.y=l9_3712;
if (l9_3700)
{
bool l9_3717=l9_3702;
bool l9_3718;
if (l9_3717)
{
l9_3718=l9_3699.x==3;
}
else
{
l9_3718=l9_3717;
}
float l9_3719=l9_3696.x;
float l9_3720=l9_3701.x;
float l9_3721=l9_3701.z;
bool l9_3722=l9_3718;
float l9_3723=l9_3706;
float l9_3724=fast::clamp(l9_3719,l9_3720,l9_3721);
float l9_3725=step(abs(l9_3719-l9_3724),9.9999997e-06);
l9_3723*=(l9_3725+((1.0-float(l9_3722))*(1.0-l9_3725)));
l9_3719=l9_3724;
l9_3696.x=l9_3719;
l9_3706=l9_3723;
bool l9_3726=l9_3702;
bool l9_3727;
if (l9_3726)
{
l9_3727=l9_3699.y==3;
}
else
{
l9_3727=l9_3726;
}
float l9_3728=l9_3696.y;
float l9_3729=l9_3701.y;
float l9_3730=l9_3701.w;
bool l9_3731=l9_3727;
float l9_3732=l9_3706;
float l9_3733=fast::clamp(l9_3728,l9_3729,l9_3730);
float l9_3734=step(abs(l9_3728-l9_3733),9.9999997e-06);
l9_3732*=(l9_3734+((1.0-float(l9_3731))*(1.0-l9_3734)));
l9_3728=l9_3733;
l9_3696.y=l9_3728;
l9_3706=l9_3732;
}
float2 l9_3735=l9_3696;
bool l9_3736=l9_3697;
float3x3 l9_3737=l9_3698;
if (l9_3736)
{
l9_3735=float2((l9_3737*float3(l9_3735,1.0)).xy);
}
float2 l9_3738=l9_3735;
l9_3696=l9_3738;
float l9_3739=l9_3696.x;
int l9_3740=l9_3699.x;
bool l9_3741=l9_3705;
float l9_3742=l9_3706;
if ((l9_3740==0)||(l9_3740==3))
{
float l9_3743=l9_3739;
float l9_3744=0.0;
float l9_3745=1.0;
bool l9_3746=l9_3741;
float l9_3747=l9_3742;
float l9_3748=fast::clamp(l9_3743,l9_3744,l9_3745);
float l9_3749=step(abs(l9_3743-l9_3748),9.9999997e-06);
l9_3747*=(l9_3749+((1.0-float(l9_3746))*(1.0-l9_3749)));
l9_3743=l9_3748;
l9_3739=l9_3743;
l9_3742=l9_3747;
}
l9_3696.x=l9_3739;
l9_3706=l9_3742;
float l9_3750=l9_3696.y;
int l9_3751=l9_3699.y;
bool l9_3752=l9_3705;
float l9_3753=l9_3706;
if ((l9_3751==0)||(l9_3751==3))
{
float l9_3754=l9_3750;
float l9_3755=0.0;
float l9_3756=1.0;
bool l9_3757=l9_3752;
float l9_3758=l9_3753;
float l9_3759=fast::clamp(l9_3754,l9_3755,l9_3756);
float l9_3760=step(abs(l9_3754-l9_3759),9.9999997e-06);
l9_3758*=(l9_3760+((1.0-float(l9_3757))*(1.0-l9_3760)));
l9_3754=l9_3759;
l9_3750=l9_3754;
l9_3753=l9_3758;
}
l9_3696.y=l9_3750;
l9_3706=l9_3753;
float2 l9_3761=l9_3696;
int l9_3762=l9_3694;
int l9_3763=l9_3695;
float l9_3764=l9_3704;
float2 l9_3765=l9_3761;
int l9_3766=l9_3762;
int l9_3767=l9_3763;
float3 l9_3768=float3(0.0);
if (l9_3766==0)
{
l9_3768=float3(l9_3765,0.0);
}
else
{
if (l9_3766==1)
{
l9_3768=float3(l9_3765.x,(l9_3765.y*0.5)+(0.5-(float(l9_3767)*0.5)),0.0);
}
else
{
l9_3768=float3(l9_3765,float(l9_3767));
}
}
float3 l9_3769=l9_3768;
float3 l9_3770=l9_3769;
float4 l9_3771=sc_set0.genTex.sample(sc_set0.genTexSmpSC,l9_3770.xy,bias(l9_3764));
float4 l9_3772=l9_3771;
if (l9_3702)
{
l9_3772=mix(l9_3703,l9_3772,float4(l9_3706));
}
float4 l9_3773=l9_3772;
l9_3687=l9_3773;
float4 l9_3774=l9_3687;
float4 l9_3775=l9_3774;
float4 l9_3776=mix(l9_3505,l9_3595,float4(l9_3413.x));
float4 l9_3777=mix(l9_3685,l9_3775,float4(l9_3413.x));
float4 l9_3778=mix(l9_3776,l9_3777,float4(l9_3413.y));
float4 l9_3779=l9_3778;
float2 l9_3780=float2((l9_15.x+N52_segShiftX)*N52_segRatioX,(l9_15.y+N52_segShiftY)*N52_segRatioY);
float2 l9_3781=l9_3780;
float2 l9_3782=float2(0.0);
l9_3782=(*sc_set0.UserUniforms).drivingHairMaskSize.xy;
float2 l9_3783=l9_3782;
float2 l9_3784=float2(1.0)/l9_3783;
float2 l9_3785=float2(0.0);
l9_3785=(*sc_set0.UserUniforms).drivingHairMaskSize.xy;
float2 l9_3786=l9_3785;
float2 l9_3787=(l9_3781*l9_3786)+float2(0.5);
float2 l9_3788=fract(l9_3787);
float2 l9_3789=float2(0.0);
l9_3789=(*sc_set0.UserUniforms).drivingHairMaskSize.xy;
float2 l9_3790=l9_3789;
l9_3787=(floor(l9_3787)/l9_3790)-(l9_3784/float2(2.0));
float2 l9_3791=l9_3787;
float4 l9_3792=float4(0.0);
int l9_3793;
if ((int(drivingHairMaskHasSwappedViews_tmp)!=0))
{
int l9_3794=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3794=0;
}
else
{
l9_3794=in.varStereoViewID;
}
int l9_3795=l9_3794;
l9_3793=1-l9_3795;
}
else
{
int l9_3796=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3796=0;
}
else
{
l9_3796=in.varStereoViewID;
}
int l9_3797=l9_3796;
l9_3793=l9_3797;
}
int l9_3798=l9_3793;
int l9_3799=drivingHairMaskLayout_tmp;
int l9_3800=l9_3798;
float2 l9_3801=l9_3791;
bool l9_3802=(int(SC_USE_UV_TRANSFORM_drivingHairMask_tmp)!=0);
float3x3 l9_3803=(*sc_set0.UserUniforms).drivingHairMaskTransform;
int2 l9_3804=int2(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp,SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp);
bool l9_3805=(int(SC_USE_UV_MIN_MAX_drivingHairMask_tmp)!=0);
float4 l9_3806=(*sc_set0.UserUniforms).drivingHairMaskUvMinMax;
bool l9_3807=(int(SC_USE_CLAMP_TO_BORDER_drivingHairMask_tmp)!=0);
float4 l9_3808=(*sc_set0.UserUniforms).drivingHairMaskBorderColor;
float l9_3809=0.0;
bool l9_3810=l9_3807&&(!l9_3805);
float l9_3811=1.0;
float l9_3812=l9_3801.x;
int l9_3813=l9_3804.x;
if (l9_3813==1)
{
l9_3812=fract(l9_3812);
}
else
{
if (l9_3813==2)
{
float l9_3814=fract(l9_3812);
float l9_3815=l9_3812-l9_3814;
float l9_3816=step(0.25,fract(l9_3815*0.5));
l9_3812=mix(l9_3814,1.0-l9_3814,fast::clamp(l9_3816,0.0,1.0));
}
}
l9_3801.x=l9_3812;
float l9_3817=l9_3801.y;
int l9_3818=l9_3804.y;
if (l9_3818==1)
{
l9_3817=fract(l9_3817);
}
else
{
if (l9_3818==2)
{
float l9_3819=fract(l9_3817);
float l9_3820=l9_3817-l9_3819;
float l9_3821=step(0.25,fract(l9_3820*0.5));
l9_3817=mix(l9_3819,1.0-l9_3819,fast::clamp(l9_3821,0.0,1.0));
}
}
l9_3801.y=l9_3817;
if (l9_3805)
{
bool l9_3822=l9_3807;
bool l9_3823;
if (l9_3822)
{
l9_3823=l9_3804.x==3;
}
else
{
l9_3823=l9_3822;
}
float l9_3824=l9_3801.x;
float l9_3825=l9_3806.x;
float l9_3826=l9_3806.z;
bool l9_3827=l9_3823;
float l9_3828=l9_3811;
float l9_3829=fast::clamp(l9_3824,l9_3825,l9_3826);
float l9_3830=step(abs(l9_3824-l9_3829),9.9999997e-06);
l9_3828*=(l9_3830+((1.0-float(l9_3827))*(1.0-l9_3830)));
l9_3824=l9_3829;
l9_3801.x=l9_3824;
l9_3811=l9_3828;
bool l9_3831=l9_3807;
bool l9_3832;
if (l9_3831)
{
l9_3832=l9_3804.y==3;
}
else
{
l9_3832=l9_3831;
}
float l9_3833=l9_3801.y;
float l9_3834=l9_3806.y;
float l9_3835=l9_3806.w;
bool l9_3836=l9_3832;
float l9_3837=l9_3811;
float l9_3838=fast::clamp(l9_3833,l9_3834,l9_3835);
float l9_3839=step(abs(l9_3833-l9_3838),9.9999997e-06);
l9_3837*=(l9_3839+((1.0-float(l9_3836))*(1.0-l9_3839)));
l9_3833=l9_3838;
l9_3801.y=l9_3833;
l9_3811=l9_3837;
}
float2 l9_3840=l9_3801;
bool l9_3841=l9_3802;
float3x3 l9_3842=l9_3803;
if (l9_3841)
{
l9_3840=float2((l9_3842*float3(l9_3840,1.0)).xy);
}
float2 l9_3843=l9_3840;
l9_3801=l9_3843;
float l9_3844=l9_3801.x;
int l9_3845=l9_3804.x;
bool l9_3846=l9_3810;
float l9_3847=l9_3811;
if ((l9_3845==0)||(l9_3845==3))
{
float l9_3848=l9_3844;
float l9_3849=0.0;
float l9_3850=1.0;
bool l9_3851=l9_3846;
float l9_3852=l9_3847;
float l9_3853=fast::clamp(l9_3848,l9_3849,l9_3850);
float l9_3854=step(abs(l9_3848-l9_3853),9.9999997e-06);
l9_3852*=(l9_3854+((1.0-float(l9_3851))*(1.0-l9_3854)));
l9_3848=l9_3853;
l9_3844=l9_3848;
l9_3847=l9_3852;
}
l9_3801.x=l9_3844;
l9_3811=l9_3847;
float l9_3855=l9_3801.y;
int l9_3856=l9_3804.y;
bool l9_3857=l9_3810;
float l9_3858=l9_3811;
if ((l9_3856==0)||(l9_3856==3))
{
float l9_3859=l9_3855;
float l9_3860=0.0;
float l9_3861=1.0;
bool l9_3862=l9_3857;
float l9_3863=l9_3858;
float l9_3864=fast::clamp(l9_3859,l9_3860,l9_3861);
float l9_3865=step(abs(l9_3859-l9_3864),9.9999997e-06);
l9_3863*=(l9_3865+((1.0-float(l9_3862))*(1.0-l9_3865)));
l9_3859=l9_3864;
l9_3855=l9_3859;
l9_3858=l9_3863;
}
l9_3801.y=l9_3855;
l9_3811=l9_3858;
float2 l9_3866=l9_3801;
int l9_3867=l9_3799;
int l9_3868=l9_3800;
float l9_3869=l9_3809;
float2 l9_3870=l9_3866;
int l9_3871=l9_3867;
int l9_3872=l9_3868;
float3 l9_3873=float3(0.0);
if (l9_3871==0)
{
l9_3873=float3(l9_3870,0.0);
}
else
{
if (l9_3871==1)
{
l9_3873=float3(l9_3870.x,(l9_3870.y*0.5)+(0.5-(float(l9_3872)*0.5)),0.0);
}
else
{
l9_3873=float3(l9_3870,float(l9_3872));
}
}
float3 l9_3874=l9_3873;
float3 l9_3875=l9_3874;
float4 l9_3876=sc_set0.drivingHairMask.sample(sc_set0.drivingHairMaskSmpSC,l9_3875.xy,bias(l9_3869));
float4 l9_3877=l9_3876;
if (l9_3807)
{
l9_3877=mix(l9_3808,l9_3877,float4(l9_3811));
}
float4 l9_3878=l9_3877;
l9_3792=l9_3878;
float4 l9_3879=l9_3792;
float4 l9_3880=l9_3879;
float2 l9_3881=l9_3787+float2(l9_3784.x,0.0);
float4 l9_3882=float4(0.0);
int l9_3883;
if ((int(drivingHairMaskHasSwappedViews_tmp)!=0))
{
int l9_3884=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3884=0;
}
else
{
l9_3884=in.varStereoViewID;
}
int l9_3885=l9_3884;
l9_3883=1-l9_3885;
}
else
{
int l9_3886=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3886=0;
}
else
{
l9_3886=in.varStereoViewID;
}
int l9_3887=l9_3886;
l9_3883=l9_3887;
}
int l9_3888=l9_3883;
int l9_3889=drivingHairMaskLayout_tmp;
int l9_3890=l9_3888;
float2 l9_3891=l9_3881;
bool l9_3892=(int(SC_USE_UV_TRANSFORM_drivingHairMask_tmp)!=0);
float3x3 l9_3893=(*sc_set0.UserUniforms).drivingHairMaskTransform;
int2 l9_3894=int2(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp,SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp);
bool l9_3895=(int(SC_USE_UV_MIN_MAX_drivingHairMask_tmp)!=0);
float4 l9_3896=(*sc_set0.UserUniforms).drivingHairMaskUvMinMax;
bool l9_3897=(int(SC_USE_CLAMP_TO_BORDER_drivingHairMask_tmp)!=0);
float4 l9_3898=(*sc_set0.UserUniforms).drivingHairMaskBorderColor;
float l9_3899=0.0;
bool l9_3900=l9_3897&&(!l9_3895);
float l9_3901=1.0;
float l9_3902=l9_3891.x;
int l9_3903=l9_3894.x;
if (l9_3903==1)
{
l9_3902=fract(l9_3902);
}
else
{
if (l9_3903==2)
{
float l9_3904=fract(l9_3902);
float l9_3905=l9_3902-l9_3904;
float l9_3906=step(0.25,fract(l9_3905*0.5));
l9_3902=mix(l9_3904,1.0-l9_3904,fast::clamp(l9_3906,0.0,1.0));
}
}
l9_3891.x=l9_3902;
float l9_3907=l9_3891.y;
int l9_3908=l9_3894.y;
if (l9_3908==1)
{
l9_3907=fract(l9_3907);
}
else
{
if (l9_3908==2)
{
float l9_3909=fract(l9_3907);
float l9_3910=l9_3907-l9_3909;
float l9_3911=step(0.25,fract(l9_3910*0.5));
l9_3907=mix(l9_3909,1.0-l9_3909,fast::clamp(l9_3911,0.0,1.0));
}
}
l9_3891.y=l9_3907;
if (l9_3895)
{
bool l9_3912=l9_3897;
bool l9_3913;
if (l9_3912)
{
l9_3913=l9_3894.x==3;
}
else
{
l9_3913=l9_3912;
}
float l9_3914=l9_3891.x;
float l9_3915=l9_3896.x;
float l9_3916=l9_3896.z;
bool l9_3917=l9_3913;
float l9_3918=l9_3901;
float l9_3919=fast::clamp(l9_3914,l9_3915,l9_3916);
float l9_3920=step(abs(l9_3914-l9_3919),9.9999997e-06);
l9_3918*=(l9_3920+((1.0-float(l9_3917))*(1.0-l9_3920)));
l9_3914=l9_3919;
l9_3891.x=l9_3914;
l9_3901=l9_3918;
bool l9_3921=l9_3897;
bool l9_3922;
if (l9_3921)
{
l9_3922=l9_3894.y==3;
}
else
{
l9_3922=l9_3921;
}
float l9_3923=l9_3891.y;
float l9_3924=l9_3896.y;
float l9_3925=l9_3896.w;
bool l9_3926=l9_3922;
float l9_3927=l9_3901;
float l9_3928=fast::clamp(l9_3923,l9_3924,l9_3925);
float l9_3929=step(abs(l9_3923-l9_3928),9.9999997e-06);
l9_3927*=(l9_3929+((1.0-float(l9_3926))*(1.0-l9_3929)));
l9_3923=l9_3928;
l9_3891.y=l9_3923;
l9_3901=l9_3927;
}
float2 l9_3930=l9_3891;
bool l9_3931=l9_3892;
float3x3 l9_3932=l9_3893;
if (l9_3931)
{
l9_3930=float2((l9_3932*float3(l9_3930,1.0)).xy);
}
float2 l9_3933=l9_3930;
l9_3891=l9_3933;
float l9_3934=l9_3891.x;
int l9_3935=l9_3894.x;
bool l9_3936=l9_3900;
float l9_3937=l9_3901;
if ((l9_3935==0)||(l9_3935==3))
{
float l9_3938=l9_3934;
float l9_3939=0.0;
float l9_3940=1.0;
bool l9_3941=l9_3936;
float l9_3942=l9_3937;
float l9_3943=fast::clamp(l9_3938,l9_3939,l9_3940);
float l9_3944=step(abs(l9_3938-l9_3943),9.9999997e-06);
l9_3942*=(l9_3944+((1.0-float(l9_3941))*(1.0-l9_3944)));
l9_3938=l9_3943;
l9_3934=l9_3938;
l9_3937=l9_3942;
}
l9_3891.x=l9_3934;
l9_3901=l9_3937;
float l9_3945=l9_3891.y;
int l9_3946=l9_3894.y;
bool l9_3947=l9_3900;
float l9_3948=l9_3901;
if ((l9_3946==0)||(l9_3946==3))
{
float l9_3949=l9_3945;
float l9_3950=0.0;
float l9_3951=1.0;
bool l9_3952=l9_3947;
float l9_3953=l9_3948;
float l9_3954=fast::clamp(l9_3949,l9_3950,l9_3951);
float l9_3955=step(abs(l9_3949-l9_3954),9.9999997e-06);
l9_3953*=(l9_3955+((1.0-float(l9_3952))*(1.0-l9_3955)));
l9_3949=l9_3954;
l9_3945=l9_3949;
l9_3948=l9_3953;
}
l9_3891.y=l9_3945;
l9_3901=l9_3948;
float2 l9_3956=l9_3891;
int l9_3957=l9_3889;
int l9_3958=l9_3890;
float l9_3959=l9_3899;
float2 l9_3960=l9_3956;
int l9_3961=l9_3957;
int l9_3962=l9_3958;
float3 l9_3963=float3(0.0);
if (l9_3961==0)
{
l9_3963=float3(l9_3960,0.0);
}
else
{
if (l9_3961==1)
{
l9_3963=float3(l9_3960.x,(l9_3960.y*0.5)+(0.5-(float(l9_3962)*0.5)),0.0);
}
else
{
l9_3963=float3(l9_3960,float(l9_3962));
}
}
float3 l9_3964=l9_3963;
float3 l9_3965=l9_3964;
float4 l9_3966=sc_set0.drivingHairMask.sample(sc_set0.drivingHairMaskSmpSC,l9_3965.xy,bias(l9_3959));
float4 l9_3967=l9_3966;
if (l9_3897)
{
l9_3967=mix(l9_3898,l9_3967,float4(l9_3901));
}
float4 l9_3968=l9_3967;
l9_3882=l9_3968;
float4 l9_3969=l9_3882;
float4 l9_3970=l9_3969;
float2 l9_3971=l9_3787+float2(0.0,l9_3784.y);
float4 l9_3972=float4(0.0);
int l9_3973;
if ((int(drivingHairMaskHasSwappedViews_tmp)!=0))
{
int l9_3974=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3974=0;
}
else
{
l9_3974=in.varStereoViewID;
}
int l9_3975=l9_3974;
l9_3973=1-l9_3975;
}
else
{
int l9_3976=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3976=0;
}
else
{
l9_3976=in.varStereoViewID;
}
int l9_3977=l9_3976;
l9_3973=l9_3977;
}
int l9_3978=l9_3973;
int l9_3979=drivingHairMaskLayout_tmp;
int l9_3980=l9_3978;
float2 l9_3981=l9_3971;
bool l9_3982=(int(SC_USE_UV_TRANSFORM_drivingHairMask_tmp)!=0);
float3x3 l9_3983=(*sc_set0.UserUniforms).drivingHairMaskTransform;
int2 l9_3984=int2(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp,SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp);
bool l9_3985=(int(SC_USE_UV_MIN_MAX_drivingHairMask_tmp)!=0);
float4 l9_3986=(*sc_set0.UserUniforms).drivingHairMaskUvMinMax;
bool l9_3987=(int(SC_USE_CLAMP_TO_BORDER_drivingHairMask_tmp)!=0);
float4 l9_3988=(*sc_set0.UserUniforms).drivingHairMaskBorderColor;
float l9_3989=0.0;
bool l9_3990=l9_3987&&(!l9_3985);
float l9_3991=1.0;
float l9_3992=l9_3981.x;
int l9_3993=l9_3984.x;
if (l9_3993==1)
{
l9_3992=fract(l9_3992);
}
else
{
if (l9_3993==2)
{
float l9_3994=fract(l9_3992);
float l9_3995=l9_3992-l9_3994;
float l9_3996=step(0.25,fract(l9_3995*0.5));
l9_3992=mix(l9_3994,1.0-l9_3994,fast::clamp(l9_3996,0.0,1.0));
}
}
l9_3981.x=l9_3992;
float l9_3997=l9_3981.y;
int l9_3998=l9_3984.y;
if (l9_3998==1)
{
l9_3997=fract(l9_3997);
}
else
{
if (l9_3998==2)
{
float l9_3999=fract(l9_3997);
float l9_4000=l9_3997-l9_3999;
float l9_4001=step(0.25,fract(l9_4000*0.5));
l9_3997=mix(l9_3999,1.0-l9_3999,fast::clamp(l9_4001,0.0,1.0));
}
}
l9_3981.y=l9_3997;
if (l9_3985)
{
bool l9_4002=l9_3987;
bool l9_4003;
if (l9_4002)
{
l9_4003=l9_3984.x==3;
}
else
{
l9_4003=l9_4002;
}
float l9_4004=l9_3981.x;
float l9_4005=l9_3986.x;
float l9_4006=l9_3986.z;
bool l9_4007=l9_4003;
float l9_4008=l9_3991;
float l9_4009=fast::clamp(l9_4004,l9_4005,l9_4006);
float l9_4010=step(abs(l9_4004-l9_4009),9.9999997e-06);
l9_4008*=(l9_4010+((1.0-float(l9_4007))*(1.0-l9_4010)));
l9_4004=l9_4009;
l9_3981.x=l9_4004;
l9_3991=l9_4008;
bool l9_4011=l9_3987;
bool l9_4012;
if (l9_4011)
{
l9_4012=l9_3984.y==3;
}
else
{
l9_4012=l9_4011;
}
float l9_4013=l9_3981.y;
float l9_4014=l9_3986.y;
float l9_4015=l9_3986.w;
bool l9_4016=l9_4012;
float l9_4017=l9_3991;
float l9_4018=fast::clamp(l9_4013,l9_4014,l9_4015);
float l9_4019=step(abs(l9_4013-l9_4018),9.9999997e-06);
l9_4017*=(l9_4019+((1.0-float(l9_4016))*(1.0-l9_4019)));
l9_4013=l9_4018;
l9_3981.y=l9_4013;
l9_3991=l9_4017;
}
float2 l9_4020=l9_3981;
bool l9_4021=l9_3982;
float3x3 l9_4022=l9_3983;
if (l9_4021)
{
l9_4020=float2((l9_4022*float3(l9_4020,1.0)).xy);
}
float2 l9_4023=l9_4020;
l9_3981=l9_4023;
float l9_4024=l9_3981.x;
int l9_4025=l9_3984.x;
bool l9_4026=l9_3990;
float l9_4027=l9_3991;
if ((l9_4025==0)||(l9_4025==3))
{
float l9_4028=l9_4024;
float l9_4029=0.0;
float l9_4030=1.0;
bool l9_4031=l9_4026;
float l9_4032=l9_4027;
float l9_4033=fast::clamp(l9_4028,l9_4029,l9_4030);
float l9_4034=step(abs(l9_4028-l9_4033),9.9999997e-06);
l9_4032*=(l9_4034+((1.0-float(l9_4031))*(1.0-l9_4034)));
l9_4028=l9_4033;
l9_4024=l9_4028;
l9_4027=l9_4032;
}
l9_3981.x=l9_4024;
l9_3991=l9_4027;
float l9_4035=l9_3981.y;
int l9_4036=l9_3984.y;
bool l9_4037=l9_3990;
float l9_4038=l9_3991;
if ((l9_4036==0)||(l9_4036==3))
{
float l9_4039=l9_4035;
float l9_4040=0.0;
float l9_4041=1.0;
bool l9_4042=l9_4037;
float l9_4043=l9_4038;
float l9_4044=fast::clamp(l9_4039,l9_4040,l9_4041);
float l9_4045=step(abs(l9_4039-l9_4044),9.9999997e-06);
l9_4043*=(l9_4045+((1.0-float(l9_4042))*(1.0-l9_4045)));
l9_4039=l9_4044;
l9_4035=l9_4039;
l9_4038=l9_4043;
}
l9_3981.y=l9_4035;
l9_3991=l9_4038;
float2 l9_4046=l9_3981;
int l9_4047=l9_3979;
int l9_4048=l9_3980;
float l9_4049=l9_3989;
float2 l9_4050=l9_4046;
int l9_4051=l9_4047;
int l9_4052=l9_4048;
float3 l9_4053=float3(0.0);
if (l9_4051==0)
{
l9_4053=float3(l9_4050,0.0);
}
else
{
if (l9_4051==1)
{
l9_4053=float3(l9_4050.x,(l9_4050.y*0.5)+(0.5-(float(l9_4052)*0.5)),0.0);
}
else
{
l9_4053=float3(l9_4050,float(l9_4052));
}
}
float3 l9_4054=l9_4053;
float3 l9_4055=l9_4054;
float4 l9_4056=sc_set0.drivingHairMask.sample(sc_set0.drivingHairMaskSmpSC,l9_4055.xy,bias(l9_4049));
float4 l9_4057=l9_4056;
if (l9_3987)
{
l9_4057=mix(l9_3988,l9_4057,float4(l9_3991));
}
float4 l9_4058=l9_4057;
l9_3972=l9_4058;
float4 l9_4059=l9_3972;
float4 l9_4060=l9_4059;
float2 l9_4061=l9_3787+float2(l9_3784.x,l9_3784.y);
float4 l9_4062=float4(0.0);
int l9_4063;
if ((int(drivingHairMaskHasSwappedViews_tmp)!=0))
{
int l9_4064=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4064=0;
}
else
{
l9_4064=in.varStereoViewID;
}
int l9_4065=l9_4064;
l9_4063=1-l9_4065;
}
else
{
int l9_4066=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4066=0;
}
else
{
l9_4066=in.varStereoViewID;
}
int l9_4067=l9_4066;
l9_4063=l9_4067;
}
int l9_4068=l9_4063;
int l9_4069=drivingHairMaskLayout_tmp;
int l9_4070=l9_4068;
float2 l9_4071=l9_4061;
bool l9_4072=(int(SC_USE_UV_TRANSFORM_drivingHairMask_tmp)!=0);
float3x3 l9_4073=(*sc_set0.UserUniforms).drivingHairMaskTransform;
int2 l9_4074=int2(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp,SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp);
bool l9_4075=(int(SC_USE_UV_MIN_MAX_drivingHairMask_tmp)!=0);
float4 l9_4076=(*sc_set0.UserUniforms).drivingHairMaskUvMinMax;
bool l9_4077=(int(SC_USE_CLAMP_TO_BORDER_drivingHairMask_tmp)!=0);
float4 l9_4078=(*sc_set0.UserUniforms).drivingHairMaskBorderColor;
float l9_4079=0.0;
bool l9_4080=l9_4077&&(!l9_4075);
float l9_4081=1.0;
float l9_4082=l9_4071.x;
int l9_4083=l9_4074.x;
if (l9_4083==1)
{
l9_4082=fract(l9_4082);
}
else
{
if (l9_4083==2)
{
float l9_4084=fract(l9_4082);
float l9_4085=l9_4082-l9_4084;
float l9_4086=step(0.25,fract(l9_4085*0.5));
l9_4082=mix(l9_4084,1.0-l9_4084,fast::clamp(l9_4086,0.0,1.0));
}
}
l9_4071.x=l9_4082;
float l9_4087=l9_4071.y;
int l9_4088=l9_4074.y;
if (l9_4088==1)
{
l9_4087=fract(l9_4087);
}
else
{
if (l9_4088==2)
{
float l9_4089=fract(l9_4087);
float l9_4090=l9_4087-l9_4089;
float l9_4091=step(0.25,fract(l9_4090*0.5));
l9_4087=mix(l9_4089,1.0-l9_4089,fast::clamp(l9_4091,0.0,1.0));
}
}
l9_4071.y=l9_4087;
if (l9_4075)
{
bool l9_4092=l9_4077;
bool l9_4093;
if (l9_4092)
{
l9_4093=l9_4074.x==3;
}
else
{
l9_4093=l9_4092;
}
float l9_4094=l9_4071.x;
float l9_4095=l9_4076.x;
float l9_4096=l9_4076.z;
bool l9_4097=l9_4093;
float l9_4098=l9_4081;
float l9_4099=fast::clamp(l9_4094,l9_4095,l9_4096);
float l9_4100=step(abs(l9_4094-l9_4099),9.9999997e-06);
l9_4098*=(l9_4100+((1.0-float(l9_4097))*(1.0-l9_4100)));
l9_4094=l9_4099;
l9_4071.x=l9_4094;
l9_4081=l9_4098;
bool l9_4101=l9_4077;
bool l9_4102;
if (l9_4101)
{
l9_4102=l9_4074.y==3;
}
else
{
l9_4102=l9_4101;
}
float l9_4103=l9_4071.y;
float l9_4104=l9_4076.y;
float l9_4105=l9_4076.w;
bool l9_4106=l9_4102;
float l9_4107=l9_4081;
float l9_4108=fast::clamp(l9_4103,l9_4104,l9_4105);
float l9_4109=step(abs(l9_4103-l9_4108),9.9999997e-06);
l9_4107*=(l9_4109+((1.0-float(l9_4106))*(1.0-l9_4109)));
l9_4103=l9_4108;
l9_4071.y=l9_4103;
l9_4081=l9_4107;
}
float2 l9_4110=l9_4071;
bool l9_4111=l9_4072;
float3x3 l9_4112=l9_4073;
if (l9_4111)
{
l9_4110=float2((l9_4112*float3(l9_4110,1.0)).xy);
}
float2 l9_4113=l9_4110;
l9_4071=l9_4113;
float l9_4114=l9_4071.x;
int l9_4115=l9_4074.x;
bool l9_4116=l9_4080;
float l9_4117=l9_4081;
if ((l9_4115==0)||(l9_4115==3))
{
float l9_4118=l9_4114;
float l9_4119=0.0;
float l9_4120=1.0;
bool l9_4121=l9_4116;
float l9_4122=l9_4117;
float l9_4123=fast::clamp(l9_4118,l9_4119,l9_4120);
float l9_4124=step(abs(l9_4118-l9_4123),9.9999997e-06);
l9_4122*=(l9_4124+((1.0-float(l9_4121))*(1.0-l9_4124)));
l9_4118=l9_4123;
l9_4114=l9_4118;
l9_4117=l9_4122;
}
l9_4071.x=l9_4114;
l9_4081=l9_4117;
float l9_4125=l9_4071.y;
int l9_4126=l9_4074.y;
bool l9_4127=l9_4080;
float l9_4128=l9_4081;
if ((l9_4126==0)||(l9_4126==3))
{
float l9_4129=l9_4125;
float l9_4130=0.0;
float l9_4131=1.0;
bool l9_4132=l9_4127;
float l9_4133=l9_4128;
float l9_4134=fast::clamp(l9_4129,l9_4130,l9_4131);
float l9_4135=step(abs(l9_4129-l9_4134),9.9999997e-06);
l9_4133*=(l9_4135+((1.0-float(l9_4132))*(1.0-l9_4135)));
l9_4129=l9_4134;
l9_4125=l9_4129;
l9_4128=l9_4133;
}
l9_4071.y=l9_4125;
l9_4081=l9_4128;
float2 l9_4136=l9_4071;
int l9_4137=l9_4069;
int l9_4138=l9_4070;
float l9_4139=l9_4079;
float2 l9_4140=l9_4136;
int l9_4141=l9_4137;
int l9_4142=l9_4138;
float3 l9_4143=float3(0.0);
if (l9_4141==0)
{
l9_4143=float3(l9_4140,0.0);
}
else
{
if (l9_4141==1)
{
l9_4143=float3(l9_4140.x,(l9_4140.y*0.5)+(0.5-(float(l9_4142)*0.5)),0.0);
}
else
{
l9_4143=float3(l9_4140,float(l9_4142));
}
}
float3 l9_4144=l9_4143;
float3 l9_4145=l9_4144;
float4 l9_4146=sc_set0.drivingHairMask.sample(sc_set0.drivingHairMaskSmpSC,l9_4145.xy,bias(l9_4139));
float4 l9_4147=l9_4146;
if (l9_4077)
{
l9_4147=mix(l9_4078,l9_4147,float4(l9_4081));
}
float4 l9_4148=l9_4147;
l9_4062=l9_4148;
float4 l9_4149=l9_4062;
float4 l9_4150=l9_4149;
float4 l9_4151=mix(l9_3880,l9_3970,float4(l9_3788.x));
float4 l9_4152=mix(l9_4060,l9_4150,float4(l9_3788.x));
float4 l9_4153=mix(l9_4151,l9_4152,float4(l9_3788.y));
float l9_4154=l9_4153.x;
float l9_4155=step(0.30000001,l9_3403.y)*l9_3403.z;
float l9_4156=(((1.0-l9_4154)*l9_4155)*step(0.69999999,l9_4155))*N52_generatedAlpha;
float4 l9_4157=float4(l9_3779.x,l9_3779.y,l9_3779.z,0.0);
float4 l9_4158=float4(1.0)/(float4(1.0)+exp(-l9_4157));
float4 l9_4159=l9_4158;
float4 l9_4160=l9_4159;
float4 l9_4161=float4(l9_3220.xyz,l9_3404);
float l9_4162=l9_4161.w;
float3 l9_4163=(l9_4161.xyz*l9_4162)+(l9_4160.xyz*(1.0-l9_4162));
float4 l9_4164=float4(l9_4163,1.0);
float4 l9_4165=l9_4164;
bool4 l9_4166=bool4(N52_useShaderGridSample==1.0);
float4 l9_4167=float4(l9_4166.x ? l9_4165.x : l9_4159.x,l9_4166.y ? l9_4165.y : l9_4159.y,l9_4166.z ? l9_4165.z : l9_4159.z,l9_4166.w ? l9_4165.w : l9_4159.w);
float4 l9_4168=float4(l9_4167.xyz,l9_4156);
float l9_4169=(1.0*l9_4168.w)+0.0;
float3 l9_4170=(l9_4168.xyz*l9_4169)+(l9_105.xyz*(1.0-l9_4169));
N52_Result=float4(l9_4170,1.0);
param_32=N52_Result;
Result_N52=param_32;
FinalColor=Result_N52;
float param_34=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_34<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_4171=gl_FragCoord;
float2 l9_4172=floor(mod(l9_4171.xy,float2(4.0)));
float l9_4173=(mod(dot(l9_4172,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_34<l9_4173)
{
discard_fragment();
}
}
float4 param_35=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_4174=param_35;
float4 l9_4175=l9_4174;
float l9_4176=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_4176=l9_4175.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_4176=fast::clamp(l9_4175.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_4176=fast::clamp(dot(l9_4175.xyz,float3(l9_4175.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_4176=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_4176=(1.0-dot(l9_4175.xyz,float3(0.33333001)))*l9_4175.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_4176=(1.0-fast::clamp(dot(l9_4175.xyz,float3(1.0)),0.0,1.0))*l9_4175.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_4176=fast::clamp(dot(l9_4175.xyz,float3(1.0)),0.0,1.0)*l9_4175.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_4176=fast::clamp(dot(l9_4175.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_4176=fast::clamp(dot(l9_4175.xyz,float3(1.0)),0.0,1.0)*l9_4175.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_4176=dot(l9_4175.xyz,float3(0.33333001))*l9_4175.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_4176=1.0-fast::clamp(dot(l9_4175.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_4176=fast::clamp(dot(l9_4175.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_4177=l9_4176;
float l9_4178=l9_4177;
float l9_4179=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_4178;
float3 l9_4180=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_4174.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_4181=float4(l9_4180.x,l9_4180.y,l9_4180.z,l9_4179);
param_35=l9_4181;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_35=float4(param_35.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_4182=param_35;
float4 l9_4183=float4(0.0);
float4 l9_4184=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_4185=out.sc_FragData0;
l9_4184=l9_4185;
}
else
{
float4 l9_4186=gl_FragCoord;
float2 l9_4187=l9_4186.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_4188=l9_4187;
float2 l9_4189=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_4190=1;
int l9_4191=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4191=0;
}
else
{
l9_4191=in.varStereoViewID;
}
int l9_4192=l9_4191;
int l9_4193=l9_4192;
float3 l9_4194=float3(l9_4188,0.0);
int l9_4195=l9_4190;
int l9_4196=l9_4193;
if (l9_4195==1)
{
l9_4194.y=((2.0*l9_4194.y)+float(l9_4196))-1.0;
}
float2 l9_4197=l9_4194.xy;
l9_4189=l9_4197;
}
else
{
l9_4189=l9_4188;
}
float2 l9_4198=l9_4189;
float2 l9_4199=l9_4198;
float2 l9_4200=l9_4199;
float2 l9_4201=l9_4200;
float l9_4202=0.0;
int l9_4203;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_4204=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4204=0;
}
else
{
l9_4204=in.varStereoViewID;
}
int l9_4205=l9_4204;
l9_4203=1-l9_4205;
}
else
{
int l9_4206=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4206=0;
}
else
{
l9_4206=in.varStereoViewID;
}
int l9_4207=l9_4206;
l9_4203=l9_4207;
}
int l9_4208=l9_4203;
float2 l9_4209=l9_4201;
int l9_4210=sc_ScreenTextureLayout_tmp;
int l9_4211=l9_4208;
float l9_4212=l9_4202;
float2 l9_4213=l9_4209;
int l9_4214=l9_4210;
int l9_4215=l9_4211;
float3 l9_4216=float3(0.0);
if (l9_4214==0)
{
l9_4216=float3(l9_4213,0.0);
}
else
{
if (l9_4214==1)
{
l9_4216=float3(l9_4213.x,(l9_4213.y*0.5)+(0.5-(float(l9_4215)*0.5)),0.0);
}
else
{
l9_4216=float3(l9_4213,float(l9_4215));
}
}
float3 l9_4217=l9_4216;
float3 l9_4218=l9_4217;
float4 l9_4219=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_4218.xy,bias(l9_4212));
float4 l9_4220=l9_4219;
float4 l9_4221=l9_4220;
l9_4184=l9_4221;
}
float4 l9_4222=l9_4184;
float3 l9_4223=l9_4222.xyz;
float3 l9_4224=l9_4223;
float3 l9_4225=l9_4182.xyz;
float3 l9_4226=definedBlend(l9_4224,l9_4225,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_4183=float4(l9_4226.x,l9_4226.y,l9_4226.z,l9_4183.w);
float3 l9_4227=mix(l9_4223,l9_4183.xyz,float3(l9_4182.w));
l9_4183=float4(l9_4227.x,l9_4227.y,l9_4227.z,l9_4183.w);
l9_4183.w=1.0;
float4 l9_4228=l9_4183;
param_35=l9_4228;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_4229=float4(in.varScreenPos.xyz,1.0);
param_35=l9_4229;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_4230=gl_FragCoord;
float l9_4231=fast::clamp(abs(l9_4230.z),0.0,1.0);
float4 l9_4232=float4(l9_4231,1.0-l9_4231,1.0,1.0);
param_35=l9_4232;
}
else
{
float4 l9_4233=param_35;
float4 l9_4234=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_4234=float4(mix(float3(1.0),l9_4233.xyz,float3(l9_4233.w)),l9_4233.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_4235=l9_4233.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_4235=fast::clamp(l9_4235,0.0,1.0);
}
l9_4234=float4(l9_4233.xyz*l9_4235,l9_4235);
}
else
{
l9_4234=l9_4233;
}
}
float4 l9_4236=l9_4234;
param_35=l9_4236;
}
}
}
}
}
float4 l9_4237=param_35;
FinalColor=l9_4237;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_4238=float4(0.0);
l9_4238=float4(0.0);
float4 l9_4239=l9_4238;
float4 Cost=l9_4239;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_36=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_36,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_37=FinalColor;
float4 l9_4240=param_37;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_4240.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_4240;
return out;
}
} // FRAGMENT SHADER
