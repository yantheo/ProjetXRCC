#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
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
//sampler sampler camTexSmpSC 0:23
//sampler sampler drivingHairMaskSmpSC 0:24
//sampler sampler flowRelativeSmpSC 0:25
//sampler sampler flowSelectionSmpSC 0:26
//sampler sampler intensityTextureSmpSC 0:27
//sampler sampler sc_ScreenTextureSmpSC 0:32
//sampler sampler sourceCropTexSmpSC 0:35
//sampler sampler sourceGarmentMaskSmpSC 0:36
//sampler sampler sourcePartsSmpSC 0:37
//texture texture2D camTex 0:1:0:23
//texture texture2D drivingHairMask 0:2:0:24
//texture texture2D flowRelative 0:3:0:25
//texture texture2D flowSelection 0:4:0:26
//texture texture2D intensityTexture 0:5:0:27
//texture texture2D sc_ScreenTexture 0:17:0:32
//texture texture2D sourceCropTex 0:20:0:35
//texture texture2D sourceGarmentMask 0:21:0:36
//texture texture2D sourceParts 0:22:0:37
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[1]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:38:5216 {
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
//float4 drivingHairMaskSize 4944
//float3x3 drivingHairMaskTransform 4992
//float4 drivingHairMaskUvMinMax 5040
//float4 drivingHairMaskBorderColor 5056
//float segShiftX 5072
//float segRatioX 5076
//float segShiftY 5080
//float segRatioY 5084
//float4 sourcePartsSize 5088
//float3x3 sourcePartsTransform 5136
//float4 sourcePartsUvMinMax 5184
//float4 sourcePartsBorderColor 5200
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 35 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sourceCropTex 36 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sourceGarmentMask 37 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_sourceParts 38 0
//spec_const bool SC_USE_UV_MIN_MAX_camTex 39 0
//spec_const bool SC_USE_UV_MIN_MAX_drivingHairMask 40 0
//spec_const bool SC_USE_UV_MIN_MAX_flowRelative 41 0
//spec_const bool SC_USE_UV_MIN_MAX_flowSelection 42 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 43 0
//spec_const bool SC_USE_UV_MIN_MAX_sourceCropTex 44 0
//spec_const bool SC_USE_UV_MIN_MAX_sourceGarmentMask 45 0
//spec_const bool SC_USE_UV_MIN_MAX_sourceParts 46 0
//spec_const bool SC_USE_UV_TRANSFORM_camTex 47 0
//spec_const bool SC_USE_UV_TRANSFORM_drivingHairMask 48 0
//spec_const bool SC_USE_UV_TRANSFORM_flowRelative 49 0
//spec_const bool SC_USE_UV_TRANSFORM_flowSelection 50 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 51 0
//spec_const bool SC_USE_UV_TRANSFORM_sourceCropTex 52 0
//spec_const bool SC_USE_UV_TRANSFORM_sourceGarmentMask 53 0
//spec_const bool SC_USE_UV_TRANSFORM_sourceParts 54 0
//spec_const bool UseViewSpaceDepthVariant 55 1
//spec_const bool camTexHasSwappedViews 56 0
//spec_const bool drivingHairMaskHasSwappedViews 57 0
//spec_const bool flowRelativeHasSwappedViews 58 0
//spec_const bool flowSelectionHasSwappedViews 59 0
//spec_const bool intensityTextureHasSwappedViews 60 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 61 0
//spec_const bool sc_BlendMode_Add 62 0
//spec_const bool sc_BlendMode_AlphaTest 63 0
//spec_const bool sc_BlendMode_AlphaToCoverage 64 0
//spec_const bool sc_BlendMode_ColoredGlass 65 0
//spec_const bool sc_BlendMode_Custom 66 0
//spec_const bool sc_BlendMode_Max 67 0
//spec_const bool sc_BlendMode_Min 68 0
//spec_const bool sc_BlendMode_MultiplyOriginal 69 0
//spec_const bool sc_BlendMode_Multiply 70 0
//spec_const bool sc_BlendMode_Normal 71 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 72 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 73 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 74 0
//spec_const bool sc_BlendMode_Screen 75 0
//spec_const bool sc_DepthOnly 76 0
//spec_const bool sc_FramebufferFetch 77 0
//spec_const bool sc_MotionVectorsPass 78 0
//spec_const bool sc_OITCompositingPass 79 0
//spec_const bool sc_OITDepthBoundsPass 80 0
//spec_const bool sc_OITDepthGatherPass 81 0
//spec_const bool sc_OutputBounds 82 0
//spec_const bool sc_ProjectiveShadowsCaster 83 0
//spec_const bool sc_ProjectiveShadowsReceiver 84 0
//spec_const bool sc_RenderAlphaToColor 85 0
//spec_const bool sc_ScreenTextureHasSwappedViews 86 0
//spec_const bool sc_TAAEnabled 87 0
//spec_const bool sc_VertexBlendingUseNormals 88 0
//spec_const bool sc_VertexBlending 89 0
//spec_const bool sc_Voxelization 90 0
//spec_const bool sourceCropTexHasSwappedViews 91 0
//spec_const bool sourceGarmentMaskHasSwappedViews 92 0
//spec_const bool sourcePartsHasSwappedViews 93 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_camTex 94 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_drivingHairMask 95 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_flowRelative 96 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_flowSelection 97 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 98 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sourceCropTex 99 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask 100 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_sourceParts 101 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_camTex 102 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_drivingHairMask 103 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_flowRelative 104 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_flowSelection 105 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 106 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sourceCropTex 107 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask 108 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_sourceParts 109 -1
//spec_const int camTexLayout 110 0
//spec_const int drivingHairMaskLayout 111 0
//spec_const int flowRelativeLayout 112 0
//spec_const int flowSelectionLayout 113 0
//spec_const int intensityTextureLayout 114 0
//spec_const int sc_DepthBufferMode 115 0
//spec_const int sc_RenderingSpace 116 -1
//spec_const int sc_ScreenTextureLayout 117 0
//spec_const int sc_ShaderCacheConstant 118 0
//spec_const int sc_SkinBonesCount 119 0
//spec_const int sc_StereoRenderingMode 120 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 121 0
//spec_const int sourceCropTexLayout 122 0
//spec_const int sourceGarmentMaskLayout 123 0
//spec_const int sourcePartsLayout 124 0
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
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_sourceCropTex [[function_constant(36)]];
constant bool SC_USE_CLAMP_TO_BORDER_sourceCropTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_sourceCropTex) ? SC_USE_CLAMP_TO_BORDER_sourceCropTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_sourceGarmentMask [[function_constant(37)]];
constant bool SC_USE_CLAMP_TO_BORDER_sourceGarmentMask_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_sourceGarmentMask) ? SC_USE_CLAMP_TO_BORDER_sourceGarmentMask : false;
constant bool SC_USE_CLAMP_TO_BORDER_sourceParts [[function_constant(38)]];
constant bool SC_USE_CLAMP_TO_BORDER_sourceParts_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_sourceParts) ? SC_USE_CLAMP_TO_BORDER_sourceParts : false;
constant bool SC_USE_UV_MIN_MAX_camTex [[function_constant(39)]];
constant bool SC_USE_UV_MIN_MAX_camTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_camTex) ? SC_USE_UV_MIN_MAX_camTex : false;
constant bool SC_USE_UV_MIN_MAX_drivingHairMask [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_drivingHairMask_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_drivingHairMask) ? SC_USE_UV_MIN_MAX_drivingHairMask : false;
constant bool SC_USE_UV_MIN_MAX_flowRelative [[function_constant(41)]];
constant bool SC_USE_UV_MIN_MAX_flowRelative_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_flowRelative) ? SC_USE_UV_MIN_MAX_flowRelative : false;
constant bool SC_USE_UV_MIN_MAX_flowSelection [[function_constant(42)]];
constant bool SC_USE_UV_MIN_MAX_flowSelection_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_flowSelection) ? SC_USE_UV_MIN_MAX_flowSelection : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(43)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_sourceCropTex [[function_constant(44)]];
constant bool SC_USE_UV_MIN_MAX_sourceCropTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_sourceCropTex) ? SC_USE_UV_MIN_MAX_sourceCropTex : false;
constant bool SC_USE_UV_MIN_MAX_sourceGarmentMask [[function_constant(45)]];
constant bool SC_USE_UV_MIN_MAX_sourceGarmentMask_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_sourceGarmentMask) ? SC_USE_UV_MIN_MAX_sourceGarmentMask : false;
constant bool SC_USE_UV_MIN_MAX_sourceParts [[function_constant(46)]];
constant bool SC_USE_UV_MIN_MAX_sourceParts_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_sourceParts) ? SC_USE_UV_MIN_MAX_sourceParts : false;
constant bool SC_USE_UV_TRANSFORM_camTex [[function_constant(47)]];
constant bool SC_USE_UV_TRANSFORM_camTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_camTex) ? SC_USE_UV_TRANSFORM_camTex : false;
constant bool SC_USE_UV_TRANSFORM_drivingHairMask [[function_constant(48)]];
constant bool SC_USE_UV_TRANSFORM_drivingHairMask_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_drivingHairMask) ? SC_USE_UV_TRANSFORM_drivingHairMask : false;
constant bool SC_USE_UV_TRANSFORM_flowRelative [[function_constant(49)]];
constant bool SC_USE_UV_TRANSFORM_flowRelative_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_flowRelative) ? SC_USE_UV_TRANSFORM_flowRelative : false;
constant bool SC_USE_UV_TRANSFORM_flowSelection [[function_constant(50)]];
constant bool SC_USE_UV_TRANSFORM_flowSelection_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_flowSelection) ? SC_USE_UV_TRANSFORM_flowSelection : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(51)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_sourceCropTex [[function_constant(52)]];
constant bool SC_USE_UV_TRANSFORM_sourceCropTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_sourceCropTex) ? SC_USE_UV_TRANSFORM_sourceCropTex : false;
constant bool SC_USE_UV_TRANSFORM_sourceGarmentMask [[function_constant(53)]];
constant bool SC_USE_UV_TRANSFORM_sourceGarmentMask_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_sourceGarmentMask) ? SC_USE_UV_TRANSFORM_sourceGarmentMask : false;
constant bool SC_USE_UV_TRANSFORM_sourceParts [[function_constant(54)]];
constant bool SC_USE_UV_TRANSFORM_sourceParts_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_sourceParts) ? SC_USE_UV_TRANSFORM_sourceParts : false;
constant bool UseViewSpaceDepthVariant [[function_constant(55)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool camTexHasSwappedViews [[function_constant(56)]];
constant bool camTexHasSwappedViews_tmp = is_function_constant_defined(camTexHasSwappedViews) ? camTexHasSwappedViews : false;
constant bool drivingHairMaskHasSwappedViews [[function_constant(57)]];
constant bool drivingHairMaskHasSwappedViews_tmp = is_function_constant_defined(drivingHairMaskHasSwappedViews) ? drivingHairMaskHasSwappedViews : false;
constant bool flowRelativeHasSwappedViews [[function_constant(58)]];
constant bool flowRelativeHasSwappedViews_tmp = is_function_constant_defined(flowRelativeHasSwappedViews) ? flowRelativeHasSwappedViews : false;
constant bool flowSelectionHasSwappedViews [[function_constant(59)]];
constant bool flowSelectionHasSwappedViews_tmp = is_function_constant_defined(flowSelectionHasSwappedViews) ? flowSelectionHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(60)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(61)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(62)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(63)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(64)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(65)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(66)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(67)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(68)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(69)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(70)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(71)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(72)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(73)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(74)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(75)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(76)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(77)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(78)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(79)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(80)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(81)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_OutputBounds [[function_constant(82)]];
constant bool sc_OutputBounds_tmp = is_function_constant_defined(sc_OutputBounds) ? sc_OutputBounds : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(83)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(84)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(85)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(86)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_TAAEnabled [[function_constant(87)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(88)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(89)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool sc_Voxelization [[function_constant(90)]];
constant bool sc_Voxelization_tmp = is_function_constant_defined(sc_Voxelization) ? sc_Voxelization : false;
constant bool sourceCropTexHasSwappedViews [[function_constant(91)]];
constant bool sourceCropTexHasSwappedViews_tmp = is_function_constant_defined(sourceCropTexHasSwappedViews) ? sourceCropTexHasSwappedViews : false;
constant bool sourceGarmentMaskHasSwappedViews [[function_constant(92)]];
constant bool sourceGarmentMaskHasSwappedViews_tmp = is_function_constant_defined(sourceGarmentMaskHasSwappedViews) ? sourceGarmentMaskHasSwappedViews : false;
constant bool sourcePartsHasSwappedViews [[function_constant(93)]];
constant bool sourcePartsHasSwappedViews_tmp = is_function_constant_defined(sourcePartsHasSwappedViews) ? sourcePartsHasSwappedViews : false;
constant int SC_SOFTWARE_WRAP_MODE_U_camTex [[function_constant(94)]];
constant int SC_SOFTWARE_WRAP_MODE_U_camTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_camTex) ? SC_SOFTWARE_WRAP_MODE_U_camTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_drivingHairMask [[function_constant(95)]];
constant int SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask) ? SC_SOFTWARE_WRAP_MODE_U_drivingHairMask : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_flowRelative [[function_constant(96)]];
constant int SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_flowRelative) ? SC_SOFTWARE_WRAP_MODE_U_flowRelative : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_flowSelection [[function_constant(97)]];
constant int SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_flowSelection) ? SC_SOFTWARE_WRAP_MODE_U_flowSelection : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(98)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_sourceCropTex [[function_constant(99)]];
constant int SC_SOFTWARE_WRAP_MODE_U_sourceCropTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_sourceCropTex) ? SC_SOFTWARE_WRAP_MODE_U_sourceCropTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask [[function_constant(100)]];
constant int SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask) ? SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_sourceParts [[function_constant(101)]];
constant int SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_sourceParts) ? SC_SOFTWARE_WRAP_MODE_U_sourceParts : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_camTex [[function_constant(102)]];
constant int SC_SOFTWARE_WRAP_MODE_V_camTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_camTex) ? SC_SOFTWARE_WRAP_MODE_V_camTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_drivingHairMask [[function_constant(103)]];
constant int SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_drivingHairMask) ? SC_SOFTWARE_WRAP_MODE_V_drivingHairMask : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_flowRelative [[function_constant(104)]];
constant int SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_flowRelative) ? SC_SOFTWARE_WRAP_MODE_V_flowRelative : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_flowSelection [[function_constant(105)]];
constant int SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_flowSelection) ? SC_SOFTWARE_WRAP_MODE_V_flowSelection : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(106)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_sourceCropTex [[function_constant(107)]];
constant int SC_SOFTWARE_WRAP_MODE_V_sourceCropTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_sourceCropTex) ? SC_SOFTWARE_WRAP_MODE_V_sourceCropTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask [[function_constant(108)]];
constant int SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask) ? SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_sourceParts [[function_constant(109)]];
constant int SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_sourceParts) ? SC_SOFTWARE_WRAP_MODE_V_sourceParts : -1;
constant int camTexLayout [[function_constant(110)]];
constant int camTexLayout_tmp = is_function_constant_defined(camTexLayout) ? camTexLayout : 0;
constant int drivingHairMaskLayout [[function_constant(111)]];
constant int drivingHairMaskLayout_tmp = is_function_constant_defined(drivingHairMaskLayout) ? drivingHairMaskLayout : 0;
constant int flowRelativeLayout [[function_constant(112)]];
constant int flowRelativeLayout_tmp = is_function_constant_defined(flowRelativeLayout) ? flowRelativeLayout : 0;
constant int flowSelectionLayout [[function_constant(113)]];
constant int flowSelectionLayout_tmp = is_function_constant_defined(flowSelectionLayout) ? flowSelectionLayout : 0;
constant int intensityTextureLayout [[function_constant(114)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int sc_DepthBufferMode [[function_constant(115)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(116)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(117)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(118)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(119)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(120)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(121)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int sourceCropTexLayout [[function_constant(122)]];
constant int sourceCropTexLayout_tmp = is_function_constant_defined(sourceCropTexLayout) ? sourceCropTexLayout : 0;
constant int sourceGarmentMaskLayout [[function_constant(123)]];
constant int sourceGarmentMaskLayout_tmp = is_function_constant_defined(sourceGarmentMaskLayout) ? sourceGarmentMaskLayout : 0;
constant int sourcePartsLayout [[function_constant(124)]];
constant int sourcePartsLayout_tmp = is_function_constant_defined(sourcePartsLayout) ? sourcePartsLayout : 0;

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
float4 sourcePartsSize;
float4 sourcePartsDims;
float4 sourcePartsView;
float3x3 sourcePartsTransform;
float4 sourcePartsUvMinMax;
float4 sourcePartsBorderColor;
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
texture2d<float> intensityTexture [[id(5)]];
texture2d<float> sc_ScreenTexture [[id(17)]];
texture2d<float> sourceCropTex [[id(20)]];
texture2d<float> sourceGarmentMask [[id(21)]];
texture2d<float> sourceParts [[id(22)]];
sampler camTexSmpSC [[id(23)]];
sampler drivingHairMaskSmpSC [[id(24)]];
sampler flowRelativeSmpSC [[id(25)]];
sampler flowSelectionSmpSC [[id(26)]];
sampler intensityTextureSmpSC [[id(27)]];
sampler sc_ScreenTextureSmpSC [[id(32)]];
sampler sourceCropTexSmpSC [[id(35)]];
sampler sourceGarmentMaskSmpSC [[id(36)]];
sampler sourcePartsSmpSC [[id(37)]];
constant userUniformsObj* UserUniforms [[id(38)]];
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
float4 sourcePartsSize;
float4 sourcePartsDims;
float4 sourcePartsView;
float3x3 sourcePartsTransform;
float4 sourcePartsUvMinMax;
float4 sourcePartsBorderColor;
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
texture2d<float> intensityTexture [[id(5)]];
texture2d<float> sc_ScreenTexture [[id(17)]];
texture2d<float> sourceCropTex [[id(20)]];
texture2d<float> sourceGarmentMask [[id(21)]];
texture2d<float> sourceParts [[id(22)]];
sampler camTexSmpSC [[id(23)]];
sampler drivingHairMaskSmpSC [[id(24)]];
sampler flowRelativeSmpSC [[id(25)]];
sampler flowSelectionSmpSC [[id(26)]];
sampler intensityTextureSmpSC [[id(27)]];
sampler sc_ScreenTextureSmpSC [[id(32)]];
sampler sourceCropTexSmpSC [[id(35)]];
sampler sourceGarmentMaskSmpSC [[id(36)]];
sampler sourcePartsSmpSC [[id(37)]];
constant userUniformsObj* UserUniforms [[id(38)]];
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
float2 N75_UVCenter=float2(0.0);
float2 N75_UVcropSize=float2(0.0);
float N75_FlowHalfPx=0.0;
float N75_sx=0.0;
float N75_sy=0.0;
float N75_dx=0.0;
float N75_dy=0.0;
float N75_segShiftX=0.0;
float N75_segRatioX=0.0;
float N75_segShiftY=0.0;
float N75_segRatioY=0.0;
float4 N75_Result=float4(0.0);
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
float Output_N9=0.0;
float param_7=(*sc_set0.UserUniforms).segShiftX;
Output_N9=param_7;
float Output_N14=0.0;
float param_8=(*sc_set0.UserUniforms).segRatioX;
Output_N14=param_8;
float Output_N121=0.0;
float param_9=(*sc_set0.UserUniforms).segShiftY;
Output_N121=param_9;
float Output_N130=0.0;
float param_10=(*sc_set0.UserUniforms).segRatioY;
Output_N130=param_10;
float4 Result_N75=float4(0.0);
float2 param_11=Output_N11;
float2 param_12=Output_N12;
float param_13=Output_N20;
float param_14=Output_N46;
float param_15=Output_N57;
float param_16=Output_N42;
float param_17=Output_N59;
float param_18=Output_N9;
float param_19=Output_N14;
float param_20=Output_N121;
float param_21=Output_N130;
ssGlobals param_23=Globals;
ssGlobals tempGlobals=param_23;
float4 param_22=float4(0.0);
N75_UVCenter=param_11;
N75_UVcropSize=param_12;
N75_FlowHalfPx=param_13;
N75_sx=param_14;
N75_sy=param_15;
N75_dx=param_16;
N75_dy=param_17;
N75_segShiftX=param_18;
N75_segRatioX=param_19;
N75_segShiftY=param_20;
N75_segRatioY=param_21;
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
float2 l9_107=N75_UVCenter;
float2 l9_108=N75_UVcropSize;
float2 l9_109=l9_108*0.5;
float2 l9_110=float2(1.0)/l9_108;
float2 l9_111=l9_106+((l9_107-l9_109)*(-1.0));
l9_111*=l9_110;
float2 l9_112=l9_111;
float2 l9_113=l9_112;
float2 l9_114=l9_113;
l9_114=float2(N75_FlowHalfPx)+(((l9_114-float2(0.0))*((1.0-N75_FlowHalfPx)-N75_FlowHalfPx))/float2(1.000001));
l9_114=((l9_114-float2(0.5))*float2(1.0,-1.0))+float2(0.5);
float2 l9_115=float2(l9_114.x*0.2,l9_114.y);
float2 l9_116=float2((l9_114.x*0.2)+0.2,l9_114.y);
float2 l9_117=float2((l9_114.x*0.2)+0.40000001,l9_114.y);
float2 l9_118=float2((l9_114.x*0.2)+0.60000002,l9_114.y);
float2 l9_119=float2((l9_114.x*0.2)+0.80000001,l9_114.y);
float2 l9_120=float2(l9_114.x*0.33333334,l9_114.y);
float2 l9_121=float2((l9_114.x*0.33333334)+0.33333334,l9_114.y);
float2 l9_122=float2((l9_114.x*0.33333334)+0.66666669,l9_114.y);
float2 l9_123=l9_115;
float2 l9_124=float2(0.0);
l9_124=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_125=l9_124;
float2 l9_126=float2(1.0)/l9_125;
float2 l9_127=float2(0.0);
l9_127=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_128=l9_127;
float2 l9_129=(l9_123*l9_128)+float2(0.5);
float2 l9_130=fract(l9_129);
float2 l9_131=float2(0.0);
l9_131=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_132=l9_131;
l9_129=(floor(l9_129)/l9_132)-(l9_126/float2(2.0));
float2 l9_133=l9_129;
float4 l9_134=float4(0.0);
int l9_135;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=in.varStereoViewID;
}
int l9_137=l9_136;
l9_135=1-l9_137;
}
else
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=in.varStereoViewID;
}
int l9_139=l9_138;
l9_135=l9_139;
}
int l9_140=l9_135;
int l9_141=flowRelativeLayout_tmp;
int l9_142=l9_140;
float2 l9_143=l9_133;
bool l9_144=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_145=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_146=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_147=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_148=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_149=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_150=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_151=0.0;
bool l9_152=l9_149&&(!l9_147);
float l9_153=1.0;
float l9_154=l9_143.x;
int l9_155=l9_146.x;
if (l9_155==1)
{
l9_154=fract(l9_154);
}
else
{
if (l9_155==2)
{
float l9_156=fract(l9_154);
float l9_157=l9_154-l9_156;
float l9_158=step(0.25,fract(l9_157*0.5));
l9_154=mix(l9_156,1.0-l9_156,fast::clamp(l9_158,0.0,1.0));
}
}
l9_143.x=l9_154;
float l9_159=l9_143.y;
int l9_160=l9_146.y;
if (l9_160==1)
{
l9_159=fract(l9_159);
}
else
{
if (l9_160==2)
{
float l9_161=fract(l9_159);
float l9_162=l9_159-l9_161;
float l9_163=step(0.25,fract(l9_162*0.5));
l9_159=mix(l9_161,1.0-l9_161,fast::clamp(l9_163,0.0,1.0));
}
}
l9_143.y=l9_159;
if (l9_147)
{
bool l9_164=l9_149;
bool l9_165;
if (l9_164)
{
l9_165=l9_146.x==3;
}
else
{
l9_165=l9_164;
}
float l9_166=l9_143.x;
float l9_167=l9_148.x;
float l9_168=l9_148.z;
bool l9_169=l9_165;
float l9_170=l9_153;
float l9_171=fast::clamp(l9_166,l9_167,l9_168);
float l9_172=step(abs(l9_166-l9_171),9.9999997e-06);
l9_170*=(l9_172+((1.0-float(l9_169))*(1.0-l9_172)));
l9_166=l9_171;
l9_143.x=l9_166;
l9_153=l9_170;
bool l9_173=l9_149;
bool l9_174;
if (l9_173)
{
l9_174=l9_146.y==3;
}
else
{
l9_174=l9_173;
}
float l9_175=l9_143.y;
float l9_176=l9_148.y;
float l9_177=l9_148.w;
bool l9_178=l9_174;
float l9_179=l9_153;
float l9_180=fast::clamp(l9_175,l9_176,l9_177);
float l9_181=step(abs(l9_175-l9_180),9.9999997e-06);
l9_179*=(l9_181+((1.0-float(l9_178))*(1.0-l9_181)));
l9_175=l9_180;
l9_143.y=l9_175;
l9_153=l9_179;
}
float2 l9_182=l9_143;
bool l9_183=l9_144;
float3x3 l9_184=l9_145;
if (l9_183)
{
l9_182=float2((l9_184*float3(l9_182,1.0)).xy);
}
float2 l9_185=l9_182;
l9_143=l9_185;
float l9_186=l9_143.x;
int l9_187=l9_146.x;
bool l9_188=l9_152;
float l9_189=l9_153;
if ((l9_187==0)||(l9_187==3))
{
float l9_190=l9_186;
float l9_191=0.0;
float l9_192=1.0;
bool l9_193=l9_188;
float l9_194=l9_189;
float l9_195=fast::clamp(l9_190,l9_191,l9_192);
float l9_196=step(abs(l9_190-l9_195),9.9999997e-06);
l9_194*=(l9_196+((1.0-float(l9_193))*(1.0-l9_196)));
l9_190=l9_195;
l9_186=l9_190;
l9_189=l9_194;
}
l9_143.x=l9_186;
l9_153=l9_189;
float l9_197=l9_143.y;
int l9_198=l9_146.y;
bool l9_199=l9_152;
float l9_200=l9_153;
if ((l9_198==0)||(l9_198==3))
{
float l9_201=l9_197;
float l9_202=0.0;
float l9_203=1.0;
bool l9_204=l9_199;
float l9_205=l9_200;
float l9_206=fast::clamp(l9_201,l9_202,l9_203);
float l9_207=step(abs(l9_201-l9_206),9.9999997e-06);
l9_205*=(l9_207+((1.0-float(l9_204))*(1.0-l9_207)));
l9_201=l9_206;
l9_197=l9_201;
l9_200=l9_205;
}
l9_143.y=l9_197;
l9_153=l9_200;
float2 l9_208=l9_143;
int l9_209=l9_141;
int l9_210=l9_142;
float l9_211=l9_151;
float2 l9_212=l9_208;
int l9_213=l9_209;
int l9_214=l9_210;
float3 l9_215=float3(0.0);
if (l9_213==0)
{
l9_215=float3(l9_212,0.0);
}
else
{
if (l9_213==1)
{
l9_215=float3(l9_212.x,(l9_212.y*0.5)+(0.5-(float(l9_214)*0.5)),0.0);
}
else
{
l9_215=float3(l9_212,float(l9_214));
}
}
float3 l9_216=l9_215;
float3 l9_217=l9_216;
float4 l9_218=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_217.xy,bias(l9_211));
float4 l9_219=l9_218;
if (l9_149)
{
l9_219=mix(l9_150,l9_219,float4(l9_153));
}
float4 l9_220=l9_219;
l9_134=l9_220;
float4 l9_221=l9_134;
float4 l9_222=l9_221;
float2 l9_223=l9_129+float2(l9_126.x,0.0);
float4 l9_224=float4(0.0);
int l9_225;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_226=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_226=0;
}
else
{
l9_226=in.varStereoViewID;
}
int l9_227=l9_226;
l9_225=1-l9_227;
}
else
{
int l9_228=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_228=0;
}
else
{
l9_228=in.varStereoViewID;
}
int l9_229=l9_228;
l9_225=l9_229;
}
int l9_230=l9_225;
int l9_231=flowRelativeLayout_tmp;
int l9_232=l9_230;
float2 l9_233=l9_223;
bool l9_234=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_235=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_236=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_237=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_238=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_239=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_240=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_241=0.0;
bool l9_242=l9_239&&(!l9_237);
float l9_243=1.0;
float l9_244=l9_233.x;
int l9_245=l9_236.x;
if (l9_245==1)
{
l9_244=fract(l9_244);
}
else
{
if (l9_245==2)
{
float l9_246=fract(l9_244);
float l9_247=l9_244-l9_246;
float l9_248=step(0.25,fract(l9_247*0.5));
l9_244=mix(l9_246,1.0-l9_246,fast::clamp(l9_248,0.0,1.0));
}
}
l9_233.x=l9_244;
float l9_249=l9_233.y;
int l9_250=l9_236.y;
if (l9_250==1)
{
l9_249=fract(l9_249);
}
else
{
if (l9_250==2)
{
float l9_251=fract(l9_249);
float l9_252=l9_249-l9_251;
float l9_253=step(0.25,fract(l9_252*0.5));
l9_249=mix(l9_251,1.0-l9_251,fast::clamp(l9_253,0.0,1.0));
}
}
l9_233.y=l9_249;
if (l9_237)
{
bool l9_254=l9_239;
bool l9_255;
if (l9_254)
{
l9_255=l9_236.x==3;
}
else
{
l9_255=l9_254;
}
float l9_256=l9_233.x;
float l9_257=l9_238.x;
float l9_258=l9_238.z;
bool l9_259=l9_255;
float l9_260=l9_243;
float l9_261=fast::clamp(l9_256,l9_257,l9_258);
float l9_262=step(abs(l9_256-l9_261),9.9999997e-06);
l9_260*=(l9_262+((1.0-float(l9_259))*(1.0-l9_262)));
l9_256=l9_261;
l9_233.x=l9_256;
l9_243=l9_260;
bool l9_263=l9_239;
bool l9_264;
if (l9_263)
{
l9_264=l9_236.y==3;
}
else
{
l9_264=l9_263;
}
float l9_265=l9_233.y;
float l9_266=l9_238.y;
float l9_267=l9_238.w;
bool l9_268=l9_264;
float l9_269=l9_243;
float l9_270=fast::clamp(l9_265,l9_266,l9_267);
float l9_271=step(abs(l9_265-l9_270),9.9999997e-06);
l9_269*=(l9_271+((1.0-float(l9_268))*(1.0-l9_271)));
l9_265=l9_270;
l9_233.y=l9_265;
l9_243=l9_269;
}
float2 l9_272=l9_233;
bool l9_273=l9_234;
float3x3 l9_274=l9_235;
if (l9_273)
{
l9_272=float2((l9_274*float3(l9_272,1.0)).xy);
}
float2 l9_275=l9_272;
l9_233=l9_275;
float l9_276=l9_233.x;
int l9_277=l9_236.x;
bool l9_278=l9_242;
float l9_279=l9_243;
if ((l9_277==0)||(l9_277==3))
{
float l9_280=l9_276;
float l9_281=0.0;
float l9_282=1.0;
bool l9_283=l9_278;
float l9_284=l9_279;
float l9_285=fast::clamp(l9_280,l9_281,l9_282);
float l9_286=step(abs(l9_280-l9_285),9.9999997e-06);
l9_284*=(l9_286+((1.0-float(l9_283))*(1.0-l9_286)));
l9_280=l9_285;
l9_276=l9_280;
l9_279=l9_284;
}
l9_233.x=l9_276;
l9_243=l9_279;
float l9_287=l9_233.y;
int l9_288=l9_236.y;
bool l9_289=l9_242;
float l9_290=l9_243;
if ((l9_288==0)||(l9_288==3))
{
float l9_291=l9_287;
float l9_292=0.0;
float l9_293=1.0;
bool l9_294=l9_289;
float l9_295=l9_290;
float l9_296=fast::clamp(l9_291,l9_292,l9_293);
float l9_297=step(abs(l9_291-l9_296),9.9999997e-06);
l9_295*=(l9_297+((1.0-float(l9_294))*(1.0-l9_297)));
l9_291=l9_296;
l9_287=l9_291;
l9_290=l9_295;
}
l9_233.y=l9_287;
l9_243=l9_290;
float2 l9_298=l9_233;
int l9_299=l9_231;
int l9_300=l9_232;
float l9_301=l9_241;
float2 l9_302=l9_298;
int l9_303=l9_299;
int l9_304=l9_300;
float3 l9_305=float3(0.0);
if (l9_303==0)
{
l9_305=float3(l9_302,0.0);
}
else
{
if (l9_303==1)
{
l9_305=float3(l9_302.x,(l9_302.y*0.5)+(0.5-(float(l9_304)*0.5)),0.0);
}
else
{
l9_305=float3(l9_302,float(l9_304));
}
}
float3 l9_306=l9_305;
float3 l9_307=l9_306;
float4 l9_308=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_307.xy,bias(l9_301));
float4 l9_309=l9_308;
if (l9_239)
{
l9_309=mix(l9_240,l9_309,float4(l9_243));
}
float4 l9_310=l9_309;
l9_224=l9_310;
float4 l9_311=l9_224;
float4 l9_312=l9_311;
float2 l9_313=l9_129+float2(0.0,l9_126.y);
float4 l9_314=float4(0.0);
int l9_315;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_316=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_316=0;
}
else
{
l9_316=in.varStereoViewID;
}
int l9_317=l9_316;
l9_315=1-l9_317;
}
else
{
int l9_318=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_318=0;
}
else
{
l9_318=in.varStereoViewID;
}
int l9_319=l9_318;
l9_315=l9_319;
}
int l9_320=l9_315;
int l9_321=flowRelativeLayout_tmp;
int l9_322=l9_320;
float2 l9_323=l9_313;
bool l9_324=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_325=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_326=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_327=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_328=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_329=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_330=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_331=0.0;
bool l9_332=l9_329&&(!l9_327);
float l9_333=1.0;
float l9_334=l9_323.x;
int l9_335=l9_326.x;
if (l9_335==1)
{
l9_334=fract(l9_334);
}
else
{
if (l9_335==2)
{
float l9_336=fract(l9_334);
float l9_337=l9_334-l9_336;
float l9_338=step(0.25,fract(l9_337*0.5));
l9_334=mix(l9_336,1.0-l9_336,fast::clamp(l9_338,0.0,1.0));
}
}
l9_323.x=l9_334;
float l9_339=l9_323.y;
int l9_340=l9_326.y;
if (l9_340==1)
{
l9_339=fract(l9_339);
}
else
{
if (l9_340==2)
{
float l9_341=fract(l9_339);
float l9_342=l9_339-l9_341;
float l9_343=step(0.25,fract(l9_342*0.5));
l9_339=mix(l9_341,1.0-l9_341,fast::clamp(l9_343,0.0,1.0));
}
}
l9_323.y=l9_339;
if (l9_327)
{
bool l9_344=l9_329;
bool l9_345;
if (l9_344)
{
l9_345=l9_326.x==3;
}
else
{
l9_345=l9_344;
}
float l9_346=l9_323.x;
float l9_347=l9_328.x;
float l9_348=l9_328.z;
bool l9_349=l9_345;
float l9_350=l9_333;
float l9_351=fast::clamp(l9_346,l9_347,l9_348);
float l9_352=step(abs(l9_346-l9_351),9.9999997e-06);
l9_350*=(l9_352+((1.0-float(l9_349))*(1.0-l9_352)));
l9_346=l9_351;
l9_323.x=l9_346;
l9_333=l9_350;
bool l9_353=l9_329;
bool l9_354;
if (l9_353)
{
l9_354=l9_326.y==3;
}
else
{
l9_354=l9_353;
}
float l9_355=l9_323.y;
float l9_356=l9_328.y;
float l9_357=l9_328.w;
bool l9_358=l9_354;
float l9_359=l9_333;
float l9_360=fast::clamp(l9_355,l9_356,l9_357);
float l9_361=step(abs(l9_355-l9_360),9.9999997e-06);
l9_359*=(l9_361+((1.0-float(l9_358))*(1.0-l9_361)));
l9_355=l9_360;
l9_323.y=l9_355;
l9_333=l9_359;
}
float2 l9_362=l9_323;
bool l9_363=l9_324;
float3x3 l9_364=l9_325;
if (l9_363)
{
l9_362=float2((l9_364*float3(l9_362,1.0)).xy);
}
float2 l9_365=l9_362;
l9_323=l9_365;
float l9_366=l9_323.x;
int l9_367=l9_326.x;
bool l9_368=l9_332;
float l9_369=l9_333;
if ((l9_367==0)||(l9_367==3))
{
float l9_370=l9_366;
float l9_371=0.0;
float l9_372=1.0;
bool l9_373=l9_368;
float l9_374=l9_369;
float l9_375=fast::clamp(l9_370,l9_371,l9_372);
float l9_376=step(abs(l9_370-l9_375),9.9999997e-06);
l9_374*=(l9_376+((1.0-float(l9_373))*(1.0-l9_376)));
l9_370=l9_375;
l9_366=l9_370;
l9_369=l9_374;
}
l9_323.x=l9_366;
l9_333=l9_369;
float l9_377=l9_323.y;
int l9_378=l9_326.y;
bool l9_379=l9_332;
float l9_380=l9_333;
if ((l9_378==0)||(l9_378==3))
{
float l9_381=l9_377;
float l9_382=0.0;
float l9_383=1.0;
bool l9_384=l9_379;
float l9_385=l9_380;
float l9_386=fast::clamp(l9_381,l9_382,l9_383);
float l9_387=step(abs(l9_381-l9_386),9.9999997e-06);
l9_385*=(l9_387+((1.0-float(l9_384))*(1.0-l9_387)));
l9_381=l9_386;
l9_377=l9_381;
l9_380=l9_385;
}
l9_323.y=l9_377;
l9_333=l9_380;
float2 l9_388=l9_323;
int l9_389=l9_321;
int l9_390=l9_322;
float l9_391=l9_331;
float2 l9_392=l9_388;
int l9_393=l9_389;
int l9_394=l9_390;
float3 l9_395=float3(0.0);
if (l9_393==0)
{
l9_395=float3(l9_392,0.0);
}
else
{
if (l9_393==1)
{
l9_395=float3(l9_392.x,(l9_392.y*0.5)+(0.5-(float(l9_394)*0.5)),0.0);
}
else
{
l9_395=float3(l9_392,float(l9_394));
}
}
float3 l9_396=l9_395;
float3 l9_397=l9_396;
float4 l9_398=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_397.xy,bias(l9_391));
float4 l9_399=l9_398;
if (l9_329)
{
l9_399=mix(l9_330,l9_399,float4(l9_333));
}
float4 l9_400=l9_399;
l9_314=l9_400;
float4 l9_401=l9_314;
float4 l9_402=l9_401;
float2 l9_403=l9_129+float2(l9_126.x,l9_126.y);
float4 l9_404=float4(0.0);
int l9_405;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_406=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_406=0;
}
else
{
l9_406=in.varStereoViewID;
}
int l9_407=l9_406;
l9_405=1-l9_407;
}
else
{
int l9_408=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_408=0;
}
else
{
l9_408=in.varStereoViewID;
}
int l9_409=l9_408;
l9_405=l9_409;
}
int l9_410=l9_405;
int l9_411=flowRelativeLayout_tmp;
int l9_412=l9_410;
float2 l9_413=l9_403;
bool l9_414=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_415=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_416=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_417=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_418=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_419=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_420=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_421=0.0;
bool l9_422=l9_419&&(!l9_417);
float l9_423=1.0;
float l9_424=l9_413.x;
int l9_425=l9_416.x;
if (l9_425==1)
{
l9_424=fract(l9_424);
}
else
{
if (l9_425==2)
{
float l9_426=fract(l9_424);
float l9_427=l9_424-l9_426;
float l9_428=step(0.25,fract(l9_427*0.5));
l9_424=mix(l9_426,1.0-l9_426,fast::clamp(l9_428,0.0,1.0));
}
}
l9_413.x=l9_424;
float l9_429=l9_413.y;
int l9_430=l9_416.y;
if (l9_430==1)
{
l9_429=fract(l9_429);
}
else
{
if (l9_430==2)
{
float l9_431=fract(l9_429);
float l9_432=l9_429-l9_431;
float l9_433=step(0.25,fract(l9_432*0.5));
l9_429=mix(l9_431,1.0-l9_431,fast::clamp(l9_433,0.0,1.0));
}
}
l9_413.y=l9_429;
if (l9_417)
{
bool l9_434=l9_419;
bool l9_435;
if (l9_434)
{
l9_435=l9_416.x==3;
}
else
{
l9_435=l9_434;
}
float l9_436=l9_413.x;
float l9_437=l9_418.x;
float l9_438=l9_418.z;
bool l9_439=l9_435;
float l9_440=l9_423;
float l9_441=fast::clamp(l9_436,l9_437,l9_438);
float l9_442=step(abs(l9_436-l9_441),9.9999997e-06);
l9_440*=(l9_442+((1.0-float(l9_439))*(1.0-l9_442)));
l9_436=l9_441;
l9_413.x=l9_436;
l9_423=l9_440;
bool l9_443=l9_419;
bool l9_444;
if (l9_443)
{
l9_444=l9_416.y==3;
}
else
{
l9_444=l9_443;
}
float l9_445=l9_413.y;
float l9_446=l9_418.y;
float l9_447=l9_418.w;
bool l9_448=l9_444;
float l9_449=l9_423;
float l9_450=fast::clamp(l9_445,l9_446,l9_447);
float l9_451=step(abs(l9_445-l9_450),9.9999997e-06);
l9_449*=(l9_451+((1.0-float(l9_448))*(1.0-l9_451)));
l9_445=l9_450;
l9_413.y=l9_445;
l9_423=l9_449;
}
float2 l9_452=l9_413;
bool l9_453=l9_414;
float3x3 l9_454=l9_415;
if (l9_453)
{
l9_452=float2((l9_454*float3(l9_452,1.0)).xy);
}
float2 l9_455=l9_452;
l9_413=l9_455;
float l9_456=l9_413.x;
int l9_457=l9_416.x;
bool l9_458=l9_422;
float l9_459=l9_423;
if ((l9_457==0)||(l9_457==3))
{
float l9_460=l9_456;
float l9_461=0.0;
float l9_462=1.0;
bool l9_463=l9_458;
float l9_464=l9_459;
float l9_465=fast::clamp(l9_460,l9_461,l9_462);
float l9_466=step(abs(l9_460-l9_465),9.9999997e-06);
l9_464*=(l9_466+((1.0-float(l9_463))*(1.0-l9_466)));
l9_460=l9_465;
l9_456=l9_460;
l9_459=l9_464;
}
l9_413.x=l9_456;
l9_423=l9_459;
float l9_467=l9_413.y;
int l9_468=l9_416.y;
bool l9_469=l9_422;
float l9_470=l9_423;
if ((l9_468==0)||(l9_468==3))
{
float l9_471=l9_467;
float l9_472=0.0;
float l9_473=1.0;
bool l9_474=l9_469;
float l9_475=l9_470;
float l9_476=fast::clamp(l9_471,l9_472,l9_473);
float l9_477=step(abs(l9_471-l9_476),9.9999997e-06);
l9_475*=(l9_477+((1.0-float(l9_474))*(1.0-l9_477)));
l9_471=l9_476;
l9_467=l9_471;
l9_470=l9_475;
}
l9_413.y=l9_467;
l9_423=l9_470;
float2 l9_478=l9_413;
int l9_479=l9_411;
int l9_480=l9_412;
float l9_481=l9_421;
float2 l9_482=l9_478;
int l9_483=l9_479;
int l9_484=l9_480;
float3 l9_485=float3(0.0);
if (l9_483==0)
{
l9_485=float3(l9_482,0.0);
}
else
{
if (l9_483==1)
{
l9_485=float3(l9_482.x,(l9_482.y*0.5)+(0.5-(float(l9_484)*0.5)),0.0);
}
else
{
l9_485=float3(l9_482,float(l9_484));
}
}
float3 l9_486=l9_485;
float3 l9_487=l9_486;
float4 l9_488=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_487.xy,bias(l9_481));
float4 l9_489=l9_488;
if (l9_419)
{
l9_489=mix(l9_420,l9_489,float4(l9_423));
}
float4 l9_490=l9_489;
l9_404=l9_490;
float4 l9_491=l9_404;
float4 l9_492=l9_491;
float4 l9_493=mix(l9_222,l9_312,float4(l9_130.x));
float4 l9_494=mix(l9_402,l9_492,float4(l9_130.x));
float4 l9_495=mix(l9_493,l9_494,float4(l9_130.y));
float2 l9_496=l9_495.xy;
float2 l9_497=l9_116;
float2 l9_498=float2(0.0);
l9_498=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_499=l9_498;
float2 l9_500=float2(1.0)/l9_499;
float2 l9_501=float2(0.0);
l9_501=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_502=l9_501;
float2 l9_503=(l9_497*l9_502)+float2(0.5);
float2 l9_504=fract(l9_503);
float2 l9_505=float2(0.0);
l9_505=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_506=l9_505;
l9_503=(floor(l9_503)/l9_506)-(l9_500/float2(2.0));
float2 l9_507=l9_503;
float4 l9_508=float4(0.0);
int l9_509;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_510=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_510=0;
}
else
{
l9_510=in.varStereoViewID;
}
int l9_511=l9_510;
l9_509=1-l9_511;
}
else
{
int l9_512=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_512=0;
}
else
{
l9_512=in.varStereoViewID;
}
int l9_513=l9_512;
l9_509=l9_513;
}
int l9_514=l9_509;
int l9_515=flowRelativeLayout_tmp;
int l9_516=l9_514;
float2 l9_517=l9_507;
bool l9_518=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_519=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_520=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_521=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_522=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_523=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_524=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_525=0.0;
bool l9_526=l9_523&&(!l9_521);
float l9_527=1.0;
float l9_528=l9_517.x;
int l9_529=l9_520.x;
if (l9_529==1)
{
l9_528=fract(l9_528);
}
else
{
if (l9_529==2)
{
float l9_530=fract(l9_528);
float l9_531=l9_528-l9_530;
float l9_532=step(0.25,fract(l9_531*0.5));
l9_528=mix(l9_530,1.0-l9_530,fast::clamp(l9_532,0.0,1.0));
}
}
l9_517.x=l9_528;
float l9_533=l9_517.y;
int l9_534=l9_520.y;
if (l9_534==1)
{
l9_533=fract(l9_533);
}
else
{
if (l9_534==2)
{
float l9_535=fract(l9_533);
float l9_536=l9_533-l9_535;
float l9_537=step(0.25,fract(l9_536*0.5));
l9_533=mix(l9_535,1.0-l9_535,fast::clamp(l9_537,0.0,1.0));
}
}
l9_517.y=l9_533;
if (l9_521)
{
bool l9_538=l9_523;
bool l9_539;
if (l9_538)
{
l9_539=l9_520.x==3;
}
else
{
l9_539=l9_538;
}
float l9_540=l9_517.x;
float l9_541=l9_522.x;
float l9_542=l9_522.z;
bool l9_543=l9_539;
float l9_544=l9_527;
float l9_545=fast::clamp(l9_540,l9_541,l9_542);
float l9_546=step(abs(l9_540-l9_545),9.9999997e-06);
l9_544*=(l9_546+((1.0-float(l9_543))*(1.0-l9_546)));
l9_540=l9_545;
l9_517.x=l9_540;
l9_527=l9_544;
bool l9_547=l9_523;
bool l9_548;
if (l9_547)
{
l9_548=l9_520.y==3;
}
else
{
l9_548=l9_547;
}
float l9_549=l9_517.y;
float l9_550=l9_522.y;
float l9_551=l9_522.w;
bool l9_552=l9_548;
float l9_553=l9_527;
float l9_554=fast::clamp(l9_549,l9_550,l9_551);
float l9_555=step(abs(l9_549-l9_554),9.9999997e-06);
l9_553*=(l9_555+((1.0-float(l9_552))*(1.0-l9_555)));
l9_549=l9_554;
l9_517.y=l9_549;
l9_527=l9_553;
}
float2 l9_556=l9_517;
bool l9_557=l9_518;
float3x3 l9_558=l9_519;
if (l9_557)
{
l9_556=float2((l9_558*float3(l9_556,1.0)).xy);
}
float2 l9_559=l9_556;
l9_517=l9_559;
float l9_560=l9_517.x;
int l9_561=l9_520.x;
bool l9_562=l9_526;
float l9_563=l9_527;
if ((l9_561==0)||(l9_561==3))
{
float l9_564=l9_560;
float l9_565=0.0;
float l9_566=1.0;
bool l9_567=l9_562;
float l9_568=l9_563;
float l9_569=fast::clamp(l9_564,l9_565,l9_566);
float l9_570=step(abs(l9_564-l9_569),9.9999997e-06);
l9_568*=(l9_570+((1.0-float(l9_567))*(1.0-l9_570)));
l9_564=l9_569;
l9_560=l9_564;
l9_563=l9_568;
}
l9_517.x=l9_560;
l9_527=l9_563;
float l9_571=l9_517.y;
int l9_572=l9_520.y;
bool l9_573=l9_526;
float l9_574=l9_527;
if ((l9_572==0)||(l9_572==3))
{
float l9_575=l9_571;
float l9_576=0.0;
float l9_577=1.0;
bool l9_578=l9_573;
float l9_579=l9_574;
float l9_580=fast::clamp(l9_575,l9_576,l9_577);
float l9_581=step(abs(l9_575-l9_580),9.9999997e-06);
l9_579*=(l9_581+((1.0-float(l9_578))*(1.0-l9_581)));
l9_575=l9_580;
l9_571=l9_575;
l9_574=l9_579;
}
l9_517.y=l9_571;
l9_527=l9_574;
float2 l9_582=l9_517;
int l9_583=l9_515;
int l9_584=l9_516;
float l9_585=l9_525;
float2 l9_586=l9_582;
int l9_587=l9_583;
int l9_588=l9_584;
float3 l9_589=float3(0.0);
if (l9_587==0)
{
l9_589=float3(l9_586,0.0);
}
else
{
if (l9_587==1)
{
l9_589=float3(l9_586.x,(l9_586.y*0.5)+(0.5-(float(l9_588)*0.5)),0.0);
}
else
{
l9_589=float3(l9_586,float(l9_588));
}
}
float3 l9_590=l9_589;
float3 l9_591=l9_590;
float4 l9_592=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_591.xy,bias(l9_585));
float4 l9_593=l9_592;
if (l9_523)
{
l9_593=mix(l9_524,l9_593,float4(l9_527));
}
float4 l9_594=l9_593;
l9_508=l9_594;
float4 l9_595=l9_508;
float4 l9_596=l9_595;
float2 l9_597=l9_503+float2(l9_500.x,0.0);
float4 l9_598=float4(0.0);
int l9_599;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_600=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_600=0;
}
else
{
l9_600=in.varStereoViewID;
}
int l9_601=l9_600;
l9_599=1-l9_601;
}
else
{
int l9_602=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_602=0;
}
else
{
l9_602=in.varStereoViewID;
}
int l9_603=l9_602;
l9_599=l9_603;
}
int l9_604=l9_599;
int l9_605=flowRelativeLayout_tmp;
int l9_606=l9_604;
float2 l9_607=l9_597;
bool l9_608=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_609=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_610=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_611=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_612=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_613=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_614=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_615=0.0;
bool l9_616=l9_613&&(!l9_611);
float l9_617=1.0;
float l9_618=l9_607.x;
int l9_619=l9_610.x;
if (l9_619==1)
{
l9_618=fract(l9_618);
}
else
{
if (l9_619==2)
{
float l9_620=fract(l9_618);
float l9_621=l9_618-l9_620;
float l9_622=step(0.25,fract(l9_621*0.5));
l9_618=mix(l9_620,1.0-l9_620,fast::clamp(l9_622,0.0,1.0));
}
}
l9_607.x=l9_618;
float l9_623=l9_607.y;
int l9_624=l9_610.y;
if (l9_624==1)
{
l9_623=fract(l9_623);
}
else
{
if (l9_624==2)
{
float l9_625=fract(l9_623);
float l9_626=l9_623-l9_625;
float l9_627=step(0.25,fract(l9_626*0.5));
l9_623=mix(l9_625,1.0-l9_625,fast::clamp(l9_627,0.0,1.0));
}
}
l9_607.y=l9_623;
if (l9_611)
{
bool l9_628=l9_613;
bool l9_629;
if (l9_628)
{
l9_629=l9_610.x==3;
}
else
{
l9_629=l9_628;
}
float l9_630=l9_607.x;
float l9_631=l9_612.x;
float l9_632=l9_612.z;
bool l9_633=l9_629;
float l9_634=l9_617;
float l9_635=fast::clamp(l9_630,l9_631,l9_632);
float l9_636=step(abs(l9_630-l9_635),9.9999997e-06);
l9_634*=(l9_636+((1.0-float(l9_633))*(1.0-l9_636)));
l9_630=l9_635;
l9_607.x=l9_630;
l9_617=l9_634;
bool l9_637=l9_613;
bool l9_638;
if (l9_637)
{
l9_638=l9_610.y==3;
}
else
{
l9_638=l9_637;
}
float l9_639=l9_607.y;
float l9_640=l9_612.y;
float l9_641=l9_612.w;
bool l9_642=l9_638;
float l9_643=l9_617;
float l9_644=fast::clamp(l9_639,l9_640,l9_641);
float l9_645=step(abs(l9_639-l9_644),9.9999997e-06);
l9_643*=(l9_645+((1.0-float(l9_642))*(1.0-l9_645)));
l9_639=l9_644;
l9_607.y=l9_639;
l9_617=l9_643;
}
float2 l9_646=l9_607;
bool l9_647=l9_608;
float3x3 l9_648=l9_609;
if (l9_647)
{
l9_646=float2((l9_648*float3(l9_646,1.0)).xy);
}
float2 l9_649=l9_646;
l9_607=l9_649;
float l9_650=l9_607.x;
int l9_651=l9_610.x;
bool l9_652=l9_616;
float l9_653=l9_617;
if ((l9_651==0)||(l9_651==3))
{
float l9_654=l9_650;
float l9_655=0.0;
float l9_656=1.0;
bool l9_657=l9_652;
float l9_658=l9_653;
float l9_659=fast::clamp(l9_654,l9_655,l9_656);
float l9_660=step(abs(l9_654-l9_659),9.9999997e-06);
l9_658*=(l9_660+((1.0-float(l9_657))*(1.0-l9_660)));
l9_654=l9_659;
l9_650=l9_654;
l9_653=l9_658;
}
l9_607.x=l9_650;
l9_617=l9_653;
float l9_661=l9_607.y;
int l9_662=l9_610.y;
bool l9_663=l9_616;
float l9_664=l9_617;
if ((l9_662==0)||(l9_662==3))
{
float l9_665=l9_661;
float l9_666=0.0;
float l9_667=1.0;
bool l9_668=l9_663;
float l9_669=l9_664;
float l9_670=fast::clamp(l9_665,l9_666,l9_667);
float l9_671=step(abs(l9_665-l9_670),9.9999997e-06);
l9_669*=(l9_671+((1.0-float(l9_668))*(1.0-l9_671)));
l9_665=l9_670;
l9_661=l9_665;
l9_664=l9_669;
}
l9_607.y=l9_661;
l9_617=l9_664;
float2 l9_672=l9_607;
int l9_673=l9_605;
int l9_674=l9_606;
float l9_675=l9_615;
float2 l9_676=l9_672;
int l9_677=l9_673;
int l9_678=l9_674;
float3 l9_679=float3(0.0);
if (l9_677==0)
{
l9_679=float3(l9_676,0.0);
}
else
{
if (l9_677==1)
{
l9_679=float3(l9_676.x,(l9_676.y*0.5)+(0.5-(float(l9_678)*0.5)),0.0);
}
else
{
l9_679=float3(l9_676,float(l9_678));
}
}
float3 l9_680=l9_679;
float3 l9_681=l9_680;
float4 l9_682=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_681.xy,bias(l9_675));
float4 l9_683=l9_682;
if (l9_613)
{
l9_683=mix(l9_614,l9_683,float4(l9_617));
}
float4 l9_684=l9_683;
l9_598=l9_684;
float4 l9_685=l9_598;
float4 l9_686=l9_685;
float2 l9_687=l9_503+float2(0.0,l9_500.y);
float4 l9_688=float4(0.0);
int l9_689;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_690=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_690=0;
}
else
{
l9_690=in.varStereoViewID;
}
int l9_691=l9_690;
l9_689=1-l9_691;
}
else
{
int l9_692=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_692=0;
}
else
{
l9_692=in.varStereoViewID;
}
int l9_693=l9_692;
l9_689=l9_693;
}
int l9_694=l9_689;
int l9_695=flowRelativeLayout_tmp;
int l9_696=l9_694;
float2 l9_697=l9_687;
bool l9_698=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_699=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_700=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_701=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_702=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_703=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_704=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_705=0.0;
bool l9_706=l9_703&&(!l9_701);
float l9_707=1.0;
float l9_708=l9_697.x;
int l9_709=l9_700.x;
if (l9_709==1)
{
l9_708=fract(l9_708);
}
else
{
if (l9_709==2)
{
float l9_710=fract(l9_708);
float l9_711=l9_708-l9_710;
float l9_712=step(0.25,fract(l9_711*0.5));
l9_708=mix(l9_710,1.0-l9_710,fast::clamp(l9_712,0.0,1.0));
}
}
l9_697.x=l9_708;
float l9_713=l9_697.y;
int l9_714=l9_700.y;
if (l9_714==1)
{
l9_713=fract(l9_713);
}
else
{
if (l9_714==2)
{
float l9_715=fract(l9_713);
float l9_716=l9_713-l9_715;
float l9_717=step(0.25,fract(l9_716*0.5));
l9_713=mix(l9_715,1.0-l9_715,fast::clamp(l9_717,0.0,1.0));
}
}
l9_697.y=l9_713;
if (l9_701)
{
bool l9_718=l9_703;
bool l9_719;
if (l9_718)
{
l9_719=l9_700.x==3;
}
else
{
l9_719=l9_718;
}
float l9_720=l9_697.x;
float l9_721=l9_702.x;
float l9_722=l9_702.z;
bool l9_723=l9_719;
float l9_724=l9_707;
float l9_725=fast::clamp(l9_720,l9_721,l9_722);
float l9_726=step(abs(l9_720-l9_725),9.9999997e-06);
l9_724*=(l9_726+((1.0-float(l9_723))*(1.0-l9_726)));
l9_720=l9_725;
l9_697.x=l9_720;
l9_707=l9_724;
bool l9_727=l9_703;
bool l9_728;
if (l9_727)
{
l9_728=l9_700.y==3;
}
else
{
l9_728=l9_727;
}
float l9_729=l9_697.y;
float l9_730=l9_702.y;
float l9_731=l9_702.w;
bool l9_732=l9_728;
float l9_733=l9_707;
float l9_734=fast::clamp(l9_729,l9_730,l9_731);
float l9_735=step(abs(l9_729-l9_734),9.9999997e-06);
l9_733*=(l9_735+((1.0-float(l9_732))*(1.0-l9_735)));
l9_729=l9_734;
l9_697.y=l9_729;
l9_707=l9_733;
}
float2 l9_736=l9_697;
bool l9_737=l9_698;
float3x3 l9_738=l9_699;
if (l9_737)
{
l9_736=float2((l9_738*float3(l9_736,1.0)).xy);
}
float2 l9_739=l9_736;
l9_697=l9_739;
float l9_740=l9_697.x;
int l9_741=l9_700.x;
bool l9_742=l9_706;
float l9_743=l9_707;
if ((l9_741==0)||(l9_741==3))
{
float l9_744=l9_740;
float l9_745=0.0;
float l9_746=1.0;
bool l9_747=l9_742;
float l9_748=l9_743;
float l9_749=fast::clamp(l9_744,l9_745,l9_746);
float l9_750=step(abs(l9_744-l9_749),9.9999997e-06);
l9_748*=(l9_750+((1.0-float(l9_747))*(1.0-l9_750)));
l9_744=l9_749;
l9_740=l9_744;
l9_743=l9_748;
}
l9_697.x=l9_740;
l9_707=l9_743;
float l9_751=l9_697.y;
int l9_752=l9_700.y;
bool l9_753=l9_706;
float l9_754=l9_707;
if ((l9_752==0)||(l9_752==3))
{
float l9_755=l9_751;
float l9_756=0.0;
float l9_757=1.0;
bool l9_758=l9_753;
float l9_759=l9_754;
float l9_760=fast::clamp(l9_755,l9_756,l9_757);
float l9_761=step(abs(l9_755-l9_760),9.9999997e-06);
l9_759*=(l9_761+((1.0-float(l9_758))*(1.0-l9_761)));
l9_755=l9_760;
l9_751=l9_755;
l9_754=l9_759;
}
l9_697.y=l9_751;
l9_707=l9_754;
float2 l9_762=l9_697;
int l9_763=l9_695;
int l9_764=l9_696;
float l9_765=l9_705;
float2 l9_766=l9_762;
int l9_767=l9_763;
int l9_768=l9_764;
float3 l9_769=float3(0.0);
if (l9_767==0)
{
l9_769=float3(l9_766,0.0);
}
else
{
if (l9_767==1)
{
l9_769=float3(l9_766.x,(l9_766.y*0.5)+(0.5-(float(l9_768)*0.5)),0.0);
}
else
{
l9_769=float3(l9_766,float(l9_768));
}
}
float3 l9_770=l9_769;
float3 l9_771=l9_770;
float4 l9_772=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_771.xy,bias(l9_765));
float4 l9_773=l9_772;
if (l9_703)
{
l9_773=mix(l9_704,l9_773,float4(l9_707));
}
float4 l9_774=l9_773;
l9_688=l9_774;
float4 l9_775=l9_688;
float4 l9_776=l9_775;
float2 l9_777=l9_503+float2(l9_500.x,l9_500.y);
float4 l9_778=float4(0.0);
int l9_779;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_780=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_780=0;
}
else
{
l9_780=in.varStereoViewID;
}
int l9_781=l9_780;
l9_779=1-l9_781;
}
else
{
int l9_782=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_782=0;
}
else
{
l9_782=in.varStereoViewID;
}
int l9_783=l9_782;
l9_779=l9_783;
}
int l9_784=l9_779;
int l9_785=flowRelativeLayout_tmp;
int l9_786=l9_784;
float2 l9_787=l9_777;
bool l9_788=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_789=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_790=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_791=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_792=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_793=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_794=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_795=0.0;
bool l9_796=l9_793&&(!l9_791);
float l9_797=1.0;
float l9_798=l9_787.x;
int l9_799=l9_790.x;
if (l9_799==1)
{
l9_798=fract(l9_798);
}
else
{
if (l9_799==2)
{
float l9_800=fract(l9_798);
float l9_801=l9_798-l9_800;
float l9_802=step(0.25,fract(l9_801*0.5));
l9_798=mix(l9_800,1.0-l9_800,fast::clamp(l9_802,0.0,1.0));
}
}
l9_787.x=l9_798;
float l9_803=l9_787.y;
int l9_804=l9_790.y;
if (l9_804==1)
{
l9_803=fract(l9_803);
}
else
{
if (l9_804==2)
{
float l9_805=fract(l9_803);
float l9_806=l9_803-l9_805;
float l9_807=step(0.25,fract(l9_806*0.5));
l9_803=mix(l9_805,1.0-l9_805,fast::clamp(l9_807,0.0,1.0));
}
}
l9_787.y=l9_803;
if (l9_791)
{
bool l9_808=l9_793;
bool l9_809;
if (l9_808)
{
l9_809=l9_790.x==3;
}
else
{
l9_809=l9_808;
}
float l9_810=l9_787.x;
float l9_811=l9_792.x;
float l9_812=l9_792.z;
bool l9_813=l9_809;
float l9_814=l9_797;
float l9_815=fast::clamp(l9_810,l9_811,l9_812);
float l9_816=step(abs(l9_810-l9_815),9.9999997e-06);
l9_814*=(l9_816+((1.0-float(l9_813))*(1.0-l9_816)));
l9_810=l9_815;
l9_787.x=l9_810;
l9_797=l9_814;
bool l9_817=l9_793;
bool l9_818;
if (l9_817)
{
l9_818=l9_790.y==3;
}
else
{
l9_818=l9_817;
}
float l9_819=l9_787.y;
float l9_820=l9_792.y;
float l9_821=l9_792.w;
bool l9_822=l9_818;
float l9_823=l9_797;
float l9_824=fast::clamp(l9_819,l9_820,l9_821);
float l9_825=step(abs(l9_819-l9_824),9.9999997e-06);
l9_823*=(l9_825+((1.0-float(l9_822))*(1.0-l9_825)));
l9_819=l9_824;
l9_787.y=l9_819;
l9_797=l9_823;
}
float2 l9_826=l9_787;
bool l9_827=l9_788;
float3x3 l9_828=l9_789;
if (l9_827)
{
l9_826=float2((l9_828*float3(l9_826,1.0)).xy);
}
float2 l9_829=l9_826;
l9_787=l9_829;
float l9_830=l9_787.x;
int l9_831=l9_790.x;
bool l9_832=l9_796;
float l9_833=l9_797;
if ((l9_831==0)||(l9_831==3))
{
float l9_834=l9_830;
float l9_835=0.0;
float l9_836=1.0;
bool l9_837=l9_832;
float l9_838=l9_833;
float l9_839=fast::clamp(l9_834,l9_835,l9_836);
float l9_840=step(abs(l9_834-l9_839),9.9999997e-06);
l9_838*=(l9_840+((1.0-float(l9_837))*(1.0-l9_840)));
l9_834=l9_839;
l9_830=l9_834;
l9_833=l9_838;
}
l9_787.x=l9_830;
l9_797=l9_833;
float l9_841=l9_787.y;
int l9_842=l9_790.y;
bool l9_843=l9_796;
float l9_844=l9_797;
if ((l9_842==0)||(l9_842==3))
{
float l9_845=l9_841;
float l9_846=0.0;
float l9_847=1.0;
bool l9_848=l9_843;
float l9_849=l9_844;
float l9_850=fast::clamp(l9_845,l9_846,l9_847);
float l9_851=step(abs(l9_845-l9_850),9.9999997e-06);
l9_849*=(l9_851+((1.0-float(l9_848))*(1.0-l9_851)));
l9_845=l9_850;
l9_841=l9_845;
l9_844=l9_849;
}
l9_787.y=l9_841;
l9_797=l9_844;
float2 l9_852=l9_787;
int l9_853=l9_785;
int l9_854=l9_786;
float l9_855=l9_795;
float2 l9_856=l9_852;
int l9_857=l9_853;
int l9_858=l9_854;
float3 l9_859=float3(0.0);
if (l9_857==0)
{
l9_859=float3(l9_856,0.0);
}
else
{
if (l9_857==1)
{
l9_859=float3(l9_856.x,(l9_856.y*0.5)+(0.5-(float(l9_858)*0.5)),0.0);
}
else
{
l9_859=float3(l9_856,float(l9_858));
}
}
float3 l9_860=l9_859;
float3 l9_861=l9_860;
float4 l9_862=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_861.xy,bias(l9_855));
float4 l9_863=l9_862;
if (l9_793)
{
l9_863=mix(l9_794,l9_863,float4(l9_797));
}
float4 l9_864=l9_863;
l9_778=l9_864;
float4 l9_865=l9_778;
float4 l9_866=l9_865;
float4 l9_867=mix(l9_596,l9_686,float4(l9_504.x));
float4 l9_868=mix(l9_776,l9_866,float4(l9_504.x));
float4 l9_869=mix(l9_867,l9_868,float4(l9_504.y));
float2 l9_870=l9_869.xy;
float2 l9_871=l9_117;
float2 l9_872=float2(0.0);
l9_872=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_873=l9_872;
float2 l9_874=float2(1.0)/l9_873;
float2 l9_875=float2(0.0);
l9_875=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_876=l9_875;
float2 l9_877=(l9_871*l9_876)+float2(0.5);
float2 l9_878=fract(l9_877);
float2 l9_879=float2(0.0);
l9_879=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_880=l9_879;
l9_877=(floor(l9_877)/l9_880)-(l9_874/float2(2.0));
float2 l9_881=l9_877;
float4 l9_882=float4(0.0);
int l9_883;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_884=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_884=0;
}
else
{
l9_884=in.varStereoViewID;
}
int l9_885=l9_884;
l9_883=1-l9_885;
}
else
{
int l9_886=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_886=0;
}
else
{
l9_886=in.varStereoViewID;
}
int l9_887=l9_886;
l9_883=l9_887;
}
int l9_888=l9_883;
int l9_889=flowRelativeLayout_tmp;
int l9_890=l9_888;
float2 l9_891=l9_881;
bool l9_892=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_893=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_894=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_895=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_896=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_897=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_898=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_899=0.0;
bool l9_900=l9_897&&(!l9_895);
float l9_901=1.0;
float l9_902=l9_891.x;
int l9_903=l9_894.x;
if (l9_903==1)
{
l9_902=fract(l9_902);
}
else
{
if (l9_903==2)
{
float l9_904=fract(l9_902);
float l9_905=l9_902-l9_904;
float l9_906=step(0.25,fract(l9_905*0.5));
l9_902=mix(l9_904,1.0-l9_904,fast::clamp(l9_906,0.0,1.0));
}
}
l9_891.x=l9_902;
float l9_907=l9_891.y;
int l9_908=l9_894.y;
if (l9_908==1)
{
l9_907=fract(l9_907);
}
else
{
if (l9_908==2)
{
float l9_909=fract(l9_907);
float l9_910=l9_907-l9_909;
float l9_911=step(0.25,fract(l9_910*0.5));
l9_907=mix(l9_909,1.0-l9_909,fast::clamp(l9_911,0.0,1.0));
}
}
l9_891.y=l9_907;
if (l9_895)
{
bool l9_912=l9_897;
bool l9_913;
if (l9_912)
{
l9_913=l9_894.x==3;
}
else
{
l9_913=l9_912;
}
float l9_914=l9_891.x;
float l9_915=l9_896.x;
float l9_916=l9_896.z;
bool l9_917=l9_913;
float l9_918=l9_901;
float l9_919=fast::clamp(l9_914,l9_915,l9_916);
float l9_920=step(abs(l9_914-l9_919),9.9999997e-06);
l9_918*=(l9_920+((1.0-float(l9_917))*(1.0-l9_920)));
l9_914=l9_919;
l9_891.x=l9_914;
l9_901=l9_918;
bool l9_921=l9_897;
bool l9_922;
if (l9_921)
{
l9_922=l9_894.y==3;
}
else
{
l9_922=l9_921;
}
float l9_923=l9_891.y;
float l9_924=l9_896.y;
float l9_925=l9_896.w;
bool l9_926=l9_922;
float l9_927=l9_901;
float l9_928=fast::clamp(l9_923,l9_924,l9_925);
float l9_929=step(abs(l9_923-l9_928),9.9999997e-06);
l9_927*=(l9_929+((1.0-float(l9_926))*(1.0-l9_929)));
l9_923=l9_928;
l9_891.y=l9_923;
l9_901=l9_927;
}
float2 l9_930=l9_891;
bool l9_931=l9_892;
float3x3 l9_932=l9_893;
if (l9_931)
{
l9_930=float2((l9_932*float3(l9_930,1.0)).xy);
}
float2 l9_933=l9_930;
l9_891=l9_933;
float l9_934=l9_891.x;
int l9_935=l9_894.x;
bool l9_936=l9_900;
float l9_937=l9_901;
if ((l9_935==0)||(l9_935==3))
{
float l9_938=l9_934;
float l9_939=0.0;
float l9_940=1.0;
bool l9_941=l9_936;
float l9_942=l9_937;
float l9_943=fast::clamp(l9_938,l9_939,l9_940);
float l9_944=step(abs(l9_938-l9_943),9.9999997e-06);
l9_942*=(l9_944+((1.0-float(l9_941))*(1.0-l9_944)));
l9_938=l9_943;
l9_934=l9_938;
l9_937=l9_942;
}
l9_891.x=l9_934;
l9_901=l9_937;
float l9_945=l9_891.y;
int l9_946=l9_894.y;
bool l9_947=l9_900;
float l9_948=l9_901;
if ((l9_946==0)||(l9_946==3))
{
float l9_949=l9_945;
float l9_950=0.0;
float l9_951=1.0;
bool l9_952=l9_947;
float l9_953=l9_948;
float l9_954=fast::clamp(l9_949,l9_950,l9_951);
float l9_955=step(abs(l9_949-l9_954),9.9999997e-06);
l9_953*=(l9_955+((1.0-float(l9_952))*(1.0-l9_955)));
l9_949=l9_954;
l9_945=l9_949;
l9_948=l9_953;
}
l9_891.y=l9_945;
l9_901=l9_948;
float2 l9_956=l9_891;
int l9_957=l9_889;
int l9_958=l9_890;
float l9_959=l9_899;
float2 l9_960=l9_956;
int l9_961=l9_957;
int l9_962=l9_958;
float3 l9_963=float3(0.0);
if (l9_961==0)
{
l9_963=float3(l9_960,0.0);
}
else
{
if (l9_961==1)
{
l9_963=float3(l9_960.x,(l9_960.y*0.5)+(0.5-(float(l9_962)*0.5)),0.0);
}
else
{
l9_963=float3(l9_960,float(l9_962));
}
}
float3 l9_964=l9_963;
float3 l9_965=l9_964;
float4 l9_966=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_965.xy,bias(l9_959));
float4 l9_967=l9_966;
if (l9_897)
{
l9_967=mix(l9_898,l9_967,float4(l9_901));
}
float4 l9_968=l9_967;
l9_882=l9_968;
float4 l9_969=l9_882;
float4 l9_970=l9_969;
float2 l9_971=l9_877+float2(l9_874.x,0.0);
float4 l9_972=float4(0.0);
int l9_973;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_974=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_974=0;
}
else
{
l9_974=in.varStereoViewID;
}
int l9_975=l9_974;
l9_973=1-l9_975;
}
else
{
int l9_976=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_976=0;
}
else
{
l9_976=in.varStereoViewID;
}
int l9_977=l9_976;
l9_973=l9_977;
}
int l9_978=l9_973;
int l9_979=flowRelativeLayout_tmp;
int l9_980=l9_978;
float2 l9_981=l9_971;
bool l9_982=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_983=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_984=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_985=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_986=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_987=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_988=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_989=0.0;
bool l9_990=l9_987&&(!l9_985);
float l9_991=1.0;
float l9_992=l9_981.x;
int l9_993=l9_984.x;
if (l9_993==1)
{
l9_992=fract(l9_992);
}
else
{
if (l9_993==2)
{
float l9_994=fract(l9_992);
float l9_995=l9_992-l9_994;
float l9_996=step(0.25,fract(l9_995*0.5));
l9_992=mix(l9_994,1.0-l9_994,fast::clamp(l9_996,0.0,1.0));
}
}
l9_981.x=l9_992;
float l9_997=l9_981.y;
int l9_998=l9_984.y;
if (l9_998==1)
{
l9_997=fract(l9_997);
}
else
{
if (l9_998==2)
{
float l9_999=fract(l9_997);
float l9_1000=l9_997-l9_999;
float l9_1001=step(0.25,fract(l9_1000*0.5));
l9_997=mix(l9_999,1.0-l9_999,fast::clamp(l9_1001,0.0,1.0));
}
}
l9_981.y=l9_997;
if (l9_985)
{
bool l9_1002=l9_987;
bool l9_1003;
if (l9_1002)
{
l9_1003=l9_984.x==3;
}
else
{
l9_1003=l9_1002;
}
float l9_1004=l9_981.x;
float l9_1005=l9_986.x;
float l9_1006=l9_986.z;
bool l9_1007=l9_1003;
float l9_1008=l9_991;
float l9_1009=fast::clamp(l9_1004,l9_1005,l9_1006);
float l9_1010=step(abs(l9_1004-l9_1009),9.9999997e-06);
l9_1008*=(l9_1010+((1.0-float(l9_1007))*(1.0-l9_1010)));
l9_1004=l9_1009;
l9_981.x=l9_1004;
l9_991=l9_1008;
bool l9_1011=l9_987;
bool l9_1012;
if (l9_1011)
{
l9_1012=l9_984.y==3;
}
else
{
l9_1012=l9_1011;
}
float l9_1013=l9_981.y;
float l9_1014=l9_986.y;
float l9_1015=l9_986.w;
bool l9_1016=l9_1012;
float l9_1017=l9_991;
float l9_1018=fast::clamp(l9_1013,l9_1014,l9_1015);
float l9_1019=step(abs(l9_1013-l9_1018),9.9999997e-06);
l9_1017*=(l9_1019+((1.0-float(l9_1016))*(1.0-l9_1019)));
l9_1013=l9_1018;
l9_981.y=l9_1013;
l9_991=l9_1017;
}
float2 l9_1020=l9_981;
bool l9_1021=l9_982;
float3x3 l9_1022=l9_983;
if (l9_1021)
{
l9_1020=float2((l9_1022*float3(l9_1020,1.0)).xy);
}
float2 l9_1023=l9_1020;
l9_981=l9_1023;
float l9_1024=l9_981.x;
int l9_1025=l9_984.x;
bool l9_1026=l9_990;
float l9_1027=l9_991;
if ((l9_1025==0)||(l9_1025==3))
{
float l9_1028=l9_1024;
float l9_1029=0.0;
float l9_1030=1.0;
bool l9_1031=l9_1026;
float l9_1032=l9_1027;
float l9_1033=fast::clamp(l9_1028,l9_1029,l9_1030);
float l9_1034=step(abs(l9_1028-l9_1033),9.9999997e-06);
l9_1032*=(l9_1034+((1.0-float(l9_1031))*(1.0-l9_1034)));
l9_1028=l9_1033;
l9_1024=l9_1028;
l9_1027=l9_1032;
}
l9_981.x=l9_1024;
l9_991=l9_1027;
float l9_1035=l9_981.y;
int l9_1036=l9_984.y;
bool l9_1037=l9_990;
float l9_1038=l9_991;
if ((l9_1036==0)||(l9_1036==3))
{
float l9_1039=l9_1035;
float l9_1040=0.0;
float l9_1041=1.0;
bool l9_1042=l9_1037;
float l9_1043=l9_1038;
float l9_1044=fast::clamp(l9_1039,l9_1040,l9_1041);
float l9_1045=step(abs(l9_1039-l9_1044),9.9999997e-06);
l9_1043*=(l9_1045+((1.0-float(l9_1042))*(1.0-l9_1045)));
l9_1039=l9_1044;
l9_1035=l9_1039;
l9_1038=l9_1043;
}
l9_981.y=l9_1035;
l9_991=l9_1038;
float2 l9_1046=l9_981;
int l9_1047=l9_979;
int l9_1048=l9_980;
float l9_1049=l9_989;
float2 l9_1050=l9_1046;
int l9_1051=l9_1047;
int l9_1052=l9_1048;
float3 l9_1053=float3(0.0);
if (l9_1051==0)
{
l9_1053=float3(l9_1050,0.0);
}
else
{
if (l9_1051==1)
{
l9_1053=float3(l9_1050.x,(l9_1050.y*0.5)+(0.5-(float(l9_1052)*0.5)),0.0);
}
else
{
l9_1053=float3(l9_1050,float(l9_1052));
}
}
float3 l9_1054=l9_1053;
float3 l9_1055=l9_1054;
float4 l9_1056=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1055.xy,bias(l9_1049));
float4 l9_1057=l9_1056;
if (l9_987)
{
l9_1057=mix(l9_988,l9_1057,float4(l9_991));
}
float4 l9_1058=l9_1057;
l9_972=l9_1058;
float4 l9_1059=l9_972;
float4 l9_1060=l9_1059;
float2 l9_1061=l9_877+float2(0.0,l9_874.y);
float4 l9_1062=float4(0.0);
int l9_1063;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1064=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1064=0;
}
else
{
l9_1064=in.varStereoViewID;
}
int l9_1065=l9_1064;
l9_1063=1-l9_1065;
}
else
{
int l9_1066=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1066=0;
}
else
{
l9_1066=in.varStereoViewID;
}
int l9_1067=l9_1066;
l9_1063=l9_1067;
}
int l9_1068=l9_1063;
int l9_1069=flowRelativeLayout_tmp;
int l9_1070=l9_1068;
float2 l9_1071=l9_1061;
bool l9_1072=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1073=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1074=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1075=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1076=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1077=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1078=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1079=0.0;
bool l9_1080=l9_1077&&(!l9_1075);
float l9_1081=1.0;
float l9_1082=l9_1071.x;
int l9_1083=l9_1074.x;
if (l9_1083==1)
{
l9_1082=fract(l9_1082);
}
else
{
if (l9_1083==2)
{
float l9_1084=fract(l9_1082);
float l9_1085=l9_1082-l9_1084;
float l9_1086=step(0.25,fract(l9_1085*0.5));
l9_1082=mix(l9_1084,1.0-l9_1084,fast::clamp(l9_1086,0.0,1.0));
}
}
l9_1071.x=l9_1082;
float l9_1087=l9_1071.y;
int l9_1088=l9_1074.y;
if (l9_1088==1)
{
l9_1087=fract(l9_1087);
}
else
{
if (l9_1088==2)
{
float l9_1089=fract(l9_1087);
float l9_1090=l9_1087-l9_1089;
float l9_1091=step(0.25,fract(l9_1090*0.5));
l9_1087=mix(l9_1089,1.0-l9_1089,fast::clamp(l9_1091,0.0,1.0));
}
}
l9_1071.y=l9_1087;
if (l9_1075)
{
bool l9_1092=l9_1077;
bool l9_1093;
if (l9_1092)
{
l9_1093=l9_1074.x==3;
}
else
{
l9_1093=l9_1092;
}
float l9_1094=l9_1071.x;
float l9_1095=l9_1076.x;
float l9_1096=l9_1076.z;
bool l9_1097=l9_1093;
float l9_1098=l9_1081;
float l9_1099=fast::clamp(l9_1094,l9_1095,l9_1096);
float l9_1100=step(abs(l9_1094-l9_1099),9.9999997e-06);
l9_1098*=(l9_1100+((1.0-float(l9_1097))*(1.0-l9_1100)));
l9_1094=l9_1099;
l9_1071.x=l9_1094;
l9_1081=l9_1098;
bool l9_1101=l9_1077;
bool l9_1102;
if (l9_1101)
{
l9_1102=l9_1074.y==3;
}
else
{
l9_1102=l9_1101;
}
float l9_1103=l9_1071.y;
float l9_1104=l9_1076.y;
float l9_1105=l9_1076.w;
bool l9_1106=l9_1102;
float l9_1107=l9_1081;
float l9_1108=fast::clamp(l9_1103,l9_1104,l9_1105);
float l9_1109=step(abs(l9_1103-l9_1108),9.9999997e-06);
l9_1107*=(l9_1109+((1.0-float(l9_1106))*(1.0-l9_1109)));
l9_1103=l9_1108;
l9_1071.y=l9_1103;
l9_1081=l9_1107;
}
float2 l9_1110=l9_1071;
bool l9_1111=l9_1072;
float3x3 l9_1112=l9_1073;
if (l9_1111)
{
l9_1110=float2((l9_1112*float3(l9_1110,1.0)).xy);
}
float2 l9_1113=l9_1110;
l9_1071=l9_1113;
float l9_1114=l9_1071.x;
int l9_1115=l9_1074.x;
bool l9_1116=l9_1080;
float l9_1117=l9_1081;
if ((l9_1115==0)||(l9_1115==3))
{
float l9_1118=l9_1114;
float l9_1119=0.0;
float l9_1120=1.0;
bool l9_1121=l9_1116;
float l9_1122=l9_1117;
float l9_1123=fast::clamp(l9_1118,l9_1119,l9_1120);
float l9_1124=step(abs(l9_1118-l9_1123),9.9999997e-06);
l9_1122*=(l9_1124+((1.0-float(l9_1121))*(1.0-l9_1124)));
l9_1118=l9_1123;
l9_1114=l9_1118;
l9_1117=l9_1122;
}
l9_1071.x=l9_1114;
l9_1081=l9_1117;
float l9_1125=l9_1071.y;
int l9_1126=l9_1074.y;
bool l9_1127=l9_1080;
float l9_1128=l9_1081;
if ((l9_1126==0)||(l9_1126==3))
{
float l9_1129=l9_1125;
float l9_1130=0.0;
float l9_1131=1.0;
bool l9_1132=l9_1127;
float l9_1133=l9_1128;
float l9_1134=fast::clamp(l9_1129,l9_1130,l9_1131);
float l9_1135=step(abs(l9_1129-l9_1134),9.9999997e-06);
l9_1133*=(l9_1135+((1.0-float(l9_1132))*(1.0-l9_1135)));
l9_1129=l9_1134;
l9_1125=l9_1129;
l9_1128=l9_1133;
}
l9_1071.y=l9_1125;
l9_1081=l9_1128;
float2 l9_1136=l9_1071;
int l9_1137=l9_1069;
int l9_1138=l9_1070;
float l9_1139=l9_1079;
float2 l9_1140=l9_1136;
int l9_1141=l9_1137;
int l9_1142=l9_1138;
float3 l9_1143=float3(0.0);
if (l9_1141==0)
{
l9_1143=float3(l9_1140,0.0);
}
else
{
if (l9_1141==1)
{
l9_1143=float3(l9_1140.x,(l9_1140.y*0.5)+(0.5-(float(l9_1142)*0.5)),0.0);
}
else
{
l9_1143=float3(l9_1140,float(l9_1142));
}
}
float3 l9_1144=l9_1143;
float3 l9_1145=l9_1144;
float4 l9_1146=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1145.xy,bias(l9_1139));
float4 l9_1147=l9_1146;
if (l9_1077)
{
l9_1147=mix(l9_1078,l9_1147,float4(l9_1081));
}
float4 l9_1148=l9_1147;
l9_1062=l9_1148;
float4 l9_1149=l9_1062;
float4 l9_1150=l9_1149;
float2 l9_1151=l9_877+float2(l9_874.x,l9_874.y);
float4 l9_1152=float4(0.0);
int l9_1153;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1154=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1154=0;
}
else
{
l9_1154=in.varStereoViewID;
}
int l9_1155=l9_1154;
l9_1153=1-l9_1155;
}
else
{
int l9_1156=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1156=0;
}
else
{
l9_1156=in.varStereoViewID;
}
int l9_1157=l9_1156;
l9_1153=l9_1157;
}
int l9_1158=l9_1153;
int l9_1159=flowRelativeLayout_tmp;
int l9_1160=l9_1158;
float2 l9_1161=l9_1151;
bool l9_1162=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1163=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1164=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1165=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1166=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1167=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1168=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1169=0.0;
bool l9_1170=l9_1167&&(!l9_1165);
float l9_1171=1.0;
float l9_1172=l9_1161.x;
int l9_1173=l9_1164.x;
if (l9_1173==1)
{
l9_1172=fract(l9_1172);
}
else
{
if (l9_1173==2)
{
float l9_1174=fract(l9_1172);
float l9_1175=l9_1172-l9_1174;
float l9_1176=step(0.25,fract(l9_1175*0.5));
l9_1172=mix(l9_1174,1.0-l9_1174,fast::clamp(l9_1176,0.0,1.0));
}
}
l9_1161.x=l9_1172;
float l9_1177=l9_1161.y;
int l9_1178=l9_1164.y;
if (l9_1178==1)
{
l9_1177=fract(l9_1177);
}
else
{
if (l9_1178==2)
{
float l9_1179=fract(l9_1177);
float l9_1180=l9_1177-l9_1179;
float l9_1181=step(0.25,fract(l9_1180*0.5));
l9_1177=mix(l9_1179,1.0-l9_1179,fast::clamp(l9_1181,0.0,1.0));
}
}
l9_1161.y=l9_1177;
if (l9_1165)
{
bool l9_1182=l9_1167;
bool l9_1183;
if (l9_1182)
{
l9_1183=l9_1164.x==3;
}
else
{
l9_1183=l9_1182;
}
float l9_1184=l9_1161.x;
float l9_1185=l9_1166.x;
float l9_1186=l9_1166.z;
bool l9_1187=l9_1183;
float l9_1188=l9_1171;
float l9_1189=fast::clamp(l9_1184,l9_1185,l9_1186);
float l9_1190=step(abs(l9_1184-l9_1189),9.9999997e-06);
l9_1188*=(l9_1190+((1.0-float(l9_1187))*(1.0-l9_1190)));
l9_1184=l9_1189;
l9_1161.x=l9_1184;
l9_1171=l9_1188;
bool l9_1191=l9_1167;
bool l9_1192;
if (l9_1191)
{
l9_1192=l9_1164.y==3;
}
else
{
l9_1192=l9_1191;
}
float l9_1193=l9_1161.y;
float l9_1194=l9_1166.y;
float l9_1195=l9_1166.w;
bool l9_1196=l9_1192;
float l9_1197=l9_1171;
float l9_1198=fast::clamp(l9_1193,l9_1194,l9_1195);
float l9_1199=step(abs(l9_1193-l9_1198),9.9999997e-06);
l9_1197*=(l9_1199+((1.0-float(l9_1196))*(1.0-l9_1199)));
l9_1193=l9_1198;
l9_1161.y=l9_1193;
l9_1171=l9_1197;
}
float2 l9_1200=l9_1161;
bool l9_1201=l9_1162;
float3x3 l9_1202=l9_1163;
if (l9_1201)
{
l9_1200=float2((l9_1202*float3(l9_1200,1.0)).xy);
}
float2 l9_1203=l9_1200;
l9_1161=l9_1203;
float l9_1204=l9_1161.x;
int l9_1205=l9_1164.x;
bool l9_1206=l9_1170;
float l9_1207=l9_1171;
if ((l9_1205==0)||(l9_1205==3))
{
float l9_1208=l9_1204;
float l9_1209=0.0;
float l9_1210=1.0;
bool l9_1211=l9_1206;
float l9_1212=l9_1207;
float l9_1213=fast::clamp(l9_1208,l9_1209,l9_1210);
float l9_1214=step(abs(l9_1208-l9_1213),9.9999997e-06);
l9_1212*=(l9_1214+((1.0-float(l9_1211))*(1.0-l9_1214)));
l9_1208=l9_1213;
l9_1204=l9_1208;
l9_1207=l9_1212;
}
l9_1161.x=l9_1204;
l9_1171=l9_1207;
float l9_1215=l9_1161.y;
int l9_1216=l9_1164.y;
bool l9_1217=l9_1170;
float l9_1218=l9_1171;
if ((l9_1216==0)||(l9_1216==3))
{
float l9_1219=l9_1215;
float l9_1220=0.0;
float l9_1221=1.0;
bool l9_1222=l9_1217;
float l9_1223=l9_1218;
float l9_1224=fast::clamp(l9_1219,l9_1220,l9_1221);
float l9_1225=step(abs(l9_1219-l9_1224),9.9999997e-06);
l9_1223*=(l9_1225+((1.0-float(l9_1222))*(1.0-l9_1225)));
l9_1219=l9_1224;
l9_1215=l9_1219;
l9_1218=l9_1223;
}
l9_1161.y=l9_1215;
l9_1171=l9_1218;
float2 l9_1226=l9_1161;
int l9_1227=l9_1159;
int l9_1228=l9_1160;
float l9_1229=l9_1169;
float2 l9_1230=l9_1226;
int l9_1231=l9_1227;
int l9_1232=l9_1228;
float3 l9_1233=float3(0.0);
if (l9_1231==0)
{
l9_1233=float3(l9_1230,0.0);
}
else
{
if (l9_1231==1)
{
l9_1233=float3(l9_1230.x,(l9_1230.y*0.5)+(0.5-(float(l9_1232)*0.5)),0.0);
}
else
{
l9_1233=float3(l9_1230,float(l9_1232));
}
}
float3 l9_1234=l9_1233;
float3 l9_1235=l9_1234;
float4 l9_1236=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1235.xy,bias(l9_1229));
float4 l9_1237=l9_1236;
if (l9_1167)
{
l9_1237=mix(l9_1168,l9_1237,float4(l9_1171));
}
float4 l9_1238=l9_1237;
l9_1152=l9_1238;
float4 l9_1239=l9_1152;
float4 l9_1240=l9_1239;
float4 l9_1241=mix(l9_970,l9_1060,float4(l9_878.x));
float4 l9_1242=mix(l9_1150,l9_1240,float4(l9_878.x));
float4 l9_1243=mix(l9_1241,l9_1242,float4(l9_878.y));
float2 l9_1244=l9_1243.xy;
float2 l9_1245=l9_118;
float2 l9_1246=float2(0.0);
l9_1246=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1247=l9_1246;
float2 l9_1248=float2(1.0)/l9_1247;
float2 l9_1249=float2(0.0);
l9_1249=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1250=l9_1249;
float2 l9_1251=(l9_1245*l9_1250)+float2(0.5);
float2 l9_1252=fract(l9_1251);
float2 l9_1253=float2(0.0);
l9_1253=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1254=l9_1253;
l9_1251=(floor(l9_1251)/l9_1254)-(l9_1248/float2(2.0));
float2 l9_1255=l9_1251;
float4 l9_1256=float4(0.0);
int l9_1257;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1258=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1258=0;
}
else
{
l9_1258=in.varStereoViewID;
}
int l9_1259=l9_1258;
l9_1257=1-l9_1259;
}
else
{
int l9_1260=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1260=0;
}
else
{
l9_1260=in.varStereoViewID;
}
int l9_1261=l9_1260;
l9_1257=l9_1261;
}
int l9_1262=l9_1257;
int l9_1263=flowRelativeLayout_tmp;
int l9_1264=l9_1262;
float2 l9_1265=l9_1255;
bool l9_1266=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1267=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1268=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1269=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1270=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1271=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1272=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1273=0.0;
bool l9_1274=l9_1271&&(!l9_1269);
float l9_1275=1.0;
float l9_1276=l9_1265.x;
int l9_1277=l9_1268.x;
if (l9_1277==1)
{
l9_1276=fract(l9_1276);
}
else
{
if (l9_1277==2)
{
float l9_1278=fract(l9_1276);
float l9_1279=l9_1276-l9_1278;
float l9_1280=step(0.25,fract(l9_1279*0.5));
l9_1276=mix(l9_1278,1.0-l9_1278,fast::clamp(l9_1280,0.0,1.0));
}
}
l9_1265.x=l9_1276;
float l9_1281=l9_1265.y;
int l9_1282=l9_1268.y;
if (l9_1282==1)
{
l9_1281=fract(l9_1281);
}
else
{
if (l9_1282==2)
{
float l9_1283=fract(l9_1281);
float l9_1284=l9_1281-l9_1283;
float l9_1285=step(0.25,fract(l9_1284*0.5));
l9_1281=mix(l9_1283,1.0-l9_1283,fast::clamp(l9_1285,0.0,1.0));
}
}
l9_1265.y=l9_1281;
if (l9_1269)
{
bool l9_1286=l9_1271;
bool l9_1287;
if (l9_1286)
{
l9_1287=l9_1268.x==3;
}
else
{
l9_1287=l9_1286;
}
float l9_1288=l9_1265.x;
float l9_1289=l9_1270.x;
float l9_1290=l9_1270.z;
bool l9_1291=l9_1287;
float l9_1292=l9_1275;
float l9_1293=fast::clamp(l9_1288,l9_1289,l9_1290);
float l9_1294=step(abs(l9_1288-l9_1293),9.9999997e-06);
l9_1292*=(l9_1294+((1.0-float(l9_1291))*(1.0-l9_1294)));
l9_1288=l9_1293;
l9_1265.x=l9_1288;
l9_1275=l9_1292;
bool l9_1295=l9_1271;
bool l9_1296;
if (l9_1295)
{
l9_1296=l9_1268.y==3;
}
else
{
l9_1296=l9_1295;
}
float l9_1297=l9_1265.y;
float l9_1298=l9_1270.y;
float l9_1299=l9_1270.w;
bool l9_1300=l9_1296;
float l9_1301=l9_1275;
float l9_1302=fast::clamp(l9_1297,l9_1298,l9_1299);
float l9_1303=step(abs(l9_1297-l9_1302),9.9999997e-06);
l9_1301*=(l9_1303+((1.0-float(l9_1300))*(1.0-l9_1303)));
l9_1297=l9_1302;
l9_1265.y=l9_1297;
l9_1275=l9_1301;
}
float2 l9_1304=l9_1265;
bool l9_1305=l9_1266;
float3x3 l9_1306=l9_1267;
if (l9_1305)
{
l9_1304=float2((l9_1306*float3(l9_1304,1.0)).xy);
}
float2 l9_1307=l9_1304;
l9_1265=l9_1307;
float l9_1308=l9_1265.x;
int l9_1309=l9_1268.x;
bool l9_1310=l9_1274;
float l9_1311=l9_1275;
if ((l9_1309==0)||(l9_1309==3))
{
float l9_1312=l9_1308;
float l9_1313=0.0;
float l9_1314=1.0;
bool l9_1315=l9_1310;
float l9_1316=l9_1311;
float l9_1317=fast::clamp(l9_1312,l9_1313,l9_1314);
float l9_1318=step(abs(l9_1312-l9_1317),9.9999997e-06);
l9_1316*=(l9_1318+((1.0-float(l9_1315))*(1.0-l9_1318)));
l9_1312=l9_1317;
l9_1308=l9_1312;
l9_1311=l9_1316;
}
l9_1265.x=l9_1308;
l9_1275=l9_1311;
float l9_1319=l9_1265.y;
int l9_1320=l9_1268.y;
bool l9_1321=l9_1274;
float l9_1322=l9_1275;
if ((l9_1320==0)||(l9_1320==3))
{
float l9_1323=l9_1319;
float l9_1324=0.0;
float l9_1325=1.0;
bool l9_1326=l9_1321;
float l9_1327=l9_1322;
float l9_1328=fast::clamp(l9_1323,l9_1324,l9_1325);
float l9_1329=step(abs(l9_1323-l9_1328),9.9999997e-06);
l9_1327*=(l9_1329+((1.0-float(l9_1326))*(1.0-l9_1329)));
l9_1323=l9_1328;
l9_1319=l9_1323;
l9_1322=l9_1327;
}
l9_1265.y=l9_1319;
l9_1275=l9_1322;
float2 l9_1330=l9_1265;
int l9_1331=l9_1263;
int l9_1332=l9_1264;
float l9_1333=l9_1273;
float2 l9_1334=l9_1330;
int l9_1335=l9_1331;
int l9_1336=l9_1332;
float3 l9_1337=float3(0.0);
if (l9_1335==0)
{
l9_1337=float3(l9_1334,0.0);
}
else
{
if (l9_1335==1)
{
l9_1337=float3(l9_1334.x,(l9_1334.y*0.5)+(0.5-(float(l9_1336)*0.5)),0.0);
}
else
{
l9_1337=float3(l9_1334,float(l9_1336));
}
}
float3 l9_1338=l9_1337;
float3 l9_1339=l9_1338;
float4 l9_1340=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1339.xy,bias(l9_1333));
float4 l9_1341=l9_1340;
if (l9_1271)
{
l9_1341=mix(l9_1272,l9_1341,float4(l9_1275));
}
float4 l9_1342=l9_1341;
l9_1256=l9_1342;
float4 l9_1343=l9_1256;
float4 l9_1344=l9_1343;
float2 l9_1345=l9_1251+float2(l9_1248.x,0.0);
float4 l9_1346=float4(0.0);
int l9_1347;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1348=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1348=0;
}
else
{
l9_1348=in.varStereoViewID;
}
int l9_1349=l9_1348;
l9_1347=1-l9_1349;
}
else
{
int l9_1350=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1350=0;
}
else
{
l9_1350=in.varStereoViewID;
}
int l9_1351=l9_1350;
l9_1347=l9_1351;
}
int l9_1352=l9_1347;
int l9_1353=flowRelativeLayout_tmp;
int l9_1354=l9_1352;
float2 l9_1355=l9_1345;
bool l9_1356=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1357=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1358=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1359=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1360=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1361=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1362=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1363=0.0;
bool l9_1364=l9_1361&&(!l9_1359);
float l9_1365=1.0;
float l9_1366=l9_1355.x;
int l9_1367=l9_1358.x;
if (l9_1367==1)
{
l9_1366=fract(l9_1366);
}
else
{
if (l9_1367==2)
{
float l9_1368=fract(l9_1366);
float l9_1369=l9_1366-l9_1368;
float l9_1370=step(0.25,fract(l9_1369*0.5));
l9_1366=mix(l9_1368,1.0-l9_1368,fast::clamp(l9_1370,0.0,1.0));
}
}
l9_1355.x=l9_1366;
float l9_1371=l9_1355.y;
int l9_1372=l9_1358.y;
if (l9_1372==1)
{
l9_1371=fract(l9_1371);
}
else
{
if (l9_1372==2)
{
float l9_1373=fract(l9_1371);
float l9_1374=l9_1371-l9_1373;
float l9_1375=step(0.25,fract(l9_1374*0.5));
l9_1371=mix(l9_1373,1.0-l9_1373,fast::clamp(l9_1375,0.0,1.0));
}
}
l9_1355.y=l9_1371;
if (l9_1359)
{
bool l9_1376=l9_1361;
bool l9_1377;
if (l9_1376)
{
l9_1377=l9_1358.x==3;
}
else
{
l9_1377=l9_1376;
}
float l9_1378=l9_1355.x;
float l9_1379=l9_1360.x;
float l9_1380=l9_1360.z;
bool l9_1381=l9_1377;
float l9_1382=l9_1365;
float l9_1383=fast::clamp(l9_1378,l9_1379,l9_1380);
float l9_1384=step(abs(l9_1378-l9_1383),9.9999997e-06);
l9_1382*=(l9_1384+((1.0-float(l9_1381))*(1.0-l9_1384)));
l9_1378=l9_1383;
l9_1355.x=l9_1378;
l9_1365=l9_1382;
bool l9_1385=l9_1361;
bool l9_1386;
if (l9_1385)
{
l9_1386=l9_1358.y==3;
}
else
{
l9_1386=l9_1385;
}
float l9_1387=l9_1355.y;
float l9_1388=l9_1360.y;
float l9_1389=l9_1360.w;
bool l9_1390=l9_1386;
float l9_1391=l9_1365;
float l9_1392=fast::clamp(l9_1387,l9_1388,l9_1389);
float l9_1393=step(abs(l9_1387-l9_1392),9.9999997e-06);
l9_1391*=(l9_1393+((1.0-float(l9_1390))*(1.0-l9_1393)));
l9_1387=l9_1392;
l9_1355.y=l9_1387;
l9_1365=l9_1391;
}
float2 l9_1394=l9_1355;
bool l9_1395=l9_1356;
float3x3 l9_1396=l9_1357;
if (l9_1395)
{
l9_1394=float2((l9_1396*float3(l9_1394,1.0)).xy);
}
float2 l9_1397=l9_1394;
l9_1355=l9_1397;
float l9_1398=l9_1355.x;
int l9_1399=l9_1358.x;
bool l9_1400=l9_1364;
float l9_1401=l9_1365;
if ((l9_1399==0)||(l9_1399==3))
{
float l9_1402=l9_1398;
float l9_1403=0.0;
float l9_1404=1.0;
bool l9_1405=l9_1400;
float l9_1406=l9_1401;
float l9_1407=fast::clamp(l9_1402,l9_1403,l9_1404);
float l9_1408=step(abs(l9_1402-l9_1407),9.9999997e-06);
l9_1406*=(l9_1408+((1.0-float(l9_1405))*(1.0-l9_1408)));
l9_1402=l9_1407;
l9_1398=l9_1402;
l9_1401=l9_1406;
}
l9_1355.x=l9_1398;
l9_1365=l9_1401;
float l9_1409=l9_1355.y;
int l9_1410=l9_1358.y;
bool l9_1411=l9_1364;
float l9_1412=l9_1365;
if ((l9_1410==0)||(l9_1410==3))
{
float l9_1413=l9_1409;
float l9_1414=0.0;
float l9_1415=1.0;
bool l9_1416=l9_1411;
float l9_1417=l9_1412;
float l9_1418=fast::clamp(l9_1413,l9_1414,l9_1415);
float l9_1419=step(abs(l9_1413-l9_1418),9.9999997e-06);
l9_1417*=(l9_1419+((1.0-float(l9_1416))*(1.0-l9_1419)));
l9_1413=l9_1418;
l9_1409=l9_1413;
l9_1412=l9_1417;
}
l9_1355.y=l9_1409;
l9_1365=l9_1412;
float2 l9_1420=l9_1355;
int l9_1421=l9_1353;
int l9_1422=l9_1354;
float l9_1423=l9_1363;
float2 l9_1424=l9_1420;
int l9_1425=l9_1421;
int l9_1426=l9_1422;
float3 l9_1427=float3(0.0);
if (l9_1425==0)
{
l9_1427=float3(l9_1424,0.0);
}
else
{
if (l9_1425==1)
{
l9_1427=float3(l9_1424.x,(l9_1424.y*0.5)+(0.5-(float(l9_1426)*0.5)),0.0);
}
else
{
l9_1427=float3(l9_1424,float(l9_1426));
}
}
float3 l9_1428=l9_1427;
float3 l9_1429=l9_1428;
float4 l9_1430=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1429.xy,bias(l9_1423));
float4 l9_1431=l9_1430;
if (l9_1361)
{
l9_1431=mix(l9_1362,l9_1431,float4(l9_1365));
}
float4 l9_1432=l9_1431;
l9_1346=l9_1432;
float4 l9_1433=l9_1346;
float4 l9_1434=l9_1433;
float2 l9_1435=l9_1251+float2(0.0,l9_1248.y);
float4 l9_1436=float4(0.0);
int l9_1437;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1438=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1438=0;
}
else
{
l9_1438=in.varStereoViewID;
}
int l9_1439=l9_1438;
l9_1437=1-l9_1439;
}
else
{
int l9_1440=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1440=0;
}
else
{
l9_1440=in.varStereoViewID;
}
int l9_1441=l9_1440;
l9_1437=l9_1441;
}
int l9_1442=l9_1437;
int l9_1443=flowRelativeLayout_tmp;
int l9_1444=l9_1442;
float2 l9_1445=l9_1435;
bool l9_1446=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1447=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1448=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1449=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1450=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1451=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1452=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1453=0.0;
bool l9_1454=l9_1451&&(!l9_1449);
float l9_1455=1.0;
float l9_1456=l9_1445.x;
int l9_1457=l9_1448.x;
if (l9_1457==1)
{
l9_1456=fract(l9_1456);
}
else
{
if (l9_1457==2)
{
float l9_1458=fract(l9_1456);
float l9_1459=l9_1456-l9_1458;
float l9_1460=step(0.25,fract(l9_1459*0.5));
l9_1456=mix(l9_1458,1.0-l9_1458,fast::clamp(l9_1460,0.0,1.0));
}
}
l9_1445.x=l9_1456;
float l9_1461=l9_1445.y;
int l9_1462=l9_1448.y;
if (l9_1462==1)
{
l9_1461=fract(l9_1461);
}
else
{
if (l9_1462==2)
{
float l9_1463=fract(l9_1461);
float l9_1464=l9_1461-l9_1463;
float l9_1465=step(0.25,fract(l9_1464*0.5));
l9_1461=mix(l9_1463,1.0-l9_1463,fast::clamp(l9_1465,0.0,1.0));
}
}
l9_1445.y=l9_1461;
if (l9_1449)
{
bool l9_1466=l9_1451;
bool l9_1467;
if (l9_1466)
{
l9_1467=l9_1448.x==3;
}
else
{
l9_1467=l9_1466;
}
float l9_1468=l9_1445.x;
float l9_1469=l9_1450.x;
float l9_1470=l9_1450.z;
bool l9_1471=l9_1467;
float l9_1472=l9_1455;
float l9_1473=fast::clamp(l9_1468,l9_1469,l9_1470);
float l9_1474=step(abs(l9_1468-l9_1473),9.9999997e-06);
l9_1472*=(l9_1474+((1.0-float(l9_1471))*(1.0-l9_1474)));
l9_1468=l9_1473;
l9_1445.x=l9_1468;
l9_1455=l9_1472;
bool l9_1475=l9_1451;
bool l9_1476;
if (l9_1475)
{
l9_1476=l9_1448.y==3;
}
else
{
l9_1476=l9_1475;
}
float l9_1477=l9_1445.y;
float l9_1478=l9_1450.y;
float l9_1479=l9_1450.w;
bool l9_1480=l9_1476;
float l9_1481=l9_1455;
float l9_1482=fast::clamp(l9_1477,l9_1478,l9_1479);
float l9_1483=step(abs(l9_1477-l9_1482),9.9999997e-06);
l9_1481*=(l9_1483+((1.0-float(l9_1480))*(1.0-l9_1483)));
l9_1477=l9_1482;
l9_1445.y=l9_1477;
l9_1455=l9_1481;
}
float2 l9_1484=l9_1445;
bool l9_1485=l9_1446;
float3x3 l9_1486=l9_1447;
if (l9_1485)
{
l9_1484=float2((l9_1486*float3(l9_1484,1.0)).xy);
}
float2 l9_1487=l9_1484;
l9_1445=l9_1487;
float l9_1488=l9_1445.x;
int l9_1489=l9_1448.x;
bool l9_1490=l9_1454;
float l9_1491=l9_1455;
if ((l9_1489==0)||(l9_1489==3))
{
float l9_1492=l9_1488;
float l9_1493=0.0;
float l9_1494=1.0;
bool l9_1495=l9_1490;
float l9_1496=l9_1491;
float l9_1497=fast::clamp(l9_1492,l9_1493,l9_1494);
float l9_1498=step(abs(l9_1492-l9_1497),9.9999997e-06);
l9_1496*=(l9_1498+((1.0-float(l9_1495))*(1.0-l9_1498)));
l9_1492=l9_1497;
l9_1488=l9_1492;
l9_1491=l9_1496;
}
l9_1445.x=l9_1488;
l9_1455=l9_1491;
float l9_1499=l9_1445.y;
int l9_1500=l9_1448.y;
bool l9_1501=l9_1454;
float l9_1502=l9_1455;
if ((l9_1500==0)||(l9_1500==3))
{
float l9_1503=l9_1499;
float l9_1504=0.0;
float l9_1505=1.0;
bool l9_1506=l9_1501;
float l9_1507=l9_1502;
float l9_1508=fast::clamp(l9_1503,l9_1504,l9_1505);
float l9_1509=step(abs(l9_1503-l9_1508),9.9999997e-06);
l9_1507*=(l9_1509+((1.0-float(l9_1506))*(1.0-l9_1509)));
l9_1503=l9_1508;
l9_1499=l9_1503;
l9_1502=l9_1507;
}
l9_1445.y=l9_1499;
l9_1455=l9_1502;
float2 l9_1510=l9_1445;
int l9_1511=l9_1443;
int l9_1512=l9_1444;
float l9_1513=l9_1453;
float2 l9_1514=l9_1510;
int l9_1515=l9_1511;
int l9_1516=l9_1512;
float3 l9_1517=float3(0.0);
if (l9_1515==0)
{
l9_1517=float3(l9_1514,0.0);
}
else
{
if (l9_1515==1)
{
l9_1517=float3(l9_1514.x,(l9_1514.y*0.5)+(0.5-(float(l9_1516)*0.5)),0.0);
}
else
{
l9_1517=float3(l9_1514,float(l9_1516));
}
}
float3 l9_1518=l9_1517;
float3 l9_1519=l9_1518;
float4 l9_1520=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1519.xy,bias(l9_1513));
float4 l9_1521=l9_1520;
if (l9_1451)
{
l9_1521=mix(l9_1452,l9_1521,float4(l9_1455));
}
float4 l9_1522=l9_1521;
l9_1436=l9_1522;
float4 l9_1523=l9_1436;
float4 l9_1524=l9_1523;
float2 l9_1525=l9_1251+float2(l9_1248.x,l9_1248.y);
float4 l9_1526=float4(0.0);
int l9_1527;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1528=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1528=0;
}
else
{
l9_1528=in.varStereoViewID;
}
int l9_1529=l9_1528;
l9_1527=1-l9_1529;
}
else
{
int l9_1530=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1530=0;
}
else
{
l9_1530=in.varStereoViewID;
}
int l9_1531=l9_1530;
l9_1527=l9_1531;
}
int l9_1532=l9_1527;
int l9_1533=flowRelativeLayout_tmp;
int l9_1534=l9_1532;
float2 l9_1535=l9_1525;
bool l9_1536=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1537=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1538=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1539=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1540=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1541=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1542=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1543=0.0;
bool l9_1544=l9_1541&&(!l9_1539);
float l9_1545=1.0;
float l9_1546=l9_1535.x;
int l9_1547=l9_1538.x;
if (l9_1547==1)
{
l9_1546=fract(l9_1546);
}
else
{
if (l9_1547==2)
{
float l9_1548=fract(l9_1546);
float l9_1549=l9_1546-l9_1548;
float l9_1550=step(0.25,fract(l9_1549*0.5));
l9_1546=mix(l9_1548,1.0-l9_1548,fast::clamp(l9_1550,0.0,1.0));
}
}
l9_1535.x=l9_1546;
float l9_1551=l9_1535.y;
int l9_1552=l9_1538.y;
if (l9_1552==1)
{
l9_1551=fract(l9_1551);
}
else
{
if (l9_1552==2)
{
float l9_1553=fract(l9_1551);
float l9_1554=l9_1551-l9_1553;
float l9_1555=step(0.25,fract(l9_1554*0.5));
l9_1551=mix(l9_1553,1.0-l9_1553,fast::clamp(l9_1555,0.0,1.0));
}
}
l9_1535.y=l9_1551;
if (l9_1539)
{
bool l9_1556=l9_1541;
bool l9_1557;
if (l9_1556)
{
l9_1557=l9_1538.x==3;
}
else
{
l9_1557=l9_1556;
}
float l9_1558=l9_1535.x;
float l9_1559=l9_1540.x;
float l9_1560=l9_1540.z;
bool l9_1561=l9_1557;
float l9_1562=l9_1545;
float l9_1563=fast::clamp(l9_1558,l9_1559,l9_1560);
float l9_1564=step(abs(l9_1558-l9_1563),9.9999997e-06);
l9_1562*=(l9_1564+((1.0-float(l9_1561))*(1.0-l9_1564)));
l9_1558=l9_1563;
l9_1535.x=l9_1558;
l9_1545=l9_1562;
bool l9_1565=l9_1541;
bool l9_1566;
if (l9_1565)
{
l9_1566=l9_1538.y==3;
}
else
{
l9_1566=l9_1565;
}
float l9_1567=l9_1535.y;
float l9_1568=l9_1540.y;
float l9_1569=l9_1540.w;
bool l9_1570=l9_1566;
float l9_1571=l9_1545;
float l9_1572=fast::clamp(l9_1567,l9_1568,l9_1569);
float l9_1573=step(abs(l9_1567-l9_1572),9.9999997e-06);
l9_1571*=(l9_1573+((1.0-float(l9_1570))*(1.0-l9_1573)));
l9_1567=l9_1572;
l9_1535.y=l9_1567;
l9_1545=l9_1571;
}
float2 l9_1574=l9_1535;
bool l9_1575=l9_1536;
float3x3 l9_1576=l9_1537;
if (l9_1575)
{
l9_1574=float2((l9_1576*float3(l9_1574,1.0)).xy);
}
float2 l9_1577=l9_1574;
l9_1535=l9_1577;
float l9_1578=l9_1535.x;
int l9_1579=l9_1538.x;
bool l9_1580=l9_1544;
float l9_1581=l9_1545;
if ((l9_1579==0)||(l9_1579==3))
{
float l9_1582=l9_1578;
float l9_1583=0.0;
float l9_1584=1.0;
bool l9_1585=l9_1580;
float l9_1586=l9_1581;
float l9_1587=fast::clamp(l9_1582,l9_1583,l9_1584);
float l9_1588=step(abs(l9_1582-l9_1587),9.9999997e-06);
l9_1586*=(l9_1588+((1.0-float(l9_1585))*(1.0-l9_1588)));
l9_1582=l9_1587;
l9_1578=l9_1582;
l9_1581=l9_1586;
}
l9_1535.x=l9_1578;
l9_1545=l9_1581;
float l9_1589=l9_1535.y;
int l9_1590=l9_1538.y;
bool l9_1591=l9_1544;
float l9_1592=l9_1545;
if ((l9_1590==0)||(l9_1590==3))
{
float l9_1593=l9_1589;
float l9_1594=0.0;
float l9_1595=1.0;
bool l9_1596=l9_1591;
float l9_1597=l9_1592;
float l9_1598=fast::clamp(l9_1593,l9_1594,l9_1595);
float l9_1599=step(abs(l9_1593-l9_1598),9.9999997e-06);
l9_1597*=(l9_1599+((1.0-float(l9_1596))*(1.0-l9_1599)));
l9_1593=l9_1598;
l9_1589=l9_1593;
l9_1592=l9_1597;
}
l9_1535.y=l9_1589;
l9_1545=l9_1592;
float2 l9_1600=l9_1535;
int l9_1601=l9_1533;
int l9_1602=l9_1534;
float l9_1603=l9_1543;
float2 l9_1604=l9_1600;
int l9_1605=l9_1601;
int l9_1606=l9_1602;
float3 l9_1607=float3(0.0);
if (l9_1605==0)
{
l9_1607=float3(l9_1604,0.0);
}
else
{
if (l9_1605==1)
{
l9_1607=float3(l9_1604.x,(l9_1604.y*0.5)+(0.5-(float(l9_1606)*0.5)),0.0);
}
else
{
l9_1607=float3(l9_1604,float(l9_1606));
}
}
float3 l9_1608=l9_1607;
float3 l9_1609=l9_1608;
float4 l9_1610=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1609.xy,bias(l9_1603));
float4 l9_1611=l9_1610;
if (l9_1541)
{
l9_1611=mix(l9_1542,l9_1611,float4(l9_1545));
}
float4 l9_1612=l9_1611;
l9_1526=l9_1612;
float4 l9_1613=l9_1526;
float4 l9_1614=l9_1613;
float4 l9_1615=mix(l9_1344,l9_1434,float4(l9_1252.x));
float4 l9_1616=mix(l9_1524,l9_1614,float4(l9_1252.x));
float4 l9_1617=mix(l9_1615,l9_1616,float4(l9_1252.y));
float2 l9_1618=l9_1617.xy;
float2 l9_1619=l9_119;
float2 l9_1620=float2(0.0);
l9_1620=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1621=l9_1620;
float2 l9_1622=float2(1.0)/l9_1621;
float2 l9_1623=float2(0.0);
l9_1623=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1624=l9_1623;
float2 l9_1625=(l9_1619*l9_1624)+float2(0.5);
float2 l9_1626=fract(l9_1625);
float2 l9_1627=float2(0.0);
l9_1627=(*sc_set0.UserUniforms).flowRelativeSize.xy;
float2 l9_1628=l9_1627;
l9_1625=(floor(l9_1625)/l9_1628)-(l9_1622/float2(2.0));
float2 l9_1629=l9_1625;
float4 l9_1630=float4(0.0);
int l9_1631;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1632=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1632=0;
}
else
{
l9_1632=in.varStereoViewID;
}
int l9_1633=l9_1632;
l9_1631=1-l9_1633;
}
else
{
int l9_1634=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1634=0;
}
else
{
l9_1634=in.varStereoViewID;
}
int l9_1635=l9_1634;
l9_1631=l9_1635;
}
int l9_1636=l9_1631;
int l9_1637=flowRelativeLayout_tmp;
int l9_1638=l9_1636;
float2 l9_1639=l9_1629;
bool l9_1640=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1641=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1642=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1643=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1644=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1645=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1646=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1647=0.0;
bool l9_1648=l9_1645&&(!l9_1643);
float l9_1649=1.0;
float l9_1650=l9_1639.x;
int l9_1651=l9_1642.x;
if (l9_1651==1)
{
l9_1650=fract(l9_1650);
}
else
{
if (l9_1651==2)
{
float l9_1652=fract(l9_1650);
float l9_1653=l9_1650-l9_1652;
float l9_1654=step(0.25,fract(l9_1653*0.5));
l9_1650=mix(l9_1652,1.0-l9_1652,fast::clamp(l9_1654,0.0,1.0));
}
}
l9_1639.x=l9_1650;
float l9_1655=l9_1639.y;
int l9_1656=l9_1642.y;
if (l9_1656==1)
{
l9_1655=fract(l9_1655);
}
else
{
if (l9_1656==2)
{
float l9_1657=fract(l9_1655);
float l9_1658=l9_1655-l9_1657;
float l9_1659=step(0.25,fract(l9_1658*0.5));
l9_1655=mix(l9_1657,1.0-l9_1657,fast::clamp(l9_1659,0.0,1.0));
}
}
l9_1639.y=l9_1655;
if (l9_1643)
{
bool l9_1660=l9_1645;
bool l9_1661;
if (l9_1660)
{
l9_1661=l9_1642.x==3;
}
else
{
l9_1661=l9_1660;
}
float l9_1662=l9_1639.x;
float l9_1663=l9_1644.x;
float l9_1664=l9_1644.z;
bool l9_1665=l9_1661;
float l9_1666=l9_1649;
float l9_1667=fast::clamp(l9_1662,l9_1663,l9_1664);
float l9_1668=step(abs(l9_1662-l9_1667),9.9999997e-06);
l9_1666*=(l9_1668+((1.0-float(l9_1665))*(1.0-l9_1668)));
l9_1662=l9_1667;
l9_1639.x=l9_1662;
l9_1649=l9_1666;
bool l9_1669=l9_1645;
bool l9_1670;
if (l9_1669)
{
l9_1670=l9_1642.y==3;
}
else
{
l9_1670=l9_1669;
}
float l9_1671=l9_1639.y;
float l9_1672=l9_1644.y;
float l9_1673=l9_1644.w;
bool l9_1674=l9_1670;
float l9_1675=l9_1649;
float l9_1676=fast::clamp(l9_1671,l9_1672,l9_1673);
float l9_1677=step(abs(l9_1671-l9_1676),9.9999997e-06);
l9_1675*=(l9_1677+((1.0-float(l9_1674))*(1.0-l9_1677)));
l9_1671=l9_1676;
l9_1639.y=l9_1671;
l9_1649=l9_1675;
}
float2 l9_1678=l9_1639;
bool l9_1679=l9_1640;
float3x3 l9_1680=l9_1641;
if (l9_1679)
{
l9_1678=float2((l9_1680*float3(l9_1678,1.0)).xy);
}
float2 l9_1681=l9_1678;
l9_1639=l9_1681;
float l9_1682=l9_1639.x;
int l9_1683=l9_1642.x;
bool l9_1684=l9_1648;
float l9_1685=l9_1649;
if ((l9_1683==0)||(l9_1683==3))
{
float l9_1686=l9_1682;
float l9_1687=0.0;
float l9_1688=1.0;
bool l9_1689=l9_1684;
float l9_1690=l9_1685;
float l9_1691=fast::clamp(l9_1686,l9_1687,l9_1688);
float l9_1692=step(abs(l9_1686-l9_1691),9.9999997e-06);
l9_1690*=(l9_1692+((1.0-float(l9_1689))*(1.0-l9_1692)));
l9_1686=l9_1691;
l9_1682=l9_1686;
l9_1685=l9_1690;
}
l9_1639.x=l9_1682;
l9_1649=l9_1685;
float l9_1693=l9_1639.y;
int l9_1694=l9_1642.y;
bool l9_1695=l9_1648;
float l9_1696=l9_1649;
if ((l9_1694==0)||(l9_1694==3))
{
float l9_1697=l9_1693;
float l9_1698=0.0;
float l9_1699=1.0;
bool l9_1700=l9_1695;
float l9_1701=l9_1696;
float l9_1702=fast::clamp(l9_1697,l9_1698,l9_1699);
float l9_1703=step(abs(l9_1697-l9_1702),9.9999997e-06);
l9_1701*=(l9_1703+((1.0-float(l9_1700))*(1.0-l9_1703)));
l9_1697=l9_1702;
l9_1693=l9_1697;
l9_1696=l9_1701;
}
l9_1639.y=l9_1693;
l9_1649=l9_1696;
float2 l9_1704=l9_1639;
int l9_1705=l9_1637;
int l9_1706=l9_1638;
float l9_1707=l9_1647;
float2 l9_1708=l9_1704;
int l9_1709=l9_1705;
int l9_1710=l9_1706;
float3 l9_1711=float3(0.0);
if (l9_1709==0)
{
l9_1711=float3(l9_1708,0.0);
}
else
{
if (l9_1709==1)
{
l9_1711=float3(l9_1708.x,(l9_1708.y*0.5)+(0.5-(float(l9_1710)*0.5)),0.0);
}
else
{
l9_1711=float3(l9_1708,float(l9_1710));
}
}
float3 l9_1712=l9_1711;
float3 l9_1713=l9_1712;
float4 l9_1714=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1713.xy,bias(l9_1707));
float4 l9_1715=l9_1714;
if (l9_1645)
{
l9_1715=mix(l9_1646,l9_1715,float4(l9_1649));
}
float4 l9_1716=l9_1715;
l9_1630=l9_1716;
float4 l9_1717=l9_1630;
float4 l9_1718=l9_1717;
float2 l9_1719=l9_1625+float2(l9_1622.x,0.0);
float4 l9_1720=float4(0.0);
int l9_1721;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1722=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1722=0;
}
else
{
l9_1722=in.varStereoViewID;
}
int l9_1723=l9_1722;
l9_1721=1-l9_1723;
}
else
{
int l9_1724=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1724=0;
}
else
{
l9_1724=in.varStereoViewID;
}
int l9_1725=l9_1724;
l9_1721=l9_1725;
}
int l9_1726=l9_1721;
int l9_1727=flowRelativeLayout_tmp;
int l9_1728=l9_1726;
float2 l9_1729=l9_1719;
bool l9_1730=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1731=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1732=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1733=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1734=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1735=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1736=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1737=0.0;
bool l9_1738=l9_1735&&(!l9_1733);
float l9_1739=1.0;
float l9_1740=l9_1729.x;
int l9_1741=l9_1732.x;
if (l9_1741==1)
{
l9_1740=fract(l9_1740);
}
else
{
if (l9_1741==2)
{
float l9_1742=fract(l9_1740);
float l9_1743=l9_1740-l9_1742;
float l9_1744=step(0.25,fract(l9_1743*0.5));
l9_1740=mix(l9_1742,1.0-l9_1742,fast::clamp(l9_1744,0.0,1.0));
}
}
l9_1729.x=l9_1740;
float l9_1745=l9_1729.y;
int l9_1746=l9_1732.y;
if (l9_1746==1)
{
l9_1745=fract(l9_1745);
}
else
{
if (l9_1746==2)
{
float l9_1747=fract(l9_1745);
float l9_1748=l9_1745-l9_1747;
float l9_1749=step(0.25,fract(l9_1748*0.5));
l9_1745=mix(l9_1747,1.0-l9_1747,fast::clamp(l9_1749,0.0,1.0));
}
}
l9_1729.y=l9_1745;
if (l9_1733)
{
bool l9_1750=l9_1735;
bool l9_1751;
if (l9_1750)
{
l9_1751=l9_1732.x==3;
}
else
{
l9_1751=l9_1750;
}
float l9_1752=l9_1729.x;
float l9_1753=l9_1734.x;
float l9_1754=l9_1734.z;
bool l9_1755=l9_1751;
float l9_1756=l9_1739;
float l9_1757=fast::clamp(l9_1752,l9_1753,l9_1754);
float l9_1758=step(abs(l9_1752-l9_1757),9.9999997e-06);
l9_1756*=(l9_1758+((1.0-float(l9_1755))*(1.0-l9_1758)));
l9_1752=l9_1757;
l9_1729.x=l9_1752;
l9_1739=l9_1756;
bool l9_1759=l9_1735;
bool l9_1760;
if (l9_1759)
{
l9_1760=l9_1732.y==3;
}
else
{
l9_1760=l9_1759;
}
float l9_1761=l9_1729.y;
float l9_1762=l9_1734.y;
float l9_1763=l9_1734.w;
bool l9_1764=l9_1760;
float l9_1765=l9_1739;
float l9_1766=fast::clamp(l9_1761,l9_1762,l9_1763);
float l9_1767=step(abs(l9_1761-l9_1766),9.9999997e-06);
l9_1765*=(l9_1767+((1.0-float(l9_1764))*(1.0-l9_1767)));
l9_1761=l9_1766;
l9_1729.y=l9_1761;
l9_1739=l9_1765;
}
float2 l9_1768=l9_1729;
bool l9_1769=l9_1730;
float3x3 l9_1770=l9_1731;
if (l9_1769)
{
l9_1768=float2((l9_1770*float3(l9_1768,1.0)).xy);
}
float2 l9_1771=l9_1768;
l9_1729=l9_1771;
float l9_1772=l9_1729.x;
int l9_1773=l9_1732.x;
bool l9_1774=l9_1738;
float l9_1775=l9_1739;
if ((l9_1773==0)||(l9_1773==3))
{
float l9_1776=l9_1772;
float l9_1777=0.0;
float l9_1778=1.0;
bool l9_1779=l9_1774;
float l9_1780=l9_1775;
float l9_1781=fast::clamp(l9_1776,l9_1777,l9_1778);
float l9_1782=step(abs(l9_1776-l9_1781),9.9999997e-06);
l9_1780*=(l9_1782+((1.0-float(l9_1779))*(1.0-l9_1782)));
l9_1776=l9_1781;
l9_1772=l9_1776;
l9_1775=l9_1780;
}
l9_1729.x=l9_1772;
l9_1739=l9_1775;
float l9_1783=l9_1729.y;
int l9_1784=l9_1732.y;
bool l9_1785=l9_1738;
float l9_1786=l9_1739;
if ((l9_1784==0)||(l9_1784==3))
{
float l9_1787=l9_1783;
float l9_1788=0.0;
float l9_1789=1.0;
bool l9_1790=l9_1785;
float l9_1791=l9_1786;
float l9_1792=fast::clamp(l9_1787,l9_1788,l9_1789);
float l9_1793=step(abs(l9_1787-l9_1792),9.9999997e-06);
l9_1791*=(l9_1793+((1.0-float(l9_1790))*(1.0-l9_1793)));
l9_1787=l9_1792;
l9_1783=l9_1787;
l9_1786=l9_1791;
}
l9_1729.y=l9_1783;
l9_1739=l9_1786;
float2 l9_1794=l9_1729;
int l9_1795=l9_1727;
int l9_1796=l9_1728;
float l9_1797=l9_1737;
float2 l9_1798=l9_1794;
int l9_1799=l9_1795;
int l9_1800=l9_1796;
float3 l9_1801=float3(0.0);
if (l9_1799==0)
{
l9_1801=float3(l9_1798,0.0);
}
else
{
if (l9_1799==1)
{
l9_1801=float3(l9_1798.x,(l9_1798.y*0.5)+(0.5-(float(l9_1800)*0.5)),0.0);
}
else
{
l9_1801=float3(l9_1798,float(l9_1800));
}
}
float3 l9_1802=l9_1801;
float3 l9_1803=l9_1802;
float4 l9_1804=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1803.xy,bias(l9_1797));
float4 l9_1805=l9_1804;
if (l9_1735)
{
l9_1805=mix(l9_1736,l9_1805,float4(l9_1739));
}
float4 l9_1806=l9_1805;
l9_1720=l9_1806;
float4 l9_1807=l9_1720;
float4 l9_1808=l9_1807;
float2 l9_1809=l9_1625+float2(0.0,l9_1622.y);
float4 l9_1810=float4(0.0);
int l9_1811;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1812=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1812=0;
}
else
{
l9_1812=in.varStereoViewID;
}
int l9_1813=l9_1812;
l9_1811=1-l9_1813;
}
else
{
int l9_1814=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1814=0;
}
else
{
l9_1814=in.varStereoViewID;
}
int l9_1815=l9_1814;
l9_1811=l9_1815;
}
int l9_1816=l9_1811;
int l9_1817=flowRelativeLayout_tmp;
int l9_1818=l9_1816;
float2 l9_1819=l9_1809;
bool l9_1820=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1821=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1822=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1823=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1824=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1825=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1826=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1827=0.0;
bool l9_1828=l9_1825&&(!l9_1823);
float l9_1829=1.0;
float l9_1830=l9_1819.x;
int l9_1831=l9_1822.x;
if (l9_1831==1)
{
l9_1830=fract(l9_1830);
}
else
{
if (l9_1831==2)
{
float l9_1832=fract(l9_1830);
float l9_1833=l9_1830-l9_1832;
float l9_1834=step(0.25,fract(l9_1833*0.5));
l9_1830=mix(l9_1832,1.0-l9_1832,fast::clamp(l9_1834,0.0,1.0));
}
}
l9_1819.x=l9_1830;
float l9_1835=l9_1819.y;
int l9_1836=l9_1822.y;
if (l9_1836==1)
{
l9_1835=fract(l9_1835);
}
else
{
if (l9_1836==2)
{
float l9_1837=fract(l9_1835);
float l9_1838=l9_1835-l9_1837;
float l9_1839=step(0.25,fract(l9_1838*0.5));
l9_1835=mix(l9_1837,1.0-l9_1837,fast::clamp(l9_1839,0.0,1.0));
}
}
l9_1819.y=l9_1835;
if (l9_1823)
{
bool l9_1840=l9_1825;
bool l9_1841;
if (l9_1840)
{
l9_1841=l9_1822.x==3;
}
else
{
l9_1841=l9_1840;
}
float l9_1842=l9_1819.x;
float l9_1843=l9_1824.x;
float l9_1844=l9_1824.z;
bool l9_1845=l9_1841;
float l9_1846=l9_1829;
float l9_1847=fast::clamp(l9_1842,l9_1843,l9_1844);
float l9_1848=step(abs(l9_1842-l9_1847),9.9999997e-06);
l9_1846*=(l9_1848+((1.0-float(l9_1845))*(1.0-l9_1848)));
l9_1842=l9_1847;
l9_1819.x=l9_1842;
l9_1829=l9_1846;
bool l9_1849=l9_1825;
bool l9_1850;
if (l9_1849)
{
l9_1850=l9_1822.y==3;
}
else
{
l9_1850=l9_1849;
}
float l9_1851=l9_1819.y;
float l9_1852=l9_1824.y;
float l9_1853=l9_1824.w;
bool l9_1854=l9_1850;
float l9_1855=l9_1829;
float l9_1856=fast::clamp(l9_1851,l9_1852,l9_1853);
float l9_1857=step(abs(l9_1851-l9_1856),9.9999997e-06);
l9_1855*=(l9_1857+((1.0-float(l9_1854))*(1.0-l9_1857)));
l9_1851=l9_1856;
l9_1819.y=l9_1851;
l9_1829=l9_1855;
}
float2 l9_1858=l9_1819;
bool l9_1859=l9_1820;
float3x3 l9_1860=l9_1821;
if (l9_1859)
{
l9_1858=float2((l9_1860*float3(l9_1858,1.0)).xy);
}
float2 l9_1861=l9_1858;
l9_1819=l9_1861;
float l9_1862=l9_1819.x;
int l9_1863=l9_1822.x;
bool l9_1864=l9_1828;
float l9_1865=l9_1829;
if ((l9_1863==0)||(l9_1863==3))
{
float l9_1866=l9_1862;
float l9_1867=0.0;
float l9_1868=1.0;
bool l9_1869=l9_1864;
float l9_1870=l9_1865;
float l9_1871=fast::clamp(l9_1866,l9_1867,l9_1868);
float l9_1872=step(abs(l9_1866-l9_1871),9.9999997e-06);
l9_1870*=(l9_1872+((1.0-float(l9_1869))*(1.0-l9_1872)));
l9_1866=l9_1871;
l9_1862=l9_1866;
l9_1865=l9_1870;
}
l9_1819.x=l9_1862;
l9_1829=l9_1865;
float l9_1873=l9_1819.y;
int l9_1874=l9_1822.y;
bool l9_1875=l9_1828;
float l9_1876=l9_1829;
if ((l9_1874==0)||(l9_1874==3))
{
float l9_1877=l9_1873;
float l9_1878=0.0;
float l9_1879=1.0;
bool l9_1880=l9_1875;
float l9_1881=l9_1876;
float l9_1882=fast::clamp(l9_1877,l9_1878,l9_1879);
float l9_1883=step(abs(l9_1877-l9_1882),9.9999997e-06);
l9_1881*=(l9_1883+((1.0-float(l9_1880))*(1.0-l9_1883)));
l9_1877=l9_1882;
l9_1873=l9_1877;
l9_1876=l9_1881;
}
l9_1819.y=l9_1873;
l9_1829=l9_1876;
float2 l9_1884=l9_1819;
int l9_1885=l9_1817;
int l9_1886=l9_1818;
float l9_1887=l9_1827;
float2 l9_1888=l9_1884;
int l9_1889=l9_1885;
int l9_1890=l9_1886;
float3 l9_1891=float3(0.0);
if (l9_1889==0)
{
l9_1891=float3(l9_1888,0.0);
}
else
{
if (l9_1889==1)
{
l9_1891=float3(l9_1888.x,(l9_1888.y*0.5)+(0.5-(float(l9_1890)*0.5)),0.0);
}
else
{
l9_1891=float3(l9_1888,float(l9_1890));
}
}
float3 l9_1892=l9_1891;
float3 l9_1893=l9_1892;
float4 l9_1894=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1893.xy,bias(l9_1887));
float4 l9_1895=l9_1894;
if (l9_1825)
{
l9_1895=mix(l9_1826,l9_1895,float4(l9_1829));
}
float4 l9_1896=l9_1895;
l9_1810=l9_1896;
float4 l9_1897=l9_1810;
float4 l9_1898=l9_1897;
float2 l9_1899=l9_1625+float2(l9_1622.x,l9_1622.y);
float4 l9_1900=float4(0.0);
int l9_1901;
if ((int(flowRelativeHasSwappedViews_tmp)!=0))
{
int l9_1902=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1902=0;
}
else
{
l9_1902=in.varStereoViewID;
}
int l9_1903=l9_1902;
l9_1901=1-l9_1903;
}
else
{
int l9_1904=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1904=0;
}
else
{
l9_1904=in.varStereoViewID;
}
int l9_1905=l9_1904;
l9_1901=l9_1905;
}
int l9_1906=l9_1901;
int l9_1907=flowRelativeLayout_tmp;
int l9_1908=l9_1906;
float2 l9_1909=l9_1899;
bool l9_1910=(int(SC_USE_UV_TRANSFORM_flowRelative_tmp)!=0);
float3x3 l9_1911=(*sc_set0.UserUniforms).flowRelativeTransform;
int2 l9_1912=int2(SC_SOFTWARE_WRAP_MODE_U_flowRelative_tmp,SC_SOFTWARE_WRAP_MODE_V_flowRelative_tmp);
bool l9_1913=(int(SC_USE_UV_MIN_MAX_flowRelative_tmp)!=0);
float4 l9_1914=(*sc_set0.UserUniforms).flowRelativeUvMinMax;
bool l9_1915=(int(SC_USE_CLAMP_TO_BORDER_flowRelative_tmp)!=0);
float4 l9_1916=(*sc_set0.UserUniforms).flowRelativeBorderColor;
float l9_1917=0.0;
bool l9_1918=l9_1915&&(!l9_1913);
float l9_1919=1.0;
float l9_1920=l9_1909.x;
int l9_1921=l9_1912.x;
if (l9_1921==1)
{
l9_1920=fract(l9_1920);
}
else
{
if (l9_1921==2)
{
float l9_1922=fract(l9_1920);
float l9_1923=l9_1920-l9_1922;
float l9_1924=step(0.25,fract(l9_1923*0.5));
l9_1920=mix(l9_1922,1.0-l9_1922,fast::clamp(l9_1924,0.0,1.0));
}
}
l9_1909.x=l9_1920;
float l9_1925=l9_1909.y;
int l9_1926=l9_1912.y;
if (l9_1926==1)
{
l9_1925=fract(l9_1925);
}
else
{
if (l9_1926==2)
{
float l9_1927=fract(l9_1925);
float l9_1928=l9_1925-l9_1927;
float l9_1929=step(0.25,fract(l9_1928*0.5));
l9_1925=mix(l9_1927,1.0-l9_1927,fast::clamp(l9_1929,0.0,1.0));
}
}
l9_1909.y=l9_1925;
if (l9_1913)
{
bool l9_1930=l9_1915;
bool l9_1931;
if (l9_1930)
{
l9_1931=l9_1912.x==3;
}
else
{
l9_1931=l9_1930;
}
float l9_1932=l9_1909.x;
float l9_1933=l9_1914.x;
float l9_1934=l9_1914.z;
bool l9_1935=l9_1931;
float l9_1936=l9_1919;
float l9_1937=fast::clamp(l9_1932,l9_1933,l9_1934);
float l9_1938=step(abs(l9_1932-l9_1937),9.9999997e-06);
l9_1936*=(l9_1938+((1.0-float(l9_1935))*(1.0-l9_1938)));
l9_1932=l9_1937;
l9_1909.x=l9_1932;
l9_1919=l9_1936;
bool l9_1939=l9_1915;
bool l9_1940;
if (l9_1939)
{
l9_1940=l9_1912.y==3;
}
else
{
l9_1940=l9_1939;
}
float l9_1941=l9_1909.y;
float l9_1942=l9_1914.y;
float l9_1943=l9_1914.w;
bool l9_1944=l9_1940;
float l9_1945=l9_1919;
float l9_1946=fast::clamp(l9_1941,l9_1942,l9_1943);
float l9_1947=step(abs(l9_1941-l9_1946),9.9999997e-06);
l9_1945*=(l9_1947+((1.0-float(l9_1944))*(1.0-l9_1947)));
l9_1941=l9_1946;
l9_1909.y=l9_1941;
l9_1919=l9_1945;
}
float2 l9_1948=l9_1909;
bool l9_1949=l9_1910;
float3x3 l9_1950=l9_1911;
if (l9_1949)
{
l9_1948=float2((l9_1950*float3(l9_1948,1.0)).xy);
}
float2 l9_1951=l9_1948;
l9_1909=l9_1951;
float l9_1952=l9_1909.x;
int l9_1953=l9_1912.x;
bool l9_1954=l9_1918;
float l9_1955=l9_1919;
if ((l9_1953==0)||(l9_1953==3))
{
float l9_1956=l9_1952;
float l9_1957=0.0;
float l9_1958=1.0;
bool l9_1959=l9_1954;
float l9_1960=l9_1955;
float l9_1961=fast::clamp(l9_1956,l9_1957,l9_1958);
float l9_1962=step(abs(l9_1956-l9_1961),9.9999997e-06);
l9_1960*=(l9_1962+((1.0-float(l9_1959))*(1.0-l9_1962)));
l9_1956=l9_1961;
l9_1952=l9_1956;
l9_1955=l9_1960;
}
l9_1909.x=l9_1952;
l9_1919=l9_1955;
float l9_1963=l9_1909.y;
int l9_1964=l9_1912.y;
bool l9_1965=l9_1918;
float l9_1966=l9_1919;
if ((l9_1964==0)||(l9_1964==3))
{
float l9_1967=l9_1963;
float l9_1968=0.0;
float l9_1969=1.0;
bool l9_1970=l9_1965;
float l9_1971=l9_1966;
float l9_1972=fast::clamp(l9_1967,l9_1968,l9_1969);
float l9_1973=step(abs(l9_1967-l9_1972),9.9999997e-06);
l9_1971*=(l9_1973+((1.0-float(l9_1970))*(1.0-l9_1973)));
l9_1967=l9_1972;
l9_1963=l9_1967;
l9_1966=l9_1971;
}
l9_1909.y=l9_1963;
l9_1919=l9_1966;
float2 l9_1974=l9_1909;
int l9_1975=l9_1907;
int l9_1976=l9_1908;
float l9_1977=l9_1917;
float2 l9_1978=l9_1974;
int l9_1979=l9_1975;
int l9_1980=l9_1976;
float3 l9_1981=float3(0.0);
if (l9_1979==0)
{
l9_1981=float3(l9_1978,0.0);
}
else
{
if (l9_1979==1)
{
l9_1981=float3(l9_1978.x,(l9_1978.y*0.5)+(0.5-(float(l9_1980)*0.5)),0.0);
}
else
{
l9_1981=float3(l9_1978,float(l9_1980));
}
}
float3 l9_1982=l9_1981;
float3 l9_1983=l9_1982;
float4 l9_1984=sc_set0.flowRelative.sample(sc_set0.flowRelativeSmpSC,l9_1983.xy,bias(l9_1977));
float4 l9_1985=l9_1984;
if (l9_1915)
{
l9_1985=mix(l9_1916,l9_1985,float4(l9_1919));
}
float4 l9_1986=l9_1985;
l9_1900=l9_1986;
float4 l9_1987=l9_1900;
float4 l9_1988=l9_1987;
float4 l9_1989=mix(l9_1718,l9_1808,float4(l9_1626.x));
float4 l9_1990=mix(l9_1898,l9_1988,float4(l9_1626.x));
float4 l9_1991=mix(l9_1989,l9_1990,float4(l9_1626.y));
float2 l9_1992=l9_1991.xy;
float2 l9_1993=l9_120;
float2 l9_1994=float2(0.0);
l9_1994=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_1995=l9_1994;
float2 l9_1996=float2(1.0)/l9_1995;
float2 l9_1997=float2(0.0);
l9_1997=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_1998=l9_1997;
float2 l9_1999=(l9_1993*l9_1998)+float2(0.5);
float2 l9_2000=fract(l9_1999);
float2 l9_2001=float2(0.0);
l9_2001=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2002=l9_2001;
l9_1999=(floor(l9_1999)/l9_2002)-(l9_1996/float2(2.0));
float2 l9_2003=l9_1999;
float4 l9_2004=float4(0.0);
int l9_2005;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2006=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2006=0;
}
else
{
l9_2006=in.varStereoViewID;
}
int l9_2007=l9_2006;
l9_2005=1-l9_2007;
}
else
{
int l9_2008=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2008=0;
}
else
{
l9_2008=in.varStereoViewID;
}
int l9_2009=l9_2008;
l9_2005=l9_2009;
}
int l9_2010=l9_2005;
int l9_2011=flowSelectionLayout_tmp;
int l9_2012=l9_2010;
float2 l9_2013=l9_2003;
bool l9_2014=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2015=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2016=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2017=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2018=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2019=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2020=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2021=0.0;
bool l9_2022=l9_2019&&(!l9_2017);
float l9_2023=1.0;
float l9_2024=l9_2013.x;
int l9_2025=l9_2016.x;
if (l9_2025==1)
{
l9_2024=fract(l9_2024);
}
else
{
if (l9_2025==2)
{
float l9_2026=fract(l9_2024);
float l9_2027=l9_2024-l9_2026;
float l9_2028=step(0.25,fract(l9_2027*0.5));
l9_2024=mix(l9_2026,1.0-l9_2026,fast::clamp(l9_2028,0.0,1.0));
}
}
l9_2013.x=l9_2024;
float l9_2029=l9_2013.y;
int l9_2030=l9_2016.y;
if (l9_2030==1)
{
l9_2029=fract(l9_2029);
}
else
{
if (l9_2030==2)
{
float l9_2031=fract(l9_2029);
float l9_2032=l9_2029-l9_2031;
float l9_2033=step(0.25,fract(l9_2032*0.5));
l9_2029=mix(l9_2031,1.0-l9_2031,fast::clamp(l9_2033,0.0,1.0));
}
}
l9_2013.y=l9_2029;
if (l9_2017)
{
bool l9_2034=l9_2019;
bool l9_2035;
if (l9_2034)
{
l9_2035=l9_2016.x==3;
}
else
{
l9_2035=l9_2034;
}
float l9_2036=l9_2013.x;
float l9_2037=l9_2018.x;
float l9_2038=l9_2018.z;
bool l9_2039=l9_2035;
float l9_2040=l9_2023;
float l9_2041=fast::clamp(l9_2036,l9_2037,l9_2038);
float l9_2042=step(abs(l9_2036-l9_2041),9.9999997e-06);
l9_2040*=(l9_2042+((1.0-float(l9_2039))*(1.0-l9_2042)));
l9_2036=l9_2041;
l9_2013.x=l9_2036;
l9_2023=l9_2040;
bool l9_2043=l9_2019;
bool l9_2044;
if (l9_2043)
{
l9_2044=l9_2016.y==3;
}
else
{
l9_2044=l9_2043;
}
float l9_2045=l9_2013.y;
float l9_2046=l9_2018.y;
float l9_2047=l9_2018.w;
bool l9_2048=l9_2044;
float l9_2049=l9_2023;
float l9_2050=fast::clamp(l9_2045,l9_2046,l9_2047);
float l9_2051=step(abs(l9_2045-l9_2050),9.9999997e-06);
l9_2049*=(l9_2051+((1.0-float(l9_2048))*(1.0-l9_2051)));
l9_2045=l9_2050;
l9_2013.y=l9_2045;
l9_2023=l9_2049;
}
float2 l9_2052=l9_2013;
bool l9_2053=l9_2014;
float3x3 l9_2054=l9_2015;
if (l9_2053)
{
l9_2052=float2((l9_2054*float3(l9_2052,1.0)).xy);
}
float2 l9_2055=l9_2052;
l9_2013=l9_2055;
float l9_2056=l9_2013.x;
int l9_2057=l9_2016.x;
bool l9_2058=l9_2022;
float l9_2059=l9_2023;
if ((l9_2057==0)||(l9_2057==3))
{
float l9_2060=l9_2056;
float l9_2061=0.0;
float l9_2062=1.0;
bool l9_2063=l9_2058;
float l9_2064=l9_2059;
float l9_2065=fast::clamp(l9_2060,l9_2061,l9_2062);
float l9_2066=step(abs(l9_2060-l9_2065),9.9999997e-06);
l9_2064*=(l9_2066+((1.0-float(l9_2063))*(1.0-l9_2066)));
l9_2060=l9_2065;
l9_2056=l9_2060;
l9_2059=l9_2064;
}
l9_2013.x=l9_2056;
l9_2023=l9_2059;
float l9_2067=l9_2013.y;
int l9_2068=l9_2016.y;
bool l9_2069=l9_2022;
float l9_2070=l9_2023;
if ((l9_2068==0)||(l9_2068==3))
{
float l9_2071=l9_2067;
float l9_2072=0.0;
float l9_2073=1.0;
bool l9_2074=l9_2069;
float l9_2075=l9_2070;
float l9_2076=fast::clamp(l9_2071,l9_2072,l9_2073);
float l9_2077=step(abs(l9_2071-l9_2076),9.9999997e-06);
l9_2075*=(l9_2077+((1.0-float(l9_2074))*(1.0-l9_2077)));
l9_2071=l9_2076;
l9_2067=l9_2071;
l9_2070=l9_2075;
}
l9_2013.y=l9_2067;
l9_2023=l9_2070;
float2 l9_2078=l9_2013;
int l9_2079=l9_2011;
int l9_2080=l9_2012;
float l9_2081=l9_2021;
float2 l9_2082=l9_2078;
int l9_2083=l9_2079;
int l9_2084=l9_2080;
float3 l9_2085=float3(0.0);
if (l9_2083==0)
{
l9_2085=float3(l9_2082,0.0);
}
else
{
if (l9_2083==1)
{
l9_2085=float3(l9_2082.x,(l9_2082.y*0.5)+(0.5-(float(l9_2084)*0.5)),0.0);
}
else
{
l9_2085=float3(l9_2082,float(l9_2084));
}
}
float3 l9_2086=l9_2085;
float3 l9_2087=l9_2086;
float4 l9_2088=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2087.xy,bias(l9_2081));
float4 l9_2089=l9_2088;
if (l9_2019)
{
l9_2089=mix(l9_2020,l9_2089,float4(l9_2023));
}
float4 l9_2090=l9_2089;
l9_2004=l9_2090;
float4 l9_2091=l9_2004;
float4 l9_2092=l9_2091;
float2 l9_2093=l9_1999+float2(l9_1996.x,0.0);
float4 l9_2094=float4(0.0);
int l9_2095;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2096=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2096=0;
}
else
{
l9_2096=in.varStereoViewID;
}
int l9_2097=l9_2096;
l9_2095=1-l9_2097;
}
else
{
int l9_2098=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2098=0;
}
else
{
l9_2098=in.varStereoViewID;
}
int l9_2099=l9_2098;
l9_2095=l9_2099;
}
int l9_2100=l9_2095;
int l9_2101=flowSelectionLayout_tmp;
int l9_2102=l9_2100;
float2 l9_2103=l9_2093;
bool l9_2104=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2105=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2106=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2107=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2108=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2109=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2110=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2111=0.0;
bool l9_2112=l9_2109&&(!l9_2107);
float l9_2113=1.0;
float l9_2114=l9_2103.x;
int l9_2115=l9_2106.x;
if (l9_2115==1)
{
l9_2114=fract(l9_2114);
}
else
{
if (l9_2115==2)
{
float l9_2116=fract(l9_2114);
float l9_2117=l9_2114-l9_2116;
float l9_2118=step(0.25,fract(l9_2117*0.5));
l9_2114=mix(l9_2116,1.0-l9_2116,fast::clamp(l9_2118,0.0,1.0));
}
}
l9_2103.x=l9_2114;
float l9_2119=l9_2103.y;
int l9_2120=l9_2106.y;
if (l9_2120==1)
{
l9_2119=fract(l9_2119);
}
else
{
if (l9_2120==2)
{
float l9_2121=fract(l9_2119);
float l9_2122=l9_2119-l9_2121;
float l9_2123=step(0.25,fract(l9_2122*0.5));
l9_2119=mix(l9_2121,1.0-l9_2121,fast::clamp(l9_2123,0.0,1.0));
}
}
l9_2103.y=l9_2119;
if (l9_2107)
{
bool l9_2124=l9_2109;
bool l9_2125;
if (l9_2124)
{
l9_2125=l9_2106.x==3;
}
else
{
l9_2125=l9_2124;
}
float l9_2126=l9_2103.x;
float l9_2127=l9_2108.x;
float l9_2128=l9_2108.z;
bool l9_2129=l9_2125;
float l9_2130=l9_2113;
float l9_2131=fast::clamp(l9_2126,l9_2127,l9_2128);
float l9_2132=step(abs(l9_2126-l9_2131),9.9999997e-06);
l9_2130*=(l9_2132+((1.0-float(l9_2129))*(1.0-l9_2132)));
l9_2126=l9_2131;
l9_2103.x=l9_2126;
l9_2113=l9_2130;
bool l9_2133=l9_2109;
bool l9_2134;
if (l9_2133)
{
l9_2134=l9_2106.y==3;
}
else
{
l9_2134=l9_2133;
}
float l9_2135=l9_2103.y;
float l9_2136=l9_2108.y;
float l9_2137=l9_2108.w;
bool l9_2138=l9_2134;
float l9_2139=l9_2113;
float l9_2140=fast::clamp(l9_2135,l9_2136,l9_2137);
float l9_2141=step(abs(l9_2135-l9_2140),9.9999997e-06);
l9_2139*=(l9_2141+((1.0-float(l9_2138))*(1.0-l9_2141)));
l9_2135=l9_2140;
l9_2103.y=l9_2135;
l9_2113=l9_2139;
}
float2 l9_2142=l9_2103;
bool l9_2143=l9_2104;
float3x3 l9_2144=l9_2105;
if (l9_2143)
{
l9_2142=float2((l9_2144*float3(l9_2142,1.0)).xy);
}
float2 l9_2145=l9_2142;
l9_2103=l9_2145;
float l9_2146=l9_2103.x;
int l9_2147=l9_2106.x;
bool l9_2148=l9_2112;
float l9_2149=l9_2113;
if ((l9_2147==0)||(l9_2147==3))
{
float l9_2150=l9_2146;
float l9_2151=0.0;
float l9_2152=1.0;
bool l9_2153=l9_2148;
float l9_2154=l9_2149;
float l9_2155=fast::clamp(l9_2150,l9_2151,l9_2152);
float l9_2156=step(abs(l9_2150-l9_2155),9.9999997e-06);
l9_2154*=(l9_2156+((1.0-float(l9_2153))*(1.0-l9_2156)));
l9_2150=l9_2155;
l9_2146=l9_2150;
l9_2149=l9_2154;
}
l9_2103.x=l9_2146;
l9_2113=l9_2149;
float l9_2157=l9_2103.y;
int l9_2158=l9_2106.y;
bool l9_2159=l9_2112;
float l9_2160=l9_2113;
if ((l9_2158==0)||(l9_2158==3))
{
float l9_2161=l9_2157;
float l9_2162=0.0;
float l9_2163=1.0;
bool l9_2164=l9_2159;
float l9_2165=l9_2160;
float l9_2166=fast::clamp(l9_2161,l9_2162,l9_2163);
float l9_2167=step(abs(l9_2161-l9_2166),9.9999997e-06);
l9_2165*=(l9_2167+((1.0-float(l9_2164))*(1.0-l9_2167)));
l9_2161=l9_2166;
l9_2157=l9_2161;
l9_2160=l9_2165;
}
l9_2103.y=l9_2157;
l9_2113=l9_2160;
float2 l9_2168=l9_2103;
int l9_2169=l9_2101;
int l9_2170=l9_2102;
float l9_2171=l9_2111;
float2 l9_2172=l9_2168;
int l9_2173=l9_2169;
int l9_2174=l9_2170;
float3 l9_2175=float3(0.0);
if (l9_2173==0)
{
l9_2175=float3(l9_2172,0.0);
}
else
{
if (l9_2173==1)
{
l9_2175=float3(l9_2172.x,(l9_2172.y*0.5)+(0.5-(float(l9_2174)*0.5)),0.0);
}
else
{
l9_2175=float3(l9_2172,float(l9_2174));
}
}
float3 l9_2176=l9_2175;
float3 l9_2177=l9_2176;
float4 l9_2178=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2177.xy,bias(l9_2171));
float4 l9_2179=l9_2178;
if (l9_2109)
{
l9_2179=mix(l9_2110,l9_2179,float4(l9_2113));
}
float4 l9_2180=l9_2179;
l9_2094=l9_2180;
float4 l9_2181=l9_2094;
float4 l9_2182=l9_2181;
float2 l9_2183=l9_1999+float2(0.0,l9_1996.y);
float4 l9_2184=float4(0.0);
int l9_2185;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2186=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2186=0;
}
else
{
l9_2186=in.varStereoViewID;
}
int l9_2187=l9_2186;
l9_2185=1-l9_2187;
}
else
{
int l9_2188=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2188=0;
}
else
{
l9_2188=in.varStereoViewID;
}
int l9_2189=l9_2188;
l9_2185=l9_2189;
}
int l9_2190=l9_2185;
int l9_2191=flowSelectionLayout_tmp;
int l9_2192=l9_2190;
float2 l9_2193=l9_2183;
bool l9_2194=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2195=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2196=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2197=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2198=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2199=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2200=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2201=0.0;
bool l9_2202=l9_2199&&(!l9_2197);
float l9_2203=1.0;
float l9_2204=l9_2193.x;
int l9_2205=l9_2196.x;
if (l9_2205==1)
{
l9_2204=fract(l9_2204);
}
else
{
if (l9_2205==2)
{
float l9_2206=fract(l9_2204);
float l9_2207=l9_2204-l9_2206;
float l9_2208=step(0.25,fract(l9_2207*0.5));
l9_2204=mix(l9_2206,1.0-l9_2206,fast::clamp(l9_2208,0.0,1.0));
}
}
l9_2193.x=l9_2204;
float l9_2209=l9_2193.y;
int l9_2210=l9_2196.y;
if (l9_2210==1)
{
l9_2209=fract(l9_2209);
}
else
{
if (l9_2210==2)
{
float l9_2211=fract(l9_2209);
float l9_2212=l9_2209-l9_2211;
float l9_2213=step(0.25,fract(l9_2212*0.5));
l9_2209=mix(l9_2211,1.0-l9_2211,fast::clamp(l9_2213,0.0,1.0));
}
}
l9_2193.y=l9_2209;
if (l9_2197)
{
bool l9_2214=l9_2199;
bool l9_2215;
if (l9_2214)
{
l9_2215=l9_2196.x==3;
}
else
{
l9_2215=l9_2214;
}
float l9_2216=l9_2193.x;
float l9_2217=l9_2198.x;
float l9_2218=l9_2198.z;
bool l9_2219=l9_2215;
float l9_2220=l9_2203;
float l9_2221=fast::clamp(l9_2216,l9_2217,l9_2218);
float l9_2222=step(abs(l9_2216-l9_2221),9.9999997e-06);
l9_2220*=(l9_2222+((1.0-float(l9_2219))*(1.0-l9_2222)));
l9_2216=l9_2221;
l9_2193.x=l9_2216;
l9_2203=l9_2220;
bool l9_2223=l9_2199;
bool l9_2224;
if (l9_2223)
{
l9_2224=l9_2196.y==3;
}
else
{
l9_2224=l9_2223;
}
float l9_2225=l9_2193.y;
float l9_2226=l9_2198.y;
float l9_2227=l9_2198.w;
bool l9_2228=l9_2224;
float l9_2229=l9_2203;
float l9_2230=fast::clamp(l9_2225,l9_2226,l9_2227);
float l9_2231=step(abs(l9_2225-l9_2230),9.9999997e-06);
l9_2229*=(l9_2231+((1.0-float(l9_2228))*(1.0-l9_2231)));
l9_2225=l9_2230;
l9_2193.y=l9_2225;
l9_2203=l9_2229;
}
float2 l9_2232=l9_2193;
bool l9_2233=l9_2194;
float3x3 l9_2234=l9_2195;
if (l9_2233)
{
l9_2232=float2((l9_2234*float3(l9_2232,1.0)).xy);
}
float2 l9_2235=l9_2232;
l9_2193=l9_2235;
float l9_2236=l9_2193.x;
int l9_2237=l9_2196.x;
bool l9_2238=l9_2202;
float l9_2239=l9_2203;
if ((l9_2237==0)||(l9_2237==3))
{
float l9_2240=l9_2236;
float l9_2241=0.0;
float l9_2242=1.0;
bool l9_2243=l9_2238;
float l9_2244=l9_2239;
float l9_2245=fast::clamp(l9_2240,l9_2241,l9_2242);
float l9_2246=step(abs(l9_2240-l9_2245),9.9999997e-06);
l9_2244*=(l9_2246+((1.0-float(l9_2243))*(1.0-l9_2246)));
l9_2240=l9_2245;
l9_2236=l9_2240;
l9_2239=l9_2244;
}
l9_2193.x=l9_2236;
l9_2203=l9_2239;
float l9_2247=l9_2193.y;
int l9_2248=l9_2196.y;
bool l9_2249=l9_2202;
float l9_2250=l9_2203;
if ((l9_2248==0)||(l9_2248==3))
{
float l9_2251=l9_2247;
float l9_2252=0.0;
float l9_2253=1.0;
bool l9_2254=l9_2249;
float l9_2255=l9_2250;
float l9_2256=fast::clamp(l9_2251,l9_2252,l9_2253);
float l9_2257=step(abs(l9_2251-l9_2256),9.9999997e-06);
l9_2255*=(l9_2257+((1.0-float(l9_2254))*(1.0-l9_2257)));
l9_2251=l9_2256;
l9_2247=l9_2251;
l9_2250=l9_2255;
}
l9_2193.y=l9_2247;
l9_2203=l9_2250;
float2 l9_2258=l9_2193;
int l9_2259=l9_2191;
int l9_2260=l9_2192;
float l9_2261=l9_2201;
float2 l9_2262=l9_2258;
int l9_2263=l9_2259;
int l9_2264=l9_2260;
float3 l9_2265=float3(0.0);
if (l9_2263==0)
{
l9_2265=float3(l9_2262,0.0);
}
else
{
if (l9_2263==1)
{
l9_2265=float3(l9_2262.x,(l9_2262.y*0.5)+(0.5-(float(l9_2264)*0.5)),0.0);
}
else
{
l9_2265=float3(l9_2262,float(l9_2264));
}
}
float3 l9_2266=l9_2265;
float3 l9_2267=l9_2266;
float4 l9_2268=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2267.xy,bias(l9_2261));
float4 l9_2269=l9_2268;
if (l9_2199)
{
l9_2269=mix(l9_2200,l9_2269,float4(l9_2203));
}
float4 l9_2270=l9_2269;
l9_2184=l9_2270;
float4 l9_2271=l9_2184;
float4 l9_2272=l9_2271;
float2 l9_2273=l9_1999+float2(l9_1996.x,l9_1996.y);
float4 l9_2274=float4(0.0);
int l9_2275;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2276=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2276=0;
}
else
{
l9_2276=in.varStereoViewID;
}
int l9_2277=l9_2276;
l9_2275=1-l9_2277;
}
else
{
int l9_2278=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2278=0;
}
else
{
l9_2278=in.varStereoViewID;
}
int l9_2279=l9_2278;
l9_2275=l9_2279;
}
int l9_2280=l9_2275;
int l9_2281=flowSelectionLayout_tmp;
int l9_2282=l9_2280;
float2 l9_2283=l9_2273;
bool l9_2284=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2285=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2286=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2287=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2288=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2289=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2290=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2291=0.0;
bool l9_2292=l9_2289&&(!l9_2287);
float l9_2293=1.0;
float l9_2294=l9_2283.x;
int l9_2295=l9_2286.x;
if (l9_2295==1)
{
l9_2294=fract(l9_2294);
}
else
{
if (l9_2295==2)
{
float l9_2296=fract(l9_2294);
float l9_2297=l9_2294-l9_2296;
float l9_2298=step(0.25,fract(l9_2297*0.5));
l9_2294=mix(l9_2296,1.0-l9_2296,fast::clamp(l9_2298,0.0,1.0));
}
}
l9_2283.x=l9_2294;
float l9_2299=l9_2283.y;
int l9_2300=l9_2286.y;
if (l9_2300==1)
{
l9_2299=fract(l9_2299);
}
else
{
if (l9_2300==2)
{
float l9_2301=fract(l9_2299);
float l9_2302=l9_2299-l9_2301;
float l9_2303=step(0.25,fract(l9_2302*0.5));
l9_2299=mix(l9_2301,1.0-l9_2301,fast::clamp(l9_2303,0.0,1.0));
}
}
l9_2283.y=l9_2299;
if (l9_2287)
{
bool l9_2304=l9_2289;
bool l9_2305;
if (l9_2304)
{
l9_2305=l9_2286.x==3;
}
else
{
l9_2305=l9_2304;
}
float l9_2306=l9_2283.x;
float l9_2307=l9_2288.x;
float l9_2308=l9_2288.z;
bool l9_2309=l9_2305;
float l9_2310=l9_2293;
float l9_2311=fast::clamp(l9_2306,l9_2307,l9_2308);
float l9_2312=step(abs(l9_2306-l9_2311),9.9999997e-06);
l9_2310*=(l9_2312+((1.0-float(l9_2309))*(1.0-l9_2312)));
l9_2306=l9_2311;
l9_2283.x=l9_2306;
l9_2293=l9_2310;
bool l9_2313=l9_2289;
bool l9_2314;
if (l9_2313)
{
l9_2314=l9_2286.y==3;
}
else
{
l9_2314=l9_2313;
}
float l9_2315=l9_2283.y;
float l9_2316=l9_2288.y;
float l9_2317=l9_2288.w;
bool l9_2318=l9_2314;
float l9_2319=l9_2293;
float l9_2320=fast::clamp(l9_2315,l9_2316,l9_2317);
float l9_2321=step(abs(l9_2315-l9_2320),9.9999997e-06);
l9_2319*=(l9_2321+((1.0-float(l9_2318))*(1.0-l9_2321)));
l9_2315=l9_2320;
l9_2283.y=l9_2315;
l9_2293=l9_2319;
}
float2 l9_2322=l9_2283;
bool l9_2323=l9_2284;
float3x3 l9_2324=l9_2285;
if (l9_2323)
{
l9_2322=float2((l9_2324*float3(l9_2322,1.0)).xy);
}
float2 l9_2325=l9_2322;
l9_2283=l9_2325;
float l9_2326=l9_2283.x;
int l9_2327=l9_2286.x;
bool l9_2328=l9_2292;
float l9_2329=l9_2293;
if ((l9_2327==0)||(l9_2327==3))
{
float l9_2330=l9_2326;
float l9_2331=0.0;
float l9_2332=1.0;
bool l9_2333=l9_2328;
float l9_2334=l9_2329;
float l9_2335=fast::clamp(l9_2330,l9_2331,l9_2332);
float l9_2336=step(abs(l9_2330-l9_2335),9.9999997e-06);
l9_2334*=(l9_2336+((1.0-float(l9_2333))*(1.0-l9_2336)));
l9_2330=l9_2335;
l9_2326=l9_2330;
l9_2329=l9_2334;
}
l9_2283.x=l9_2326;
l9_2293=l9_2329;
float l9_2337=l9_2283.y;
int l9_2338=l9_2286.y;
bool l9_2339=l9_2292;
float l9_2340=l9_2293;
if ((l9_2338==0)||(l9_2338==3))
{
float l9_2341=l9_2337;
float l9_2342=0.0;
float l9_2343=1.0;
bool l9_2344=l9_2339;
float l9_2345=l9_2340;
float l9_2346=fast::clamp(l9_2341,l9_2342,l9_2343);
float l9_2347=step(abs(l9_2341-l9_2346),9.9999997e-06);
l9_2345*=(l9_2347+((1.0-float(l9_2344))*(1.0-l9_2347)));
l9_2341=l9_2346;
l9_2337=l9_2341;
l9_2340=l9_2345;
}
l9_2283.y=l9_2337;
l9_2293=l9_2340;
float2 l9_2348=l9_2283;
int l9_2349=l9_2281;
int l9_2350=l9_2282;
float l9_2351=l9_2291;
float2 l9_2352=l9_2348;
int l9_2353=l9_2349;
int l9_2354=l9_2350;
float3 l9_2355=float3(0.0);
if (l9_2353==0)
{
l9_2355=float3(l9_2352,0.0);
}
else
{
if (l9_2353==1)
{
l9_2355=float3(l9_2352.x,(l9_2352.y*0.5)+(0.5-(float(l9_2354)*0.5)),0.0);
}
else
{
l9_2355=float3(l9_2352,float(l9_2354));
}
}
float3 l9_2356=l9_2355;
float3 l9_2357=l9_2356;
float4 l9_2358=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2357.xy,bias(l9_2351));
float4 l9_2359=l9_2358;
if (l9_2289)
{
l9_2359=mix(l9_2290,l9_2359,float4(l9_2293));
}
float4 l9_2360=l9_2359;
l9_2274=l9_2360;
float4 l9_2361=l9_2274;
float4 l9_2362=l9_2361;
float4 l9_2363=mix(l9_2092,l9_2182,float4(l9_2000.x));
float4 l9_2364=mix(l9_2272,l9_2362,float4(l9_2000.x));
float4 l9_2365=mix(l9_2363,l9_2364,float4(l9_2000.y));
float4 l9_2366=l9_2365;
float2 l9_2367=l9_121;
float2 l9_2368=float2(0.0);
l9_2368=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2369=l9_2368;
float2 l9_2370=float2(1.0)/l9_2369;
float2 l9_2371=float2(0.0);
l9_2371=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2372=l9_2371;
float2 l9_2373=(l9_2367*l9_2372)+float2(0.5);
float2 l9_2374=fract(l9_2373);
float2 l9_2375=float2(0.0);
l9_2375=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2376=l9_2375;
l9_2373=(floor(l9_2373)/l9_2376)-(l9_2370/float2(2.0));
float2 l9_2377=l9_2373;
float4 l9_2378=float4(0.0);
int l9_2379;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2380=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2380=0;
}
else
{
l9_2380=in.varStereoViewID;
}
int l9_2381=l9_2380;
l9_2379=1-l9_2381;
}
else
{
int l9_2382=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2382=0;
}
else
{
l9_2382=in.varStereoViewID;
}
int l9_2383=l9_2382;
l9_2379=l9_2383;
}
int l9_2384=l9_2379;
int l9_2385=flowSelectionLayout_tmp;
int l9_2386=l9_2384;
float2 l9_2387=l9_2377;
bool l9_2388=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2389=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2390=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2391=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2392=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2393=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2394=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2395=0.0;
bool l9_2396=l9_2393&&(!l9_2391);
float l9_2397=1.0;
float l9_2398=l9_2387.x;
int l9_2399=l9_2390.x;
if (l9_2399==1)
{
l9_2398=fract(l9_2398);
}
else
{
if (l9_2399==2)
{
float l9_2400=fract(l9_2398);
float l9_2401=l9_2398-l9_2400;
float l9_2402=step(0.25,fract(l9_2401*0.5));
l9_2398=mix(l9_2400,1.0-l9_2400,fast::clamp(l9_2402,0.0,1.0));
}
}
l9_2387.x=l9_2398;
float l9_2403=l9_2387.y;
int l9_2404=l9_2390.y;
if (l9_2404==1)
{
l9_2403=fract(l9_2403);
}
else
{
if (l9_2404==2)
{
float l9_2405=fract(l9_2403);
float l9_2406=l9_2403-l9_2405;
float l9_2407=step(0.25,fract(l9_2406*0.5));
l9_2403=mix(l9_2405,1.0-l9_2405,fast::clamp(l9_2407,0.0,1.0));
}
}
l9_2387.y=l9_2403;
if (l9_2391)
{
bool l9_2408=l9_2393;
bool l9_2409;
if (l9_2408)
{
l9_2409=l9_2390.x==3;
}
else
{
l9_2409=l9_2408;
}
float l9_2410=l9_2387.x;
float l9_2411=l9_2392.x;
float l9_2412=l9_2392.z;
bool l9_2413=l9_2409;
float l9_2414=l9_2397;
float l9_2415=fast::clamp(l9_2410,l9_2411,l9_2412);
float l9_2416=step(abs(l9_2410-l9_2415),9.9999997e-06);
l9_2414*=(l9_2416+((1.0-float(l9_2413))*(1.0-l9_2416)));
l9_2410=l9_2415;
l9_2387.x=l9_2410;
l9_2397=l9_2414;
bool l9_2417=l9_2393;
bool l9_2418;
if (l9_2417)
{
l9_2418=l9_2390.y==3;
}
else
{
l9_2418=l9_2417;
}
float l9_2419=l9_2387.y;
float l9_2420=l9_2392.y;
float l9_2421=l9_2392.w;
bool l9_2422=l9_2418;
float l9_2423=l9_2397;
float l9_2424=fast::clamp(l9_2419,l9_2420,l9_2421);
float l9_2425=step(abs(l9_2419-l9_2424),9.9999997e-06);
l9_2423*=(l9_2425+((1.0-float(l9_2422))*(1.0-l9_2425)));
l9_2419=l9_2424;
l9_2387.y=l9_2419;
l9_2397=l9_2423;
}
float2 l9_2426=l9_2387;
bool l9_2427=l9_2388;
float3x3 l9_2428=l9_2389;
if (l9_2427)
{
l9_2426=float2((l9_2428*float3(l9_2426,1.0)).xy);
}
float2 l9_2429=l9_2426;
l9_2387=l9_2429;
float l9_2430=l9_2387.x;
int l9_2431=l9_2390.x;
bool l9_2432=l9_2396;
float l9_2433=l9_2397;
if ((l9_2431==0)||(l9_2431==3))
{
float l9_2434=l9_2430;
float l9_2435=0.0;
float l9_2436=1.0;
bool l9_2437=l9_2432;
float l9_2438=l9_2433;
float l9_2439=fast::clamp(l9_2434,l9_2435,l9_2436);
float l9_2440=step(abs(l9_2434-l9_2439),9.9999997e-06);
l9_2438*=(l9_2440+((1.0-float(l9_2437))*(1.0-l9_2440)));
l9_2434=l9_2439;
l9_2430=l9_2434;
l9_2433=l9_2438;
}
l9_2387.x=l9_2430;
l9_2397=l9_2433;
float l9_2441=l9_2387.y;
int l9_2442=l9_2390.y;
bool l9_2443=l9_2396;
float l9_2444=l9_2397;
if ((l9_2442==0)||(l9_2442==3))
{
float l9_2445=l9_2441;
float l9_2446=0.0;
float l9_2447=1.0;
bool l9_2448=l9_2443;
float l9_2449=l9_2444;
float l9_2450=fast::clamp(l9_2445,l9_2446,l9_2447);
float l9_2451=step(abs(l9_2445-l9_2450),9.9999997e-06);
l9_2449*=(l9_2451+((1.0-float(l9_2448))*(1.0-l9_2451)));
l9_2445=l9_2450;
l9_2441=l9_2445;
l9_2444=l9_2449;
}
l9_2387.y=l9_2441;
l9_2397=l9_2444;
float2 l9_2452=l9_2387;
int l9_2453=l9_2385;
int l9_2454=l9_2386;
float l9_2455=l9_2395;
float2 l9_2456=l9_2452;
int l9_2457=l9_2453;
int l9_2458=l9_2454;
float3 l9_2459=float3(0.0);
if (l9_2457==0)
{
l9_2459=float3(l9_2456,0.0);
}
else
{
if (l9_2457==1)
{
l9_2459=float3(l9_2456.x,(l9_2456.y*0.5)+(0.5-(float(l9_2458)*0.5)),0.0);
}
else
{
l9_2459=float3(l9_2456,float(l9_2458));
}
}
float3 l9_2460=l9_2459;
float3 l9_2461=l9_2460;
float4 l9_2462=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2461.xy,bias(l9_2455));
float4 l9_2463=l9_2462;
if (l9_2393)
{
l9_2463=mix(l9_2394,l9_2463,float4(l9_2397));
}
float4 l9_2464=l9_2463;
l9_2378=l9_2464;
float4 l9_2465=l9_2378;
float4 l9_2466=l9_2465;
float2 l9_2467=l9_2373+float2(l9_2370.x,0.0);
float4 l9_2468=float4(0.0);
int l9_2469;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2470=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2470=0;
}
else
{
l9_2470=in.varStereoViewID;
}
int l9_2471=l9_2470;
l9_2469=1-l9_2471;
}
else
{
int l9_2472=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2472=0;
}
else
{
l9_2472=in.varStereoViewID;
}
int l9_2473=l9_2472;
l9_2469=l9_2473;
}
int l9_2474=l9_2469;
int l9_2475=flowSelectionLayout_tmp;
int l9_2476=l9_2474;
float2 l9_2477=l9_2467;
bool l9_2478=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2479=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2480=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2481=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2482=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2483=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2484=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2485=0.0;
bool l9_2486=l9_2483&&(!l9_2481);
float l9_2487=1.0;
float l9_2488=l9_2477.x;
int l9_2489=l9_2480.x;
if (l9_2489==1)
{
l9_2488=fract(l9_2488);
}
else
{
if (l9_2489==2)
{
float l9_2490=fract(l9_2488);
float l9_2491=l9_2488-l9_2490;
float l9_2492=step(0.25,fract(l9_2491*0.5));
l9_2488=mix(l9_2490,1.0-l9_2490,fast::clamp(l9_2492,0.0,1.0));
}
}
l9_2477.x=l9_2488;
float l9_2493=l9_2477.y;
int l9_2494=l9_2480.y;
if (l9_2494==1)
{
l9_2493=fract(l9_2493);
}
else
{
if (l9_2494==2)
{
float l9_2495=fract(l9_2493);
float l9_2496=l9_2493-l9_2495;
float l9_2497=step(0.25,fract(l9_2496*0.5));
l9_2493=mix(l9_2495,1.0-l9_2495,fast::clamp(l9_2497,0.0,1.0));
}
}
l9_2477.y=l9_2493;
if (l9_2481)
{
bool l9_2498=l9_2483;
bool l9_2499;
if (l9_2498)
{
l9_2499=l9_2480.x==3;
}
else
{
l9_2499=l9_2498;
}
float l9_2500=l9_2477.x;
float l9_2501=l9_2482.x;
float l9_2502=l9_2482.z;
bool l9_2503=l9_2499;
float l9_2504=l9_2487;
float l9_2505=fast::clamp(l9_2500,l9_2501,l9_2502);
float l9_2506=step(abs(l9_2500-l9_2505),9.9999997e-06);
l9_2504*=(l9_2506+((1.0-float(l9_2503))*(1.0-l9_2506)));
l9_2500=l9_2505;
l9_2477.x=l9_2500;
l9_2487=l9_2504;
bool l9_2507=l9_2483;
bool l9_2508;
if (l9_2507)
{
l9_2508=l9_2480.y==3;
}
else
{
l9_2508=l9_2507;
}
float l9_2509=l9_2477.y;
float l9_2510=l9_2482.y;
float l9_2511=l9_2482.w;
bool l9_2512=l9_2508;
float l9_2513=l9_2487;
float l9_2514=fast::clamp(l9_2509,l9_2510,l9_2511);
float l9_2515=step(abs(l9_2509-l9_2514),9.9999997e-06);
l9_2513*=(l9_2515+((1.0-float(l9_2512))*(1.0-l9_2515)));
l9_2509=l9_2514;
l9_2477.y=l9_2509;
l9_2487=l9_2513;
}
float2 l9_2516=l9_2477;
bool l9_2517=l9_2478;
float3x3 l9_2518=l9_2479;
if (l9_2517)
{
l9_2516=float2((l9_2518*float3(l9_2516,1.0)).xy);
}
float2 l9_2519=l9_2516;
l9_2477=l9_2519;
float l9_2520=l9_2477.x;
int l9_2521=l9_2480.x;
bool l9_2522=l9_2486;
float l9_2523=l9_2487;
if ((l9_2521==0)||(l9_2521==3))
{
float l9_2524=l9_2520;
float l9_2525=0.0;
float l9_2526=1.0;
bool l9_2527=l9_2522;
float l9_2528=l9_2523;
float l9_2529=fast::clamp(l9_2524,l9_2525,l9_2526);
float l9_2530=step(abs(l9_2524-l9_2529),9.9999997e-06);
l9_2528*=(l9_2530+((1.0-float(l9_2527))*(1.0-l9_2530)));
l9_2524=l9_2529;
l9_2520=l9_2524;
l9_2523=l9_2528;
}
l9_2477.x=l9_2520;
l9_2487=l9_2523;
float l9_2531=l9_2477.y;
int l9_2532=l9_2480.y;
bool l9_2533=l9_2486;
float l9_2534=l9_2487;
if ((l9_2532==0)||(l9_2532==3))
{
float l9_2535=l9_2531;
float l9_2536=0.0;
float l9_2537=1.0;
bool l9_2538=l9_2533;
float l9_2539=l9_2534;
float l9_2540=fast::clamp(l9_2535,l9_2536,l9_2537);
float l9_2541=step(abs(l9_2535-l9_2540),9.9999997e-06);
l9_2539*=(l9_2541+((1.0-float(l9_2538))*(1.0-l9_2541)));
l9_2535=l9_2540;
l9_2531=l9_2535;
l9_2534=l9_2539;
}
l9_2477.y=l9_2531;
l9_2487=l9_2534;
float2 l9_2542=l9_2477;
int l9_2543=l9_2475;
int l9_2544=l9_2476;
float l9_2545=l9_2485;
float2 l9_2546=l9_2542;
int l9_2547=l9_2543;
int l9_2548=l9_2544;
float3 l9_2549=float3(0.0);
if (l9_2547==0)
{
l9_2549=float3(l9_2546,0.0);
}
else
{
if (l9_2547==1)
{
l9_2549=float3(l9_2546.x,(l9_2546.y*0.5)+(0.5-(float(l9_2548)*0.5)),0.0);
}
else
{
l9_2549=float3(l9_2546,float(l9_2548));
}
}
float3 l9_2550=l9_2549;
float3 l9_2551=l9_2550;
float4 l9_2552=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2551.xy,bias(l9_2545));
float4 l9_2553=l9_2552;
if (l9_2483)
{
l9_2553=mix(l9_2484,l9_2553,float4(l9_2487));
}
float4 l9_2554=l9_2553;
l9_2468=l9_2554;
float4 l9_2555=l9_2468;
float4 l9_2556=l9_2555;
float2 l9_2557=l9_2373+float2(0.0,l9_2370.y);
float4 l9_2558=float4(0.0);
int l9_2559;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2560=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2560=0;
}
else
{
l9_2560=in.varStereoViewID;
}
int l9_2561=l9_2560;
l9_2559=1-l9_2561;
}
else
{
int l9_2562=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2562=0;
}
else
{
l9_2562=in.varStereoViewID;
}
int l9_2563=l9_2562;
l9_2559=l9_2563;
}
int l9_2564=l9_2559;
int l9_2565=flowSelectionLayout_tmp;
int l9_2566=l9_2564;
float2 l9_2567=l9_2557;
bool l9_2568=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2569=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2570=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2571=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2572=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2573=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2574=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2575=0.0;
bool l9_2576=l9_2573&&(!l9_2571);
float l9_2577=1.0;
float l9_2578=l9_2567.x;
int l9_2579=l9_2570.x;
if (l9_2579==1)
{
l9_2578=fract(l9_2578);
}
else
{
if (l9_2579==2)
{
float l9_2580=fract(l9_2578);
float l9_2581=l9_2578-l9_2580;
float l9_2582=step(0.25,fract(l9_2581*0.5));
l9_2578=mix(l9_2580,1.0-l9_2580,fast::clamp(l9_2582,0.0,1.0));
}
}
l9_2567.x=l9_2578;
float l9_2583=l9_2567.y;
int l9_2584=l9_2570.y;
if (l9_2584==1)
{
l9_2583=fract(l9_2583);
}
else
{
if (l9_2584==2)
{
float l9_2585=fract(l9_2583);
float l9_2586=l9_2583-l9_2585;
float l9_2587=step(0.25,fract(l9_2586*0.5));
l9_2583=mix(l9_2585,1.0-l9_2585,fast::clamp(l9_2587,0.0,1.0));
}
}
l9_2567.y=l9_2583;
if (l9_2571)
{
bool l9_2588=l9_2573;
bool l9_2589;
if (l9_2588)
{
l9_2589=l9_2570.x==3;
}
else
{
l9_2589=l9_2588;
}
float l9_2590=l9_2567.x;
float l9_2591=l9_2572.x;
float l9_2592=l9_2572.z;
bool l9_2593=l9_2589;
float l9_2594=l9_2577;
float l9_2595=fast::clamp(l9_2590,l9_2591,l9_2592);
float l9_2596=step(abs(l9_2590-l9_2595),9.9999997e-06);
l9_2594*=(l9_2596+((1.0-float(l9_2593))*(1.0-l9_2596)));
l9_2590=l9_2595;
l9_2567.x=l9_2590;
l9_2577=l9_2594;
bool l9_2597=l9_2573;
bool l9_2598;
if (l9_2597)
{
l9_2598=l9_2570.y==3;
}
else
{
l9_2598=l9_2597;
}
float l9_2599=l9_2567.y;
float l9_2600=l9_2572.y;
float l9_2601=l9_2572.w;
bool l9_2602=l9_2598;
float l9_2603=l9_2577;
float l9_2604=fast::clamp(l9_2599,l9_2600,l9_2601);
float l9_2605=step(abs(l9_2599-l9_2604),9.9999997e-06);
l9_2603*=(l9_2605+((1.0-float(l9_2602))*(1.0-l9_2605)));
l9_2599=l9_2604;
l9_2567.y=l9_2599;
l9_2577=l9_2603;
}
float2 l9_2606=l9_2567;
bool l9_2607=l9_2568;
float3x3 l9_2608=l9_2569;
if (l9_2607)
{
l9_2606=float2((l9_2608*float3(l9_2606,1.0)).xy);
}
float2 l9_2609=l9_2606;
l9_2567=l9_2609;
float l9_2610=l9_2567.x;
int l9_2611=l9_2570.x;
bool l9_2612=l9_2576;
float l9_2613=l9_2577;
if ((l9_2611==0)||(l9_2611==3))
{
float l9_2614=l9_2610;
float l9_2615=0.0;
float l9_2616=1.0;
bool l9_2617=l9_2612;
float l9_2618=l9_2613;
float l9_2619=fast::clamp(l9_2614,l9_2615,l9_2616);
float l9_2620=step(abs(l9_2614-l9_2619),9.9999997e-06);
l9_2618*=(l9_2620+((1.0-float(l9_2617))*(1.0-l9_2620)));
l9_2614=l9_2619;
l9_2610=l9_2614;
l9_2613=l9_2618;
}
l9_2567.x=l9_2610;
l9_2577=l9_2613;
float l9_2621=l9_2567.y;
int l9_2622=l9_2570.y;
bool l9_2623=l9_2576;
float l9_2624=l9_2577;
if ((l9_2622==0)||(l9_2622==3))
{
float l9_2625=l9_2621;
float l9_2626=0.0;
float l9_2627=1.0;
bool l9_2628=l9_2623;
float l9_2629=l9_2624;
float l9_2630=fast::clamp(l9_2625,l9_2626,l9_2627);
float l9_2631=step(abs(l9_2625-l9_2630),9.9999997e-06);
l9_2629*=(l9_2631+((1.0-float(l9_2628))*(1.0-l9_2631)));
l9_2625=l9_2630;
l9_2621=l9_2625;
l9_2624=l9_2629;
}
l9_2567.y=l9_2621;
l9_2577=l9_2624;
float2 l9_2632=l9_2567;
int l9_2633=l9_2565;
int l9_2634=l9_2566;
float l9_2635=l9_2575;
float2 l9_2636=l9_2632;
int l9_2637=l9_2633;
int l9_2638=l9_2634;
float3 l9_2639=float3(0.0);
if (l9_2637==0)
{
l9_2639=float3(l9_2636,0.0);
}
else
{
if (l9_2637==1)
{
l9_2639=float3(l9_2636.x,(l9_2636.y*0.5)+(0.5-(float(l9_2638)*0.5)),0.0);
}
else
{
l9_2639=float3(l9_2636,float(l9_2638));
}
}
float3 l9_2640=l9_2639;
float3 l9_2641=l9_2640;
float4 l9_2642=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2641.xy,bias(l9_2635));
float4 l9_2643=l9_2642;
if (l9_2573)
{
l9_2643=mix(l9_2574,l9_2643,float4(l9_2577));
}
float4 l9_2644=l9_2643;
l9_2558=l9_2644;
float4 l9_2645=l9_2558;
float4 l9_2646=l9_2645;
float2 l9_2647=l9_2373+float2(l9_2370.x,l9_2370.y);
float4 l9_2648=float4(0.0);
int l9_2649;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2650=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2650=0;
}
else
{
l9_2650=in.varStereoViewID;
}
int l9_2651=l9_2650;
l9_2649=1-l9_2651;
}
else
{
int l9_2652=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2652=0;
}
else
{
l9_2652=in.varStereoViewID;
}
int l9_2653=l9_2652;
l9_2649=l9_2653;
}
int l9_2654=l9_2649;
int l9_2655=flowSelectionLayout_tmp;
int l9_2656=l9_2654;
float2 l9_2657=l9_2647;
bool l9_2658=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2659=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2660=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2661=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2662=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2663=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2664=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2665=0.0;
bool l9_2666=l9_2663&&(!l9_2661);
float l9_2667=1.0;
float l9_2668=l9_2657.x;
int l9_2669=l9_2660.x;
if (l9_2669==1)
{
l9_2668=fract(l9_2668);
}
else
{
if (l9_2669==2)
{
float l9_2670=fract(l9_2668);
float l9_2671=l9_2668-l9_2670;
float l9_2672=step(0.25,fract(l9_2671*0.5));
l9_2668=mix(l9_2670,1.0-l9_2670,fast::clamp(l9_2672,0.0,1.0));
}
}
l9_2657.x=l9_2668;
float l9_2673=l9_2657.y;
int l9_2674=l9_2660.y;
if (l9_2674==1)
{
l9_2673=fract(l9_2673);
}
else
{
if (l9_2674==2)
{
float l9_2675=fract(l9_2673);
float l9_2676=l9_2673-l9_2675;
float l9_2677=step(0.25,fract(l9_2676*0.5));
l9_2673=mix(l9_2675,1.0-l9_2675,fast::clamp(l9_2677,0.0,1.0));
}
}
l9_2657.y=l9_2673;
if (l9_2661)
{
bool l9_2678=l9_2663;
bool l9_2679;
if (l9_2678)
{
l9_2679=l9_2660.x==3;
}
else
{
l9_2679=l9_2678;
}
float l9_2680=l9_2657.x;
float l9_2681=l9_2662.x;
float l9_2682=l9_2662.z;
bool l9_2683=l9_2679;
float l9_2684=l9_2667;
float l9_2685=fast::clamp(l9_2680,l9_2681,l9_2682);
float l9_2686=step(abs(l9_2680-l9_2685),9.9999997e-06);
l9_2684*=(l9_2686+((1.0-float(l9_2683))*(1.0-l9_2686)));
l9_2680=l9_2685;
l9_2657.x=l9_2680;
l9_2667=l9_2684;
bool l9_2687=l9_2663;
bool l9_2688;
if (l9_2687)
{
l9_2688=l9_2660.y==3;
}
else
{
l9_2688=l9_2687;
}
float l9_2689=l9_2657.y;
float l9_2690=l9_2662.y;
float l9_2691=l9_2662.w;
bool l9_2692=l9_2688;
float l9_2693=l9_2667;
float l9_2694=fast::clamp(l9_2689,l9_2690,l9_2691);
float l9_2695=step(abs(l9_2689-l9_2694),9.9999997e-06);
l9_2693*=(l9_2695+((1.0-float(l9_2692))*(1.0-l9_2695)));
l9_2689=l9_2694;
l9_2657.y=l9_2689;
l9_2667=l9_2693;
}
float2 l9_2696=l9_2657;
bool l9_2697=l9_2658;
float3x3 l9_2698=l9_2659;
if (l9_2697)
{
l9_2696=float2((l9_2698*float3(l9_2696,1.0)).xy);
}
float2 l9_2699=l9_2696;
l9_2657=l9_2699;
float l9_2700=l9_2657.x;
int l9_2701=l9_2660.x;
bool l9_2702=l9_2666;
float l9_2703=l9_2667;
if ((l9_2701==0)||(l9_2701==3))
{
float l9_2704=l9_2700;
float l9_2705=0.0;
float l9_2706=1.0;
bool l9_2707=l9_2702;
float l9_2708=l9_2703;
float l9_2709=fast::clamp(l9_2704,l9_2705,l9_2706);
float l9_2710=step(abs(l9_2704-l9_2709),9.9999997e-06);
l9_2708*=(l9_2710+((1.0-float(l9_2707))*(1.0-l9_2710)));
l9_2704=l9_2709;
l9_2700=l9_2704;
l9_2703=l9_2708;
}
l9_2657.x=l9_2700;
l9_2667=l9_2703;
float l9_2711=l9_2657.y;
int l9_2712=l9_2660.y;
bool l9_2713=l9_2666;
float l9_2714=l9_2667;
if ((l9_2712==0)||(l9_2712==3))
{
float l9_2715=l9_2711;
float l9_2716=0.0;
float l9_2717=1.0;
bool l9_2718=l9_2713;
float l9_2719=l9_2714;
float l9_2720=fast::clamp(l9_2715,l9_2716,l9_2717);
float l9_2721=step(abs(l9_2715-l9_2720),9.9999997e-06);
l9_2719*=(l9_2721+((1.0-float(l9_2718))*(1.0-l9_2721)));
l9_2715=l9_2720;
l9_2711=l9_2715;
l9_2714=l9_2719;
}
l9_2657.y=l9_2711;
l9_2667=l9_2714;
float2 l9_2722=l9_2657;
int l9_2723=l9_2655;
int l9_2724=l9_2656;
float l9_2725=l9_2665;
float2 l9_2726=l9_2722;
int l9_2727=l9_2723;
int l9_2728=l9_2724;
float3 l9_2729=float3(0.0);
if (l9_2727==0)
{
l9_2729=float3(l9_2726,0.0);
}
else
{
if (l9_2727==1)
{
l9_2729=float3(l9_2726.x,(l9_2726.y*0.5)+(0.5-(float(l9_2728)*0.5)),0.0);
}
else
{
l9_2729=float3(l9_2726,float(l9_2728));
}
}
float3 l9_2730=l9_2729;
float3 l9_2731=l9_2730;
float4 l9_2732=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2731.xy,bias(l9_2725));
float4 l9_2733=l9_2732;
if (l9_2663)
{
l9_2733=mix(l9_2664,l9_2733,float4(l9_2667));
}
float4 l9_2734=l9_2733;
l9_2648=l9_2734;
float4 l9_2735=l9_2648;
float4 l9_2736=l9_2735;
float4 l9_2737=mix(l9_2466,l9_2556,float4(l9_2374.x));
float4 l9_2738=mix(l9_2646,l9_2736,float4(l9_2374.x));
float4 l9_2739=mix(l9_2737,l9_2738,float4(l9_2374.y));
float4 l9_2740=l9_2739;
float2 l9_2741=l9_122;
float2 l9_2742=float2(0.0);
l9_2742=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2743=l9_2742;
float2 l9_2744=float2(1.0)/l9_2743;
float2 l9_2745=float2(0.0);
l9_2745=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2746=l9_2745;
float2 l9_2747=(l9_2741*l9_2746)+float2(0.5);
float2 l9_2748=fract(l9_2747);
float2 l9_2749=float2(0.0);
l9_2749=(*sc_set0.UserUniforms).flowSelectionSize.xy;
float2 l9_2750=l9_2749;
l9_2747=(floor(l9_2747)/l9_2750)-(l9_2744/float2(2.0));
float2 l9_2751=l9_2747;
float4 l9_2752=float4(0.0);
int l9_2753;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2754=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2754=0;
}
else
{
l9_2754=in.varStereoViewID;
}
int l9_2755=l9_2754;
l9_2753=1-l9_2755;
}
else
{
int l9_2756=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2756=0;
}
else
{
l9_2756=in.varStereoViewID;
}
int l9_2757=l9_2756;
l9_2753=l9_2757;
}
int l9_2758=l9_2753;
int l9_2759=flowSelectionLayout_tmp;
int l9_2760=l9_2758;
float2 l9_2761=l9_2751;
bool l9_2762=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2763=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2764=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2765=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2766=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2767=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2768=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2769=0.0;
bool l9_2770=l9_2767&&(!l9_2765);
float l9_2771=1.0;
float l9_2772=l9_2761.x;
int l9_2773=l9_2764.x;
if (l9_2773==1)
{
l9_2772=fract(l9_2772);
}
else
{
if (l9_2773==2)
{
float l9_2774=fract(l9_2772);
float l9_2775=l9_2772-l9_2774;
float l9_2776=step(0.25,fract(l9_2775*0.5));
l9_2772=mix(l9_2774,1.0-l9_2774,fast::clamp(l9_2776,0.0,1.0));
}
}
l9_2761.x=l9_2772;
float l9_2777=l9_2761.y;
int l9_2778=l9_2764.y;
if (l9_2778==1)
{
l9_2777=fract(l9_2777);
}
else
{
if (l9_2778==2)
{
float l9_2779=fract(l9_2777);
float l9_2780=l9_2777-l9_2779;
float l9_2781=step(0.25,fract(l9_2780*0.5));
l9_2777=mix(l9_2779,1.0-l9_2779,fast::clamp(l9_2781,0.0,1.0));
}
}
l9_2761.y=l9_2777;
if (l9_2765)
{
bool l9_2782=l9_2767;
bool l9_2783;
if (l9_2782)
{
l9_2783=l9_2764.x==3;
}
else
{
l9_2783=l9_2782;
}
float l9_2784=l9_2761.x;
float l9_2785=l9_2766.x;
float l9_2786=l9_2766.z;
bool l9_2787=l9_2783;
float l9_2788=l9_2771;
float l9_2789=fast::clamp(l9_2784,l9_2785,l9_2786);
float l9_2790=step(abs(l9_2784-l9_2789),9.9999997e-06);
l9_2788*=(l9_2790+((1.0-float(l9_2787))*(1.0-l9_2790)));
l9_2784=l9_2789;
l9_2761.x=l9_2784;
l9_2771=l9_2788;
bool l9_2791=l9_2767;
bool l9_2792;
if (l9_2791)
{
l9_2792=l9_2764.y==3;
}
else
{
l9_2792=l9_2791;
}
float l9_2793=l9_2761.y;
float l9_2794=l9_2766.y;
float l9_2795=l9_2766.w;
bool l9_2796=l9_2792;
float l9_2797=l9_2771;
float l9_2798=fast::clamp(l9_2793,l9_2794,l9_2795);
float l9_2799=step(abs(l9_2793-l9_2798),9.9999997e-06);
l9_2797*=(l9_2799+((1.0-float(l9_2796))*(1.0-l9_2799)));
l9_2793=l9_2798;
l9_2761.y=l9_2793;
l9_2771=l9_2797;
}
float2 l9_2800=l9_2761;
bool l9_2801=l9_2762;
float3x3 l9_2802=l9_2763;
if (l9_2801)
{
l9_2800=float2((l9_2802*float3(l9_2800,1.0)).xy);
}
float2 l9_2803=l9_2800;
l9_2761=l9_2803;
float l9_2804=l9_2761.x;
int l9_2805=l9_2764.x;
bool l9_2806=l9_2770;
float l9_2807=l9_2771;
if ((l9_2805==0)||(l9_2805==3))
{
float l9_2808=l9_2804;
float l9_2809=0.0;
float l9_2810=1.0;
bool l9_2811=l9_2806;
float l9_2812=l9_2807;
float l9_2813=fast::clamp(l9_2808,l9_2809,l9_2810);
float l9_2814=step(abs(l9_2808-l9_2813),9.9999997e-06);
l9_2812*=(l9_2814+((1.0-float(l9_2811))*(1.0-l9_2814)));
l9_2808=l9_2813;
l9_2804=l9_2808;
l9_2807=l9_2812;
}
l9_2761.x=l9_2804;
l9_2771=l9_2807;
float l9_2815=l9_2761.y;
int l9_2816=l9_2764.y;
bool l9_2817=l9_2770;
float l9_2818=l9_2771;
if ((l9_2816==0)||(l9_2816==3))
{
float l9_2819=l9_2815;
float l9_2820=0.0;
float l9_2821=1.0;
bool l9_2822=l9_2817;
float l9_2823=l9_2818;
float l9_2824=fast::clamp(l9_2819,l9_2820,l9_2821);
float l9_2825=step(abs(l9_2819-l9_2824),9.9999997e-06);
l9_2823*=(l9_2825+((1.0-float(l9_2822))*(1.0-l9_2825)));
l9_2819=l9_2824;
l9_2815=l9_2819;
l9_2818=l9_2823;
}
l9_2761.y=l9_2815;
l9_2771=l9_2818;
float2 l9_2826=l9_2761;
int l9_2827=l9_2759;
int l9_2828=l9_2760;
float l9_2829=l9_2769;
float2 l9_2830=l9_2826;
int l9_2831=l9_2827;
int l9_2832=l9_2828;
float3 l9_2833=float3(0.0);
if (l9_2831==0)
{
l9_2833=float3(l9_2830,0.0);
}
else
{
if (l9_2831==1)
{
l9_2833=float3(l9_2830.x,(l9_2830.y*0.5)+(0.5-(float(l9_2832)*0.5)),0.0);
}
else
{
l9_2833=float3(l9_2830,float(l9_2832));
}
}
float3 l9_2834=l9_2833;
float3 l9_2835=l9_2834;
float4 l9_2836=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2835.xy,bias(l9_2829));
float4 l9_2837=l9_2836;
if (l9_2767)
{
l9_2837=mix(l9_2768,l9_2837,float4(l9_2771));
}
float4 l9_2838=l9_2837;
l9_2752=l9_2838;
float4 l9_2839=l9_2752;
float4 l9_2840=l9_2839;
float2 l9_2841=l9_2747+float2(l9_2744.x,0.0);
float4 l9_2842=float4(0.0);
int l9_2843;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2844=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2844=0;
}
else
{
l9_2844=in.varStereoViewID;
}
int l9_2845=l9_2844;
l9_2843=1-l9_2845;
}
else
{
int l9_2846=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2846=0;
}
else
{
l9_2846=in.varStereoViewID;
}
int l9_2847=l9_2846;
l9_2843=l9_2847;
}
int l9_2848=l9_2843;
int l9_2849=flowSelectionLayout_tmp;
int l9_2850=l9_2848;
float2 l9_2851=l9_2841;
bool l9_2852=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2853=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2854=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2855=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2856=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2857=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2858=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2859=0.0;
bool l9_2860=l9_2857&&(!l9_2855);
float l9_2861=1.0;
float l9_2862=l9_2851.x;
int l9_2863=l9_2854.x;
if (l9_2863==1)
{
l9_2862=fract(l9_2862);
}
else
{
if (l9_2863==2)
{
float l9_2864=fract(l9_2862);
float l9_2865=l9_2862-l9_2864;
float l9_2866=step(0.25,fract(l9_2865*0.5));
l9_2862=mix(l9_2864,1.0-l9_2864,fast::clamp(l9_2866,0.0,1.0));
}
}
l9_2851.x=l9_2862;
float l9_2867=l9_2851.y;
int l9_2868=l9_2854.y;
if (l9_2868==1)
{
l9_2867=fract(l9_2867);
}
else
{
if (l9_2868==2)
{
float l9_2869=fract(l9_2867);
float l9_2870=l9_2867-l9_2869;
float l9_2871=step(0.25,fract(l9_2870*0.5));
l9_2867=mix(l9_2869,1.0-l9_2869,fast::clamp(l9_2871,0.0,1.0));
}
}
l9_2851.y=l9_2867;
if (l9_2855)
{
bool l9_2872=l9_2857;
bool l9_2873;
if (l9_2872)
{
l9_2873=l9_2854.x==3;
}
else
{
l9_2873=l9_2872;
}
float l9_2874=l9_2851.x;
float l9_2875=l9_2856.x;
float l9_2876=l9_2856.z;
bool l9_2877=l9_2873;
float l9_2878=l9_2861;
float l9_2879=fast::clamp(l9_2874,l9_2875,l9_2876);
float l9_2880=step(abs(l9_2874-l9_2879),9.9999997e-06);
l9_2878*=(l9_2880+((1.0-float(l9_2877))*(1.0-l9_2880)));
l9_2874=l9_2879;
l9_2851.x=l9_2874;
l9_2861=l9_2878;
bool l9_2881=l9_2857;
bool l9_2882;
if (l9_2881)
{
l9_2882=l9_2854.y==3;
}
else
{
l9_2882=l9_2881;
}
float l9_2883=l9_2851.y;
float l9_2884=l9_2856.y;
float l9_2885=l9_2856.w;
bool l9_2886=l9_2882;
float l9_2887=l9_2861;
float l9_2888=fast::clamp(l9_2883,l9_2884,l9_2885);
float l9_2889=step(abs(l9_2883-l9_2888),9.9999997e-06);
l9_2887*=(l9_2889+((1.0-float(l9_2886))*(1.0-l9_2889)));
l9_2883=l9_2888;
l9_2851.y=l9_2883;
l9_2861=l9_2887;
}
float2 l9_2890=l9_2851;
bool l9_2891=l9_2852;
float3x3 l9_2892=l9_2853;
if (l9_2891)
{
l9_2890=float2((l9_2892*float3(l9_2890,1.0)).xy);
}
float2 l9_2893=l9_2890;
l9_2851=l9_2893;
float l9_2894=l9_2851.x;
int l9_2895=l9_2854.x;
bool l9_2896=l9_2860;
float l9_2897=l9_2861;
if ((l9_2895==0)||(l9_2895==3))
{
float l9_2898=l9_2894;
float l9_2899=0.0;
float l9_2900=1.0;
bool l9_2901=l9_2896;
float l9_2902=l9_2897;
float l9_2903=fast::clamp(l9_2898,l9_2899,l9_2900);
float l9_2904=step(abs(l9_2898-l9_2903),9.9999997e-06);
l9_2902*=(l9_2904+((1.0-float(l9_2901))*(1.0-l9_2904)));
l9_2898=l9_2903;
l9_2894=l9_2898;
l9_2897=l9_2902;
}
l9_2851.x=l9_2894;
l9_2861=l9_2897;
float l9_2905=l9_2851.y;
int l9_2906=l9_2854.y;
bool l9_2907=l9_2860;
float l9_2908=l9_2861;
if ((l9_2906==0)||(l9_2906==3))
{
float l9_2909=l9_2905;
float l9_2910=0.0;
float l9_2911=1.0;
bool l9_2912=l9_2907;
float l9_2913=l9_2908;
float l9_2914=fast::clamp(l9_2909,l9_2910,l9_2911);
float l9_2915=step(abs(l9_2909-l9_2914),9.9999997e-06);
l9_2913*=(l9_2915+((1.0-float(l9_2912))*(1.0-l9_2915)));
l9_2909=l9_2914;
l9_2905=l9_2909;
l9_2908=l9_2913;
}
l9_2851.y=l9_2905;
l9_2861=l9_2908;
float2 l9_2916=l9_2851;
int l9_2917=l9_2849;
int l9_2918=l9_2850;
float l9_2919=l9_2859;
float2 l9_2920=l9_2916;
int l9_2921=l9_2917;
int l9_2922=l9_2918;
float3 l9_2923=float3(0.0);
if (l9_2921==0)
{
l9_2923=float3(l9_2920,0.0);
}
else
{
if (l9_2921==1)
{
l9_2923=float3(l9_2920.x,(l9_2920.y*0.5)+(0.5-(float(l9_2922)*0.5)),0.0);
}
else
{
l9_2923=float3(l9_2920,float(l9_2922));
}
}
float3 l9_2924=l9_2923;
float3 l9_2925=l9_2924;
float4 l9_2926=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_2925.xy,bias(l9_2919));
float4 l9_2927=l9_2926;
if (l9_2857)
{
l9_2927=mix(l9_2858,l9_2927,float4(l9_2861));
}
float4 l9_2928=l9_2927;
l9_2842=l9_2928;
float4 l9_2929=l9_2842;
float4 l9_2930=l9_2929;
float2 l9_2931=l9_2747+float2(0.0,l9_2744.y);
float4 l9_2932=float4(0.0);
int l9_2933;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_2934=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2934=0;
}
else
{
l9_2934=in.varStereoViewID;
}
int l9_2935=l9_2934;
l9_2933=1-l9_2935;
}
else
{
int l9_2936=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2936=0;
}
else
{
l9_2936=in.varStereoViewID;
}
int l9_2937=l9_2936;
l9_2933=l9_2937;
}
int l9_2938=l9_2933;
int l9_2939=flowSelectionLayout_tmp;
int l9_2940=l9_2938;
float2 l9_2941=l9_2931;
bool l9_2942=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_2943=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_2944=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_2945=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_2946=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_2947=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_2948=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_2949=0.0;
bool l9_2950=l9_2947&&(!l9_2945);
float l9_2951=1.0;
float l9_2952=l9_2941.x;
int l9_2953=l9_2944.x;
if (l9_2953==1)
{
l9_2952=fract(l9_2952);
}
else
{
if (l9_2953==2)
{
float l9_2954=fract(l9_2952);
float l9_2955=l9_2952-l9_2954;
float l9_2956=step(0.25,fract(l9_2955*0.5));
l9_2952=mix(l9_2954,1.0-l9_2954,fast::clamp(l9_2956,0.0,1.0));
}
}
l9_2941.x=l9_2952;
float l9_2957=l9_2941.y;
int l9_2958=l9_2944.y;
if (l9_2958==1)
{
l9_2957=fract(l9_2957);
}
else
{
if (l9_2958==2)
{
float l9_2959=fract(l9_2957);
float l9_2960=l9_2957-l9_2959;
float l9_2961=step(0.25,fract(l9_2960*0.5));
l9_2957=mix(l9_2959,1.0-l9_2959,fast::clamp(l9_2961,0.0,1.0));
}
}
l9_2941.y=l9_2957;
if (l9_2945)
{
bool l9_2962=l9_2947;
bool l9_2963;
if (l9_2962)
{
l9_2963=l9_2944.x==3;
}
else
{
l9_2963=l9_2962;
}
float l9_2964=l9_2941.x;
float l9_2965=l9_2946.x;
float l9_2966=l9_2946.z;
bool l9_2967=l9_2963;
float l9_2968=l9_2951;
float l9_2969=fast::clamp(l9_2964,l9_2965,l9_2966);
float l9_2970=step(abs(l9_2964-l9_2969),9.9999997e-06);
l9_2968*=(l9_2970+((1.0-float(l9_2967))*(1.0-l9_2970)));
l9_2964=l9_2969;
l9_2941.x=l9_2964;
l9_2951=l9_2968;
bool l9_2971=l9_2947;
bool l9_2972;
if (l9_2971)
{
l9_2972=l9_2944.y==3;
}
else
{
l9_2972=l9_2971;
}
float l9_2973=l9_2941.y;
float l9_2974=l9_2946.y;
float l9_2975=l9_2946.w;
bool l9_2976=l9_2972;
float l9_2977=l9_2951;
float l9_2978=fast::clamp(l9_2973,l9_2974,l9_2975);
float l9_2979=step(abs(l9_2973-l9_2978),9.9999997e-06);
l9_2977*=(l9_2979+((1.0-float(l9_2976))*(1.0-l9_2979)));
l9_2973=l9_2978;
l9_2941.y=l9_2973;
l9_2951=l9_2977;
}
float2 l9_2980=l9_2941;
bool l9_2981=l9_2942;
float3x3 l9_2982=l9_2943;
if (l9_2981)
{
l9_2980=float2((l9_2982*float3(l9_2980,1.0)).xy);
}
float2 l9_2983=l9_2980;
l9_2941=l9_2983;
float l9_2984=l9_2941.x;
int l9_2985=l9_2944.x;
bool l9_2986=l9_2950;
float l9_2987=l9_2951;
if ((l9_2985==0)||(l9_2985==3))
{
float l9_2988=l9_2984;
float l9_2989=0.0;
float l9_2990=1.0;
bool l9_2991=l9_2986;
float l9_2992=l9_2987;
float l9_2993=fast::clamp(l9_2988,l9_2989,l9_2990);
float l9_2994=step(abs(l9_2988-l9_2993),9.9999997e-06);
l9_2992*=(l9_2994+((1.0-float(l9_2991))*(1.0-l9_2994)));
l9_2988=l9_2993;
l9_2984=l9_2988;
l9_2987=l9_2992;
}
l9_2941.x=l9_2984;
l9_2951=l9_2987;
float l9_2995=l9_2941.y;
int l9_2996=l9_2944.y;
bool l9_2997=l9_2950;
float l9_2998=l9_2951;
if ((l9_2996==0)||(l9_2996==3))
{
float l9_2999=l9_2995;
float l9_3000=0.0;
float l9_3001=1.0;
bool l9_3002=l9_2997;
float l9_3003=l9_2998;
float l9_3004=fast::clamp(l9_2999,l9_3000,l9_3001);
float l9_3005=step(abs(l9_2999-l9_3004),9.9999997e-06);
l9_3003*=(l9_3005+((1.0-float(l9_3002))*(1.0-l9_3005)));
l9_2999=l9_3004;
l9_2995=l9_2999;
l9_2998=l9_3003;
}
l9_2941.y=l9_2995;
l9_2951=l9_2998;
float2 l9_3006=l9_2941;
int l9_3007=l9_2939;
int l9_3008=l9_2940;
float l9_3009=l9_2949;
float2 l9_3010=l9_3006;
int l9_3011=l9_3007;
int l9_3012=l9_3008;
float3 l9_3013=float3(0.0);
if (l9_3011==0)
{
l9_3013=float3(l9_3010,0.0);
}
else
{
if (l9_3011==1)
{
l9_3013=float3(l9_3010.x,(l9_3010.y*0.5)+(0.5-(float(l9_3012)*0.5)),0.0);
}
else
{
l9_3013=float3(l9_3010,float(l9_3012));
}
}
float3 l9_3014=l9_3013;
float3 l9_3015=l9_3014;
float4 l9_3016=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_3015.xy,bias(l9_3009));
float4 l9_3017=l9_3016;
if (l9_2947)
{
l9_3017=mix(l9_2948,l9_3017,float4(l9_2951));
}
float4 l9_3018=l9_3017;
l9_2932=l9_3018;
float4 l9_3019=l9_2932;
float4 l9_3020=l9_3019;
float2 l9_3021=l9_2747+float2(l9_2744.x,l9_2744.y);
float4 l9_3022=float4(0.0);
int l9_3023;
if ((int(flowSelectionHasSwappedViews_tmp)!=0))
{
int l9_3024=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3024=0;
}
else
{
l9_3024=in.varStereoViewID;
}
int l9_3025=l9_3024;
l9_3023=1-l9_3025;
}
else
{
int l9_3026=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3026=0;
}
else
{
l9_3026=in.varStereoViewID;
}
int l9_3027=l9_3026;
l9_3023=l9_3027;
}
int l9_3028=l9_3023;
int l9_3029=flowSelectionLayout_tmp;
int l9_3030=l9_3028;
float2 l9_3031=l9_3021;
bool l9_3032=(int(SC_USE_UV_TRANSFORM_flowSelection_tmp)!=0);
float3x3 l9_3033=(*sc_set0.UserUniforms).flowSelectionTransform;
int2 l9_3034=int2(SC_SOFTWARE_WRAP_MODE_U_flowSelection_tmp,SC_SOFTWARE_WRAP_MODE_V_flowSelection_tmp);
bool l9_3035=(int(SC_USE_UV_MIN_MAX_flowSelection_tmp)!=0);
float4 l9_3036=(*sc_set0.UserUniforms).flowSelectionUvMinMax;
bool l9_3037=(int(SC_USE_CLAMP_TO_BORDER_flowSelection_tmp)!=0);
float4 l9_3038=(*sc_set0.UserUniforms).flowSelectionBorderColor;
float l9_3039=0.0;
bool l9_3040=l9_3037&&(!l9_3035);
float l9_3041=1.0;
float l9_3042=l9_3031.x;
int l9_3043=l9_3034.x;
if (l9_3043==1)
{
l9_3042=fract(l9_3042);
}
else
{
if (l9_3043==2)
{
float l9_3044=fract(l9_3042);
float l9_3045=l9_3042-l9_3044;
float l9_3046=step(0.25,fract(l9_3045*0.5));
l9_3042=mix(l9_3044,1.0-l9_3044,fast::clamp(l9_3046,0.0,1.0));
}
}
l9_3031.x=l9_3042;
float l9_3047=l9_3031.y;
int l9_3048=l9_3034.y;
if (l9_3048==1)
{
l9_3047=fract(l9_3047);
}
else
{
if (l9_3048==2)
{
float l9_3049=fract(l9_3047);
float l9_3050=l9_3047-l9_3049;
float l9_3051=step(0.25,fract(l9_3050*0.5));
l9_3047=mix(l9_3049,1.0-l9_3049,fast::clamp(l9_3051,0.0,1.0));
}
}
l9_3031.y=l9_3047;
if (l9_3035)
{
bool l9_3052=l9_3037;
bool l9_3053;
if (l9_3052)
{
l9_3053=l9_3034.x==3;
}
else
{
l9_3053=l9_3052;
}
float l9_3054=l9_3031.x;
float l9_3055=l9_3036.x;
float l9_3056=l9_3036.z;
bool l9_3057=l9_3053;
float l9_3058=l9_3041;
float l9_3059=fast::clamp(l9_3054,l9_3055,l9_3056);
float l9_3060=step(abs(l9_3054-l9_3059),9.9999997e-06);
l9_3058*=(l9_3060+((1.0-float(l9_3057))*(1.0-l9_3060)));
l9_3054=l9_3059;
l9_3031.x=l9_3054;
l9_3041=l9_3058;
bool l9_3061=l9_3037;
bool l9_3062;
if (l9_3061)
{
l9_3062=l9_3034.y==3;
}
else
{
l9_3062=l9_3061;
}
float l9_3063=l9_3031.y;
float l9_3064=l9_3036.y;
float l9_3065=l9_3036.w;
bool l9_3066=l9_3062;
float l9_3067=l9_3041;
float l9_3068=fast::clamp(l9_3063,l9_3064,l9_3065);
float l9_3069=step(abs(l9_3063-l9_3068),9.9999997e-06);
l9_3067*=(l9_3069+((1.0-float(l9_3066))*(1.0-l9_3069)));
l9_3063=l9_3068;
l9_3031.y=l9_3063;
l9_3041=l9_3067;
}
float2 l9_3070=l9_3031;
bool l9_3071=l9_3032;
float3x3 l9_3072=l9_3033;
if (l9_3071)
{
l9_3070=float2((l9_3072*float3(l9_3070,1.0)).xy);
}
float2 l9_3073=l9_3070;
l9_3031=l9_3073;
float l9_3074=l9_3031.x;
int l9_3075=l9_3034.x;
bool l9_3076=l9_3040;
float l9_3077=l9_3041;
if ((l9_3075==0)||(l9_3075==3))
{
float l9_3078=l9_3074;
float l9_3079=0.0;
float l9_3080=1.0;
bool l9_3081=l9_3076;
float l9_3082=l9_3077;
float l9_3083=fast::clamp(l9_3078,l9_3079,l9_3080);
float l9_3084=step(abs(l9_3078-l9_3083),9.9999997e-06);
l9_3082*=(l9_3084+((1.0-float(l9_3081))*(1.0-l9_3084)));
l9_3078=l9_3083;
l9_3074=l9_3078;
l9_3077=l9_3082;
}
l9_3031.x=l9_3074;
l9_3041=l9_3077;
float l9_3085=l9_3031.y;
int l9_3086=l9_3034.y;
bool l9_3087=l9_3040;
float l9_3088=l9_3041;
if ((l9_3086==0)||(l9_3086==3))
{
float l9_3089=l9_3085;
float l9_3090=0.0;
float l9_3091=1.0;
bool l9_3092=l9_3087;
float l9_3093=l9_3088;
float l9_3094=fast::clamp(l9_3089,l9_3090,l9_3091);
float l9_3095=step(abs(l9_3089-l9_3094),9.9999997e-06);
l9_3093*=(l9_3095+((1.0-float(l9_3092))*(1.0-l9_3095)));
l9_3089=l9_3094;
l9_3085=l9_3089;
l9_3088=l9_3093;
}
l9_3031.y=l9_3085;
l9_3041=l9_3088;
float2 l9_3096=l9_3031;
int l9_3097=l9_3029;
int l9_3098=l9_3030;
float l9_3099=l9_3039;
float2 l9_3100=l9_3096;
int l9_3101=l9_3097;
int l9_3102=l9_3098;
float3 l9_3103=float3(0.0);
if (l9_3101==0)
{
l9_3103=float3(l9_3100,0.0);
}
else
{
if (l9_3101==1)
{
l9_3103=float3(l9_3100.x,(l9_3100.y*0.5)+(0.5-(float(l9_3102)*0.5)),0.0);
}
else
{
l9_3103=float3(l9_3100,float(l9_3102));
}
}
float3 l9_3104=l9_3103;
float3 l9_3105=l9_3104;
float4 l9_3106=sc_set0.flowSelection.sample(sc_set0.flowSelectionSmpSC,l9_3105.xy,bias(l9_3099));
float4 l9_3107=l9_3106;
if (l9_3037)
{
l9_3107=mix(l9_3038,l9_3107,float4(l9_3041));
}
float4 l9_3108=l9_3107;
l9_3022=l9_3108;
float4 l9_3109=l9_3022;
float4 l9_3110=l9_3109;
float4 l9_3111=mix(l9_2840,l9_2930,float4(l9_2748.x));
float4 l9_3112=mix(l9_3020,l9_3110,float4(l9_2748.x));
float4 l9_3113=mix(l9_3111,l9_3112,float4(l9_2748.y));
float4 l9_3114=l9_3113;
float l9_3115=fast::max(fast::max(fast::max(fast::max(l9_2366.x,l9_2366.y),l9_2740.x),l9_2740.y),l9_3114.x);
float l9_3116=exp(l9_2366.x-l9_3115);
float l9_3117=exp(l9_2366.y-l9_3115);
float l9_3118=exp(l9_2740.x-l9_3115);
float l9_3119=exp(l9_2740.y-l9_3115);
float l9_3120=exp(l9_3114.x-l9_3115);
float l9_3121=(((l9_3116+l9_3117)+l9_3118)+l9_3119)+l9_3120;
l9_3116/=l9_3121;
l9_3117/=l9_3121;
l9_3118/=l9_3121;
l9_3119/=l9_3121;
l9_3120/=l9_3121;
float2 l9_3122=((((l9_496*l9_3116)+(l9_870*l9_3117))+(l9_1244*l9_3118))+(l9_1618*l9_3119))+(l9_1992*l9_3120);
float4 l9_3123=float4(step(length(l9_496-l9_3122),0.1),step(length(l9_870-l9_3122),0.1),step(length(l9_1244-l9_3122),0.1),step(length(l9_1618-l9_3122),0.1));
float l9_3124=step(length(l9_1992-l9_3122),0.1);
float2 l9_3125=((l9_114*2.0)-float2(1.0))+l9_3122;
float2 l9_3126=l9_3125;
float2 l9_3127=float2(N75_sx,N75_sy);
float2 l9_3128=float2(N75_dx,N75_dy);
float2 l9_3129=l9_3126;
l9_3129*=l9_3127;
l9_3129+=l9_3128;
l9_3129+=float2(1.0);
l9_3129/=float2(2.0);
float2 l9_3130=l9_3129;
float2 l9_3131=l9_3130;
l9_3131=float2(l9_3131.x,1.0-l9_3131.y);
float2 l9_3132=l9_3131;
float4 l9_3133=float4(0.0);
int l9_3134;
if ((int(sourceCropTexHasSwappedViews_tmp)!=0))
{
int l9_3135=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3135=0;
}
else
{
l9_3135=in.varStereoViewID;
}
int l9_3136=l9_3135;
l9_3134=1-l9_3136;
}
else
{
int l9_3137=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3137=0;
}
else
{
l9_3137=in.varStereoViewID;
}
int l9_3138=l9_3137;
l9_3134=l9_3138;
}
int l9_3139=l9_3134;
int l9_3140=sourceCropTexLayout_tmp;
int l9_3141=l9_3139;
float2 l9_3142=l9_3132;
bool l9_3143=(int(SC_USE_UV_TRANSFORM_sourceCropTex_tmp)!=0);
float3x3 l9_3144=(*sc_set0.UserUniforms).sourceCropTexTransform;
int2 l9_3145=int2(SC_SOFTWARE_WRAP_MODE_U_sourceCropTex_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceCropTex_tmp);
bool l9_3146=(int(SC_USE_UV_MIN_MAX_sourceCropTex_tmp)!=0);
float4 l9_3147=(*sc_set0.UserUniforms).sourceCropTexUvMinMax;
bool l9_3148=(int(SC_USE_CLAMP_TO_BORDER_sourceCropTex_tmp)!=0);
float4 l9_3149=(*sc_set0.UserUniforms).sourceCropTexBorderColor;
float l9_3150=0.0;
bool l9_3151=l9_3148&&(!l9_3146);
float l9_3152=1.0;
float l9_3153=l9_3142.x;
int l9_3154=l9_3145.x;
if (l9_3154==1)
{
l9_3153=fract(l9_3153);
}
else
{
if (l9_3154==2)
{
float l9_3155=fract(l9_3153);
float l9_3156=l9_3153-l9_3155;
float l9_3157=step(0.25,fract(l9_3156*0.5));
l9_3153=mix(l9_3155,1.0-l9_3155,fast::clamp(l9_3157,0.0,1.0));
}
}
l9_3142.x=l9_3153;
float l9_3158=l9_3142.y;
int l9_3159=l9_3145.y;
if (l9_3159==1)
{
l9_3158=fract(l9_3158);
}
else
{
if (l9_3159==2)
{
float l9_3160=fract(l9_3158);
float l9_3161=l9_3158-l9_3160;
float l9_3162=step(0.25,fract(l9_3161*0.5));
l9_3158=mix(l9_3160,1.0-l9_3160,fast::clamp(l9_3162,0.0,1.0));
}
}
l9_3142.y=l9_3158;
if (l9_3146)
{
bool l9_3163=l9_3148;
bool l9_3164;
if (l9_3163)
{
l9_3164=l9_3145.x==3;
}
else
{
l9_3164=l9_3163;
}
float l9_3165=l9_3142.x;
float l9_3166=l9_3147.x;
float l9_3167=l9_3147.z;
bool l9_3168=l9_3164;
float l9_3169=l9_3152;
float l9_3170=fast::clamp(l9_3165,l9_3166,l9_3167);
float l9_3171=step(abs(l9_3165-l9_3170),9.9999997e-06);
l9_3169*=(l9_3171+((1.0-float(l9_3168))*(1.0-l9_3171)));
l9_3165=l9_3170;
l9_3142.x=l9_3165;
l9_3152=l9_3169;
bool l9_3172=l9_3148;
bool l9_3173;
if (l9_3172)
{
l9_3173=l9_3145.y==3;
}
else
{
l9_3173=l9_3172;
}
float l9_3174=l9_3142.y;
float l9_3175=l9_3147.y;
float l9_3176=l9_3147.w;
bool l9_3177=l9_3173;
float l9_3178=l9_3152;
float l9_3179=fast::clamp(l9_3174,l9_3175,l9_3176);
float l9_3180=step(abs(l9_3174-l9_3179),9.9999997e-06);
l9_3178*=(l9_3180+((1.0-float(l9_3177))*(1.0-l9_3180)));
l9_3174=l9_3179;
l9_3142.y=l9_3174;
l9_3152=l9_3178;
}
float2 l9_3181=l9_3142;
bool l9_3182=l9_3143;
float3x3 l9_3183=l9_3144;
if (l9_3182)
{
l9_3181=float2((l9_3183*float3(l9_3181,1.0)).xy);
}
float2 l9_3184=l9_3181;
l9_3142=l9_3184;
float l9_3185=l9_3142.x;
int l9_3186=l9_3145.x;
bool l9_3187=l9_3151;
float l9_3188=l9_3152;
if ((l9_3186==0)||(l9_3186==3))
{
float l9_3189=l9_3185;
float l9_3190=0.0;
float l9_3191=1.0;
bool l9_3192=l9_3187;
float l9_3193=l9_3188;
float l9_3194=fast::clamp(l9_3189,l9_3190,l9_3191);
float l9_3195=step(abs(l9_3189-l9_3194),9.9999997e-06);
l9_3193*=(l9_3195+((1.0-float(l9_3192))*(1.0-l9_3195)));
l9_3189=l9_3194;
l9_3185=l9_3189;
l9_3188=l9_3193;
}
l9_3142.x=l9_3185;
l9_3152=l9_3188;
float l9_3196=l9_3142.y;
int l9_3197=l9_3145.y;
bool l9_3198=l9_3151;
float l9_3199=l9_3152;
if ((l9_3197==0)||(l9_3197==3))
{
float l9_3200=l9_3196;
float l9_3201=0.0;
float l9_3202=1.0;
bool l9_3203=l9_3198;
float l9_3204=l9_3199;
float l9_3205=fast::clamp(l9_3200,l9_3201,l9_3202);
float l9_3206=step(abs(l9_3200-l9_3205),9.9999997e-06);
l9_3204*=(l9_3206+((1.0-float(l9_3203))*(1.0-l9_3206)));
l9_3200=l9_3205;
l9_3196=l9_3200;
l9_3199=l9_3204;
}
l9_3142.y=l9_3196;
l9_3152=l9_3199;
float2 l9_3207=l9_3142;
int l9_3208=l9_3140;
int l9_3209=l9_3141;
float l9_3210=l9_3150;
float2 l9_3211=l9_3207;
int l9_3212=l9_3208;
int l9_3213=l9_3209;
float3 l9_3214=float3(0.0);
if (l9_3212==0)
{
l9_3214=float3(l9_3211,0.0);
}
else
{
if (l9_3212==1)
{
l9_3214=float3(l9_3211.x,(l9_3211.y*0.5)+(0.5-(float(l9_3213)*0.5)),0.0);
}
else
{
l9_3214=float3(l9_3211,float(l9_3213));
}
}
float3 l9_3215=l9_3214;
float3 l9_3216=l9_3215;
float4 l9_3217=sc_set0.sourceCropTex.sample(sc_set0.sourceCropTexSmpSC,l9_3216.xy,bias(l9_3210));
float4 l9_3218=l9_3217;
if (l9_3148)
{
l9_3218=mix(l9_3149,l9_3218,float4(l9_3152));
}
float4 l9_3219=l9_3218;
l9_3133=l9_3219;
float4 l9_3220=l9_3133;
float4 l9_3221=l9_3220;
float2 l9_3222=l9_3125;
l9_3222.y=((-0.5)*l9_3222.y)+0.5;
l9_3222.x=(0.5*l9_3222.x)+0.5;
float2 l9_3223=l9_3222;
float4 l9_3224=float4(0.0);
int l9_3225;
if ((int(sourceGarmentMaskHasSwappedViews_tmp)!=0))
{
int l9_3226=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3226=0;
}
else
{
l9_3226=in.varStereoViewID;
}
int l9_3227=l9_3226;
l9_3225=1-l9_3227;
}
else
{
int l9_3228=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3228=0;
}
else
{
l9_3228=in.varStereoViewID;
}
int l9_3229=l9_3228;
l9_3225=l9_3229;
}
int l9_3230=l9_3225;
int l9_3231=sourceGarmentMaskLayout_tmp;
int l9_3232=l9_3230;
float2 l9_3233=l9_3223;
bool l9_3234=(int(SC_USE_UV_TRANSFORM_sourceGarmentMask_tmp)!=0);
float3x3 l9_3235=(*sc_set0.UserUniforms).sourceGarmentMaskTransform;
int2 l9_3236=int2(SC_SOFTWARE_WRAP_MODE_U_sourceGarmentMask_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceGarmentMask_tmp);
bool l9_3237=(int(SC_USE_UV_MIN_MAX_sourceGarmentMask_tmp)!=0);
float4 l9_3238=(*sc_set0.UserUniforms).sourceGarmentMaskUvMinMax;
bool l9_3239=(int(SC_USE_CLAMP_TO_BORDER_sourceGarmentMask_tmp)!=0);
float4 l9_3240=(*sc_set0.UserUniforms).sourceGarmentMaskBorderColor;
float l9_3241=0.0;
bool l9_3242=l9_3239&&(!l9_3237);
float l9_3243=1.0;
float l9_3244=l9_3233.x;
int l9_3245=l9_3236.x;
if (l9_3245==1)
{
l9_3244=fract(l9_3244);
}
else
{
if (l9_3245==2)
{
float l9_3246=fract(l9_3244);
float l9_3247=l9_3244-l9_3246;
float l9_3248=step(0.25,fract(l9_3247*0.5));
l9_3244=mix(l9_3246,1.0-l9_3246,fast::clamp(l9_3248,0.0,1.0));
}
}
l9_3233.x=l9_3244;
float l9_3249=l9_3233.y;
int l9_3250=l9_3236.y;
if (l9_3250==1)
{
l9_3249=fract(l9_3249);
}
else
{
if (l9_3250==2)
{
float l9_3251=fract(l9_3249);
float l9_3252=l9_3249-l9_3251;
float l9_3253=step(0.25,fract(l9_3252*0.5));
l9_3249=mix(l9_3251,1.0-l9_3251,fast::clamp(l9_3253,0.0,1.0));
}
}
l9_3233.y=l9_3249;
if (l9_3237)
{
bool l9_3254=l9_3239;
bool l9_3255;
if (l9_3254)
{
l9_3255=l9_3236.x==3;
}
else
{
l9_3255=l9_3254;
}
float l9_3256=l9_3233.x;
float l9_3257=l9_3238.x;
float l9_3258=l9_3238.z;
bool l9_3259=l9_3255;
float l9_3260=l9_3243;
float l9_3261=fast::clamp(l9_3256,l9_3257,l9_3258);
float l9_3262=step(abs(l9_3256-l9_3261),9.9999997e-06);
l9_3260*=(l9_3262+((1.0-float(l9_3259))*(1.0-l9_3262)));
l9_3256=l9_3261;
l9_3233.x=l9_3256;
l9_3243=l9_3260;
bool l9_3263=l9_3239;
bool l9_3264;
if (l9_3263)
{
l9_3264=l9_3236.y==3;
}
else
{
l9_3264=l9_3263;
}
float l9_3265=l9_3233.y;
float l9_3266=l9_3238.y;
float l9_3267=l9_3238.w;
bool l9_3268=l9_3264;
float l9_3269=l9_3243;
float l9_3270=fast::clamp(l9_3265,l9_3266,l9_3267);
float l9_3271=step(abs(l9_3265-l9_3270),9.9999997e-06);
l9_3269*=(l9_3271+((1.0-float(l9_3268))*(1.0-l9_3271)));
l9_3265=l9_3270;
l9_3233.y=l9_3265;
l9_3243=l9_3269;
}
float2 l9_3272=l9_3233;
bool l9_3273=l9_3234;
float3x3 l9_3274=l9_3235;
if (l9_3273)
{
l9_3272=float2((l9_3274*float3(l9_3272,1.0)).xy);
}
float2 l9_3275=l9_3272;
l9_3233=l9_3275;
float l9_3276=l9_3233.x;
int l9_3277=l9_3236.x;
bool l9_3278=l9_3242;
float l9_3279=l9_3243;
if ((l9_3277==0)||(l9_3277==3))
{
float l9_3280=l9_3276;
float l9_3281=0.0;
float l9_3282=1.0;
bool l9_3283=l9_3278;
float l9_3284=l9_3279;
float l9_3285=fast::clamp(l9_3280,l9_3281,l9_3282);
float l9_3286=step(abs(l9_3280-l9_3285),9.9999997e-06);
l9_3284*=(l9_3286+((1.0-float(l9_3283))*(1.0-l9_3286)));
l9_3280=l9_3285;
l9_3276=l9_3280;
l9_3279=l9_3284;
}
l9_3233.x=l9_3276;
l9_3243=l9_3279;
float l9_3287=l9_3233.y;
int l9_3288=l9_3236.y;
bool l9_3289=l9_3242;
float l9_3290=l9_3243;
if ((l9_3288==0)||(l9_3288==3))
{
float l9_3291=l9_3287;
float l9_3292=0.0;
float l9_3293=1.0;
bool l9_3294=l9_3289;
float l9_3295=l9_3290;
float l9_3296=fast::clamp(l9_3291,l9_3292,l9_3293);
float l9_3297=step(abs(l9_3291-l9_3296),9.9999997e-06);
l9_3295*=(l9_3297+((1.0-float(l9_3294))*(1.0-l9_3297)));
l9_3291=l9_3296;
l9_3287=l9_3291;
l9_3290=l9_3295;
}
l9_3233.y=l9_3287;
l9_3243=l9_3290;
float2 l9_3298=l9_3233;
int l9_3299=l9_3231;
int l9_3300=l9_3232;
float l9_3301=l9_3241;
float2 l9_3302=l9_3298;
int l9_3303=l9_3299;
int l9_3304=l9_3300;
float3 l9_3305=float3(0.0);
if (l9_3303==0)
{
l9_3305=float3(l9_3302,0.0);
}
else
{
if (l9_3303==1)
{
l9_3305=float3(l9_3302.x,(l9_3302.y*0.5)+(0.5-(float(l9_3304)*0.5)),0.0);
}
else
{
l9_3305=float3(l9_3302,float(l9_3304));
}
}
float3 l9_3306=l9_3305;
float3 l9_3307=l9_3306;
float4 l9_3308=sc_set0.sourceGarmentMask.sample(sc_set0.sourceGarmentMaskSmpSC,l9_3307.xy,bias(l9_3301));
float4 l9_3309=l9_3308;
if (l9_3239)
{
l9_3309=mix(l9_3240,l9_3309,float4(l9_3243));
}
float4 l9_3310=l9_3309;
l9_3224=l9_3310;
float4 l9_3311=l9_3224;
float4 l9_3312=l9_3311;
float l9_3313=l9_3312.x;
float2 l9_3314=fast::clamp(l9_3222,float2(0.0),float2(1.0));
float2 l9_3315=float2(l9_3314.x*0.33333334,1.0-l9_3314.y);
float2 l9_3316=float2((l9_3314.x*0.33333334)+0.33333334,1.0-l9_3314.y);
float2 l9_3317=float2((l9_3314.x*0.33333334)+0.66666669,1.0-l9_3314.y);
float2 l9_3318=l9_3315;
float2 l9_3319=float2(0.0);
l9_3319=(*sc_set0.UserUniforms).sourcePartsSize.xy;
float2 l9_3320=l9_3319;
float2 l9_3321=float2(1.0)/l9_3320;
float2 l9_3322=float2(0.0);
l9_3322=(*sc_set0.UserUniforms).sourcePartsSize.xy;
float2 l9_3323=l9_3322;
float2 l9_3324=(l9_3318*l9_3323)+float2(0.5);
float2 l9_3325=fract(l9_3324);
float2 l9_3326=float2(0.0);
l9_3326=(*sc_set0.UserUniforms).sourcePartsSize.xy;
float2 l9_3327=l9_3326;
l9_3324=(floor(l9_3324)/l9_3327)-(l9_3321/float2(2.0));
float2 l9_3328=l9_3324;
float4 l9_3329=float4(0.0);
int l9_3330;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
{
int l9_3331=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3331=0;
}
else
{
l9_3331=in.varStereoViewID;
}
int l9_3332=l9_3331;
l9_3330=1-l9_3332;
}
else
{
int l9_3333=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3333=0;
}
else
{
l9_3333=in.varStereoViewID;
}
int l9_3334=l9_3333;
l9_3330=l9_3334;
}
int l9_3335=l9_3330;
int l9_3336=sourcePartsLayout_tmp;
int l9_3337=l9_3335;
float2 l9_3338=l9_3328;
bool l9_3339=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_3340=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_3341=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_3342=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_3343=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_3344=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_3345=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_3346=0.0;
bool l9_3347=l9_3344&&(!l9_3342);
float l9_3348=1.0;
float l9_3349=l9_3338.x;
int l9_3350=l9_3341.x;
if (l9_3350==1)
{
l9_3349=fract(l9_3349);
}
else
{
if (l9_3350==2)
{
float l9_3351=fract(l9_3349);
float l9_3352=l9_3349-l9_3351;
float l9_3353=step(0.25,fract(l9_3352*0.5));
l9_3349=mix(l9_3351,1.0-l9_3351,fast::clamp(l9_3353,0.0,1.0));
}
}
l9_3338.x=l9_3349;
float l9_3354=l9_3338.y;
int l9_3355=l9_3341.y;
if (l9_3355==1)
{
l9_3354=fract(l9_3354);
}
else
{
if (l9_3355==2)
{
float l9_3356=fract(l9_3354);
float l9_3357=l9_3354-l9_3356;
float l9_3358=step(0.25,fract(l9_3357*0.5));
l9_3354=mix(l9_3356,1.0-l9_3356,fast::clamp(l9_3358,0.0,1.0));
}
}
l9_3338.y=l9_3354;
if (l9_3342)
{
bool l9_3359=l9_3344;
bool l9_3360;
if (l9_3359)
{
l9_3360=l9_3341.x==3;
}
else
{
l9_3360=l9_3359;
}
float l9_3361=l9_3338.x;
float l9_3362=l9_3343.x;
float l9_3363=l9_3343.z;
bool l9_3364=l9_3360;
float l9_3365=l9_3348;
float l9_3366=fast::clamp(l9_3361,l9_3362,l9_3363);
float l9_3367=step(abs(l9_3361-l9_3366),9.9999997e-06);
l9_3365*=(l9_3367+((1.0-float(l9_3364))*(1.0-l9_3367)));
l9_3361=l9_3366;
l9_3338.x=l9_3361;
l9_3348=l9_3365;
bool l9_3368=l9_3344;
bool l9_3369;
if (l9_3368)
{
l9_3369=l9_3341.y==3;
}
else
{
l9_3369=l9_3368;
}
float l9_3370=l9_3338.y;
float l9_3371=l9_3343.y;
float l9_3372=l9_3343.w;
bool l9_3373=l9_3369;
float l9_3374=l9_3348;
float l9_3375=fast::clamp(l9_3370,l9_3371,l9_3372);
float l9_3376=step(abs(l9_3370-l9_3375),9.9999997e-06);
l9_3374*=(l9_3376+((1.0-float(l9_3373))*(1.0-l9_3376)));
l9_3370=l9_3375;
l9_3338.y=l9_3370;
l9_3348=l9_3374;
}
float2 l9_3377=l9_3338;
bool l9_3378=l9_3339;
float3x3 l9_3379=l9_3340;
if (l9_3378)
{
l9_3377=float2((l9_3379*float3(l9_3377,1.0)).xy);
}
float2 l9_3380=l9_3377;
l9_3338=l9_3380;
float l9_3381=l9_3338.x;
int l9_3382=l9_3341.x;
bool l9_3383=l9_3347;
float l9_3384=l9_3348;
if ((l9_3382==0)||(l9_3382==3))
{
float l9_3385=l9_3381;
float l9_3386=0.0;
float l9_3387=1.0;
bool l9_3388=l9_3383;
float l9_3389=l9_3384;
float l9_3390=fast::clamp(l9_3385,l9_3386,l9_3387);
float l9_3391=step(abs(l9_3385-l9_3390),9.9999997e-06);
l9_3389*=(l9_3391+((1.0-float(l9_3388))*(1.0-l9_3391)));
l9_3385=l9_3390;
l9_3381=l9_3385;
l9_3384=l9_3389;
}
l9_3338.x=l9_3381;
l9_3348=l9_3384;
float l9_3392=l9_3338.y;
int l9_3393=l9_3341.y;
bool l9_3394=l9_3347;
float l9_3395=l9_3348;
if ((l9_3393==0)||(l9_3393==3))
{
float l9_3396=l9_3392;
float l9_3397=0.0;
float l9_3398=1.0;
bool l9_3399=l9_3394;
float l9_3400=l9_3395;
float l9_3401=fast::clamp(l9_3396,l9_3397,l9_3398);
float l9_3402=step(abs(l9_3396-l9_3401),9.9999997e-06);
l9_3400*=(l9_3402+((1.0-float(l9_3399))*(1.0-l9_3402)));
l9_3396=l9_3401;
l9_3392=l9_3396;
l9_3395=l9_3400;
}
l9_3338.y=l9_3392;
l9_3348=l9_3395;
float2 l9_3403=l9_3338;
int l9_3404=l9_3336;
int l9_3405=l9_3337;
float l9_3406=l9_3346;
float2 l9_3407=l9_3403;
int l9_3408=l9_3404;
int l9_3409=l9_3405;
float3 l9_3410=float3(0.0);
if (l9_3408==0)
{
l9_3410=float3(l9_3407,0.0);
}
else
{
if (l9_3408==1)
{
l9_3410=float3(l9_3407.x,(l9_3407.y*0.5)+(0.5-(float(l9_3409)*0.5)),0.0);
}
else
{
l9_3410=float3(l9_3407,float(l9_3409));
}
}
float3 l9_3411=l9_3410;
float3 l9_3412=l9_3411;
float4 l9_3413=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_3412.xy,bias(l9_3406));
float4 l9_3414=l9_3413;
if (l9_3344)
{
l9_3414=mix(l9_3345,l9_3414,float4(l9_3348));
}
float4 l9_3415=l9_3414;
l9_3329=l9_3415;
float4 l9_3416=l9_3329;
float4 l9_3417=l9_3416;
float2 l9_3418=l9_3324+float2(l9_3321.x,0.0);
float4 l9_3419=float4(0.0);
int l9_3420;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
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
l9_3420=1-l9_3422;
}
else
{
int l9_3423=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3423=0;
}
else
{
l9_3423=in.varStereoViewID;
}
int l9_3424=l9_3423;
l9_3420=l9_3424;
}
int l9_3425=l9_3420;
int l9_3426=sourcePartsLayout_tmp;
int l9_3427=l9_3425;
float2 l9_3428=l9_3418;
bool l9_3429=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_3430=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_3431=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_3432=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_3433=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_3434=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_3435=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_3436=0.0;
bool l9_3437=l9_3434&&(!l9_3432);
float l9_3438=1.0;
float l9_3439=l9_3428.x;
int l9_3440=l9_3431.x;
if (l9_3440==1)
{
l9_3439=fract(l9_3439);
}
else
{
if (l9_3440==2)
{
float l9_3441=fract(l9_3439);
float l9_3442=l9_3439-l9_3441;
float l9_3443=step(0.25,fract(l9_3442*0.5));
l9_3439=mix(l9_3441,1.0-l9_3441,fast::clamp(l9_3443,0.0,1.0));
}
}
l9_3428.x=l9_3439;
float l9_3444=l9_3428.y;
int l9_3445=l9_3431.y;
if (l9_3445==1)
{
l9_3444=fract(l9_3444);
}
else
{
if (l9_3445==2)
{
float l9_3446=fract(l9_3444);
float l9_3447=l9_3444-l9_3446;
float l9_3448=step(0.25,fract(l9_3447*0.5));
l9_3444=mix(l9_3446,1.0-l9_3446,fast::clamp(l9_3448,0.0,1.0));
}
}
l9_3428.y=l9_3444;
if (l9_3432)
{
bool l9_3449=l9_3434;
bool l9_3450;
if (l9_3449)
{
l9_3450=l9_3431.x==3;
}
else
{
l9_3450=l9_3449;
}
float l9_3451=l9_3428.x;
float l9_3452=l9_3433.x;
float l9_3453=l9_3433.z;
bool l9_3454=l9_3450;
float l9_3455=l9_3438;
float l9_3456=fast::clamp(l9_3451,l9_3452,l9_3453);
float l9_3457=step(abs(l9_3451-l9_3456),9.9999997e-06);
l9_3455*=(l9_3457+((1.0-float(l9_3454))*(1.0-l9_3457)));
l9_3451=l9_3456;
l9_3428.x=l9_3451;
l9_3438=l9_3455;
bool l9_3458=l9_3434;
bool l9_3459;
if (l9_3458)
{
l9_3459=l9_3431.y==3;
}
else
{
l9_3459=l9_3458;
}
float l9_3460=l9_3428.y;
float l9_3461=l9_3433.y;
float l9_3462=l9_3433.w;
bool l9_3463=l9_3459;
float l9_3464=l9_3438;
float l9_3465=fast::clamp(l9_3460,l9_3461,l9_3462);
float l9_3466=step(abs(l9_3460-l9_3465),9.9999997e-06);
l9_3464*=(l9_3466+((1.0-float(l9_3463))*(1.0-l9_3466)));
l9_3460=l9_3465;
l9_3428.y=l9_3460;
l9_3438=l9_3464;
}
float2 l9_3467=l9_3428;
bool l9_3468=l9_3429;
float3x3 l9_3469=l9_3430;
if (l9_3468)
{
l9_3467=float2((l9_3469*float3(l9_3467,1.0)).xy);
}
float2 l9_3470=l9_3467;
l9_3428=l9_3470;
float l9_3471=l9_3428.x;
int l9_3472=l9_3431.x;
bool l9_3473=l9_3437;
float l9_3474=l9_3438;
if ((l9_3472==0)||(l9_3472==3))
{
float l9_3475=l9_3471;
float l9_3476=0.0;
float l9_3477=1.0;
bool l9_3478=l9_3473;
float l9_3479=l9_3474;
float l9_3480=fast::clamp(l9_3475,l9_3476,l9_3477);
float l9_3481=step(abs(l9_3475-l9_3480),9.9999997e-06);
l9_3479*=(l9_3481+((1.0-float(l9_3478))*(1.0-l9_3481)));
l9_3475=l9_3480;
l9_3471=l9_3475;
l9_3474=l9_3479;
}
l9_3428.x=l9_3471;
l9_3438=l9_3474;
float l9_3482=l9_3428.y;
int l9_3483=l9_3431.y;
bool l9_3484=l9_3437;
float l9_3485=l9_3438;
if ((l9_3483==0)||(l9_3483==3))
{
float l9_3486=l9_3482;
float l9_3487=0.0;
float l9_3488=1.0;
bool l9_3489=l9_3484;
float l9_3490=l9_3485;
float l9_3491=fast::clamp(l9_3486,l9_3487,l9_3488);
float l9_3492=step(abs(l9_3486-l9_3491),9.9999997e-06);
l9_3490*=(l9_3492+((1.0-float(l9_3489))*(1.0-l9_3492)));
l9_3486=l9_3491;
l9_3482=l9_3486;
l9_3485=l9_3490;
}
l9_3428.y=l9_3482;
l9_3438=l9_3485;
float2 l9_3493=l9_3428;
int l9_3494=l9_3426;
int l9_3495=l9_3427;
float l9_3496=l9_3436;
float2 l9_3497=l9_3493;
int l9_3498=l9_3494;
int l9_3499=l9_3495;
float3 l9_3500=float3(0.0);
if (l9_3498==0)
{
l9_3500=float3(l9_3497,0.0);
}
else
{
if (l9_3498==1)
{
l9_3500=float3(l9_3497.x,(l9_3497.y*0.5)+(0.5-(float(l9_3499)*0.5)),0.0);
}
else
{
l9_3500=float3(l9_3497,float(l9_3499));
}
}
float3 l9_3501=l9_3500;
float3 l9_3502=l9_3501;
float4 l9_3503=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_3502.xy,bias(l9_3496));
float4 l9_3504=l9_3503;
if (l9_3434)
{
l9_3504=mix(l9_3435,l9_3504,float4(l9_3438));
}
float4 l9_3505=l9_3504;
l9_3419=l9_3505;
float4 l9_3506=l9_3419;
float4 l9_3507=l9_3506;
float2 l9_3508=l9_3324+float2(0.0,l9_3321.y);
float4 l9_3509=float4(0.0);
int l9_3510;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
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
l9_3510=1-l9_3512;
}
else
{
int l9_3513=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3513=0;
}
else
{
l9_3513=in.varStereoViewID;
}
int l9_3514=l9_3513;
l9_3510=l9_3514;
}
int l9_3515=l9_3510;
int l9_3516=sourcePartsLayout_tmp;
int l9_3517=l9_3515;
float2 l9_3518=l9_3508;
bool l9_3519=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_3520=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_3521=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_3522=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_3523=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_3524=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_3525=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_3526=0.0;
bool l9_3527=l9_3524&&(!l9_3522);
float l9_3528=1.0;
float l9_3529=l9_3518.x;
int l9_3530=l9_3521.x;
if (l9_3530==1)
{
l9_3529=fract(l9_3529);
}
else
{
if (l9_3530==2)
{
float l9_3531=fract(l9_3529);
float l9_3532=l9_3529-l9_3531;
float l9_3533=step(0.25,fract(l9_3532*0.5));
l9_3529=mix(l9_3531,1.0-l9_3531,fast::clamp(l9_3533,0.0,1.0));
}
}
l9_3518.x=l9_3529;
float l9_3534=l9_3518.y;
int l9_3535=l9_3521.y;
if (l9_3535==1)
{
l9_3534=fract(l9_3534);
}
else
{
if (l9_3535==2)
{
float l9_3536=fract(l9_3534);
float l9_3537=l9_3534-l9_3536;
float l9_3538=step(0.25,fract(l9_3537*0.5));
l9_3534=mix(l9_3536,1.0-l9_3536,fast::clamp(l9_3538,0.0,1.0));
}
}
l9_3518.y=l9_3534;
if (l9_3522)
{
bool l9_3539=l9_3524;
bool l9_3540;
if (l9_3539)
{
l9_3540=l9_3521.x==3;
}
else
{
l9_3540=l9_3539;
}
float l9_3541=l9_3518.x;
float l9_3542=l9_3523.x;
float l9_3543=l9_3523.z;
bool l9_3544=l9_3540;
float l9_3545=l9_3528;
float l9_3546=fast::clamp(l9_3541,l9_3542,l9_3543);
float l9_3547=step(abs(l9_3541-l9_3546),9.9999997e-06);
l9_3545*=(l9_3547+((1.0-float(l9_3544))*(1.0-l9_3547)));
l9_3541=l9_3546;
l9_3518.x=l9_3541;
l9_3528=l9_3545;
bool l9_3548=l9_3524;
bool l9_3549;
if (l9_3548)
{
l9_3549=l9_3521.y==3;
}
else
{
l9_3549=l9_3548;
}
float l9_3550=l9_3518.y;
float l9_3551=l9_3523.y;
float l9_3552=l9_3523.w;
bool l9_3553=l9_3549;
float l9_3554=l9_3528;
float l9_3555=fast::clamp(l9_3550,l9_3551,l9_3552);
float l9_3556=step(abs(l9_3550-l9_3555),9.9999997e-06);
l9_3554*=(l9_3556+((1.0-float(l9_3553))*(1.0-l9_3556)));
l9_3550=l9_3555;
l9_3518.y=l9_3550;
l9_3528=l9_3554;
}
float2 l9_3557=l9_3518;
bool l9_3558=l9_3519;
float3x3 l9_3559=l9_3520;
if (l9_3558)
{
l9_3557=float2((l9_3559*float3(l9_3557,1.0)).xy);
}
float2 l9_3560=l9_3557;
l9_3518=l9_3560;
float l9_3561=l9_3518.x;
int l9_3562=l9_3521.x;
bool l9_3563=l9_3527;
float l9_3564=l9_3528;
if ((l9_3562==0)||(l9_3562==3))
{
float l9_3565=l9_3561;
float l9_3566=0.0;
float l9_3567=1.0;
bool l9_3568=l9_3563;
float l9_3569=l9_3564;
float l9_3570=fast::clamp(l9_3565,l9_3566,l9_3567);
float l9_3571=step(abs(l9_3565-l9_3570),9.9999997e-06);
l9_3569*=(l9_3571+((1.0-float(l9_3568))*(1.0-l9_3571)));
l9_3565=l9_3570;
l9_3561=l9_3565;
l9_3564=l9_3569;
}
l9_3518.x=l9_3561;
l9_3528=l9_3564;
float l9_3572=l9_3518.y;
int l9_3573=l9_3521.y;
bool l9_3574=l9_3527;
float l9_3575=l9_3528;
if ((l9_3573==0)||(l9_3573==3))
{
float l9_3576=l9_3572;
float l9_3577=0.0;
float l9_3578=1.0;
bool l9_3579=l9_3574;
float l9_3580=l9_3575;
float l9_3581=fast::clamp(l9_3576,l9_3577,l9_3578);
float l9_3582=step(abs(l9_3576-l9_3581),9.9999997e-06);
l9_3580*=(l9_3582+((1.0-float(l9_3579))*(1.0-l9_3582)));
l9_3576=l9_3581;
l9_3572=l9_3576;
l9_3575=l9_3580;
}
l9_3518.y=l9_3572;
l9_3528=l9_3575;
float2 l9_3583=l9_3518;
int l9_3584=l9_3516;
int l9_3585=l9_3517;
float l9_3586=l9_3526;
float2 l9_3587=l9_3583;
int l9_3588=l9_3584;
int l9_3589=l9_3585;
float3 l9_3590=float3(0.0);
if (l9_3588==0)
{
l9_3590=float3(l9_3587,0.0);
}
else
{
if (l9_3588==1)
{
l9_3590=float3(l9_3587.x,(l9_3587.y*0.5)+(0.5-(float(l9_3589)*0.5)),0.0);
}
else
{
l9_3590=float3(l9_3587,float(l9_3589));
}
}
float3 l9_3591=l9_3590;
float3 l9_3592=l9_3591;
float4 l9_3593=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_3592.xy,bias(l9_3586));
float4 l9_3594=l9_3593;
if (l9_3524)
{
l9_3594=mix(l9_3525,l9_3594,float4(l9_3528));
}
float4 l9_3595=l9_3594;
l9_3509=l9_3595;
float4 l9_3596=l9_3509;
float4 l9_3597=l9_3596;
float2 l9_3598=l9_3324+float2(l9_3321.x,l9_3321.y);
float4 l9_3599=float4(0.0);
int l9_3600;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
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
l9_3600=1-l9_3602;
}
else
{
int l9_3603=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3603=0;
}
else
{
l9_3603=in.varStereoViewID;
}
int l9_3604=l9_3603;
l9_3600=l9_3604;
}
int l9_3605=l9_3600;
int l9_3606=sourcePartsLayout_tmp;
int l9_3607=l9_3605;
float2 l9_3608=l9_3598;
bool l9_3609=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_3610=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_3611=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_3612=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_3613=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_3614=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_3615=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_3616=0.0;
bool l9_3617=l9_3614&&(!l9_3612);
float l9_3618=1.0;
float l9_3619=l9_3608.x;
int l9_3620=l9_3611.x;
if (l9_3620==1)
{
l9_3619=fract(l9_3619);
}
else
{
if (l9_3620==2)
{
float l9_3621=fract(l9_3619);
float l9_3622=l9_3619-l9_3621;
float l9_3623=step(0.25,fract(l9_3622*0.5));
l9_3619=mix(l9_3621,1.0-l9_3621,fast::clamp(l9_3623,0.0,1.0));
}
}
l9_3608.x=l9_3619;
float l9_3624=l9_3608.y;
int l9_3625=l9_3611.y;
if (l9_3625==1)
{
l9_3624=fract(l9_3624);
}
else
{
if (l9_3625==2)
{
float l9_3626=fract(l9_3624);
float l9_3627=l9_3624-l9_3626;
float l9_3628=step(0.25,fract(l9_3627*0.5));
l9_3624=mix(l9_3626,1.0-l9_3626,fast::clamp(l9_3628,0.0,1.0));
}
}
l9_3608.y=l9_3624;
if (l9_3612)
{
bool l9_3629=l9_3614;
bool l9_3630;
if (l9_3629)
{
l9_3630=l9_3611.x==3;
}
else
{
l9_3630=l9_3629;
}
float l9_3631=l9_3608.x;
float l9_3632=l9_3613.x;
float l9_3633=l9_3613.z;
bool l9_3634=l9_3630;
float l9_3635=l9_3618;
float l9_3636=fast::clamp(l9_3631,l9_3632,l9_3633);
float l9_3637=step(abs(l9_3631-l9_3636),9.9999997e-06);
l9_3635*=(l9_3637+((1.0-float(l9_3634))*(1.0-l9_3637)));
l9_3631=l9_3636;
l9_3608.x=l9_3631;
l9_3618=l9_3635;
bool l9_3638=l9_3614;
bool l9_3639;
if (l9_3638)
{
l9_3639=l9_3611.y==3;
}
else
{
l9_3639=l9_3638;
}
float l9_3640=l9_3608.y;
float l9_3641=l9_3613.y;
float l9_3642=l9_3613.w;
bool l9_3643=l9_3639;
float l9_3644=l9_3618;
float l9_3645=fast::clamp(l9_3640,l9_3641,l9_3642);
float l9_3646=step(abs(l9_3640-l9_3645),9.9999997e-06);
l9_3644*=(l9_3646+((1.0-float(l9_3643))*(1.0-l9_3646)));
l9_3640=l9_3645;
l9_3608.y=l9_3640;
l9_3618=l9_3644;
}
float2 l9_3647=l9_3608;
bool l9_3648=l9_3609;
float3x3 l9_3649=l9_3610;
if (l9_3648)
{
l9_3647=float2((l9_3649*float3(l9_3647,1.0)).xy);
}
float2 l9_3650=l9_3647;
l9_3608=l9_3650;
float l9_3651=l9_3608.x;
int l9_3652=l9_3611.x;
bool l9_3653=l9_3617;
float l9_3654=l9_3618;
if ((l9_3652==0)||(l9_3652==3))
{
float l9_3655=l9_3651;
float l9_3656=0.0;
float l9_3657=1.0;
bool l9_3658=l9_3653;
float l9_3659=l9_3654;
float l9_3660=fast::clamp(l9_3655,l9_3656,l9_3657);
float l9_3661=step(abs(l9_3655-l9_3660),9.9999997e-06);
l9_3659*=(l9_3661+((1.0-float(l9_3658))*(1.0-l9_3661)));
l9_3655=l9_3660;
l9_3651=l9_3655;
l9_3654=l9_3659;
}
l9_3608.x=l9_3651;
l9_3618=l9_3654;
float l9_3662=l9_3608.y;
int l9_3663=l9_3611.y;
bool l9_3664=l9_3617;
float l9_3665=l9_3618;
if ((l9_3663==0)||(l9_3663==3))
{
float l9_3666=l9_3662;
float l9_3667=0.0;
float l9_3668=1.0;
bool l9_3669=l9_3664;
float l9_3670=l9_3665;
float l9_3671=fast::clamp(l9_3666,l9_3667,l9_3668);
float l9_3672=step(abs(l9_3666-l9_3671),9.9999997e-06);
l9_3670*=(l9_3672+((1.0-float(l9_3669))*(1.0-l9_3672)));
l9_3666=l9_3671;
l9_3662=l9_3666;
l9_3665=l9_3670;
}
l9_3608.y=l9_3662;
l9_3618=l9_3665;
float2 l9_3673=l9_3608;
int l9_3674=l9_3606;
int l9_3675=l9_3607;
float l9_3676=l9_3616;
float2 l9_3677=l9_3673;
int l9_3678=l9_3674;
int l9_3679=l9_3675;
float3 l9_3680=float3(0.0);
if (l9_3678==0)
{
l9_3680=float3(l9_3677,0.0);
}
else
{
if (l9_3678==1)
{
l9_3680=float3(l9_3677.x,(l9_3677.y*0.5)+(0.5-(float(l9_3679)*0.5)),0.0);
}
else
{
l9_3680=float3(l9_3677,float(l9_3679));
}
}
float3 l9_3681=l9_3680;
float3 l9_3682=l9_3681;
float4 l9_3683=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_3682.xy,bias(l9_3676));
float4 l9_3684=l9_3683;
if (l9_3614)
{
l9_3684=mix(l9_3615,l9_3684,float4(l9_3618));
}
float4 l9_3685=l9_3684;
l9_3599=l9_3685;
float4 l9_3686=l9_3599;
float4 l9_3687=l9_3686;
float4 l9_3688=mix(l9_3417,l9_3507,float4(l9_3325.x));
float4 l9_3689=mix(l9_3597,l9_3687,float4(l9_3325.x));
float4 l9_3690=mix(l9_3688,l9_3689,float4(l9_3325.y));
float4 l9_3691=l9_3690;
float2 l9_3692=l9_3316;
float2 l9_3693=float2(0.0);
l9_3693=(*sc_set0.UserUniforms).sourcePartsSize.xy;
float2 l9_3694=l9_3693;
float2 l9_3695=float2(1.0)/l9_3694;
float2 l9_3696=float2(0.0);
l9_3696=(*sc_set0.UserUniforms).sourcePartsSize.xy;
float2 l9_3697=l9_3696;
float2 l9_3698=(l9_3692*l9_3697)+float2(0.5);
float2 l9_3699=fract(l9_3698);
float2 l9_3700=float2(0.0);
l9_3700=(*sc_set0.UserUniforms).sourcePartsSize.xy;
float2 l9_3701=l9_3700;
l9_3698=(floor(l9_3698)/l9_3701)-(l9_3695/float2(2.0));
float2 l9_3702=l9_3698;
float4 l9_3703=float4(0.0);
int l9_3704;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
{
int l9_3705=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3705=0;
}
else
{
l9_3705=in.varStereoViewID;
}
int l9_3706=l9_3705;
l9_3704=1-l9_3706;
}
else
{
int l9_3707=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3707=0;
}
else
{
l9_3707=in.varStereoViewID;
}
int l9_3708=l9_3707;
l9_3704=l9_3708;
}
int l9_3709=l9_3704;
int l9_3710=sourcePartsLayout_tmp;
int l9_3711=l9_3709;
float2 l9_3712=l9_3702;
bool l9_3713=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_3714=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_3715=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_3716=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_3717=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_3718=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_3719=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_3720=0.0;
bool l9_3721=l9_3718&&(!l9_3716);
float l9_3722=1.0;
float l9_3723=l9_3712.x;
int l9_3724=l9_3715.x;
if (l9_3724==1)
{
l9_3723=fract(l9_3723);
}
else
{
if (l9_3724==2)
{
float l9_3725=fract(l9_3723);
float l9_3726=l9_3723-l9_3725;
float l9_3727=step(0.25,fract(l9_3726*0.5));
l9_3723=mix(l9_3725,1.0-l9_3725,fast::clamp(l9_3727,0.0,1.0));
}
}
l9_3712.x=l9_3723;
float l9_3728=l9_3712.y;
int l9_3729=l9_3715.y;
if (l9_3729==1)
{
l9_3728=fract(l9_3728);
}
else
{
if (l9_3729==2)
{
float l9_3730=fract(l9_3728);
float l9_3731=l9_3728-l9_3730;
float l9_3732=step(0.25,fract(l9_3731*0.5));
l9_3728=mix(l9_3730,1.0-l9_3730,fast::clamp(l9_3732,0.0,1.0));
}
}
l9_3712.y=l9_3728;
if (l9_3716)
{
bool l9_3733=l9_3718;
bool l9_3734;
if (l9_3733)
{
l9_3734=l9_3715.x==3;
}
else
{
l9_3734=l9_3733;
}
float l9_3735=l9_3712.x;
float l9_3736=l9_3717.x;
float l9_3737=l9_3717.z;
bool l9_3738=l9_3734;
float l9_3739=l9_3722;
float l9_3740=fast::clamp(l9_3735,l9_3736,l9_3737);
float l9_3741=step(abs(l9_3735-l9_3740),9.9999997e-06);
l9_3739*=(l9_3741+((1.0-float(l9_3738))*(1.0-l9_3741)));
l9_3735=l9_3740;
l9_3712.x=l9_3735;
l9_3722=l9_3739;
bool l9_3742=l9_3718;
bool l9_3743;
if (l9_3742)
{
l9_3743=l9_3715.y==3;
}
else
{
l9_3743=l9_3742;
}
float l9_3744=l9_3712.y;
float l9_3745=l9_3717.y;
float l9_3746=l9_3717.w;
bool l9_3747=l9_3743;
float l9_3748=l9_3722;
float l9_3749=fast::clamp(l9_3744,l9_3745,l9_3746);
float l9_3750=step(abs(l9_3744-l9_3749),9.9999997e-06);
l9_3748*=(l9_3750+((1.0-float(l9_3747))*(1.0-l9_3750)));
l9_3744=l9_3749;
l9_3712.y=l9_3744;
l9_3722=l9_3748;
}
float2 l9_3751=l9_3712;
bool l9_3752=l9_3713;
float3x3 l9_3753=l9_3714;
if (l9_3752)
{
l9_3751=float2((l9_3753*float3(l9_3751,1.0)).xy);
}
float2 l9_3754=l9_3751;
l9_3712=l9_3754;
float l9_3755=l9_3712.x;
int l9_3756=l9_3715.x;
bool l9_3757=l9_3721;
float l9_3758=l9_3722;
if ((l9_3756==0)||(l9_3756==3))
{
float l9_3759=l9_3755;
float l9_3760=0.0;
float l9_3761=1.0;
bool l9_3762=l9_3757;
float l9_3763=l9_3758;
float l9_3764=fast::clamp(l9_3759,l9_3760,l9_3761);
float l9_3765=step(abs(l9_3759-l9_3764),9.9999997e-06);
l9_3763*=(l9_3765+((1.0-float(l9_3762))*(1.0-l9_3765)));
l9_3759=l9_3764;
l9_3755=l9_3759;
l9_3758=l9_3763;
}
l9_3712.x=l9_3755;
l9_3722=l9_3758;
float l9_3766=l9_3712.y;
int l9_3767=l9_3715.y;
bool l9_3768=l9_3721;
float l9_3769=l9_3722;
if ((l9_3767==0)||(l9_3767==3))
{
float l9_3770=l9_3766;
float l9_3771=0.0;
float l9_3772=1.0;
bool l9_3773=l9_3768;
float l9_3774=l9_3769;
float l9_3775=fast::clamp(l9_3770,l9_3771,l9_3772);
float l9_3776=step(abs(l9_3770-l9_3775),9.9999997e-06);
l9_3774*=(l9_3776+((1.0-float(l9_3773))*(1.0-l9_3776)));
l9_3770=l9_3775;
l9_3766=l9_3770;
l9_3769=l9_3774;
}
l9_3712.y=l9_3766;
l9_3722=l9_3769;
float2 l9_3777=l9_3712;
int l9_3778=l9_3710;
int l9_3779=l9_3711;
float l9_3780=l9_3720;
float2 l9_3781=l9_3777;
int l9_3782=l9_3778;
int l9_3783=l9_3779;
float3 l9_3784=float3(0.0);
if (l9_3782==0)
{
l9_3784=float3(l9_3781,0.0);
}
else
{
if (l9_3782==1)
{
l9_3784=float3(l9_3781.x,(l9_3781.y*0.5)+(0.5-(float(l9_3783)*0.5)),0.0);
}
else
{
l9_3784=float3(l9_3781,float(l9_3783));
}
}
float3 l9_3785=l9_3784;
float3 l9_3786=l9_3785;
float4 l9_3787=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_3786.xy,bias(l9_3780));
float4 l9_3788=l9_3787;
if (l9_3718)
{
l9_3788=mix(l9_3719,l9_3788,float4(l9_3722));
}
float4 l9_3789=l9_3788;
l9_3703=l9_3789;
float4 l9_3790=l9_3703;
float4 l9_3791=l9_3790;
float2 l9_3792=l9_3698+float2(l9_3695.x,0.0);
float4 l9_3793=float4(0.0);
int l9_3794;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
{
int l9_3795=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3795=0;
}
else
{
l9_3795=in.varStereoViewID;
}
int l9_3796=l9_3795;
l9_3794=1-l9_3796;
}
else
{
int l9_3797=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3797=0;
}
else
{
l9_3797=in.varStereoViewID;
}
int l9_3798=l9_3797;
l9_3794=l9_3798;
}
int l9_3799=l9_3794;
int l9_3800=sourcePartsLayout_tmp;
int l9_3801=l9_3799;
float2 l9_3802=l9_3792;
bool l9_3803=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_3804=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_3805=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_3806=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_3807=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_3808=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_3809=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_3810=0.0;
bool l9_3811=l9_3808&&(!l9_3806);
float l9_3812=1.0;
float l9_3813=l9_3802.x;
int l9_3814=l9_3805.x;
if (l9_3814==1)
{
l9_3813=fract(l9_3813);
}
else
{
if (l9_3814==2)
{
float l9_3815=fract(l9_3813);
float l9_3816=l9_3813-l9_3815;
float l9_3817=step(0.25,fract(l9_3816*0.5));
l9_3813=mix(l9_3815,1.0-l9_3815,fast::clamp(l9_3817,0.0,1.0));
}
}
l9_3802.x=l9_3813;
float l9_3818=l9_3802.y;
int l9_3819=l9_3805.y;
if (l9_3819==1)
{
l9_3818=fract(l9_3818);
}
else
{
if (l9_3819==2)
{
float l9_3820=fract(l9_3818);
float l9_3821=l9_3818-l9_3820;
float l9_3822=step(0.25,fract(l9_3821*0.5));
l9_3818=mix(l9_3820,1.0-l9_3820,fast::clamp(l9_3822,0.0,1.0));
}
}
l9_3802.y=l9_3818;
if (l9_3806)
{
bool l9_3823=l9_3808;
bool l9_3824;
if (l9_3823)
{
l9_3824=l9_3805.x==3;
}
else
{
l9_3824=l9_3823;
}
float l9_3825=l9_3802.x;
float l9_3826=l9_3807.x;
float l9_3827=l9_3807.z;
bool l9_3828=l9_3824;
float l9_3829=l9_3812;
float l9_3830=fast::clamp(l9_3825,l9_3826,l9_3827);
float l9_3831=step(abs(l9_3825-l9_3830),9.9999997e-06);
l9_3829*=(l9_3831+((1.0-float(l9_3828))*(1.0-l9_3831)));
l9_3825=l9_3830;
l9_3802.x=l9_3825;
l9_3812=l9_3829;
bool l9_3832=l9_3808;
bool l9_3833;
if (l9_3832)
{
l9_3833=l9_3805.y==3;
}
else
{
l9_3833=l9_3832;
}
float l9_3834=l9_3802.y;
float l9_3835=l9_3807.y;
float l9_3836=l9_3807.w;
bool l9_3837=l9_3833;
float l9_3838=l9_3812;
float l9_3839=fast::clamp(l9_3834,l9_3835,l9_3836);
float l9_3840=step(abs(l9_3834-l9_3839),9.9999997e-06);
l9_3838*=(l9_3840+((1.0-float(l9_3837))*(1.0-l9_3840)));
l9_3834=l9_3839;
l9_3802.y=l9_3834;
l9_3812=l9_3838;
}
float2 l9_3841=l9_3802;
bool l9_3842=l9_3803;
float3x3 l9_3843=l9_3804;
if (l9_3842)
{
l9_3841=float2((l9_3843*float3(l9_3841,1.0)).xy);
}
float2 l9_3844=l9_3841;
l9_3802=l9_3844;
float l9_3845=l9_3802.x;
int l9_3846=l9_3805.x;
bool l9_3847=l9_3811;
float l9_3848=l9_3812;
if ((l9_3846==0)||(l9_3846==3))
{
float l9_3849=l9_3845;
float l9_3850=0.0;
float l9_3851=1.0;
bool l9_3852=l9_3847;
float l9_3853=l9_3848;
float l9_3854=fast::clamp(l9_3849,l9_3850,l9_3851);
float l9_3855=step(abs(l9_3849-l9_3854),9.9999997e-06);
l9_3853*=(l9_3855+((1.0-float(l9_3852))*(1.0-l9_3855)));
l9_3849=l9_3854;
l9_3845=l9_3849;
l9_3848=l9_3853;
}
l9_3802.x=l9_3845;
l9_3812=l9_3848;
float l9_3856=l9_3802.y;
int l9_3857=l9_3805.y;
bool l9_3858=l9_3811;
float l9_3859=l9_3812;
if ((l9_3857==0)||(l9_3857==3))
{
float l9_3860=l9_3856;
float l9_3861=0.0;
float l9_3862=1.0;
bool l9_3863=l9_3858;
float l9_3864=l9_3859;
float l9_3865=fast::clamp(l9_3860,l9_3861,l9_3862);
float l9_3866=step(abs(l9_3860-l9_3865),9.9999997e-06);
l9_3864*=(l9_3866+((1.0-float(l9_3863))*(1.0-l9_3866)));
l9_3860=l9_3865;
l9_3856=l9_3860;
l9_3859=l9_3864;
}
l9_3802.y=l9_3856;
l9_3812=l9_3859;
float2 l9_3867=l9_3802;
int l9_3868=l9_3800;
int l9_3869=l9_3801;
float l9_3870=l9_3810;
float2 l9_3871=l9_3867;
int l9_3872=l9_3868;
int l9_3873=l9_3869;
float3 l9_3874=float3(0.0);
if (l9_3872==0)
{
l9_3874=float3(l9_3871,0.0);
}
else
{
if (l9_3872==1)
{
l9_3874=float3(l9_3871.x,(l9_3871.y*0.5)+(0.5-(float(l9_3873)*0.5)),0.0);
}
else
{
l9_3874=float3(l9_3871,float(l9_3873));
}
}
float3 l9_3875=l9_3874;
float3 l9_3876=l9_3875;
float4 l9_3877=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_3876.xy,bias(l9_3870));
float4 l9_3878=l9_3877;
if (l9_3808)
{
l9_3878=mix(l9_3809,l9_3878,float4(l9_3812));
}
float4 l9_3879=l9_3878;
l9_3793=l9_3879;
float4 l9_3880=l9_3793;
float4 l9_3881=l9_3880;
float2 l9_3882=l9_3698+float2(0.0,l9_3695.y);
float4 l9_3883=float4(0.0);
int l9_3884;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
{
int l9_3885=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3885=0;
}
else
{
l9_3885=in.varStereoViewID;
}
int l9_3886=l9_3885;
l9_3884=1-l9_3886;
}
else
{
int l9_3887=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3887=0;
}
else
{
l9_3887=in.varStereoViewID;
}
int l9_3888=l9_3887;
l9_3884=l9_3888;
}
int l9_3889=l9_3884;
int l9_3890=sourcePartsLayout_tmp;
int l9_3891=l9_3889;
float2 l9_3892=l9_3882;
bool l9_3893=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_3894=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_3895=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_3896=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_3897=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_3898=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_3899=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_3900=0.0;
bool l9_3901=l9_3898&&(!l9_3896);
float l9_3902=1.0;
float l9_3903=l9_3892.x;
int l9_3904=l9_3895.x;
if (l9_3904==1)
{
l9_3903=fract(l9_3903);
}
else
{
if (l9_3904==2)
{
float l9_3905=fract(l9_3903);
float l9_3906=l9_3903-l9_3905;
float l9_3907=step(0.25,fract(l9_3906*0.5));
l9_3903=mix(l9_3905,1.0-l9_3905,fast::clamp(l9_3907,0.0,1.0));
}
}
l9_3892.x=l9_3903;
float l9_3908=l9_3892.y;
int l9_3909=l9_3895.y;
if (l9_3909==1)
{
l9_3908=fract(l9_3908);
}
else
{
if (l9_3909==2)
{
float l9_3910=fract(l9_3908);
float l9_3911=l9_3908-l9_3910;
float l9_3912=step(0.25,fract(l9_3911*0.5));
l9_3908=mix(l9_3910,1.0-l9_3910,fast::clamp(l9_3912,0.0,1.0));
}
}
l9_3892.y=l9_3908;
if (l9_3896)
{
bool l9_3913=l9_3898;
bool l9_3914;
if (l9_3913)
{
l9_3914=l9_3895.x==3;
}
else
{
l9_3914=l9_3913;
}
float l9_3915=l9_3892.x;
float l9_3916=l9_3897.x;
float l9_3917=l9_3897.z;
bool l9_3918=l9_3914;
float l9_3919=l9_3902;
float l9_3920=fast::clamp(l9_3915,l9_3916,l9_3917);
float l9_3921=step(abs(l9_3915-l9_3920),9.9999997e-06);
l9_3919*=(l9_3921+((1.0-float(l9_3918))*(1.0-l9_3921)));
l9_3915=l9_3920;
l9_3892.x=l9_3915;
l9_3902=l9_3919;
bool l9_3922=l9_3898;
bool l9_3923;
if (l9_3922)
{
l9_3923=l9_3895.y==3;
}
else
{
l9_3923=l9_3922;
}
float l9_3924=l9_3892.y;
float l9_3925=l9_3897.y;
float l9_3926=l9_3897.w;
bool l9_3927=l9_3923;
float l9_3928=l9_3902;
float l9_3929=fast::clamp(l9_3924,l9_3925,l9_3926);
float l9_3930=step(abs(l9_3924-l9_3929),9.9999997e-06);
l9_3928*=(l9_3930+((1.0-float(l9_3927))*(1.0-l9_3930)));
l9_3924=l9_3929;
l9_3892.y=l9_3924;
l9_3902=l9_3928;
}
float2 l9_3931=l9_3892;
bool l9_3932=l9_3893;
float3x3 l9_3933=l9_3894;
if (l9_3932)
{
l9_3931=float2((l9_3933*float3(l9_3931,1.0)).xy);
}
float2 l9_3934=l9_3931;
l9_3892=l9_3934;
float l9_3935=l9_3892.x;
int l9_3936=l9_3895.x;
bool l9_3937=l9_3901;
float l9_3938=l9_3902;
if ((l9_3936==0)||(l9_3936==3))
{
float l9_3939=l9_3935;
float l9_3940=0.0;
float l9_3941=1.0;
bool l9_3942=l9_3937;
float l9_3943=l9_3938;
float l9_3944=fast::clamp(l9_3939,l9_3940,l9_3941);
float l9_3945=step(abs(l9_3939-l9_3944),9.9999997e-06);
l9_3943*=(l9_3945+((1.0-float(l9_3942))*(1.0-l9_3945)));
l9_3939=l9_3944;
l9_3935=l9_3939;
l9_3938=l9_3943;
}
l9_3892.x=l9_3935;
l9_3902=l9_3938;
float l9_3946=l9_3892.y;
int l9_3947=l9_3895.y;
bool l9_3948=l9_3901;
float l9_3949=l9_3902;
if ((l9_3947==0)||(l9_3947==3))
{
float l9_3950=l9_3946;
float l9_3951=0.0;
float l9_3952=1.0;
bool l9_3953=l9_3948;
float l9_3954=l9_3949;
float l9_3955=fast::clamp(l9_3950,l9_3951,l9_3952);
float l9_3956=step(abs(l9_3950-l9_3955),9.9999997e-06);
l9_3954*=(l9_3956+((1.0-float(l9_3953))*(1.0-l9_3956)));
l9_3950=l9_3955;
l9_3946=l9_3950;
l9_3949=l9_3954;
}
l9_3892.y=l9_3946;
l9_3902=l9_3949;
float2 l9_3957=l9_3892;
int l9_3958=l9_3890;
int l9_3959=l9_3891;
float l9_3960=l9_3900;
float2 l9_3961=l9_3957;
int l9_3962=l9_3958;
int l9_3963=l9_3959;
float3 l9_3964=float3(0.0);
if (l9_3962==0)
{
l9_3964=float3(l9_3961,0.0);
}
else
{
if (l9_3962==1)
{
l9_3964=float3(l9_3961.x,(l9_3961.y*0.5)+(0.5-(float(l9_3963)*0.5)),0.0);
}
else
{
l9_3964=float3(l9_3961,float(l9_3963));
}
}
float3 l9_3965=l9_3964;
float3 l9_3966=l9_3965;
float4 l9_3967=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_3966.xy,bias(l9_3960));
float4 l9_3968=l9_3967;
if (l9_3898)
{
l9_3968=mix(l9_3899,l9_3968,float4(l9_3902));
}
float4 l9_3969=l9_3968;
l9_3883=l9_3969;
float4 l9_3970=l9_3883;
float4 l9_3971=l9_3970;
float2 l9_3972=l9_3698+float2(l9_3695.x,l9_3695.y);
float4 l9_3973=float4(0.0);
int l9_3974;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
{
int l9_3975=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3975=0;
}
else
{
l9_3975=in.varStereoViewID;
}
int l9_3976=l9_3975;
l9_3974=1-l9_3976;
}
else
{
int l9_3977=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3977=0;
}
else
{
l9_3977=in.varStereoViewID;
}
int l9_3978=l9_3977;
l9_3974=l9_3978;
}
int l9_3979=l9_3974;
int l9_3980=sourcePartsLayout_tmp;
int l9_3981=l9_3979;
float2 l9_3982=l9_3972;
bool l9_3983=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_3984=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_3985=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_3986=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_3987=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_3988=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_3989=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_3990=0.0;
bool l9_3991=l9_3988&&(!l9_3986);
float l9_3992=1.0;
float l9_3993=l9_3982.x;
int l9_3994=l9_3985.x;
if (l9_3994==1)
{
l9_3993=fract(l9_3993);
}
else
{
if (l9_3994==2)
{
float l9_3995=fract(l9_3993);
float l9_3996=l9_3993-l9_3995;
float l9_3997=step(0.25,fract(l9_3996*0.5));
l9_3993=mix(l9_3995,1.0-l9_3995,fast::clamp(l9_3997,0.0,1.0));
}
}
l9_3982.x=l9_3993;
float l9_3998=l9_3982.y;
int l9_3999=l9_3985.y;
if (l9_3999==1)
{
l9_3998=fract(l9_3998);
}
else
{
if (l9_3999==2)
{
float l9_4000=fract(l9_3998);
float l9_4001=l9_3998-l9_4000;
float l9_4002=step(0.25,fract(l9_4001*0.5));
l9_3998=mix(l9_4000,1.0-l9_4000,fast::clamp(l9_4002,0.0,1.0));
}
}
l9_3982.y=l9_3998;
if (l9_3986)
{
bool l9_4003=l9_3988;
bool l9_4004;
if (l9_4003)
{
l9_4004=l9_3985.x==3;
}
else
{
l9_4004=l9_4003;
}
float l9_4005=l9_3982.x;
float l9_4006=l9_3987.x;
float l9_4007=l9_3987.z;
bool l9_4008=l9_4004;
float l9_4009=l9_3992;
float l9_4010=fast::clamp(l9_4005,l9_4006,l9_4007);
float l9_4011=step(abs(l9_4005-l9_4010),9.9999997e-06);
l9_4009*=(l9_4011+((1.0-float(l9_4008))*(1.0-l9_4011)));
l9_4005=l9_4010;
l9_3982.x=l9_4005;
l9_3992=l9_4009;
bool l9_4012=l9_3988;
bool l9_4013;
if (l9_4012)
{
l9_4013=l9_3985.y==3;
}
else
{
l9_4013=l9_4012;
}
float l9_4014=l9_3982.y;
float l9_4015=l9_3987.y;
float l9_4016=l9_3987.w;
bool l9_4017=l9_4013;
float l9_4018=l9_3992;
float l9_4019=fast::clamp(l9_4014,l9_4015,l9_4016);
float l9_4020=step(abs(l9_4014-l9_4019),9.9999997e-06);
l9_4018*=(l9_4020+((1.0-float(l9_4017))*(1.0-l9_4020)));
l9_4014=l9_4019;
l9_3982.y=l9_4014;
l9_3992=l9_4018;
}
float2 l9_4021=l9_3982;
bool l9_4022=l9_3983;
float3x3 l9_4023=l9_3984;
if (l9_4022)
{
l9_4021=float2((l9_4023*float3(l9_4021,1.0)).xy);
}
float2 l9_4024=l9_4021;
l9_3982=l9_4024;
float l9_4025=l9_3982.x;
int l9_4026=l9_3985.x;
bool l9_4027=l9_3991;
float l9_4028=l9_3992;
if ((l9_4026==0)||(l9_4026==3))
{
float l9_4029=l9_4025;
float l9_4030=0.0;
float l9_4031=1.0;
bool l9_4032=l9_4027;
float l9_4033=l9_4028;
float l9_4034=fast::clamp(l9_4029,l9_4030,l9_4031);
float l9_4035=step(abs(l9_4029-l9_4034),9.9999997e-06);
l9_4033*=(l9_4035+((1.0-float(l9_4032))*(1.0-l9_4035)));
l9_4029=l9_4034;
l9_4025=l9_4029;
l9_4028=l9_4033;
}
l9_3982.x=l9_4025;
l9_3992=l9_4028;
float l9_4036=l9_3982.y;
int l9_4037=l9_3985.y;
bool l9_4038=l9_3991;
float l9_4039=l9_3992;
if ((l9_4037==0)||(l9_4037==3))
{
float l9_4040=l9_4036;
float l9_4041=0.0;
float l9_4042=1.0;
bool l9_4043=l9_4038;
float l9_4044=l9_4039;
float l9_4045=fast::clamp(l9_4040,l9_4041,l9_4042);
float l9_4046=step(abs(l9_4040-l9_4045),9.9999997e-06);
l9_4044*=(l9_4046+((1.0-float(l9_4043))*(1.0-l9_4046)));
l9_4040=l9_4045;
l9_4036=l9_4040;
l9_4039=l9_4044;
}
l9_3982.y=l9_4036;
l9_3992=l9_4039;
float2 l9_4047=l9_3982;
int l9_4048=l9_3980;
int l9_4049=l9_3981;
float l9_4050=l9_3990;
float2 l9_4051=l9_4047;
int l9_4052=l9_4048;
int l9_4053=l9_4049;
float3 l9_4054=float3(0.0);
if (l9_4052==0)
{
l9_4054=float3(l9_4051,0.0);
}
else
{
if (l9_4052==1)
{
l9_4054=float3(l9_4051.x,(l9_4051.y*0.5)+(0.5-(float(l9_4053)*0.5)),0.0);
}
else
{
l9_4054=float3(l9_4051,float(l9_4053));
}
}
float3 l9_4055=l9_4054;
float3 l9_4056=l9_4055;
float4 l9_4057=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_4056.xy,bias(l9_4050));
float4 l9_4058=l9_4057;
if (l9_3988)
{
l9_4058=mix(l9_3989,l9_4058,float4(l9_3992));
}
float4 l9_4059=l9_4058;
l9_3973=l9_4059;
float4 l9_4060=l9_3973;
float4 l9_4061=l9_4060;
float4 l9_4062=mix(l9_3791,l9_3881,float4(l9_3699.x));
float4 l9_4063=mix(l9_3971,l9_4061,float4(l9_3699.x));
float4 l9_4064=mix(l9_4062,l9_4063,float4(l9_3699.y));
float4 l9_4065=l9_4064;
float2 l9_4066=l9_3317;
float2 l9_4067=float2(0.0);
l9_4067=(*sc_set0.UserUniforms).sourcePartsSize.xy;
float2 l9_4068=l9_4067;
float2 l9_4069=float2(1.0)/l9_4068;
float2 l9_4070=float2(0.0);
l9_4070=(*sc_set0.UserUniforms).sourcePartsSize.xy;
float2 l9_4071=l9_4070;
float2 l9_4072=(l9_4066*l9_4071)+float2(0.5);
float2 l9_4073=fract(l9_4072);
float2 l9_4074=float2(0.0);
l9_4074=(*sc_set0.UserUniforms).sourcePartsSize.xy;
float2 l9_4075=l9_4074;
l9_4072=(floor(l9_4072)/l9_4075)-(l9_4069/float2(2.0));
float2 l9_4076=l9_4072;
float4 l9_4077=float4(0.0);
int l9_4078;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
{
int l9_4079=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4079=0;
}
else
{
l9_4079=in.varStereoViewID;
}
int l9_4080=l9_4079;
l9_4078=1-l9_4080;
}
else
{
int l9_4081=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4081=0;
}
else
{
l9_4081=in.varStereoViewID;
}
int l9_4082=l9_4081;
l9_4078=l9_4082;
}
int l9_4083=l9_4078;
int l9_4084=sourcePartsLayout_tmp;
int l9_4085=l9_4083;
float2 l9_4086=l9_4076;
bool l9_4087=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_4088=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_4089=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_4090=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_4091=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_4092=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_4093=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_4094=0.0;
bool l9_4095=l9_4092&&(!l9_4090);
float l9_4096=1.0;
float l9_4097=l9_4086.x;
int l9_4098=l9_4089.x;
if (l9_4098==1)
{
l9_4097=fract(l9_4097);
}
else
{
if (l9_4098==2)
{
float l9_4099=fract(l9_4097);
float l9_4100=l9_4097-l9_4099;
float l9_4101=step(0.25,fract(l9_4100*0.5));
l9_4097=mix(l9_4099,1.0-l9_4099,fast::clamp(l9_4101,0.0,1.0));
}
}
l9_4086.x=l9_4097;
float l9_4102=l9_4086.y;
int l9_4103=l9_4089.y;
if (l9_4103==1)
{
l9_4102=fract(l9_4102);
}
else
{
if (l9_4103==2)
{
float l9_4104=fract(l9_4102);
float l9_4105=l9_4102-l9_4104;
float l9_4106=step(0.25,fract(l9_4105*0.5));
l9_4102=mix(l9_4104,1.0-l9_4104,fast::clamp(l9_4106,0.0,1.0));
}
}
l9_4086.y=l9_4102;
if (l9_4090)
{
bool l9_4107=l9_4092;
bool l9_4108;
if (l9_4107)
{
l9_4108=l9_4089.x==3;
}
else
{
l9_4108=l9_4107;
}
float l9_4109=l9_4086.x;
float l9_4110=l9_4091.x;
float l9_4111=l9_4091.z;
bool l9_4112=l9_4108;
float l9_4113=l9_4096;
float l9_4114=fast::clamp(l9_4109,l9_4110,l9_4111);
float l9_4115=step(abs(l9_4109-l9_4114),9.9999997e-06);
l9_4113*=(l9_4115+((1.0-float(l9_4112))*(1.0-l9_4115)));
l9_4109=l9_4114;
l9_4086.x=l9_4109;
l9_4096=l9_4113;
bool l9_4116=l9_4092;
bool l9_4117;
if (l9_4116)
{
l9_4117=l9_4089.y==3;
}
else
{
l9_4117=l9_4116;
}
float l9_4118=l9_4086.y;
float l9_4119=l9_4091.y;
float l9_4120=l9_4091.w;
bool l9_4121=l9_4117;
float l9_4122=l9_4096;
float l9_4123=fast::clamp(l9_4118,l9_4119,l9_4120);
float l9_4124=step(abs(l9_4118-l9_4123),9.9999997e-06);
l9_4122*=(l9_4124+((1.0-float(l9_4121))*(1.0-l9_4124)));
l9_4118=l9_4123;
l9_4086.y=l9_4118;
l9_4096=l9_4122;
}
float2 l9_4125=l9_4086;
bool l9_4126=l9_4087;
float3x3 l9_4127=l9_4088;
if (l9_4126)
{
l9_4125=float2((l9_4127*float3(l9_4125,1.0)).xy);
}
float2 l9_4128=l9_4125;
l9_4086=l9_4128;
float l9_4129=l9_4086.x;
int l9_4130=l9_4089.x;
bool l9_4131=l9_4095;
float l9_4132=l9_4096;
if ((l9_4130==0)||(l9_4130==3))
{
float l9_4133=l9_4129;
float l9_4134=0.0;
float l9_4135=1.0;
bool l9_4136=l9_4131;
float l9_4137=l9_4132;
float l9_4138=fast::clamp(l9_4133,l9_4134,l9_4135);
float l9_4139=step(abs(l9_4133-l9_4138),9.9999997e-06);
l9_4137*=(l9_4139+((1.0-float(l9_4136))*(1.0-l9_4139)));
l9_4133=l9_4138;
l9_4129=l9_4133;
l9_4132=l9_4137;
}
l9_4086.x=l9_4129;
l9_4096=l9_4132;
float l9_4140=l9_4086.y;
int l9_4141=l9_4089.y;
bool l9_4142=l9_4095;
float l9_4143=l9_4096;
if ((l9_4141==0)||(l9_4141==3))
{
float l9_4144=l9_4140;
float l9_4145=0.0;
float l9_4146=1.0;
bool l9_4147=l9_4142;
float l9_4148=l9_4143;
float l9_4149=fast::clamp(l9_4144,l9_4145,l9_4146);
float l9_4150=step(abs(l9_4144-l9_4149),9.9999997e-06);
l9_4148*=(l9_4150+((1.0-float(l9_4147))*(1.0-l9_4150)));
l9_4144=l9_4149;
l9_4140=l9_4144;
l9_4143=l9_4148;
}
l9_4086.y=l9_4140;
l9_4096=l9_4143;
float2 l9_4151=l9_4086;
int l9_4152=l9_4084;
int l9_4153=l9_4085;
float l9_4154=l9_4094;
float2 l9_4155=l9_4151;
int l9_4156=l9_4152;
int l9_4157=l9_4153;
float3 l9_4158=float3(0.0);
if (l9_4156==0)
{
l9_4158=float3(l9_4155,0.0);
}
else
{
if (l9_4156==1)
{
l9_4158=float3(l9_4155.x,(l9_4155.y*0.5)+(0.5-(float(l9_4157)*0.5)),0.0);
}
else
{
l9_4158=float3(l9_4155,float(l9_4157));
}
}
float3 l9_4159=l9_4158;
float3 l9_4160=l9_4159;
float4 l9_4161=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_4160.xy,bias(l9_4154));
float4 l9_4162=l9_4161;
if (l9_4092)
{
l9_4162=mix(l9_4093,l9_4162,float4(l9_4096));
}
float4 l9_4163=l9_4162;
l9_4077=l9_4163;
float4 l9_4164=l9_4077;
float4 l9_4165=l9_4164;
float2 l9_4166=l9_4072+float2(l9_4069.x,0.0);
float4 l9_4167=float4(0.0);
int l9_4168;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
{
int l9_4169=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4169=0;
}
else
{
l9_4169=in.varStereoViewID;
}
int l9_4170=l9_4169;
l9_4168=1-l9_4170;
}
else
{
int l9_4171=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4171=0;
}
else
{
l9_4171=in.varStereoViewID;
}
int l9_4172=l9_4171;
l9_4168=l9_4172;
}
int l9_4173=l9_4168;
int l9_4174=sourcePartsLayout_tmp;
int l9_4175=l9_4173;
float2 l9_4176=l9_4166;
bool l9_4177=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_4178=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_4179=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_4180=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_4181=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_4182=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_4183=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_4184=0.0;
bool l9_4185=l9_4182&&(!l9_4180);
float l9_4186=1.0;
float l9_4187=l9_4176.x;
int l9_4188=l9_4179.x;
if (l9_4188==1)
{
l9_4187=fract(l9_4187);
}
else
{
if (l9_4188==2)
{
float l9_4189=fract(l9_4187);
float l9_4190=l9_4187-l9_4189;
float l9_4191=step(0.25,fract(l9_4190*0.5));
l9_4187=mix(l9_4189,1.0-l9_4189,fast::clamp(l9_4191,0.0,1.0));
}
}
l9_4176.x=l9_4187;
float l9_4192=l9_4176.y;
int l9_4193=l9_4179.y;
if (l9_4193==1)
{
l9_4192=fract(l9_4192);
}
else
{
if (l9_4193==2)
{
float l9_4194=fract(l9_4192);
float l9_4195=l9_4192-l9_4194;
float l9_4196=step(0.25,fract(l9_4195*0.5));
l9_4192=mix(l9_4194,1.0-l9_4194,fast::clamp(l9_4196,0.0,1.0));
}
}
l9_4176.y=l9_4192;
if (l9_4180)
{
bool l9_4197=l9_4182;
bool l9_4198;
if (l9_4197)
{
l9_4198=l9_4179.x==3;
}
else
{
l9_4198=l9_4197;
}
float l9_4199=l9_4176.x;
float l9_4200=l9_4181.x;
float l9_4201=l9_4181.z;
bool l9_4202=l9_4198;
float l9_4203=l9_4186;
float l9_4204=fast::clamp(l9_4199,l9_4200,l9_4201);
float l9_4205=step(abs(l9_4199-l9_4204),9.9999997e-06);
l9_4203*=(l9_4205+((1.0-float(l9_4202))*(1.0-l9_4205)));
l9_4199=l9_4204;
l9_4176.x=l9_4199;
l9_4186=l9_4203;
bool l9_4206=l9_4182;
bool l9_4207;
if (l9_4206)
{
l9_4207=l9_4179.y==3;
}
else
{
l9_4207=l9_4206;
}
float l9_4208=l9_4176.y;
float l9_4209=l9_4181.y;
float l9_4210=l9_4181.w;
bool l9_4211=l9_4207;
float l9_4212=l9_4186;
float l9_4213=fast::clamp(l9_4208,l9_4209,l9_4210);
float l9_4214=step(abs(l9_4208-l9_4213),9.9999997e-06);
l9_4212*=(l9_4214+((1.0-float(l9_4211))*(1.0-l9_4214)));
l9_4208=l9_4213;
l9_4176.y=l9_4208;
l9_4186=l9_4212;
}
float2 l9_4215=l9_4176;
bool l9_4216=l9_4177;
float3x3 l9_4217=l9_4178;
if (l9_4216)
{
l9_4215=float2((l9_4217*float3(l9_4215,1.0)).xy);
}
float2 l9_4218=l9_4215;
l9_4176=l9_4218;
float l9_4219=l9_4176.x;
int l9_4220=l9_4179.x;
bool l9_4221=l9_4185;
float l9_4222=l9_4186;
if ((l9_4220==0)||(l9_4220==3))
{
float l9_4223=l9_4219;
float l9_4224=0.0;
float l9_4225=1.0;
bool l9_4226=l9_4221;
float l9_4227=l9_4222;
float l9_4228=fast::clamp(l9_4223,l9_4224,l9_4225);
float l9_4229=step(abs(l9_4223-l9_4228),9.9999997e-06);
l9_4227*=(l9_4229+((1.0-float(l9_4226))*(1.0-l9_4229)));
l9_4223=l9_4228;
l9_4219=l9_4223;
l9_4222=l9_4227;
}
l9_4176.x=l9_4219;
l9_4186=l9_4222;
float l9_4230=l9_4176.y;
int l9_4231=l9_4179.y;
bool l9_4232=l9_4185;
float l9_4233=l9_4186;
if ((l9_4231==0)||(l9_4231==3))
{
float l9_4234=l9_4230;
float l9_4235=0.0;
float l9_4236=1.0;
bool l9_4237=l9_4232;
float l9_4238=l9_4233;
float l9_4239=fast::clamp(l9_4234,l9_4235,l9_4236);
float l9_4240=step(abs(l9_4234-l9_4239),9.9999997e-06);
l9_4238*=(l9_4240+((1.0-float(l9_4237))*(1.0-l9_4240)));
l9_4234=l9_4239;
l9_4230=l9_4234;
l9_4233=l9_4238;
}
l9_4176.y=l9_4230;
l9_4186=l9_4233;
float2 l9_4241=l9_4176;
int l9_4242=l9_4174;
int l9_4243=l9_4175;
float l9_4244=l9_4184;
float2 l9_4245=l9_4241;
int l9_4246=l9_4242;
int l9_4247=l9_4243;
float3 l9_4248=float3(0.0);
if (l9_4246==0)
{
l9_4248=float3(l9_4245,0.0);
}
else
{
if (l9_4246==1)
{
l9_4248=float3(l9_4245.x,(l9_4245.y*0.5)+(0.5-(float(l9_4247)*0.5)),0.0);
}
else
{
l9_4248=float3(l9_4245,float(l9_4247));
}
}
float3 l9_4249=l9_4248;
float3 l9_4250=l9_4249;
float4 l9_4251=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_4250.xy,bias(l9_4244));
float4 l9_4252=l9_4251;
if (l9_4182)
{
l9_4252=mix(l9_4183,l9_4252,float4(l9_4186));
}
float4 l9_4253=l9_4252;
l9_4167=l9_4253;
float4 l9_4254=l9_4167;
float4 l9_4255=l9_4254;
float2 l9_4256=l9_4072+float2(0.0,l9_4069.y);
float4 l9_4257=float4(0.0);
int l9_4258;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
{
int l9_4259=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4259=0;
}
else
{
l9_4259=in.varStereoViewID;
}
int l9_4260=l9_4259;
l9_4258=1-l9_4260;
}
else
{
int l9_4261=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4261=0;
}
else
{
l9_4261=in.varStereoViewID;
}
int l9_4262=l9_4261;
l9_4258=l9_4262;
}
int l9_4263=l9_4258;
int l9_4264=sourcePartsLayout_tmp;
int l9_4265=l9_4263;
float2 l9_4266=l9_4256;
bool l9_4267=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_4268=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_4269=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_4270=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_4271=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_4272=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_4273=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_4274=0.0;
bool l9_4275=l9_4272&&(!l9_4270);
float l9_4276=1.0;
float l9_4277=l9_4266.x;
int l9_4278=l9_4269.x;
if (l9_4278==1)
{
l9_4277=fract(l9_4277);
}
else
{
if (l9_4278==2)
{
float l9_4279=fract(l9_4277);
float l9_4280=l9_4277-l9_4279;
float l9_4281=step(0.25,fract(l9_4280*0.5));
l9_4277=mix(l9_4279,1.0-l9_4279,fast::clamp(l9_4281,0.0,1.0));
}
}
l9_4266.x=l9_4277;
float l9_4282=l9_4266.y;
int l9_4283=l9_4269.y;
if (l9_4283==1)
{
l9_4282=fract(l9_4282);
}
else
{
if (l9_4283==2)
{
float l9_4284=fract(l9_4282);
float l9_4285=l9_4282-l9_4284;
float l9_4286=step(0.25,fract(l9_4285*0.5));
l9_4282=mix(l9_4284,1.0-l9_4284,fast::clamp(l9_4286,0.0,1.0));
}
}
l9_4266.y=l9_4282;
if (l9_4270)
{
bool l9_4287=l9_4272;
bool l9_4288;
if (l9_4287)
{
l9_4288=l9_4269.x==3;
}
else
{
l9_4288=l9_4287;
}
float l9_4289=l9_4266.x;
float l9_4290=l9_4271.x;
float l9_4291=l9_4271.z;
bool l9_4292=l9_4288;
float l9_4293=l9_4276;
float l9_4294=fast::clamp(l9_4289,l9_4290,l9_4291);
float l9_4295=step(abs(l9_4289-l9_4294),9.9999997e-06);
l9_4293*=(l9_4295+((1.0-float(l9_4292))*(1.0-l9_4295)));
l9_4289=l9_4294;
l9_4266.x=l9_4289;
l9_4276=l9_4293;
bool l9_4296=l9_4272;
bool l9_4297;
if (l9_4296)
{
l9_4297=l9_4269.y==3;
}
else
{
l9_4297=l9_4296;
}
float l9_4298=l9_4266.y;
float l9_4299=l9_4271.y;
float l9_4300=l9_4271.w;
bool l9_4301=l9_4297;
float l9_4302=l9_4276;
float l9_4303=fast::clamp(l9_4298,l9_4299,l9_4300);
float l9_4304=step(abs(l9_4298-l9_4303),9.9999997e-06);
l9_4302*=(l9_4304+((1.0-float(l9_4301))*(1.0-l9_4304)));
l9_4298=l9_4303;
l9_4266.y=l9_4298;
l9_4276=l9_4302;
}
float2 l9_4305=l9_4266;
bool l9_4306=l9_4267;
float3x3 l9_4307=l9_4268;
if (l9_4306)
{
l9_4305=float2((l9_4307*float3(l9_4305,1.0)).xy);
}
float2 l9_4308=l9_4305;
l9_4266=l9_4308;
float l9_4309=l9_4266.x;
int l9_4310=l9_4269.x;
bool l9_4311=l9_4275;
float l9_4312=l9_4276;
if ((l9_4310==0)||(l9_4310==3))
{
float l9_4313=l9_4309;
float l9_4314=0.0;
float l9_4315=1.0;
bool l9_4316=l9_4311;
float l9_4317=l9_4312;
float l9_4318=fast::clamp(l9_4313,l9_4314,l9_4315);
float l9_4319=step(abs(l9_4313-l9_4318),9.9999997e-06);
l9_4317*=(l9_4319+((1.0-float(l9_4316))*(1.0-l9_4319)));
l9_4313=l9_4318;
l9_4309=l9_4313;
l9_4312=l9_4317;
}
l9_4266.x=l9_4309;
l9_4276=l9_4312;
float l9_4320=l9_4266.y;
int l9_4321=l9_4269.y;
bool l9_4322=l9_4275;
float l9_4323=l9_4276;
if ((l9_4321==0)||(l9_4321==3))
{
float l9_4324=l9_4320;
float l9_4325=0.0;
float l9_4326=1.0;
bool l9_4327=l9_4322;
float l9_4328=l9_4323;
float l9_4329=fast::clamp(l9_4324,l9_4325,l9_4326);
float l9_4330=step(abs(l9_4324-l9_4329),9.9999997e-06);
l9_4328*=(l9_4330+((1.0-float(l9_4327))*(1.0-l9_4330)));
l9_4324=l9_4329;
l9_4320=l9_4324;
l9_4323=l9_4328;
}
l9_4266.y=l9_4320;
l9_4276=l9_4323;
float2 l9_4331=l9_4266;
int l9_4332=l9_4264;
int l9_4333=l9_4265;
float l9_4334=l9_4274;
float2 l9_4335=l9_4331;
int l9_4336=l9_4332;
int l9_4337=l9_4333;
float3 l9_4338=float3(0.0);
if (l9_4336==0)
{
l9_4338=float3(l9_4335,0.0);
}
else
{
if (l9_4336==1)
{
l9_4338=float3(l9_4335.x,(l9_4335.y*0.5)+(0.5-(float(l9_4337)*0.5)),0.0);
}
else
{
l9_4338=float3(l9_4335,float(l9_4337));
}
}
float3 l9_4339=l9_4338;
float3 l9_4340=l9_4339;
float4 l9_4341=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_4340.xy,bias(l9_4334));
float4 l9_4342=l9_4341;
if (l9_4272)
{
l9_4342=mix(l9_4273,l9_4342,float4(l9_4276));
}
float4 l9_4343=l9_4342;
l9_4257=l9_4343;
float4 l9_4344=l9_4257;
float4 l9_4345=l9_4344;
float2 l9_4346=l9_4072+float2(l9_4069.x,l9_4069.y);
float4 l9_4347=float4(0.0);
int l9_4348;
if ((int(sourcePartsHasSwappedViews_tmp)!=0))
{
int l9_4349=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4349=0;
}
else
{
l9_4349=in.varStereoViewID;
}
int l9_4350=l9_4349;
l9_4348=1-l9_4350;
}
else
{
int l9_4351=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4351=0;
}
else
{
l9_4351=in.varStereoViewID;
}
int l9_4352=l9_4351;
l9_4348=l9_4352;
}
int l9_4353=l9_4348;
int l9_4354=sourcePartsLayout_tmp;
int l9_4355=l9_4353;
float2 l9_4356=l9_4346;
bool l9_4357=(int(SC_USE_UV_TRANSFORM_sourceParts_tmp)!=0);
float3x3 l9_4358=(*sc_set0.UserUniforms).sourcePartsTransform;
int2 l9_4359=int2(SC_SOFTWARE_WRAP_MODE_U_sourceParts_tmp,SC_SOFTWARE_WRAP_MODE_V_sourceParts_tmp);
bool l9_4360=(int(SC_USE_UV_MIN_MAX_sourceParts_tmp)!=0);
float4 l9_4361=(*sc_set0.UserUniforms).sourcePartsUvMinMax;
bool l9_4362=(int(SC_USE_CLAMP_TO_BORDER_sourceParts_tmp)!=0);
float4 l9_4363=(*sc_set0.UserUniforms).sourcePartsBorderColor;
float l9_4364=0.0;
bool l9_4365=l9_4362&&(!l9_4360);
float l9_4366=1.0;
float l9_4367=l9_4356.x;
int l9_4368=l9_4359.x;
if (l9_4368==1)
{
l9_4367=fract(l9_4367);
}
else
{
if (l9_4368==2)
{
float l9_4369=fract(l9_4367);
float l9_4370=l9_4367-l9_4369;
float l9_4371=step(0.25,fract(l9_4370*0.5));
l9_4367=mix(l9_4369,1.0-l9_4369,fast::clamp(l9_4371,0.0,1.0));
}
}
l9_4356.x=l9_4367;
float l9_4372=l9_4356.y;
int l9_4373=l9_4359.y;
if (l9_4373==1)
{
l9_4372=fract(l9_4372);
}
else
{
if (l9_4373==2)
{
float l9_4374=fract(l9_4372);
float l9_4375=l9_4372-l9_4374;
float l9_4376=step(0.25,fract(l9_4375*0.5));
l9_4372=mix(l9_4374,1.0-l9_4374,fast::clamp(l9_4376,0.0,1.0));
}
}
l9_4356.y=l9_4372;
if (l9_4360)
{
bool l9_4377=l9_4362;
bool l9_4378;
if (l9_4377)
{
l9_4378=l9_4359.x==3;
}
else
{
l9_4378=l9_4377;
}
float l9_4379=l9_4356.x;
float l9_4380=l9_4361.x;
float l9_4381=l9_4361.z;
bool l9_4382=l9_4378;
float l9_4383=l9_4366;
float l9_4384=fast::clamp(l9_4379,l9_4380,l9_4381);
float l9_4385=step(abs(l9_4379-l9_4384),9.9999997e-06);
l9_4383*=(l9_4385+((1.0-float(l9_4382))*(1.0-l9_4385)));
l9_4379=l9_4384;
l9_4356.x=l9_4379;
l9_4366=l9_4383;
bool l9_4386=l9_4362;
bool l9_4387;
if (l9_4386)
{
l9_4387=l9_4359.y==3;
}
else
{
l9_4387=l9_4386;
}
float l9_4388=l9_4356.y;
float l9_4389=l9_4361.y;
float l9_4390=l9_4361.w;
bool l9_4391=l9_4387;
float l9_4392=l9_4366;
float l9_4393=fast::clamp(l9_4388,l9_4389,l9_4390);
float l9_4394=step(abs(l9_4388-l9_4393),9.9999997e-06);
l9_4392*=(l9_4394+((1.0-float(l9_4391))*(1.0-l9_4394)));
l9_4388=l9_4393;
l9_4356.y=l9_4388;
l9_4366=l9_4392;
}
float2 l9_4395=l9_4356;
bool l9_4396=l9_4357;
float3x3 l9_4397=l9_4358;
if (l9_4396)
{
l9_4395=float2((l9_4397*float3(l9_4395,1.0)).xy);
}
float2 l9_4398=l9_4395;
l9_4356=l9_4398;
float l9_4399=l9_4356.x;
int l9_4400=l9_4359.x;
bool l9_4401=l9_4365;
float l9_4402=l9_4366;
if ((l9_4400==0)||(l9_4400==3))
{
float l9_4403=l9_4399;
float l9_4404=0.0;
float l9_4405=1.0;
bool l9_4406=l9_4401;
float l9_4407=l9_4402;
float l9_4408=fast::clamp(l9_4403,l9_4404,l9_4405);
float l9_4409=step(abs(l9_4403-l9_4408),9.9999997e-06);
l9_4407*=(l9_4409+((1.0-float(l9_4406))*(1.0-l9_4409)));
l9_4403=l9_4408;
l9_4399=l9_4403;
l9_4402=l9_4407;
}
l9_4356.x=l9_4399;
l9_4366=l9_4402;
float l9_4410=l9_4356.y;
int l9_4411=l9_4359.y;
bool l9_4412=l9_4365;
float l9_4413=l9_4366;
if ((l9_4411==0)||(l9_4411==3))
{
float l9_4414=l9_4410;
float l9_4415=0.0;
float l9_4416=1.0;
bool l9_4417=l9_4412;
float l9_4418=l9_4413;
float l9_4419=fast::clamp(l9_4414,l9_4415,l9_4416);
float l9_4420=step(abs(l9_4414-l9_4419),9.9999997e-06);
l9_4418*=(l9_4420+((1.0-float(l9_4417))*(1.0-l9_4420)));
l9_4414=l9_4419;
l9_4410=l9_4414;
l9_4413=l9_4418;
}
l9_4356.y=l9_4410;
l9_4366=l9_4413;
float2 l9_4421=l9_4356;
int l9_4422=l9_4354;
int l9_4423=l9_4355;
float l9_4424=l9_4364;
float2 l9_4425=l9_4421;
int l9_4426=l9_4422;
int l9_4427=l9_4423;
float3 l9_4428=float3(0.0);
if (l9_4426==0)
{
l9_4428=float3(l9_4425,0.0);
}
else
{
if (l9_4426==1)
{
l9_4428=float3(l9_4425.x,(l9_4425.y*0.5)+(0.5-(float(l9_4427)*0.5)),0.0);
}
else
{
l9_4428=float3(l9_4425,float(l9_4427));
}
}
float3 l9_4429=l9_4428;
float3 l9_4430=l9_4429;
float4 l9_4431=sc_set0.sourceParts.sample(sc_set0.sourcePartsSmpSC,l9_4430.xy,bias(l9_4424));
float4 l9_4432=l9_4431;
if (l9_4362)
{
l9_4432=mix(l9_4363,l9_4432,float4(l9_4366));
}
float4 l9_4433=l9_4432;
l9_4347=l9_4433;
float4 l9_4434=l9_4347;
float4 l9_4435=l9_4434;
float4 l9_4436=mix(l9_4165,l9_4255,float4(l9_4073.x));
float4 l9_4437=mix(l9_4345,l9_4435,float4(l9_4073.x));
float4 l9_4438=mix(l9_4436,l9_4437,float4(l9_4073.y));
float4 l9_4439=l9_4438;
float l9_4440=fast::max(fast::max(fast::max(fast::max(l9_3691.x,l9_3691.y),l9_4065.x),l9_4065.y),l9_4439.x);
l9_4440-=1.0;
float l9_4441=5.0;
float l9_4442=exp(l9_4441*(l9_3691.x-l9_4440));
float l9_4443=exp(l9_4441*(l9_3691.y-l9_4440));
float l9_4444=exp(l9_4441*(l9_4065.x-l9_4440));
float l9_4445=exp(l9_4441*(l9_4065.y-l9_4440));
float l9_4446=exp(l9_4441*(l9_4439.x-l9_4440));
l9_4442/=l9_3121;
l9_4443/=l9_3121;
l9_4444/=l9_3121;
l9_4445/=l9_3121;
l9_4446/=l9_3121;
float4 l9_4447=float4(l9_4442,l9_4443,l9_4444,l9_4445);
float l9_4448=l9_4446;
float4 l9_4449=l9_3123*l9_4447;
float l9_4450=l9_3124*l9_4448;
float l9_4451=(((l9_4449.x+l9_4449.y)+l9_4449.w)+l9_4449.z)+l9_4450;
l9_4451=fast::clamp(l9_4451,0.0,1.0);
float2 l9_4452=float2((l9_15.x+N75_segShiftX)*N75_segRatioX,(l9_15.y+N75_segShiftY)*N75_segRatioY);
float2 l9_4453=l9_4452;
float2 l9_4454=float2(0.0);
l9_4454=(*sc_set0.UserUniforms).drivingHairMaskSize.xy;
float2 l9_4455=l9_4454;
float2 l9_4456=float2(1.0)/l9_4455;
float2 l9_4457=float2(0.0);
l9_4457=(*sc_set0.UserUniforms).drivingHairMaskSize.xy;
float2 l9_4458=l9_4457;
float2 l9_4459=(l9_4453*l9_4458)+float2(0.5);
float2 l9_4460=fract(l9_4459);
float2 l9_4461=float2(0.0);
l9_4461=(*sc_set0.UserUniforms).drivingHairMaskSize.xy;
float2 l9_4462=l9_4461;
l9_4459=(floor(l9_4459)/l9_4462)-(l9_4456/float2(2.0));
float2 l9_4463=l9_4459;
float4 l9_4464=float4(0.0);
int l9_4465;
if ((int(drivingHairMaskHasSwappedViews_tmp)!=0))
{
int l9_4466=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4466=0;
}
else
{
l9_4466=in.varStereoViewID;
}
int l9_4467=l9_4466;
l9_4465=1-l9_4467;
}
else
{
int l9_4468=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4468=0;
}
else
{
l9_4468=in.varStereoViewID;
}
int l9_4469=l9_4468;
l9_4465=l9_4469;
}
int l9_4470=l9_4465;
int l9_4471=drivingHairMaskLayout_tmp;
int l9_4472=l9_4470;
float2 l9_4473=l9_4463;
bool l9_4474=(int(SC_USE_UV_TRANSFORM_drivingHairMask_tmp)!=0);
float3x3 l9_4475=(*sc_set0.UserUniforms).drivingHairMaskTransform;
int2 l9_4476=int2(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp,SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp);
bool l9_4477=(int(SC_USE_UV_MIN_MAX_drivingHairMask_tmp)!=0);
float4 l9_4478=(*sc_set0.UserUniforms).drivingHairMaskUvMinMax;
bool l9_4479=(int(SC_USE_CLAMP_TO_BORDER_drivingHairMask_tmp)!=0);
float4 l9_4480=(*sc_set0.UserUniforms).drivingHairMaskBorderColor;
float l9_4481=0.0;
bool l9_4482=l9_4479&&(!l9_4477);
float l9_4483=1.0;
float l9_4484=l9_4473.x;
int l9_4485=l9_4476.x;
if (l9_4485==1)
{
l9_4484=fract(l9_4484);
}
else
{
if (l9_4485==2)
{
float l9_4486=fract(l9_4484);
float l9_4487=l9_4484-l9_4486;
float l9_4488=step(0.25,fract(l9_4487*0.5));
l9_4484=mix(l9_4486,1.0-l9_4486,fast::clamp(l9_4488,0.0,1.0));
}
}
l9_4473.x=l9_4484;
float l9_4489=l9_4473.y;
int l9_4490=l9_4476.y;
if (l9_4490==1)
{
l9_4489=fract(l9_4489);
}
else
{
if (l9_4490==2)
{
float l9_4491=fract(l9_4489);
float l9_4492=l9_4489-l9_4491;
float l9_4493=step(0.25,fract(l9_4492*0.5));
l9_4489=mix(l9_4491,1.0-l9_4491,fast::clamp(l9_4493,0.0,1.0));
}
}
l9_4473.y=l9_4489;
if (l9_4477)
{
bool l9_4494=l9_4479;
bool l9_4495;
if (l9_4494)
{
l9_4495=l9_4476.x==3;
}
else
{
l9_4495=l9_4494;
}
float l9_4496=l9_4473.x;
float l9_4497=l9_4478.x;
float l9_4498=l9_4478.z;
bool l9_4499=l9_4495;
float l9_4500=l9_4483;
float l9_4501=fast::clamp(l9_4496,l9_4497,l9_4498);
float l9_4502=step(abs(l9_4496-l9_4501),9.9999997e-06);
l9_4500*=(l9_4502+((1.0-float(l9_4499))*(1.0-l9_4502)));
l9_4496=l9_4501;
l9_4473.x=l9_4496;
l9_4483=l9_4500;
bool l9_4503=l9_4479;
bool l9_4504;
if (l9_4503)
{
l9_4504=l9_4476.y==3;
}
else
{
l9_4504=l9_4503;
}
float l9_4505=l9_4473.y;
float l9_4506=l9_4478.y;
float l9_4507=l9_4478.w;
bool l9_4508=l9_4504;
float l9_4509=l9_4483;
float l9_4510=fast::clamp(l9_4505,l9_4506,l9_4507);
float l9_4511=step(abs(l9_4505-l9_4510),9.9999997e-06);
l9_4509*=(l9_4511+((1.0-float(l9_4508))*(1.0-l9_4511)));
l9_4505=l9_4510;
l9_4473.y=l9_4505;
l9_4483=l9_4509;
}
float2 l9_4512=l9_4473;
bool l9_4513=l9_4474;
float3x3 l9_4514=l9_4475;
if (l9_4513)
{
l9_4512=float2((l9_4514*float3(l9_4512,1.0)).xy);
}
float2 l9_4515=l9_4512;
l9_4473=l9_4515;
float l9_4516=l9_4473.x;
int l9_4517=l9_4476.x;
bool l9_4518=l9_4482;
float l9_4519=l9_4483;
if ((l9_4517==0)||(l9_4517==3))
{
float l9_4520=l9_4516;
float l9_4521=0.0;
float l9_4522=1.0;
bool l9_4523=l9_4518;
float l9_4524=l9_4519;
float l9_4525=fast::clamp(l9_4520,l9_4521,l9_4522);
float l9_4526=step(abs(l9_4520-l9_4525),9.9999997e-06);
l9_4524*=(l9_4526+((1.0-float(l9_4523))*(1.0-l9_4526)));
l9_4520=l9_4525;
l9_4516=l9_4520;
l9_4519=l9_4524;
}
l9_4473.x=l9_4516;
l9_4483=l9_4519;
float l9_4527=l9_4473.y;
int l9_4528=l9_4476.y;
bool l9_4529=l9_4482;
float l9_4530=l9_4483;
if ((l9_4528==0)||(l9_4528==3))
{
float l9_4531=l9_4527;
float l9_4532=0.0;
float l9_4533=1.0;
bool l9_4534=l9_4529;
float l9_4535=l9_4530;
float l9_4536=fast::clamp(l9_4531,l9_4532,l9_4533);
float l9_4537=step(abs(l9_4531-l9_4536),9.9999997e-06);
l9_4535*=(l9_4537+((1.0-float(l9_4534))*(1.0-l9_4537)));
l9_4531=l9_4536;
l9_4527=l9_4531;
l9_4530=l9_4535;
}
l9_4473.y=l9_4527;
l9_4483=l9_4530;
float2 l9_4538=l9_4473;
int l9_4539=l9_4471;
int l9_4540=l9_4472;
float l9_4541=l9_4481;
float2 l9_4542=l9_4538;
int l9_4543=l9_4539;
int l9_4544=l9_4540;
float3 l9_4545=float3(0.0);
if (l9_4543==0)
{
l9_4545=float3(l9_4542,0.0);
}
else
{
if (l9_4543==1)
{
l9_4545=float3(l9_4542.x,(l9_4542.y*0.5)+(0.5-(float(l9_4544)*0.5)),0.0);
}
else
{
l9_4545=float3(l9_4542,float(l9_4544));
}
}
float3 l9_4546=l9_4545;
float3 l9_4547=l9_4546;
float4 l9_4548=sc_set0.drivingHairMask.sample(sc_set0.drivingHairMaskSmpSC,l9_4547.xy,bias(l9_4541));
float4 l9_4549=l9_4548;
if (l9_4479)
{
l9_4549=mix(l9_4480,l9_4549,float4(l9_4483));
}
float4 l9_4550=l9_4549;
l9_4464=l9_4550;
float4 l9_4551=l9_4464;
float4 l9_4552=l9_4551;
float2 l9_4553=l9_4459+float2(l9_4456.x,0.0);
float4 l9_4554=float4(0.0);
int l9_4555;
if ((int(drivingHairMaskHasSwappedViews_tmp)!=0))
{
int l9_4556=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4556=0;
}
else
{
l9_4556=in.varStereoViewID;
}
int l9_4557=l9_4556;
l9_4555=1-l9_4557;
}
else
{
int l9_4558=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4558=0;
}
else
{
l9_4558=in.varStereoViewID;
}
int l9_4559=l9_4558;
l9_4555=l9_4559;
}
int l9_4560=l9_4555;
int l9_4561=drivingHairMaskLayout_tmp;
int l9_4562=l9_4560;
float2 l9_4563=l9_4553;
bool l9_4564=(int(SC_USE_UV_TRANSFORM_drivingHairMask_tmp)!=0);
float3x3 l9_4565=(*sc_set0.UserUniforms).drivingHairMaskTransform;
int2 l9_4566=int2(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp,SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp);
bool l9_4567=(int(SC_USE_UV_MIN_MAX_drivingHairMask_tmp)!=0);
float4 l9_4568=(*sc_set0.UserUniforms).drivingHairMaskUvMinMax;
bool l9_4569=(int(SC_USE_CLAMP_TO_BORDER_drivingHairMask_tmp)!=0);
float4 l9_4570=(*sc_set0.UserUniforms).drivingHairMaskBorderColor;
float l9_4571=0.0;
bool l9_4572=l9_4569&&(!l9_4567);
float l9_4573=1.0;
float l9_4574=l9_4563.x;
int l9_4575=l9_4566.x;
if (l9_4575==1)
{
l9_4574=fract(l9_4574);
}
else
{
if (l9_4575==2)
{
float l9_4576=fract(l9_4574);
float l9_4577=l9_4574-l9_4576;
float l9_4578=step(0.25,fract(l9_4577*0.5));
l9_4574=mix(l9_4576,1.0-l9_4576,fast::clamp(l9_4578,0.0,1.0));
}
}
l9_4563.x=l9_4574;
float l9_4579=l9_4563.y;
int l9_4580=l9_4566.y;
if (l9_4580==1)
{
l9_4579=fract(l9_4579);
}
else
{
if (l9_4580==2)
{
float l9_4581=fract(l9_4579);
float l9_4582=l9_4579-l9_4581;
float l9_4583=step(0.25,fract(l9_4582*0.5));
l9_4579=mix(l9_4581,1.0-l9_4581,fast::clamp(l9_4583,0.0,1.0));
}
}
l9_4563.y=l9_4579;
if (l9_4567)
{
bool l9_4584=l9_4569;
bool l9_4585;
if (l9_4584)
{
l9_4585=l9_4566.x==3;
}
else
{
l9_4585=l9_4584;
}
float l9_4586=l9_4563.x;
float l9_4587=l9_4568.x;
float l9_4588=l9_4568.z;
bool l9_4589=l9_4585;
float l9_4590=l9_4573;
float l9_4591=fast::clamp(l9_4586,l9_4587,l9_4588);
float l9_4592=step(abs(l9_4586-l9_4591),9.9999997e-06);
l9_4590*=(l9_4592+((1.0-float(l9_4589))*(1.0-l9_4592)));
l9_4586=l9_4591;
l9_4563.x=l9_4586;
l9_4573=l9_4590;
bool l9_4593=l9_4569;
bool l9_4594;
if (l9_4593)
{
l9_4594=l9_4566.y==3;
}
else
{
l9_4594=l9_4593;
}
float l9_4595=l9_4563.y;
float l9_4596=l9_4568.y;
float l9_4597=l9_4568.w;
bool l9_4598=l9_4594;
float l9_4599=l9_4573;
float l9_4600=fast::clamp(l9_4595,l9_4596,l9_4597);
float l9_4601=step(abs(l9_4595-l9_4600),9.9999997e-06);
l9_4599*=(l9_4601+((1.0-float(l9_4598))*(1.0-l9_4601)));
l9_4595=l9_4600;
l9_4563.y=l9_4595;
l9_4573=l9_4599;
}
float2 l9_4602=l9_4563;
bool l9_4603=l9_4564;
float3x3 l9_4604=l9_4565;
if (l9_4603)
{
l9_4602=float2((l9_4604*float3(l9_4602,1.0)).xy);
}
float2 l9_4605=l9_4602;
l9_4563=l9_4605;
float l9_4606=l9_4563.x;
int l9_4607=l9_4566.x;
bool l9_4608=l9_4572;
float l9_4609=l9_4573;
if ((l9_4607==0)||(l9_4607==3))
{
float l9_4610=l9_4606;
float l9_4611=0.0;
float l9_4612=1.0;
bool l9_4613=l9_4608;
float l9_4614=l9_4609;
float l9_4615=fast::clamp(l9_4610,l9_4611,l9_4612);
float l9_4616=step(abs(l9_4610-l9_4615),9.9999997e-06);
l9_4614*=(l9_4616+((1.0-float(l9_4613))*(1.0-l9_4616)));
l9_4610=l9_4615;
l9_4606=l9_4610;
l9_4609=l9_4614;
}
l9_4563.x=l9_4606;
l9_4573=l9_4609;
float l9_4617=l9_4563.y;
int l9_4618=l9_4566.y;
bool l9_4619=l9_4572;
float l9_4620=l9_4573;
if ((l9_4618==0)||(l9_4618==3))
{
float l9_4621=l9_4617;
float l9_4622=0.0;
float l9_4623=1.0;
bool l9_4624=l9_4619;
float l9_4625=l9_4620;
float l9_4626=fast::clamp(l9_4621,l9_4622,l9_4623);
float l9_4627=step(abs(l9_4621-l9_4626),9.9999997e-06);
l9_4625*=(l9_4627+((1.0-float(l9_4624))*(1.0-l9_4627)));
l9_4621=l9_4626;
l9_4617=l9_4621;
l9_4620=l9_4625;
}
l9_4563.y=l9_4617;
l9_4573=l9_4620;
float2 l9_4628=l9_4563;
int l9_4629=l9_4561;
int l9_4630=l9_4562;
float l9_4631=l9_4571;
float2 l9_4632=l9_4628;
int l9_4633=l9_4629;
int l9_4634=l9_4630;
float3 l9_4635=float3(0.0);
if (l9_4633==0)
{
l9_4635=float3(l9_4632,0.0);
}
else
{
if (l9_4633==1)
{
l9_4635=float3(l9_4632.x,(l9_4632.y*0.5)+(0.5-(float(l9_4634)*0.5)),0.0);
}
else
{
l9_4635=float3(l9_4632,float(l9_4634));
}
}
float3 l9_4636=l9_4635;
float3 l9_4637=l9_4636;
float4 l9_4638=sc_set0.drivingHairMask.sample(sc_set0.drivingHairMaskSmpSC,l9_4637.xy,bias(l9_4631));
float4 l9_4639=l9_4638;
if (l9_4569)
{
l9_4639=mix(l9_4570,l9_4639,float4(l9_4573));
}
float4 l9_4640=l9_4639;
l9_4554=l9_4640;
float4 l9_4641=l9_4554;
float4 l9_4642=l9_4641;
float2 l9_4643=l9_4459+float2(0.0,l9_4456.y);
float4 l9_4644=float4(0.0);
int l9_4645;
if ((int(drivingHairMaskHasSwappedViews_tmp)!=0))
{
int l9_4646=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4646=0;
}
else
{
l9_4646=in.varStereoViewID;
}
int l9_4647=l9_4646;
l9_4645=1-l9_4647;
}
else
{
int l9_4648=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4648=0;
}
else
{
l9_4648=in.varStereoViewID;
}
int l9_4649=l9_4648;
l9_4645=l9_4649;
}
int l9_4650=l9_4645;
int l9_4651=drivingHairMaskLayout_tmp;
int l9_4652=l9_4650;
float2 l9_4653=l9_4643;
bool l9_4654=(int(SC_USE_UV_TRANSFORM_drivingHairMask_tmp)!=0);
float3x3 l9_4655=(*sc_set0.UserUniforms).drivingHairMaskTransform;
int2 l9_4656=int2(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp,SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp);
bool l9_4657=(int(SC_USE_UV_MIN_MAX_drivingHairMask_tmp)!=0);
float4 l9_4658=(*sc_set0.UserUniforms).drivingHairMaskUvMinMax;
bool l9_4659=(int(SC_USE_CLAMP_TO_BORDER_drivingHairMask_tmp)!=0);
float4 l9_4660=(*sc_set0.UserUniforms).drivingHairMaskBorderColor;
float l9_4661=0.0;
bool l9_4662=l9_4659&&(!l9_4657);
float l9_4663=1.0;
float l9_4664=l9_4653.x;
int l9_4665=l9_4656.x;
if (l9_4665==1)
{
l9_4664=fract(l9_4664);
}
else
{
if (l9_4665==2)
{
float l9_4666=fract(l9_4664);
float l9_4667=l9_4664-l9_4666;
float l9_4668=step(0.25,fract(l9_4667*0.5));
l9_4664=mix(l9_4666,1.0-l9_4666,fast::clamp(l9_4668,0.0,1.0));
}
}
l9_4653.x=l9_4664;
float l9_4669=l9_4653.y;
int l9_4670=l9_4656.y;
if (l9_4670==1)
{
l9_4669=fract(l9_4669);
}
else
{
if (l9_4670==2)
{
float l9_4671=fract(l9_4669);
float l9_4672=l9_4669-l9_4671;
float l9_4673=step(0.25,fract(l9_4672*0.5));
l9_4669=mix(l9_4671,1.0-l9_4671,fast::clamp(l9_4673,0.0,1.0));
}
}
l9_4653.y=l9_4669;
if (l9_4657)
{
bool l9_4674=l9_4659;
bool l9_4675;
if (l9_4674)
{
l9_4675=l9_4656.x==3;
}
else
{
l9_4675=l9_4674;
}
float l9_4676=l9_4653.x;
float l9_4677=l9_4658.x;
float l9_4678=l9_4658.z;
bool l9_4679=l9_4675;
float l9_4680=l9_4663;
float l9_4681=fast::clamp(l9_4676,l9_4677,l9_4678);
float l9_4682=step(abs(l9_4676-l9_4681),9.9999997e-06);
l9_4680*=(l9_4682+((1.0-float(l9_4679))*(1.0-l9_4682)));
l9_4676=l9_4681;
l9_4653.x=l9_4676;
l9_4663=l9_4680;
bool l9_4683=l9_4659;
bool l9_4684;
if (l9_4683)
{
l9_4684=l9_4656.y==3;
}
else
{
l9_4684=l9_4683;
}
float l9_4685=l9_4653.y;
float l9_4686=l9_4658.y;
float l9_4687=l9_4658.w;
bool l9_4688=l9_4684;
float l9_4689=l9_4663;
float l9_4690=fast::clamp(l9_4685,l9_4686,l9_4687);
float l9_4691=step(abs(l9_4685-l9_4690),9.9999997e-06);
l9_4689*=(l9_4691+((1.0-float(l9_4688))*(1.0-l9_4691)));
l9_4685=l9_4690;
l9_4653.y=l9_4685;
l9_4663=l9_4689;
}
float2 l9_4692=l9_4653;
bool l9_4693=l9_4654;
float3x3 l9_4694=l9_4655;
if (l9_4693)
{
l9_4692=float2((l9_4694*float3(l9_4692,1.0)).xy);
}
float2 l9_4695=l9_4692;
l9_4653=l9_4695;
float l9_4696=l9_4653.x;
int l9_4697=l9_4656.x;
bool l9_4698=l9_4662;
float l9_4699=l9_4663;
if ((l9_4697==0)||(l9_4697==3))
{
float l9_4700=l9_4696;
float l9_4701=0.0;
float l9_4702=1.0;
bool l9_4703=l9_4698;
float l9_4704=l9_4699;
float l9_4705=fast::clamp(l9_4700,l9_4701,l9_4702);
float l9_4706=step(abs(l9_4700-l9_4705),9.9999997e-06);
l9_4704*=(l9_4706+((1.0-float(l9_4703))*(1.0-l9_4706)));
l9_4700=l9_4705;
l9_4696=l9_4700;
l9_4699=l9_4704;
}
l9_4653.x=l9_4696;
l9_4663=l9_4699;
float l9_4707=l9_4653.y;
int l9_4708=l9_4656.y;
bool l9_4709=l9_4662;
float l9_4710=l9_4663;
if ((l9_4708==0)||(l9_4708==3))
{
float l9_4711=l9_4707;
float l9_4712=0.0;
float l9_4713=1.0;
bool l9_4714=l9_4709;
float l9_4715=l9_4710;
float l9_4716=fast::clamp(l9_4711,l9_4712,l9_4713);
float l9_4717=step(abs(l9_4711-l9_4716),9.9999997e-06);
l9_4715*=(l9_4717+((1.0-float(l9_4714))*(1.0-l9_4717)));
l9_4711=l9_4716;
l9_4707=l9_4711;
l9_4710=l9_4715;
}
l9_4653.y=l9_4707;
l9_4663=l9_4710;
float2 l9_4718=l9_4653;
int l9_4719=l9_4651;
int l9_4720=l9_4652;
float l9_4721=l9_4661;
float2 l9_4722=l9_4718;
int l9_4723=l9_4719;
int l9_4724=l9_4720;
float3 l9_4725=float3(0.0);
if (l9_4723==0)
{
l9_4725=float3(l9_4722,0.0);
}
else
{
if (l9_4723==1)
{
l9_4725=float3(l9_4722.x,(l9_4722.y*0.5)+(0.5-(float(l9_4724)*0.5)),0.0);
}
else
{
l9_4725=float3(l9_4722,float(l9_4724));
}
}
float3 l9_4726=l9_4725;
float3 l9_4727=l9_4726;
float4 l9_4728=sc_set0.drivingHairMask.sample(sc_set0.drivingHairMaskSmpSC,l9_4727.xy,bias(l9_4721));
float4 l9_4729=l9_4728;
if (l9_4659)
{
l9_4729=mix(l9_4660,l9_4729,float4(l9_4663));
}
float4 l9_4730=l9_4729;
l9_4644=l9_4730;
float4 l9_4731=l9_4644;
float4 l9_4732=l9_4731;
float2 l9_4733=l9_4459+float2(l9_4456.x,l9_4456.y);
float4 l9_4734=float4(0.0);
int l9_4735;
if ((int(drivingHairMaskHasSwappedViews_tmp)!=0))
{
int l9_4736=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4736=0;
}
else
{
l9_4736=in.varStereoViewID;
}
int l9_4737=l9_4736;
l9_4735=1-l9_4737;
}
else
{
int l9_4738=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4738=0;
}
else
{
l9_4738=in.varStereoViewID;
}
int l9_4739=l9_4738;
l9_4735=l9_4739;
}
int l9_4740=l9_4735;
int l9_4741=drivingHairMaskLayout_tmp;
int l9_4742=l9_4740;
float2 l9_4743=l9_4733;
bool l9_4744=(int(SC_USE_UV_TRANSFORM_drivingHairMask_tmp)!=0);
float3x3 l9_4745=(*sc_set0.UserUniforms).drivingHairMaskTransform;
int2 l9_4746=int2(SC_SOFTWARE_WRAP_MODE_U_drivingHairMask_tmp,SC_SOFTWARE_WRAP_MODE_V_drivingHairMask_tmp);
bool l9_4747=(int(SC_USE_UV_MIN_MAX_drivingHairMask_tmp)!=0);
float4 l9_4748=(*sc_set0.UserUniforms).drivingHairMaskUvMinMax;
bool l9_4749=(int(SC_USE_CLAMP_TO_BORDER_drivingHairMask_tmp)!=0);
float4 l9_4750=(*sc_set0.UserUniforms).drivingHairMaskBorderColor;
float l9_4751=0.0;
bool l9_4752=l9_4749&&(!l9_4747);
float l9_4753=1.0;
float l9_4754=l9_4743.x;
int l9_4755=l9_4746.x;
if (l9_4755==1)
{
l9_4754=fract(l9_4754);
}
else
{
if (l9_4755==2)
{
float l9_4756=fract(l9_4754);
float l9_4757=l9_4754-l9_4756;
float l9_4758=step(0.25,fract(l9_4757*0.5));
l9_4754=mix(l9_4756,1.0-l9_4756,fast::clamp(l9_4758,0.0,1.0));
}
}
l9_4743.x=l9_4754;
float l9_4759=l9_4743.y;
int l9_4760=l9_4746.y;
if (l9_4760==1)
{
l9_4759=fract(l9_4759);
}
else
{
if (l9_4760==2)
{
float l9_4761=fract(l9_4759);
float l9_4762=l9_4759-l9_4761;
float l9_4763=step(0.25,fract(l9_4762*0.5));
l9_4759=mix(l9_4761,1.0-l9_4761,fast::clamp(l9_4763,0.0,1.0));
}
}
l9_4743.y=l9_4759;
if (l9_4747)
{
bool l9_4764=l9_4749;
bool l9_4765;
if (l9_4764)
{
l9_4765=l9_4746.x==3;
}
else
{
l9_4765=l9_4764;
}
float l9_4766=l9_4743.x;
float l9_4767=l9_4748.x;
float l9_4768=l9_4748.z;
bool l9_4769=l9_4765;
float l9_4770=l9_4753;
float l9_4771=fast::clamp(l9_4766,l9_4767,l9_4768);
float l9_4772=step(abs(l9_4766-l9_4771),9.9999997e-06);
l9_4770*=(l9_4772+((1.0-float(l9_4769))*(1.0-l9_4772)));
l9_4766=l9_4771;
l9_4743.x=l9_4766;
l9_4753=l9_4770;
bool l9_4773=l9_4749;
bool l9_4774;
if (l9_4773)
{
l9_4774=l9_4746.y==3;
}
else
{
l9_4774=l9_4773;
}
float l9_4775=l9_4743.y;
float l9_4776=l9_4748.y;
float l9_4777=l9_4748.w;
bool l9_4778=l9_4774;
float l9_4779=l9_4753;
float l9_4780=fast::clamp(l9_4775,l9_4776,l9_4777);
float l9_4781=step(abs(l9_4775-l9_4780),9.9999997e-06);
l9_4779*=(l9_4781+((1.0-float(l9_4778))*(1.0-l9_4781)));
l9_4775=l9_4780;
l9_4743.y=l9_4775;
l9_4753=l9_4779;
}
float2 l9_4782=l9_4743;
bool l9_4783=l9_4744;
float3x3 l9_4784=l9_4745;
if (l9_4783)
{
l9_4782=float2((l9_4784*float3(l9_4782,1.0)).xy);
}
float2 l9_4785=l9_4782;
l9_4743=l9_4785;
float l9_4786=l9_4743.x;
int l9_4787=l9_4746.x;
bool l9_4788=l9_4752;
float l9_4789=l9_4753;
if ((l9_4787==0)||(l9_4787==3))
{
float l9_4790=l9_4786;
float l9_4791=0.0;
float l9_4792=1.0;
bool l9_4793=l9_4788;
float l9_4794=l9_4789;
float l9_4795=fast::clamp(l9_4790,l9_4791,l9_4792);
float l9_4796=step(abs(l9_4790-l9_4795),9.9999997e-06);
l9_4794*=(l9_4796+((1.0-float(l9_4793))*(1.0-l9_4796)));
l9_4790=l9_4795;
l9_4786=l9_4790;
l9_4789=l9_4794;
}
l9_4743.x=l9_4786;
l9_4753=l9_4789;
float l9_4797=l9_4743.y;
int l9_4798=l9_4746.y;
bool l9_4799=l9_4752;
float l9_4800=l9_4753;
if ((l9_4798==0)||(l9_4798==3))
{
float l9_4801=l9_4797;
float l9_4802=0.0;
float l9_4803=1.0;
bool l9_4804=l9_4799;
float l9_4805=l9_4800;
float l9_4806=fast::clamp(l9_4801,l9_4802,l9_4803);
float l9_4807=step(abs(l9_4801-l9_4806),9.9999997e-06);
l9_4805*=(l9_4807+((1.0-float(l9_4804))*(1.0-l9_4807)));
l9_4801=l9_4806;
l9_4797=l9_4801;
l9_4800=l9_4805;
}
l9_4743.y=l9_4797;
l9_4753=l9_4800;
float2 l9_4808=l9_4743;
int l9_4809=l9_4741;
int l9_4810=l9_4742;
float l9_4811=l9_4751;
float2 l9_4812=l9_4808;
int l9_4813=l9_4809;
int l9_4814=l9_4810;
float3 l9_4815=float3(0.0);
if (l9_4813==0)
{
l9_4815=float3(l9_4812,0.0);
}
else
{
if (l9_4813==1)
{
l9_4815=float3(l9_4812.x,(l9_4812.y*0.5)+(0.5-(float(l9_4814)*0.5)),0.0);
}
else
{
l9_4815=float3(l9_4812,float(l9_4814));
}
}
float3 l9_4816=l9_4815;
float3 l9_4817=l9_4816;
float4 l9_4818=sc_set0.drivingHairMask.sample(sc_set0.drivingHairMaskSmpSC,l9_4817.xy,bias(l9_4811));
float4 l9_4819=l9_4818;
if (l9_4749)
{
l9_4819=mix(l9_4750,l9_4819,float4(l9_4753));
}
float4 l9_4820=l9_4819;
l9_4734=l9_4820;
float4 l9_4821=l9_4734;
float4 l9_4822=l9_4821;
float4 l9_4823=mix(l9_4552,l9_4642,float4(l9_4460.x));
float4 l9_4824=mix(l9_4732,l9_4822,float4(l9_4460.x));
float4 l9_4825=mix(l9_4823,l9_4824,float4(l9_4460.y));
float l9_4826=l9_4825.x;
float l9_4827=(step(0.5,l9_3313)*l9_4451)*(1.0-l9_4826);
float3 l9_4828=(l9_3221.xyz*l9_4827)+(l9_105.xyz*(1.0-l9_4827));
N75_Result=float4(l9_4828,1.0);
param_22=N75_Result;
Result_N75=param_22;
FinalColor=Result_N75;
float param_24=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_24<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_4829=gl_FragCoord;
float2 l9_4830=floor(mod(l9_4829.xy,float2(4.0)));
float l9_4831=(mod(dot(l9_4830,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_24<l9_4831)
{
discard_fragment();
}
}
float4 param_25=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_4832=param_25;
float4 l9_4833=l9_4832;
float l9_4834=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_4834=l9_4833.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_4834=fast::clamp(l9_4833.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_4834=fast::clamp(dot(l9_4833.xyz,float3(l9_4833.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_4834=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_4834=(1.0-dot(l9_4833.xyz,float3(0.33333001)))*l9_4833.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_4834=(1.0-fast::clamp(dot(l9_4833.xyz,float3(1.0)),0.0,1.0))*l9_4833.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_4834=fast::clamp(dot(l9_4833.xyz,float3(1.0)),0.0,1.0)*l9_4833.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_4834=fast::clamp(dot(l9_4833.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_4834=fast::clamp(dot(l9_4833.xyz,float3(1.0)),0.0,1.0)*l9_4833.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_4834=dot(l9_4833.xyz,float3(0.33333001))*l9_4833.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_4834=1.0-fast::clamp(dot(l9_4833.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_4834=fast::clamp(dot(l9_4833.xyz,float3(1.0)),0.0,1.0);
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
float l9_4835=l9_4834;
float l9_4836=l9_4835;
float l9_4837=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_4836;
float3 l9_4838=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_4832.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_4839=float4(l9_4838.x,l9_4838.y,l9_4838.z,l9_4837);
param_25=l9_4839;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_25=float4(param_25.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_4840=param_25;
float4 l9_4841=float4(0.0);
float4 l9_4842=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_4843=out.sc_FragData0;
l9_4842=l9_4843;
}
else
{
float4 l9_4844=gl_FragCoord;
float2 l9_4845=l9_4844.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_4846=l9_4845;
float2 l9_4847=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_4848=1;
int l9_4849=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4849=0;
}
else
{
l9_4849=in.varStereoViewID;
}
int l9_4850=l9_4849;
int l9_4851=l9_4850;
float3 l9_4852=float3(l9_4846,0.0);
int l9_4853=l9_4848;
int l9_4854=l9_4851;
if (l9_4853==1)
{
l9_4852.y=((2.0*l9_4852.y)+float(l9_4854))-1.0;
}
float2 l9_4855=l9_4852.xy;
l9_4847=l9_4855;
}
else
{
l9_4847=l9_4846;
}
float2 l9_4856=l9_4847;
float2 l9_4857=l9_4856;
float2 l9_4858=l9_4857;
float2 l9_4859=l9_4858;
float l9_4860=0.0;
int l9_4861;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_4862=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4862=0;
}
else
{
l9_4862=in.varStereoViewID;
}
int l9_4863=l9_4862;
l9_4861=1-l9_4863;
}
else
{
int l9_4864=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4864=0;
}
else
{
l9_4864=in.varStereoViewID;
}
int l9_4865=l9_4864;
l9_4861=l9_4865;
}
int l9_4866=l9_4861;
float2 l9_4867=l9_4859;
int l9_4868=sc_ScreenTextureLayout_tmp;
int l9_4869=l9_4866;
float l9_4870=l9_4860;
float2 l9_4871=l9_4867;
int l9_4872=l9_4868;
int l9_4873=l9_4869;
float3 l9_4874=float3(0.0);
if (l9_4872==0)
{
l9_4874=float3(l9_4871,0.0);
}
else
{
if (l9_4872==1)
{
l9_4874=float3(l9_4871.x,(l9_4871.y*0.5)+(0.5-(float(l9_4873)*0.5)),0.0);
}
else
{
l9_4874=float3(l9_4871,float(l9_4873));
}
}
float3 l9_4875=l9_4874;
float3 l9_4876=l9_4875;
float4 l9_4877=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_4876.xy,bias(l9_4870));
float4 l9_4878=l9_4877;
float4 l9_4879=l9_4878;
l9_4842=l9_4879;
}
float4 l9_4880=l9_4842;
float3 l9_4881=l9_4880.xyz;
float3 l9_4882=l9_4881;
float3 l9_4883=l9_4840.xyz;
float3 l9_4884=definedBlend(l9_4882,l9_4883,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_4841=float4(l9_4884.x,l9_4884.y,l9_4884.z,l9_4841.w);
float3 l9_4885=mix(l9_4881,l9_4841.xyz,float3(l9_4840.w));
l9_4841=float4(l9_4885.x,l9_4885.y,l9_4885.z,l9_4841.w);
l9_4841.w=1.0;
float4 l9_4886=l9_4841;
param_25=l9_4886;
}
else
{
if ((int(sc_Voxelization_tmp)!=0))
{
float4 l9_4887=float4(in.varScreenPos.xyz,1.0);
param_25=l9_4887;
}
else
{
if ((int(sc_OutputBounds_tmp)!=0))
{
float4 l9_4888=gl_FragCoord;
float l9_4889=fast::clamp(abs(l9_4888.z),0.0,1.0);
float4 l9_4890=float4(l9_4889,1.0-l9_4889,1.0,1.0);
param_25=l9_4890;
}
else
{
float4 l9_4891=param_25;
float4 l9_4892=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_4892=float4(mix(float3(1.0),l9_4891.xyz,float3(l9_4891.w)),l9_4891.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_4893=l9_4891.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_4893=fast::clamp(l9_4893,0.0,1.0);
}
l9_4892=float4(l9_4891.xyz*l9_4893,l9_4893);
}
else
{
l9_4892=l9_4891;
}
}
float4 l9_4894=l9_4892;
param_25=l9_4894;
}
}
}
}
}
float4 l9_4895=param_25;
FinalColor=l9_4895;
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
float4 l9_4896=float4(0.0);
l9_4896=float4(0.0);
float4 l9_4897=l9_4896;
float4 Cost=l9_4897;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float4 param_26=FinalColor;
FinalColor=sc_OutputMotionVectorIfNeeded(param_26,in.varPosAndMotion,in.varNormalAndMotion);
float4 param_27=FinalColor;
float4 l9_4898=param_27;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_4898.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.sc_FragData0=l9_4898;
return out;
}
} // FRAGMENT SHADER
