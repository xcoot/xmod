.class public final Lcom/android/server/display/feature/DisplayManagerFlags;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "DisplayManagerFlags"


# instance fields
.field public final mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mAdaptiveToneImprovements2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mHdrClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mIdleScreenRefreshRateTimeout:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mNbmControllerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mOffloadControlsDozeAutoBrightness:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mOffloadDozeOverrideHoldsWakelock:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mPortInDisplayLayoutFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mRefreshRateVotingTelemetry:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mVsyncLowLightVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

.field public final mVsyncLowPowerVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "DisplayManagerFlags"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/feature/DisplayManagerFlags;->DEBUG:Z

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_port_in_display_layout"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPortInDisplayLayoutFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 21
    .line 22
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 23
    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_connected_display_management"

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 37
    .line 38
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 39
    .line 40
    const/16 v2, 0xe

    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_nbm_controller"

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mNbmControllerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 54
    .line 55
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 56
    .line 57
    const/16 v2, 0x12

    .line 58
    .line 59
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_hdr_clamper"

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 69
    .line 70
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 71
    .line 72
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    const/16 v2, 0x13

    .line 75
    .line 76
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 77
    .line 78
    .line 79
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_1"

    .line 80
    .line 81
    .line 82
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 83
    .line 84
    .line 85
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 86
    .line 87
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 88
    .line 89
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 90
    .line 91
    const/16 v2, 0x14

    .line 92
    .line 93
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 94
    .line 95
    .line 96
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_2"

    .line 97
    .line 98
    .line 99
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 103
    .line 104
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 105
    .line 106
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 107
    .line 108
    const/16 v2, 0x16

    .line 109
    .line 110
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 111
    .line 112
    .line 113
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_display_offload"

    .line 114
    .line 115
    .line 116
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 120
    .line 121
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 122
    .line 123
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 124
    .line 125
    const/16 v2, 0x17

    .line 126
    .line 127
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 128
    .line 129
    .line 130
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_mode_limit_for_external_display"

    .line 131
    .line 132
    .line 133
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 134
    .line 135
    .line 136
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 137
    .line 138
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 139
    .line 140
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 141
    .line 142
    const/16 v2, 0x18

    .line 143
    .line 144
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 145
    .line 146
    .line 147
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_connected_display_error_handling"

    .line 148
    .line 149
    .line 150
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 154
    .line 155
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 156
    .line 157
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 158
    .line 159
    const/16 v2, 0x19

    .line 160
    .line 161
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 162
    .line 163
    .line 164
    const-string/jumbo v2, "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

    .line 165
    .line 166
    .line 167
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 168
    .line 169
    .line 170
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 171
    .line 172
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 173
    .line 174
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 175
    .line 176
    const/16 v2, 0x15

    .line 177
    .line 178
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 179
    .line 180
    .line 181
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_power_throttling_clamper"

    .line 182
    .line 183
    .line 184
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 185
    .line 186
    .line 187
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 188
    .line 189
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 190
    .line 191
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 192
    .line 193
    const/16 v2, 0x1a

    .line 194
    .line 195
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 196
    .line 197
    .line 198
    const-string/jumbo v2, "com.android.server.display.feature.flags.even_dimmer"

    .line 199
    .line 200
    .line 201
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 202
    .line 203
    .line 204
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 205
    .line 206
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 207
    .line 208
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 209
    .line 210
    const/16 v2, 0x1b

    .line 211
    .line 212
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 213
    .line 214
    .line 215
    const-string/jumbo v2, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    .line 216
    .line 217
    .line 218
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 219
    .line 220
    .line 221
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 222
    .line 223
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 224
    .line 225
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 226
    .line 227
    const/16 v2, 0x1c

    .line 228
    .line 229
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 230
    .line 231
    .line 232
    const-string/jumbo v2, "com.android.server.display.feature.flags.brightness_int_range_user_perception"

    .line 233
    .line 234
    .line 235
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 236
    .line 237
    .line 238
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 239
    .line 240
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 241
    .line 242
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 243
    .line 244
    const/16 v2, 0x1d

    .line 245
    .line 246
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 247
    .line 248
    .line 249
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_restrict_display_modes"

    .line 250
    .line 251
    .line 252
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 253
    .line 254
    .line 255
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 256
    .line 257
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 258
    .line 259
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;

    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;-><init>(I)V

    .line 263
    .line 264
    .line 265
    const-string/jumbo v2, "com.android.server.display.feature.flags.resolution_backup_restore"

    .line 266
    .line 267
    .line 268
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 269
    .line 270
    .line 271
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 272
    .line 273
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 274
    .line 275
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;

    .line 276
    .line 277
    const/4 v2, 0x1

    .line 278
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;-><init>(I)V

    .line 279
    .line 280
    .line 281
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_vsync_low_power_vote"

    .line 282
    .line 283
    .line 284
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 285
    .line 286
    .line 287
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowPowerVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 288
    .line 289
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 290
    .line 291
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;

    .line 292
    .line 293
    const/4 v2, 0x2

    .line 294
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;-><init>(I)V

    .line 295
    .line 296
    .line 297
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_vsync_low_light_vote"

    .line 298
    .line 299
    .line 300
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 301
    .line 302
    .line 303
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowLightVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 304
    .line 305
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 306
    .line 307
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 308
    .line 309
    const/4 v2, 0x1

    .line 310
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 311
    .line 312
    .line 313
    const-string/jumbo v2, "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

    .line 314
    .line 315
    .line 316
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 317
    .line 318
    .line 319
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 320
    .line 321
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 322
    .line 323
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 324
    .line 325
    const/4 v2, 0x2

    .line 326
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 327
    .line 328
    .line 329
    const-string/jumbo v2, "com.android.server.display.feature.flags.auto_brightness_modes"

    .line 330
    .line 331
    .line 332
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 333
    .line 334
    .line 335
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 336
    .line 337
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 338
    .line 339
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 340
    .line 341
    const/4 v2, 0x4

    .line 342
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 343
    .line 344
    .line 345
    const-string/jumbo v2, "com.android.server.display.feature.flags.fast_hdr_transitions"

    .line 346
    .line 347
    .line 348
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 349
    .line 350
    .line 351
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 352
    .line 353
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 354
    .line 355
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 356
    .line 357
    const/4 v2, 0x5

    .line 358
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 359
    .line 360
    .line 361
    const-string/jumbo v2, "com.android.server.display.feature.flags.always_rotate_display_device"

    .line 362
    .line 363
    .line 364
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 365
    .line 366
    .line 367
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 368
    .line 369
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 370
    .line 371
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 372
    .line 373
    const/4 v2, 0x6

    .line 374
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 375
    .line 376
    .line 377
    const-string/jumbo v2, "com.android.server.display.feature.flags.refresh_rate_voting_telemetry"

    .line 378
    .line 379
    .line 380
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 381
    .line 382
    .line 383
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateVotingTelemetry:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 384
    .line 385
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 386
    .line 387
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 388
    .line 389
    const/4 v2, 0x7

    .line 390
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 391
    .line 392
    .line 393
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_pixel_anisotropy_correction"

    .line 394
    .line 395
    .line 396
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 397
    .line 398
    .line 399
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 400
    .line 401
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 402
    .line 403
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 404
    .line 405
    const/16 v2, 0x8

    .line 406
    .line 407
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 408
    .line 409
    .line 410
    const-string/jumbo v2, "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

    .line 411
    .line 412
    .line 413
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 414
    .line 415
    .line 416
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 417
    .line 418
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 419
    .line 420
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 421
    .line 422
    const/16 v2, 0x9

    .line 423
    .line 424
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 425
    .line 426
    .line 427
    const-string/jumbo v2, "com.android.server.display.feature.flags.idle_screen_refresh_rate_timeout"

    .line 428
    .line 429
    .line 430
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 431
    .line 432
    .line 433
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIdleScreenRefreshRateTimeout:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 434
    .line 435
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 436
    .line 437
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 438
    .line 439
    const/16 v2, 0xa

    .line 440
    .line 441
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 442
    .line 443
    .line 444
    const-string/jumbo v2, "com.android.server.display.feature.flags.refactor_display_power_controller"

    .line 445
    .line 446
    .line 447
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 448
    .line 449
    .line 450
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 451
    .line 452
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 453
    .line 454
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 455
    .line 456
    const/16 v2, 0xb

    .line 457
    .line 458
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 459
    .line 460
    .line 461
    const-string/jumbo v2, "com.android.server.display.feature.flags.use_fusion_prox_sensor"

    .line 462
    .line 463
    .line 464
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 465
    .line 466
    .line 467
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 468
    .line 469
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 470
    .line 471
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 472
    .line 473
    const/16 v2, 0xc

    .line 474
    .line 475
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 476
    .line 477
    .line 478
    const-string/jumbo v2, "com.android.server.display.feature.flags.offload_controls_doze_auto_brightness"

    .line 479
    .line 480
    .line 481
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 482
    .line 483
    .line 484
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadControlsDozeAutoBrightness:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 485
    .line 486
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 487
    .line 488
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 489
    .line 490
    const/16 v2, 0xd

    .line 491
    .line 492
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 493
    .line 494
    .line 495
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

    .line 496
    .line 497
    .line 498
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 499
    .line 500
    .line 501
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 502
    .line 503
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 504
    .line 505
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 506
    .line 507
    const/16 v2, 0xf

    .line 508
    .line 509
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 510
    .line 511
    .line 512
    const-string/jumbo v2, "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

    .line 513
    .line 514
    .line 515
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 516
    .line 517
    .line 518
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 519
    .line 520
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 521
    .line 522
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 523
    .line 524
    const/16 v2, 0x10

    .line 525
    .line 526
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 527
    .line 528
    .line 529
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

    .line 530
    .line 531
    .line 532
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 533
    .line 534
    .line 535
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 536
    .line 537
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 538
    .line 539
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 540
    .line 541
    const/16 v2, 0x11

    .line 542
    .line 543
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 544
    .line 545
    .line 546
    const-string/jumbo v2, "com.android.server.display.feature.flags.offload_doze_override_holds_wakelock"

    .line 547
    .line 548
    .line 549
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 550
    .line 551
    .line 552
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadDozeOverrideHoldsWakelock:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 553
    .line 554
    return-void
.end method


# virtual methods
.method public final areAutoBrightnessModesEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "DisplayManagerFlags:"

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 10
    .line 11
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 16
    .line 17
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 22
    .line 23
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 28
    .line 29
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 34
    .line 35
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 40
    .line 41
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 46
    .line 47
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 52
    .line 53
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mNbmControllerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 58
    .line 59
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 64
    .line 65
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 70
    .line 71
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 76
    .line 77
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 82
    .line 83
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 88
    .line 89
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 94
    .line 95
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 100
    .line 101
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 106
    .line 107
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 112
    .line 113
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateVotingTelemetry:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 118
    .line 119
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 124
    .line 125
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 130
    .line 131
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIdleScreenRefreshRateTimeout:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 136
    .line 137
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 142
    .line 143
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 148
    .line 149
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 154
    .line 155
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadControlsDozeAutoBrightness:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 160
    .line 161
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 166
    .line 167
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 172
    .line 173
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 178
    .line 179
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadDozeOverrideHoldsWakelock:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 184
    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public final getUseFusionProxSensorFlagName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mName:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0
.end method

.method public final ignoreAppPreferredRefreshRateRequest()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAdaptiveTone1Enabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAdaptiveTone2Enabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAlwaysRotateDisplayDeviceEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBackUpSmoothDisplayAndForcePeakRefreshRateEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBrightnessIntRangeUserPerceptionEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBrightnessWearBedtimeModeClamperEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isConnectedDisplayErrorHandlingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isConnectedDisplayManagementEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDisplayOffloadEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDisplayResolutionRangeVotingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDisplaysRefreshRatesSynchronizationEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isEvenDimmerEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isExternalDisplayLimitModeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isFastHdrTransitionsEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isHdrClamperEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isIdleScreenRefreshRateTimeoutEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIdleScreenRefreshRateTimeout:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isNbmControllerEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mNbmControllerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isOffloadDozeOverrideHoldsWakelockEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadDozeOverrideHoldsWakelock:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPeakRefreshRatePhysicalLimitEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPixelAnisotropyCorrectionInLogicalDisplayEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPortInDisplayLayoutEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPortInDisplayLayoutFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPowerThrottlingClamperEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRefactorDisplayPowerControllerEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRefreshRateVotingTelemetryEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateVotingTelemetry:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isResolutionBackupRestoreEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRestrictDisplayModesEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSensorBasedBrightnessThrottlingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSmallAreaDetectionEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSynthetic60HzModesEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isUseFusionProxSensorEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isUserPreferredModeVoteEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isVsyncLowLightVoteEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowLightVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isVsyncLowPowerVoteEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowPowerVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final offloadControlsDozeAutoBrightness()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadControlsDozeAutoBrightness:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
