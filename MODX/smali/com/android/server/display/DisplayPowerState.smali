.class public final Lcom/android/server/display/DisplayPowerState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final COLOR_FADE_LEVEL:Lcom/android/server/display/DisplayPowerState$1;

.field public static final COUNTER_COLOR_FADE:Ljava/lang/String;

.field public static final DEBUG:Z

.field public static final SCREEN_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

.field public static final SCREEN_SDR_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;


# instance fields
.field public final mAsyncDestroyExecutor:Ljava/util/concurrent/Executor;

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCleanListener:Ljava/lang/Runnable;

.field public final mColorFade:Lcom/android/server/display/ColorFade;

.field public mColorFadeDrawPending:Z

.field final mColorFadeDrawRunnable:Ljava/lang/Runnable;

.field public mColorFadeLevel:F

.field public mColorFadePrepared:Z

.field public mColorFadeReady:Z

.field public final mDisplayId:I

.field public final mHandler:Landroid/os/Handler;

.field public final mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

.field public mScreenBrightness:F

.field public mScreenReady:Z

.field public mScreenState:I

.field public mScreenUpdatePending:Z

.field public final mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

.field public mSdrScreenBrightness:F

.field public volatile mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "DisplayPowerState"

    .line 3
    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    sput-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 9
    const-string v0, "ColorFadeLevel"

    .line 11
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    .line 15
    const-string/jumbo v1, "electronBeamLevel"

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;I)V

    .line 22
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Lcom/android/server/display/DisplayPowerState$1;

    .line 24
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    .line 26
    const-string/jumbo v1, "screenBrightnessFloat"

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;I)V

    .line 33
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    .line 35
    new-instance v0, Lcom/android/server/display/DisplayPowerState$1;

    .line 37
    const-string/jumbo v1, "sdrScreenBrightnessFloat"

    .line 40
    const/4 v2, 0x2

    .line 41
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState$1;-><init>(Ljava/lang/String;I)V

    .line 44
    sput-object v0, Lcom/android/server/display/DisplayPowerState;->SCREEN_SDR_BRIGHTNESS_FLOAT:Lcom/android/server/display/DisplayPowerState$1;

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;IILjava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;I)V

    .line 10
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

    .line 12
    new-instance v0, Lcom/android/server/display/DisplayPowerState$4;

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerState$4;-><init>(Lcom/android/server/display/DisplayPowerState;I)V

    .line 18
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Landroid/os/Handler;

    .line 22
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Z)V

    .line 25
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 27
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 33
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 35
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 37
    new-instance p1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 39
    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;-><init>(Lcom/android/server/display/DisplayPowerState;)V

    .line 42
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mPhotonicModulator:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 47
    iput p3, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    .line 49
    iput-object p5, p0, Lcom/android/server/display/DisplayPowerState;->mAsyncDestroyExecutor:Ljava/util/concurrent/Executor;

    .line 51
    iput p4, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 53
    const/high16 p1, 0x3f800000    # 1.0f

    .line 55
    if-eq p4, v1, :cond_0

    .line 57
    move p2, p1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/high16 p2, -0x40800000    # -1.0f

    .line 61
    :goto_0
    iput p2, p0, Lcom/android/server/display/DisplayPowerState;->mScreenBrightness:F

    .line 63
    iput p2, p0, Lcom/android/server/display/DisplayPowerState;->mSdrScreenBrightness:F

    .line 65
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 68
    const/4 p2, 0x0

    .line 69
    iput-boolean p2, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 71
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 73
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 75
    return-void
.end method


# virtual methods
.method public final dismissColorFade()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/display/DisplayPowerState;->COUNTER_COLOR_FADE:Ljava/lang/String;

    .line 3
    const/16 v1, 0x64

    .line 5
    const-wide/32 v2, 0x20000

    .line 8
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 11
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 21
    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 24
    return-void
.end method

.method public final prepareColorFade(Landroid/content/Context;I)Z
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    const/4 v6, 0x2

    .line 8
    const/4 v9, 0x1

    .line 9
    sget-object v10, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 11
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    move-result-wide v11

    .line 18
    iput-wide v11, v10, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    .line 20
    iget-object v10, v0, Lcom/android/server/display/DisplayPowerState;->mColorFade:Lcom/android/server/display/ColorFade;

    .line 22
    const/4 v11, 0x0

    .line 23
    if-eqz v10, :cond_20

    .line 25
    const-string v12, "ColorFade"

    .line 27
    const-string v13, "ColorFade start [PREPARE]  : mode="

    .line 29
    invoke-static {v2, v13, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    iput-object v1, v10, Lcom/android/server/display/ColorFade;->mContext:Landroid/content/Context;

    .line 34
    iput v2, v10, Lcom/android/server/display/ColorFade;->mMode:I

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    move-result-wide v12

    .line 40
    iget-object v14, v10, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 42
    iget v15, v10, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 44
    invoke-virtual {v14, v15}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    .line 47
    move-result-object v14

    .line 48
    if-nez v14, :cond_0

    .line 50
    goto/16 :goto_d

    .line 52
    :cond_0
    iget-boolean v15, v10, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 54
    if-eqz v15, :cond_2

    .line 56
    iget-object v15, v10, Lcom/android/server/display/ColorFade;->mResolutionChangedCallback:Lcom/android/server/display/ColorFade$1;

    .line 58
    monitor-enter v15

    .line 59
    :try_start_0
    iget-boolean v1, v10, Lcom/android/server/display/ColorFade;->mIsResolutionChanged:Z

    .line 61
    if-eqz v1, :cond_1

    .line 63
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->handleResolutionChange()Z

    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 69
    const-string v1, "ColorFade"

    .line 71
    const-string v2, "Failed to handle resolution change!"

    .line 73
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 79
    monitor-exit v15

    .line 80
    goto/16 :goto_d

    .line 82
    :catchall_0
    move-exception v0

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    const-string v1, "ColorFade"

    .line 87
    const-string v2, "ColorFade is already prepared"

    .line 89
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto/16 :goto_8

    .line 94
    :goto_0
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    throw v0

    .line 96
    :cond_2
    const-string v15, "ColorFade"

    .line 98
    const-string v8, "ColorFade start display info."

    .line 100
    invoke-static {v15, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    move-result-wide v17

    .line 107
    iget v8, v14, Landroid/view/DisplayInfo;->layerStack:I

    .line 109
    iput v8, v10, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 111
    invoke-virtual {v14}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 114
    move-result v8

    .line 115
    iput v8, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 117
    invoke-virtual {v14}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 120
    move-result v8

    .line 121
    iput v8, v10, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 123
    iget v15, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 125
    int-to-float v15, v15

    .line 126
    float-to-double v4, v15

    .line 127
    int-to-float v8, v8

    .line 128
    float-to-double v7, v8

    .line 129
    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    .line 132
    move-result-wide v4

    .line 133
    double-to-float v4, v4

    .line 134
    iput v4, v10, Lcom/android/server/display/ColorFade;->mMaxRadius:F

    .line 136
    const/high16 v5, 0x3f000000    # 0.5f

    .line 138
    mul-float/2addr v4, v5

    .line 139
    iput v4, v10, Lcom/android/server/display/ColorFade;->mMinRadius:F

    .line 141
    iget v4, v14, Landroid/view/DisplayInfo;->colorMode:I

    .line 143
    const/16 v5, 0x9

    .line 145
    if-ne v4, v5, :cond_3

    .line 147
    move v4, v9

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    move v4, v11

    .line 150
    :goto_1
    iput-boolean v9, v10, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 155
    move-result-wide v7

    .line 156
    const-string v5, "ColorFade"

    .line 158
    const-string v15, "ColorFade end display info."

    .line 160
    invoke-static {v5, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    sub-long v17, v7, v17

    .line 165
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 168
    move-result-object v5

    .line 169
    const-string v15, "ColorFade"

    .line 171
    const-string v3, "ColorFade start setColorFadeNightDim"

    .line 173
    invoke-static {v15, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v3, v10, Lcom/android/server/display/ColorFade;->mContext:Landroid/content/Context;

    .line 178
    const-string/jumbo v15, "mDNIe"

    .line 181
    invoke-virtual {v3, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 184
    move-result-object v3

    .line 185
    check-cast v3, Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 187
    iput-object v3, v10, Lcom/android/server/display/ColorFade;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 189
    invoke-virtual {v3, v9}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setColorFadeNightDim(Z)Z

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 195
    move-result-wide v20

    .line 196
    const-string v3, "ColorFade"

    .line 198
    const-string v15, "ColorFade end setColorFadeNightDim"

    .line 200
    invoke-static {v3, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sub-long v20, v20, v7

    .line 205
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 208
    move-result-object v3

    .line 209
    iget v7, v10, Lcom/android/server/display/ColorFade;->mMode:I

    .line 211
    if-ne v7, v6, :cond_5

    .line 213
    invoke-virtual {v10, v11}, Lcom/android/server/display/ColorFade;->createSurfaceControl(Z)Z

    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_4

    .line 219
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 222
    goto/16 :goto_d

    .line 224
    :cond_4
    const-string v1, "ColorFade"

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    .line 228
    const-string v4, "ColorFade End [PREPARE]  : mode="

    .line 230
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v2, " , <Time> displayInfo: "

    .line 238
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v2

    .line 248
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    goto/16 :goto_8

    .line 253
    :cond_5
    const-string v7, "ColorFade"

    .line 255
    const-string v8, "ColorFade start screenshot."

    .line 257
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 263
    move-result-wide v7

    .line 264
    iget-object v15, v10, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 266
    iget v9, v10, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 268
    invoke-virtual {v15, v9}, Landroid/hardware/display/DisplayManagerInternal;->systemScreenshot(I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    .line 271
    move-result-object v9

    .line 272
    if-nez v9, :cond_6

    .line 274
    const-string v9, "ColorFade"

    .line 276
    const-string v15, "Failed to take screenshot. Buffer is null"

    .line 278
    invoke-static {v9, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v9, 0x0

    .line 282
    :cond_6
    if-nez v9, :cond_7

    .line 284
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 287
    goto/16 :goto_d

    .line 289
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 292
    move-result-wide v20

    .line 293
    const-string v15, "ColorFade"

    .line 295
    const-string v6, "ColorFade end screenshot."

    .line 297
    invoke-static {v15, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sub-long v20, v20, v7

    .line 302
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 305
    move-result-object v6

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 309
    move-result-wide v7

    .line 310
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 313
    move-result-object v15

    .line 314
    invoke-static {v15}, Lcom/android/internal/policy/TransitionAnimation;->hasProtectedContent(Landroid/hardware/HardwareBuffer;)Z

    .line 317
    move-result v15

    .line 318
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->containsSecureLayers()Z

    .line 321
    move-result v11

    .line 322
    invoke-virtual {v10, v11}, Lcom/android/server/display/ColorFade;->createSurfaceControl(Z)Z

    .line 325
    move-result v11

    .line 326
    if-nez v11, :cond_8

    .line 328
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 331
    goto/16 :goto_d

    .line 333
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 336
    move-result-wide v22

    .line 337
    sub-long v22, v22, v7

    .line 339
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 342
    move-result-object v7

    .line 343
    const-string v8, "ColorFade"

    .line 345
    const-string v11, "ColorFade start egl and surface."

    .line 347
    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 353
    move-result-wide v22

    .line 354
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 356
    if-nez v8, :cond_a

    .line 358
    const/4 v8, 0x0

    .line 359
    invoke-static {v8}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    .line 362
    move-result-object v11

    .line 363
    iput-object v11, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 365
    sget-object v8, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    .line 367
    if-ne v11, v8, :cond_9

    .line 369
    const-string/jumbo v1, "eglGetDisplay"

    .line 372
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 375
    goto/16 :goto_2

    .line 377
    :cond_9
    const/4 v8, 0x2

    .line 378
    new-array v0, v8, [I

    .line 380
    move-wide/from16 v24, v12

    .line 382
    const/4 v8, 0x0

    .line 383
    const/4 v12, 0x1

    .line 384
    invoke-static {v11, v0, v8, v0, v12}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    .line 387
    move-result v0

    .line 388
    if-nez v0, :cond_b

    .line 390
    const/4 v0, 0x0

    .line 391
    iput-object v0, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 393
    const-string/jumbo v0, "eglInitialize"

    .line 396
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 399
    goto/16 :goto_2

    .line 401
    :cond_a
    move-wide/from16 v24, v12

    .line 403
    :cond_b
    iget-object v0, v10, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 405
    const-string v8, "ColorFade"

    .line 407
    if-nez v0, :cond_e

    .line 409
    const/16 v0, 0xb

    .line 411
    new-array v0, v0, [I

    .line 413
    fill-array-data v0, :array_0

    .line 416
    const/4 v11, 0x1

    .line 417
    new-array v12, v11, [I

    .line 419
    const/4 v11, 0x1

    .line 420
    new-array v13, v11, [Landroid/opengl/EGLConfig;

    .line 422
    iget-object v11, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 424
    const/16 v30, 0x0

    .line 426
    const/16 v33, 0x0

    .line 428
    const/16 v28, 0x0

    .line 430
    move-object/from16 v26, v11

    .line 432
    move-object/from16 v27, v0

    .line 434
    move-object/from16 v29, v13

    .line 436
    const/4 v0, 0x1

    .line 437
    move/from16 v31, v0

    .line 439
    move-object/from16 v32, v12

    .line 441
    invoke-static/range {v26 .. v33}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    .line 444
    move-result v0

    .line 445
    if-nez v0, :cond_c

    .line 447
    const-string/jumbo v0, "eglChooseConfig"

    .line 450
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 453
    goto :goto_2

    .line 454
    :cond_c
    const/4 v0, 0x0

    .line 455
    aget v11, v12, v0

    .line 457
    if-gtz v11, :cond_d

    .line 459
    const-string/jumbo v1, "no valid config found"

    .line 462
    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    goto :goto_2

    .line 466
    :cond_d
    aget-object v11, v13, v0

    .line 468
    iput-object v11, v10, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 470
    :cond_e
    iget-object v0, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 472
    if-eqz v0, :cond_f

    .line 474
    iget-boolean v11, v10, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    .line 476
    if-eq v15, v11, :cond_f

    .line 478
    iget-object v11, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 480
    invoke-static {v11, v0}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 483
    const/4 v0, 0x0

    .line 484
    iput-object v0, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 486
    :cond_f
    iget-object v0, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 488
    if-nez v0, :cond_12

    .line 490
    const/4 v0, 0x5

    .line 491
    new-array v11, v0, [I

    .line 493
    const/16 v0, 0x3098

    .line 495
    const/4 v12, 0x0

    .line 496
    aput v0, v11, v12

    .line 498
    const/4 v0, 0x1

    .line 499
    const/4 v12, 0x2

    .line 500
    aput v12, v11, v0

    .line 502
    const/16 v13, 0x3038

    .line 504
    aput v13, v11, v12

    .line 506
    const/16 v18, 0x3

    .line 508
    aput v13, v11, v18

    .line 510
    const/16 v16, 0x4

    .line 512
    aput v13, v11, v16

    .line 514
    if-eqz v15, :cond_10

    .line 516
    const/16 v13, 0x32c0

    .line 518
    aput v13, v11, v12

    .line 520
    aput v0, v11, v18

    .line 522
    :cond_10
    move v0, v15

    .line 523
    iget-object v12, v10, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 525
    iget-object v13, v10, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 527
    sget-object v15, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 529
    move-object/from16 v19, v3

    .line 531
    const/4 v3, 0x0

    .line 532
    invoke-static {v12, v13, v15, v11, v3}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    .line 535
    move-result-object v11

    .line 536
    iput-object v11, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    .line 540
    const-string v11, "ColorFade createEglContext DisplayID : "

    .line 542
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 545
    iget v11, v10, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 547
    invoke-static {v3, v11, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 550
    iget-object v3, v10, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 552
    if-nez v3, :cond_13

    .line 554
    const-string/jumbo v0, "eglCreateContext"

    .line 557
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 560
    :cond_11
    :goto_2
    move-object/from16 v0, p0

    .line 562
    goto/16 :goto_c

    .line 564
    :cond_12
    move-object/from16 v19, v3

    .line 566
    move v0, v15

    .line 567
    :cond_13
    invoke-virtual {v10, v0, v4}, Lcom/android/server/display/ColorFade;->createEglSurface(ZZ)Z

    .line 570
    move-result v3

    .line 571
    if-eqz v3, :cond_11

    .line 573
    iget v3, v14, Landroid/view/DisplayInfo;->rotation:I

    .line 575
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 578
    move-result v8

    .line 579
    if-nez v8, :cond_14

    .line 581
    const/4 v12, 0x1

    .line 582
    goto :goto_2

    .line 583
    :cond_14
    :try_start_2
    iget-boolean v8, v10, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 585
    iget-object v11, v10, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 587
    if-nez v8, :cond_16

    .line 589
    const/4 v8, 0x0

    .line 590
    const/4 v12, 0x1

    .line 591
    :try_start_3
    invoke-static {v12, v11, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 594
    const-string/jumbo v8, "glGenTextures"

    .line 597
    invoke-static {v8}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 600
    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 601
    if-eqz v8, :cond_15

    .line 603
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 606
    goto :goto_2

    .line 607
    :cond_15
    :try_start_4
    iput-boolean v12, v10, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 609
    goto :goto_3

    .line 610
    :catchall_1
    move-exception v0

    .line 611
    goto/16 :goto_b

    .line 613
    :cond_16
    :goto_3
    const-string v8, "ColorFade"

    .line 615
    const-string v12, "ColorFade setScreenshot"

    .line 617
    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v8, Landroid/graphics/SurfaceTexture;

    .line 622
    const/4 v12, 0x0

    .line 623
    aget v11, v11, v12

    .line 625
    invoke-direct {v8, v11}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 628
    new-instance v11, Landroid/view/Surface;

    .line 630
    invoke-direct {v11, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 633
    :try_start_5
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 636
    move-result-object v12

    .line 637
    invoke-virtual {v9}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 640
    move-result-object v9

    .line 641
    invoke-virtual {v11, v12, v9}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)V

    .line 644
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 647
    iget-object v9, v10, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 649
    invoke-virtual {v8, v9}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 652
    :try_start_6
    invoke-virtual {v11}, Landroid/view/Surface;->release()V

    .line 655
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    .line 658
    const/4 v8, 0x1

    .line 659
    if-ne v3, v8, :cond_17

    .line 661
    const/4 v3, 0x2

    .line 662
    goto :goto_4

    .line 663
    :cond_17
    const/4 v8, 0x2

    .line 664
    if-ne v3, v8, :cond_18

    .line 666
    const/4 v3, 0x4

    .line 667
    goto :goto_4

    .line 668
    :cond_18
    const/4 v8, 0x3

    .line 669
    if-ne v3, v8, :cond_19

    .line 671
    const/4 v3, 0x6

    .line 672
    goto :goto_4

    .line 673
    :cond_19
    const/4 v3, 0x0

    .line 674
    :goto_4
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 676
    const/4 v9, 0x0

    .line 677
    invoke-virtual {v8, v3, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 680
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 682
    const/4 v11, 0x1

    .line 683
    add-int/lit8 v12, v3, 0x1

    .line 685
    invoke-virtual {v8, v12, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 688
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 690
    const/4 v11, 0x2

    .line 691
    add-int/2addr v11, v3

    .line 692
    rem-int/lit8 v11, v11, 0x8

    .line 694
    invoke-virtual {v8, v11, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 697
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 699
    const/4 v11, 0x3

    .line 700
    add-int/lit8 v12, v3, 0x3

    .line 702
    rem-int/lit8 v12, v12, 0x8

    .line 704
    const/high16 v11, 0x3f800000    # 1.0f

    .line 706
    invoke-virtual {v8, v12, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 709
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 711
    const/4 v12, 0x4

    .line 712
    add-int/2addr v12, v3

    .line 713
    rem-int/lit8 v12, v12, 0x8

    .line 715
    invoke-virtual {v8, v12, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 718
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 720
    const/4 v12, 0x5

    .line 721
    add-int/2addr v12, v3

    .line 722
    rem-int/lit8 v12, v12, 0x8

    .line 724
    invoke-virtual {v8, v12, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 727
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 729
    const/4 v12, 0x6

    .line 730
    add-int/2addr v12, v3

    .line 731
    rem-int/lit8 v12, v12, 0x8

    .line 733
    invoke-virtual {v8, v12, v11}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 736
    iget-object v8, v10, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 738
    add-int/lit8 v3, v3, 0x7

    .line 740
    rem-int/lit8 v3, v3, 0x8

    .line 742
    invoke-virtual {v8, v3, v9}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 745
    iget v3, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 747
    iget v8, v10, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 749
    const/4 v9, 0x0

    .line 750
    invoke-static {v9, v9, v3, v8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 753
    iget v3, v10, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 755
    int-to-float v3, v3

    .line 756
    iget v8, v10, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 758
    int-to-float v8, v8

    .line 759
    invoke-virtual {v10, v3, v8}, Lcom/android/server/display/ColorFade;->ortho(FF)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 762
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 768
    move-result-wide v8

    .line 769
    const-string v3, "ColorFade"

    .line 771
    const-string v12, "ColorFade end egl and surface."

    .line 773
    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    sub-long v8, v8, v22

    .line 778
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 781
    move-result-object v3

    .line 782
    const-string v8, "ColorFade"

    .line 784
    const-string v9, "ColorFade start init GL."

    .line 786
    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 792
    move-result-wide v8

    .line 793
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 796
    move-result v12

    .line 797
    if-nez v12, :cond_1a

    .line 799
    move-object/from16 v0, p0

    .line 801
    goto/16 :goto_d

    .line 803
    :cond_1a
    :try_start_7
    invoke-virtual {v10, v1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    .line 806
    move-result v1

    .line 807
    if-eqz v1, :cond_1b

    .line 809
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->initGLBuffers()V

    .line 812
    const-string/jumbo v1, "prepare"

    .line 815
    invoke-static {v1}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 818
    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 819
    if-eqz v1, :cond_1c

    .line 821
    :cond_1b
    move-object/from16 v0, p0

    .line 823
    goto/16 :goto_9

    .line 825
    :cond_1c
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 831
    move-result-wide v12

    .line 832
    const-string v1, "ColorFade"

    .line 834
    const-string v14, "ColorFade end init GL."

    .line 836
    invoke-static {v1, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    sub-long/2addr v12, v8

    .line 840
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 843
    move-result-object v1

    .line 844
    const/4 v8, 0x1

    .line 845
    iput-boolean v8, v10, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 847
    iput-boolean v0, v10, Lcom/android/server/display/ColorFade;->mLastWasProtectedContent:Z

    .line 849
    iput-boolean v4, v10, Lcom/android/server/display/ColorFade;->mLastWasWideColor:Z

    .line 851
    const-string v0, "ColorFade"

    .line 853
    const-string v4, "ColorFade start dejank."

    .line 855
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 861
    move-result-wide v12

    .line 862
    const/4 v0, 0x3

    .line 863
    if-eq v2, v8, :cond_1e

    .line 865
    if-ne v2, v0, :cond_1d

    .line 867
    goto :goto_5

    .line 868
    :cond_1d
    const/4 v0, 0x0

    .line 869
    goto :goto_7

    .line 870
    :cond_1e
    :goto_5
    const/4 v4, 0x0

    .line 871
    :goto_6
    if-ge v4, v0, :cond_1d

    .line 873
    iput-boolean v8, v10, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    .line 875
    invoke-virtual {v10, v11}, Lcom/android/server/display/ColorFade;->draw(F)V

    .line 878
    add-int/2addr v4, v8

    .line 879
    const/4 v0, 0x3

    .line 880
    goto :goto_6

    .line 881
    :goto_7
    iput-boolean v0, v10, Lcom/android/server/display/ColorFade;->mIsDejanking:Z

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 886
    move-result-wide v8

    .line 887
    const-string v0, "ColorFade"

    .line 889
    const-string v4, "ColorFade end dejank."

    .line 891
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    sub-long v10, v8, v12

    .line 896
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 899
    move-result-object v0

    .line 900
    const-string v4, "ColorFade"

    .line 902
    new-instance v10, Ljava/lang/StringBuilder;

    .line 904
    const-string v11, "ColorFade End [PREPARE]  : mode="

    .line 906
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 912
    const-string v2, ", <Time> displayInfo: "

    .line 914
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 920
    const-string v2, ", screenshot: "

    .line 922
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 928
    const-string v2, ", createSurface : "

    .line 930
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 936
    const-string v2, ", egl : "

    .line 938
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 944
    const-string v2, ", initGl : "

    .line 946
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 952
    const-string v1, ", nightModeTime : "

    .line 954
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    move-object/from16 v1, v19

    .line 959
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 962
    const-string v1, ", dejank : "

    .line 964
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 970
    const-string v0, ", totalPrepare : "

    .line 972
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    sub-long v8, v8, v24

    .line 977
    invoke-static {v10, v8, v9, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 980
    :goto_8
    sget-object v0, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOffProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;

    .line 982
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 985
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 988
    move-result-wide v1

    .line 989
    iget-wide v3, v0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareStartTime:J

    .line 991
    sub-long/2addr v1, v3

    .line 992
    long-to-int v1, v1

    .line 993
    iput v1, v0, Lcom/android/server/power/PowerManagerUtil$ScreenOffProfiler;->mCfPrepareDuration:I

    .line 995
    move-object/from16 v0, p0

    .line 997
    const/4 v1, 0x1

    .line 998
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 1000
    const/4 v2, 0x0

    .line 1001
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 1003
    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 1005
    if-nez v2, :cond_1f

    .line 1007
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 1009
    iget-object v2, v0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 1011
    iget-object v0, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 1013
    const/4 v3, 0x0

    .line 1014
    const/4 v4, 0x3

    .line 1015
    invoke-virtual {v2, v4, v0, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1018
    :cond_1f
    return v1

    .line 1019
    :catchall_2
    move-exception v0

    .line 1020
    goto :goto_a

    .line 1021
    :goto_9
    :try_start_8
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 1024
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1027
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 1030
    goto :goto_d

    .line 1031
    :goto_a
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 1034
    throw v0

    .line 1035
    :catchall_3
    move-exception v0

    .line 1036
    :try_start_9
    invoke-virtual {v11}, Landroid/view/Surface;->release()V

    .line 1039
    invoke-virtual {v8}, Landroid/graphics/SurfaceTexture;->release()V

    .line 1042
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1043
    :goto_b
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 1046
    throw v0

    .line 1047
    :goto_c
    invoke-virtual {v10}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 1050
    :goto_d
    const/4 v1, 0x0

    .line 1051
    goto :goto_e

    .line 1052
    :cond_20
    move v1, v11

    .line 1053
    :goto_e
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 1055
    const/4 v2, 0x1

    .line 1056
    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 1058
    return v1

    .line 1059
    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method public final scheduleScreenUpdate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdatePending:Z

    .line 8
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState;->mHandler:Landroid/os/Handler;

    .line 10
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenUpdateRunnable:Lcom/android/server/display/DisplayPowerState$4;

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    :cond_0
    return-void
.end method

.method public final setColorFadeLevel(F)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 3
    cmpl-float v0, v0, p1

    .line 5
    if-eqz v0, :cond_4

    .line 7
    sget-boolean v0, Lcom/android/server/display/DisplayPowerState;->DEBUG:Z

    .line 9
    const-string v1, "DisplayPowerState"

    .line 11
    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    const-string/jumbo v2, "setColorFadeLevel: level="

    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 33
    float-to-double v2, v0

    .line 34
    const-wide/16 v4, 0x0

    .line 36
    cmpl-double v0, v2, v4

    .line 38
    iget v2, p0, Lcom/android/server/display/DisplayPowerState;->mDisplayId:I

    .line 40
    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    const-string v3, "ColorFade exit displayId="

    .line 46
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    float-to-double v6, p1

    .line 61
    cmpl-double v0, v6, v4

    .line 63
    if-nez v0, :cond_2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    const-string v3, "ColorFade entry displayId="

    .line 69
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->wk(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeLevel:F

    .line 84
    iget p1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenState:I

    .line 86
    const/4 v0, 0x1

    .line 87
    const/4 v1, 0x0

    .line 88
    if-eq p1, v0, :cond_3

    .line 90
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerState;->scheduleScreenUpdate()V

    .line 95
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadePrepared:Z

    .line 97
    if-eqz p1, :cond_4

    .line 99
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 101
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 103
    if-nez p1, :cond_4

    .line 105
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawPending:Z

    .line 107
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mChoreographer:Landroid/view/Choreographer;

    .line 109
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeDrawRunnable:Ljava/lang/Runnable;

    .line 111
    const/4 v0, 0x0

    .line 112
    const/4 v1, 0x3

    .line 113
    invoke-virtual {p1, v1, p0, v0}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 116
    :cond_4
    return-void
.end method

.method public final waitUntilClean(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mScreenReady:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerState;->mColorFadeReady:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState;->mCleanListener:Ljava/lang/Runnable;

    .line 17
    const/4 p0, 0x0

    .line 18
    return p0
.end method
