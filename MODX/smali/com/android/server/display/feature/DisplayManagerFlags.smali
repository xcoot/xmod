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

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/feature/DisplayManagerFlags;->DEBUG:Z

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 6
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 12
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_port_in_display_layout"

    .line 15
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 18
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPortInDisplayLayoutFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 20
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 22
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 28
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_connected_display_management"

    .line 31
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 34
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 36
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 38
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 40
    const/16 v2, 0xe

    .line 42
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 45
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_nbm_controller"

    .line 48
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 51
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mNbmControllerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 53
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 55
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 57
    const/16 v2, 0x12

    .line 59
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 62
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_hdr_clamper"

    .line 65
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 68
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 70
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 72
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 74
    const/16 v2, 0x13

    .line 76
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 79
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_1"

    .line 82
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 85
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 87
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 89
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 91
    const/16 v2, 0x14

    .line 93
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 96
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_adaptive_tone_improvements_2"

    .line 99
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 102
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 104
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 106
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 108
    const/16 v2, 0x16

    .line 110
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 113
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_display_offload"

    .line 116
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 119
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 121
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 123
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 125
    const/16 v2, 0x17

    .line 127
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 130
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_mode_limit_for_external_display"

    .line 133
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 136
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 138
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 140
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 142
    const/16 v2, 0x18

    .line 144
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 147
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_connected_display_error_handling"

    .line 150
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 153
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 155
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 157
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 159
    const/16 v2, 0x19

    .line 161
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 164
    const-string/jumbo v2, "com.android.server.display.feature.flags.back_up_smooth_display_and_force_peak_refresh_rate"

    .line 167
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 170
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 172
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 174
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 176
    const/16 v2, 0x15

    .line 178
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 181
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_power_throttling_clamper"

    .line 184
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 187
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 189
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 191
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 193
    const/16 v2, 0x1a

    .line 195
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 198
    const-string/jumbo v2, "com.android.server.display.feature.flags.even_dimmer"

    .line 201
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 204
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 206
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 208
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 210
    const/16 v2, 0x1b

    .line 212
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 215
    const-string/jumbo v2, "com.android.graphics.surfaceflinger.flags.enable_small_area_detection"

    .line 218
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 221
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 223
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 225
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 227
    const/16 v2, 0x1c

    .line 229
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 232
    const-string/jumbo v2, "com.android.server.display.feature.flags.brightness_int_range_user_perception"

    .line 235
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 238
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 240
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 242
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 244
    const/16 v2, 0x1d

    .line 246
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 249
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_restrict_display_modes"

    .line 252
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 255
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 257
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 259
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;

    .line 261
    const/4 v2, 0x0

    .line 262
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;-><init>(I)V

    .line 265
    const-string/jumbo v2, "com.android.server.display.feature.flags.resolution_backup_restore"

    .line 268
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 271
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 273
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 275
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;

    .line 277
    const/4 v2, 0x1

    .line 278
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;-><init>(I)V

    .line 281
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_vsync_low_power_vote"

    .line 284
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 287
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowPowerVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 289
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 291
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;

    .line 293
    const/4 v2, 0x2

    .line 294
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda7;-><init>(I)V

    .line 297
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_vsync_low_light_vote"

    .line 300
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 303
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowLightVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 305
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 307
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 309
    const/4 v2, 0x1

    .line 310
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 313
    const-string/jumbo v2, "com.android.server.display.feature.flags.brightness_wear_bedtime_mode_clamper"

    .line 316
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 319
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 321
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 323
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 325
    const/4 v2, 0x2

    .line 326
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 329
    const-string/jumbo v2, "com.android.server.display.feature.flags.auto_brightness_modes"

    .line 332
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 335
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 337
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 339
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 341
    const/4 v2, 0x4

    .line 342
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 345
    const-string/jumbo v2, "com.android.server.display.feature.flags.fast_hdr_transitions"

    .line 348
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 351
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 353
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 355
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 357
    const/4 v2, 0x5

    .line 358
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 361
    const-string/jumbo v2, "com.android.server.display.feature.flags.always_rotate_display_device"

    .line 364
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 367
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 369
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 371
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 373
    const/4 v2, 0x6

    .line 374
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 377
    const-string/jumbo v2, "com.android.server.display.feature.flags.refresh_rate_voting_telemetry"

    .line 380
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 383
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateVotingTelemetry:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 385
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 387
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 389
    const/4 v2, 0x7

    .line 390
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 393
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_pixel_anisotropy_correction"

    .line 396
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 399
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 401
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 403
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 405
    const/16 v2, 0x8

    .line 407
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 410
    const-string/jumbo v2, "com.android.server.display.feature.flags.sensor_based_brightness_throttling"

    .line 413
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 416
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 418
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 420
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 422
    const/16 v2, 0x9

    .line 424
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 427
    const-string/jumbo v2, "com.android.server.display.feature.flags.idle_screen_refresh_rate_timeout"

    .line 430
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 433
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIdleScreenRefreshRateTimeout:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 435
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 437
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 439
    const/16 v2, 0xa

    .line 441
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 444
    const-string/jumbo v2, "com.android.server.display.feature.flags.refactor_display_power_controller"

    .line 447
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 450
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 452
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 454
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 456
    const/16 v2, 0xb

    .line 458
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 461
    const-string/jumbo v2, "com.android.server.display.feature.flags.use_fusion_prox_sensor"

    .line 464
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 467
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 469
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 471
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 473
    const/16 v2, 0xc

    .line 475
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 478
    const-string/jumbo v2, "com.android.server.display.feature.flags.offload_controls_doze_auto_brightness"

    .line 481
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 484
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadControlsDozeAutoBrightness:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 486
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 488
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 490
    const/16 v2, 0xd

    .line 492
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 495
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_peak_refresh_rate_physical_limit"

    .line 498
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 501
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 503
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 505
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 507
    const/16 v2, 0xf

    .line 509
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 512
    const-string/jumbo v2, "com.android.server.display.feature.flags.ignore_app_preferred_refresh_rate_request"

    .line 515
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 518
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 520
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 522
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 524
    const/16 v2, 0x10

    .line 526
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 529
    const-string/jumbo v2, "com.android.server.display.feature.flags.enable_synthetic_60hz_modes"

    .line 532
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 535
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 537
    new-instance v0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 539
    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;

    .line 541
    const/16 v2, 0x11

    .line 543
    invoke-direct {v1, v2}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda1;-><init>(I)V

    .line 546
    const-string/jumbo v2, "com.android.server.display.feature.flags.offload_doze_override_holds_wakelock"

    .line 549
    invoke-direct {v0, v2, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    .line 552
    iput-object v0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadDozeOverrideHoldsWakelock:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 554
    return-void
.end method


# virtual methods
.method public final areAutoBrightnessModesEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "DisplayManagerFlags:"

    .line 3
    const-string v1, " "

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 11
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 17
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 23
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 29
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v0

    .line 33
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 35
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    move-result-object v0

    .line 39
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 41
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 47
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    move-result-object v0

    .line 51
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 53
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mNbmControllerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 59
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    move-result-object v0

    .line 63
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 65
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 71
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 77
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    move-result-object v0

    .line 81
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 83
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 89
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 95
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAutoBrightnessModesFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 101
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 107
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    move-result-object v0

    .line 111
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 113
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    move-result-object v0

    .line 117
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateVotingTelemetry:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 119
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    move-result-object v0

    .line 123
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 125
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    move-result-object v0

    .line 129
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 131
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    move-result-object v0

    .line 135
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIdleScreenRefreshRateTimeout:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 137
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-result-object v0

    .line 141
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 143
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    move-result-object v0

    .line 147
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 149
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    move-result-object v0

    .line 153
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 155
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    move-result-object v0

    .line 159
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadControlsDozeAutoBrightness:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 161
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 167
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    move-result-object v0

    .line 171
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 173
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    move-result-object v0

    .line 177
    iget-object v2, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 179
    invoke-static {v0, v2, p1, v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;Ljava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    move-result-object v0

    .line 183
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadDozeOverrideHoldsWakelock:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 185
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public final getUseFusionProxSensorFlagName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->mName:Ljava/lang/String;

    .line 5
    return-object p0
.end method

.method public final ignoreAppPreferredRefreshRateRequest()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIgnoreAppPreferredRefreshRate:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAdaptiveTone1Enabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements1:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAdaptiveTone2Enabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAdaptiveToneImprovements2:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isAlwaysRotateDisplayDeviceEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mAlwaysRotateDisplayDevice:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBackUpSmoothDisplayAndForcePeakRefreshRateEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBackUpSmoothDisplayAndForcePeakRefreshRateFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBrightnessIntRangeUserPerceptionEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessIntRangeUserPerceptionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isBrightnessWearBedtimeModeClamperEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mBrightnessWearBedtimeModeClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isConnectedDisplayErrorHandlingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayErrorHandlingFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isConnectedDisplayManagementEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mConnectedDisplayManagementFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDisplayOffloadEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mDisplayOffloadFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDisplayResolutionRangeVotingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isDisplaysRefreshRatesSynchronizationEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isEvenDimmerEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mEvenDimmerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isExternalDisplayLimitModeEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isFastHdrTransitionsEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mFastHdrTransitions:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isHdrClamperEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mHdrClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isIdleScreenRefreshRateTimeoutEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mIdleScreenRefreshRateTimeout:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isNbmControllerEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mNbmControllerFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isOffloadDozeOverrideHoldsWakelockEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadDozeOverrideHoldsWakelock:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPeakRefreshRatePhysicalLimitEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPeakRefreshRatePhysicalLimit:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPixelAnisotropyCorrectionInLogicalDisplayEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPixelAnisotropyCorrectionEnabled:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPortInDisplayLayoutEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPortInDisplayLayoutFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isPowerThrottlingClamperEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mPowerThrottlingClamperFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRefactorDisplayPowerControllerEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefactorDisplayPowerController:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRefreshRateVotingTelemetryEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRefreshRateVotingTelemetry:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isResolutionBackupRestoreEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mResolutionBackupRestore:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isRestrictDisplayModesEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mRestrictDisplayModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSensorBasedBrightnessThrottlingEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSensorBasedBrightnessThrottling:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSmallAreaDetectionEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSmallAreaDetectionFlagState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isSynthetic60HzModesEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mSynthetic60hzModes:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isUseFusionProxSensorEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mUseFusionProxSensor:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isUserPreferredModeVoteEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mExternalDisplayLimitModeState:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isVsyncLowLightVoteEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowLightVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final isVsyncLowPowerVoteEnabled()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowPowerVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final offloadControlsDozeAutoBrightness()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/feature/DisplayManagerFlags;->mOffloadControlsDozeAutoBrightness:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 6
    move-result p0

    .line 7
    return p0
.end method
