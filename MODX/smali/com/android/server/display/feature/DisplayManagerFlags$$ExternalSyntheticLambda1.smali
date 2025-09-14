.class public final synthetic Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch p0, :pswitch_data_0

    .line 6
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableRestrictDisplayModes()Z

    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :pswitch_0
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->brightnessIntRangeUserPerception()Z

    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object p0

    .line 23
    return-object p0

    .line 24
    :pswitch_1
    invoke-static {}, Lcom/android/graphics/surfaceflinger/flags/Flags;->enableSmallAreaDetection()Z

    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :pswitch_2
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->evenDimmer()Z

    .line 36
    move-result p0

    .line 37
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :pswitch_3
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->backUpSmoothDisplayAndForcePeakRefreshRate()Z

    .line 45
    move-result p0

    .line 46
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :pswitch_4
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableConnectedDisplayErrorHandling()Z

    .line 54
    move-result p0

    .line 55
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :pswitch_5
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableModeLimitForExternalDisplay()Z

    .line 63
    move-result p0

    .line 64
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object p0

    .line 68
    return-object p0

    .line 69
    :pswitch_6
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableDisplayOffload()Z

    .line 72
    move-result p0

    .line 73
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :pswitch_7
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enablePowerThrottlingClamper()Z

    .line 81
    move-result p0

    .line 82
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 85
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :pswitch_8
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableAdaptiveToneImprovements2()Z

    .line 90
    move-result p0

    .line 91
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object p0

    .line 95
    return-object p0

    .line 96
    :pswitch_9
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableAdaptiveToneImprovements1()Z

    .line 99
    move-result p0

    .line 100
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 103
    move-result-object p0

    .line 104
    return-object p0

    .line 105
    :pswitch_a
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableHdrClamper()Z

    .line 108
    move-result p0

    .line 109
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    move-result-object p0

    .line 113
    return-object p0

    .line 114
    :pswitch_b
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->offloadDozeOverrideHoldsWakelock()Z

    .line 117
    move-result p0

    .line 118
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 121
    move-result-object p0

    .line 122
    return-object p0

    .line 123
    :pswitch_c
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableSynthetic60hzModes()Z

    .line 126
    move-result p0

    .line 127
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 130
    move-result-object p0

    .line 131
    return-object p0

    .line 132
    :pswitch_d
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->ignoreAppPreferredRefreshRateRequest()Z

    .line 135
    move-result p0

    .line 136
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    move-result-object p0

    .line 140
    return-object p0

    .line 141
    :pswitch_e
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableNbmController()Z

    .line 144
    move-result p0

    .line 145
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 148
    move-result-object p0

    .line 149
    return-object p0

    .line 150
    :pswitch_f
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enablePeakRefreshRatePhysicalLimit()Z

    .line 153
    move-result p0

    .line 154
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    move-result-object p0

    .line 158
    return-object p0

    .line 159
    :pswitch_10
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->offloadControlsDozeAutoBrightness()Z

    .line 162
    move-result p0

    .line 163
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 166
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    :pswitch_11
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->useFusionProxSensor()Z

    .line 171
    move-result p0

    .line 172
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 175
    move-result-object p0

    .line 176
    return-object p0

    .line 177
    :pswitch_12
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->refactorDisplayPowerController()Z

    .line 180
    move-result p0

    .line 181
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 184
    move-result-object p0

    .line 185
    return-object p0

    .line 186
    :pswitch_13
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->idleScreenRefreshRateTimeout()Z

    .line 189
    move-result p0

    .line 190
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 193
    move-result-object p0

    .line 194
    return-object p0

    .line 195
    :pswitch_14
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->sensorBasedBrightnessThrottling()Z

    .line 198
    move-result p0

    .line 199
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 202
    move-result-object p0

    .line 203
    return-object p0

    .line 204
    :pswitch_15
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enablePixelAnisotropyCorrection()Z

    .line 207
    move-result p0

    .line 208
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 211
    move-result-object p0

    .line 212
    return-object p0

    .line 213
    :pswitch_16
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->refreshRateVotingTelemetry()Z

    .line 216
    move-result p0

    .line 217
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 220
    move-result-object p0

    .line 221
    return-object p0

    .line 222
    :pswitch_17
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->alwaysRotateDisplayDevice()Z

    .line 225
    move-result p0

    .line 226
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 229
    move-result-object p0

    .line 230
    return-object p0

    .line 231
    :pswitch_18
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->fastHdrTransitions()Z

    .line 234
    move-result p0

    .line 235
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 238
    move-result-object p0

    .line 239
    return-object p0

    .line 240
    :pswitch_19
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enableConnectedDisplayManagement()Z

    .line 243
    move-result p0

    .line 244
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 247
    move-result-object p0

    .line 248
    return-object p0

    .line 249
    :pswitch_1a
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->autoBrightnessModes()Z

    .line 252
    move-result p0

    .line 253
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 256
    move-result-object p0

    .line 257
    return-object p0

    .line 258
    :pswitch_1b
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->brightnessWearBedtimeModeClamper()Z

    .line 261
    move-result p0

    .line 262
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 265
    move-result-object p0

    .line 266
    return-object p0

    .line 267
    :pswitch_1c
    invoke-static {}, Lcom/android/server/display/feature/flags/Flags;->enablePortInDisplayLayout()Z

    .line 270
    move-result p0

    .line 271
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 274
    move-result-object p0

    .line 275
    return-object p0

    .line 276
    nop

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
