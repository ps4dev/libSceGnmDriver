###################################

ifndef Ps4Sdk
ifdef ps4sdk
Ps4Sdk := $(ps4sdk)
endif
ifdef PS4SDK
Ps4Sdk := $(PS4SDK)
endif
ifndef Ps4Sdk
$(error Neither PS4SDK, Ps4Sdk nor ps4sdk set)
endif
endif

###################################

target := ps4_stub_lib
OutPath := lib

###################################

include $(Ps4Sdk)/make/ps4sdk.mk

###################################

$(eval $(call generateModule, \
	libSceGnmDriver, \
		sceGnmAddEqEvent \
		sceGnmAreSubmitsAllowed \
		sceGnmDebugHardwareStatus \
		sceGnmDeleteEqEvent \
		sceGnmDingDong \
		sceGnmDisableMipStatsReport \
		sceGnmDispatchInitDefaultHardwareState \
		sceGnmDrawInitDefaultHardwareState \
		sceGnmDrawInitDefaultHardwareState175 \
		sceGnmDriverCaptureInProgress \
		sceGnmDriverTriggerCapture \
		sceGnmFlushGarlic \
		sceGnmGetEqEventType \
		sceGnmGetEqTimeStamp \
		sceGnmGetTheTessellationFactorRingBufferBaseAddress \
		sceGnmInsertPopMarker \
		sceGnmInsertPushColorMarker \
		sceGnmInsertPushMarker \
		sceGnmInsertSetColorMarker \
		sceGnmInsertSetMarker \
		sceGnmInsertWaitFlipDone \
		sceGnmIsUserPaEnabled \
		sceGnmLogicalCuIndexToPhysicalCuIndex \
		sceGnmLogicalCuMaskToPhysicalCuMask \
		sceGnmMapComputeQueue \
		sceGnmRegisterGnmLiveCallbackConfig \
		sceGnmRequestFlipAndSubmitDone \
		sceGnmRequestMipStatsReportAndReset \
		sceGnmSetCsShader \
		sceGnmSetEsShader \
		sceGnmSetGsRingSizes \
		sceGnmSetGsShader \
		sceGnmSetHsShader \
		sceGnmSetLsShader \
		sceGnmSetPsShader \
		sceGnmSetSpiEnableSqCounters \
		sceGnmSetSpiEnableSqCountersForUnitInstance \
		sceGnmSetupMipStatsReport \
		sceGnmSetVsShader \
		sceGnmSubmitAndFlipCommandBuffers \
		sceGnmSubmitCommandBuffers \
		sceGnmSubmitDone \
		sceGnmUnmapComputeQueue \
		sceGnmValidateCommandBuffers \
		sceRazorCaptureCommandBuffersOnlyImmediate \
		sceRazorCaptureCommandBuffersOnlySinceLastFlip \
		sceRazorCaptureImmediate \
		sceRazorCaptureSinceLastFlip \
		sceRazorIsLoaded \
))

###################################
