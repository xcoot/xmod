.class public Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

.field public mAmbientLux:F

.field public mBrightness:F

.field public final mContext:Landroid/content/Context;

.field public mDefaultDisplayState:I

.field public final mHandler:Landroid/os/Handler;

.field public mHighAmbientBrightnessThresholds:[F

.field public mHighDisplayBrightnessThresholds:[F

.field public mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

.field public mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field public mLightSensorName:Ljava/lang/String;

.field public mLightSensorType:Ljava/lang/String;

.field public mLoggingEnabled:Z

.field public mLowAmbientBrightnessThresholds:[F

.field public mLowDisplayBrightnessThresholds:[F

.field public mLowPowerModeEnabled:Z

.field public mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

.field public mRefreshRateChangeable:Z

.field public mRefreshRateInHighZone:I

.field public mRefreshRateInLowZone:I

.field public mRegisteredLightSensor:Landroid/hardware/Sensor;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldObserveAmbientHighChange:Z

.field public mShouldObserveAmbientLowChange:Z

.field public mShouldObserveDisplayHighChange:Z

.field public mShouldObserveDisplayLowChange:Z

.field public final mThermalListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;

.field public mThermalRegistered:Z

.field public mThermalStatus:I

.field public final mVsyncLowLightBlockingVoteEnabled:Z

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public static -$$Nest$monDeviceConfigLowBrightnessThresholdsChanged(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;[F[F)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    if-eqz p2, :cond_0

    .line 8
    array-length v0, p1

    .line 9
    array-length v1, p2

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 14
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 19
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter p1

    .line 22
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 24
    iget-object p2, p2, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    .line 29
    const/4 p1, 0x3

    .line 30
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V

    .line 33
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    .line 35
    invoke-direct {v2, p2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;I)V

    .line 38
    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    .line 40
    const/4 p1, 0x0

    .line 41
    invoke-direct {v6, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 44
    const v3, 0x10700ac

    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v0, p0

    .line 49
    move-object v4, p2

    .line 50
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    .line 53
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 56
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    .line 58
    const/4 p1, 0x4

    .line 59
    invoke-direct {v1, p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V

    .line 62
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    .line 64
    invoke-direct {v2, p2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;I)V

    .line 67
    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    .line 69
    const/4 p1, 0x1

    .line 70
    invoke-direct {v6, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 73
    const v3, 0x1070090

    .line 76
    const/4 v5, 0x0

    .line 77
    move-object v0, p0

    .line 78
    move-object v4, p2

    .line 79
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    throw p0
.end method

.method public static -$$Nest$mreloadLightSensor(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p1, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 14
    iget-object p1, p1, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    .line 21
    if-nez p1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 25
    if-nez p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p1

    .line 33
    const v0, 0x1040345

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 42
    const-string p1, ""

    .line 44
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    .line 46
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Lcom/android/server/display/DisplayManagerService$DisplayManagerHandler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 6
    new-instance p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 8
    invoke-direct {p1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    .line 11
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 13
    const/high16 p1, -0x40800000    # -1.0f

    .line 15
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 17
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 19
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 21
    new-instance p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    .line 26
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;

    .line 28
    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 31
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 35
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 37
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 43
    const/4 p3, 0x0

    .line 44
    invoke-virtual {p0, p3, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 47
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p1

    .line 51
    const p2, 0x10e00b4

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 57
    move-result p1

    .line 58
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 60
    iget-object p1, p5, Lcom/android/server/display/feature/DisplayManagerFlags;->mVsyncLowLightVote:Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;

    .line 62
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags$FlagState;->isEnabled()Z

    .line 65
    move-result p1

    .line 66
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mVsyncLowLightBlockingVoteEnabled:Z

    .line 68
    return-void
.end method

.method public static hasValidThreshold([F)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    aget v3, p0, v2

    .line 8
    const/4 v4, 0x0

    .line 9
    cmpl-float v3, v3, v4

    .line 11
    if-ltz v3, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return v1
.end method


# virtual methods
.method public final dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "  BrightnessObserver"

    .line 3
    const-string v1, "    mAmbientLux: "

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 11
    const-string v2, "    mBrightness: "

    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 19
    const-string v2, "    mDefaultDisplayState: "

    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 27
    const-string v2, "    mLowPowerModeEnabled: "

    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object v0

    .line 33
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 35
    const-string v2, "    mRefreshRateChangeable: "

    .line 37
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 43
    const-string v2, "    mShouldObserveDisplayLowChange: "

    .line 45
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 51
    const-string v2, "    mShouldObserveAmbientLowChange: "

    .line 53
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v0

    .line 57
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 59
    const-string v2, "    mRefreshRateInLowZone: "

    .line 61
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    move-result-object v0

    .line 65
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 67
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 70
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 72
    array-length v1, v0

    .line 73
    const/4 v2, 0x0

    .line 74
    move v3, v2

    .line 75
    :goto_0
    if-ge v3, v1, :cond_0

    .line 77
    aget v4, v0, v3

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 81
    const-string v6, "    mDisplayLowBrightnessThreshold: "

    .line 83
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 101
    array-length v1, v0

    .line 102
    move v3, v2

    .line 103
    :goto_1
    if-ge v3, v1, :cond_1

    .line 105
    aget v4, v0, v3

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    const-string v6, "    mAmbientLowBrightnessThreshold: "

    .line 111
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v3, v3, 0x1

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "    mShouldObserveDisplayHighChange: "

    .line 131
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 136
    const-string v3, "    mShouldObserveAmbientHighChange: "

    .line 138
    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    move-result-object v0

    .line 142
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 144
    const-string v3, "    mRefreshRateInHighZone: "

    .line 146
    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    move-result-object v0

    .line 150
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 152
    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 155
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 157
    array-length v1, v0

    .line 158
    move v3, v2

    .line 159
    :goto_2
    if-ge v3, v1, :cond_2

    .line 161
    aget v4, v0, v3

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    .line 165
    const-string v6, "    mDisplayHighBrightnessThresholds: "

    .line 167
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    add-int/lit8 v3, v3, 0x1

    .line 182
    goto :goto_2

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 185
    array-length v1, v0

    .line 186
    :goto_3
    if-ge v2, v1, :cond_3

    .line 188
    aget v3, v0, v2

    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    .line 192
    const-string v5, "    mAmbientHighBrightnessThresholds: "

    .line 194
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    .line 209
    goto :goto_3

    .line 210
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 212
    const-string v1, "    mRegisteredLightSensor: "

    .line 214
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    .line 231
    const-string v1, "    mLightSensor: "

    .line 233
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 250
    const-string v1, "    mLightSensorName: "

    .line 252
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    .line 257
    const-string v2, "    mLightSensorType: "

    .line 259
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 262
    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 265
    invoke-static {v0, v1, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 268
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    const-string v2, "    mLastSensorData: "

    .line 274
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    iget v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 279
    const-string v3, "    mTimestamp: "

    .line 281
    invoke-static {v1, v2, p1, v3}, Lcom/android/server/am/KillPolicyManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    move-result-object v1

    .line 285
    iget-wide v2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mTimestamp:J

    .line 287
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 289
    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 292
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 294
    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 297
    new-instance v4, Ljava/util/Date;

    .line 299
    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 302
    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 305
    move-result-object v0

    .line 306
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    move-result-object v0

    .line 313
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 318
    if-eqz v0, :cond_4

    .line 320
    new-instance v0, Landroid/util/IndentingPrintWriter;

    .line 322
    const-string v1, "    "

    .line 324
    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 327
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 329
    new-instance p1, Ljava/lang/StringBuilder;

    .line 331
    const-string v1, "  "

    .line 333
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mTag:Ljava/lang/String;

    .line 338
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    move-result-object p1

    .line 345
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    const-string p1, "    mLoggingEnabled=false"

    .line 350
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance p1, Ljava/lang/StringBuilder;

    .line 355
    const-string v1, "    mHorizon="

    .line 357
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    iget v1, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mHorizon:I

    .line 362
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object p1

    .line 369
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    .line 374
    const-string v1, "    mBuffer="

    .line 376
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mBuffer:Lcom/android/server/display/utils/RollingBuffer;

    .line 381
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    move-result-object p1

    .line 388
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    .line 393
    const-string v1, "    mIntercept="

    .line 395
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    iget p0, p0, Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;->mIntercept:F

    .line 400
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    move-result-object p0

    .line 407
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    :cond_4
    return-void
.end method

.method public getHighAmbientBrightnessThresholds()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 3
    return-object p0
.end method

.method public getHighDisplayBrightnessThresholds()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 3
    return-object p0
.end method

.method public getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 3
    return-object p0
.end method

.method public getLowAmbientBrightnessThresholds()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 3
    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 3
    return-object p0
.end method

.method public getRefreshRateInHighZone()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 3
    return p0
.end method

.method public getRefreshRateInLowZone()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 3
    return p0
.end method

.method public final hasLowLightVrrConfig()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 3
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 8
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mVsyncLowLightBlockingVoteEnabled:Z

    .line 13
    if-eqz p0, :cond_1

    .line 15
    if-eqz v1, :cond_1

    .line 17
    iget-boolean p0, v1, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 19
    if-nez p0, :cond_0

    .line 21
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_DISCRETE:Z

    .line 23
    if-eqz p0, :cond_1

    .line 25
    :cond_0
    iget-object p0, v1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 27
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    .line 29
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_1

    .line 35
    const/4 p0, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p0
.end method

.method public final loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F
    .locals 0

    .line 1
    if-eqz p5, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 7
    check-cast p1, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    if-nez p1, :cond_2

    .line 13
    if-nez p4, :cond_1

    .line 15
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 24
    move-result-object p0

    .line 25
    invoke-interface {p6, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, [F

    .line 31
    :goto_1
    move-object p1, p0

    .line 32
    goto :goto_3

    .line 33
    :catch_1
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, [F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    goto :goto_1

    .line 42
    :goto_2
    const-string p2, "DisplayModeDirector"

    .line 44
    const-string p3, "Unexpectedly failed to load display brightness threshold"

    .line 46
    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :cond_2
    :goto_3
    return-object p1
.end method

.method public final loadRefreshRateInHighZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 6
    iget-object p2, p2, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 8
    iget-object p2, p2, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 10
    const-string/jumbo v1, "refresh_rate_in_high_zone"

    .line 13
    const-string/jumbo v2, "display_manager"

    .line 16
    invoke-interface {p2, v2, v1, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 19
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    :cond_0
    move p2, v0

    .line 22
    :goto_0
    if-ne p2, v0, :cond_2

    .line 24
    if-nez p1, :cond_1

    .line 26
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p2

    .line 32
    const v0, 0x10e00b4

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 38
    move-result p2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget p2, p1, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    .line 42
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 44
    const/4 p1, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 48
    if-nez v0, :cond_4

    .line 50
    const-string/jumbo v0, "default"

    .line 53
    :cond_4
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 55
    check-cast p1, Ljava/util/HashMap;

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/util/SparseArray;

    .line 63
    :goto_2
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 65
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 67
    return-void
.end method

.method public final loadRefreshRateInLowZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p2, :cond_0

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 6
    iget-object p2, p2, Lcom/android/server/display/mode/DisplayModeDirector;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 8
    iget-object p2, p2, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    .line 10
    const-string/jumbo v1, "refresh_rate_in_zone"

    .line 13
    const-string/jumbo v2, "display_manager"

    .line 16
    invoke-interface {p2, v2, v1, v0}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 19
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    :cond_0
    move p2, v0

    .line 22
    :goto_0
    if-ne p2, v0, :cond_2

    .line 24
    if-nez p1, :cond_1

    .line 26
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p2

    .line 32
    const v0, 0x10e007f

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 38
    move-result p2

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget p2, p1, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 42
    :cond_2
    :goto_1
    if-nez p1, :cond_3

    .line 44
    const/4 p1, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 48
    if-nez v0, :cond_4

    .line 50
    const-string/jumbo v0, "default"

    .line 53
    :cond_4
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 55
    check-cast p1, Ljava/util/HashMap;

    .line 57
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/util/SparseArray;

    .line 63
    :goto_2
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 65
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 67
    return-void
.end method

.method public final onBrightnessChangedLocked()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 3
    if-eqz v0, :cond_12

    .line 5
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto/16 :goto_8

    .line 11
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 17
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 19
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateModeManager;->getController()Lcom/android/server/display/mode/RefreshRateController;

    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/android/server/display/mode/RefreshRateController;->onBrightnessChangedLocked()V

    .line 26
    return-void

    .line 27
    :cond_1
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 29
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 35
    return-void

    .line 36
    :cond_2
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 38
    const/4 v1, 0x1

    .line 39
    const/4 v2, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    if-gtz v0, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasLowLightVrrConfig()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_9

    .line 50
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 52
    if-nez v0, :cond_4

    .line 54
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 56
    if-eqz v0, :cond_9

    .line 58
    :cond_4
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 60
    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 62
    move v6, v3

    .line 63
    :goto_0
    iget-object v7, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 65
    array-length v8, v7

    .line 66
    if-ge v6, v8, :cond_9

    .line 68
    aget v7, v7, v6

    .line 70
    iget-object v8, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 72
    aget v8, v8, v6

    .line 74
    cmpl-float v9, v7, v2

    .line 76
    if-ltz v9, :cond_5

    .line 78
    cmpl-float v10, v8, v2

    .line 80
    if-ltz v10, :cond_5

    .line 82
    cmpg-float v7, v0, v7

    .line 84
    if-gtz v7, :cond_8

    .line 86
    cmpg-float v7, v5, v8

    .line 88
    if-gtz v7, :cond_8

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    if-ltz v9, :cond_6

    .line 93
    cmpg-float v7, v0, v7

    .line 95
    if-gtz v7, :cond_8

    .line 97
    goto :goto_1

    .line 98
    :cond_6
    cmpl-float v7, v8, v2

    .line 100
    if-ltz v7, :cond_8

    .line 102
    cmpg-float v7, v5, v8

    .line 104
    if-gtz v7, :cond_8

    .line 106
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasLowLightVrrConfig()Z

    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_7

    .line 112
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 114
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mDefaultDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 116
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 118
    iget-object v0, v0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    .line 120
    invoke-static {v0}, Lcom/android/server/display/mode/Vote;->forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/SupportedRefreshRatesVote;

    .line 123
    move-result-object v0

    .line 124
    :goto_2
    move-object v11, v4

    .line 125
    move-object v4, v0

    .line 126
    move-object v0, v11

    .line 127
    goto :goto_3

    .line 128
    :cond_7
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 130
    int-to-float v0, v0

    .line 131
    invoke-static {v0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 134
    move-result-object v0

    .line 135
    new-instance v4, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    .line 137
    invoke-direct {v4, v1}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    .line 140
    goto :goto_2

    .line 141
    :goto_3
    iget-object v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 143
    if-eqz v5, :cond_a

    .line 145
    iget v6, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 147
    invoke-static {v6, v5}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;

    .line 150
    move-result-object v5

    .line 151
    if-eqz v5, :cond_a

    .line 153
    iget v4, v5, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 155
    iget v5, v5, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 157
    invoke-static {v4, v5}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 160
    move-result-object v4

    .line 161
    goto :goto_4

    .line 162
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 164
    goto :goto_0

    .line 165
    :cond_9
    move-object v0, v4

    .line 166
    :cond_a
    :goto_4
    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 168
    if-lez v5, :cond_10

    .line 170
    iget-boolean v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 172
    if-nez v5, :cond_b

    .line 174
    iget-boolean v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 176
    if-eqz v5, :cond_10

    .line 178
    :cond_b
    iget v5, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 180
    iget v6, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 182
    :goto_5
    iget-object v7, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 184
    array-length v8, v7

    .line 185
    if-ge v3, v8, :cond_10

    .line 187
    aget v7, v7, v3

    .line 189
    iget-object v8, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 191
    aget v8, v8, v3

    .line 193
    cmpl-float v9, v7, v2

    .line 195
    if-ltz v9, :cond_c

    .line 197
    cmpl-float v10, v8, v2

    .line 199
    if-ltz v10, :cond_c

    .line 201
    cmpl-float v7, v5, v7

    .line 203
    if-ltz v7, :cond_f

    .line 205
    cmpl-float v7, v6, v8

    .line 207
    if-ltz v7, :cond_f

    .line 209
    goto :goto_6

    .line 210
    :cond_c
    if-ltz v9, :cond_d

    .line 212
    cmpl-float v7, v5, v7

    .line 214
    if-ltz v7, :cond_f

    .line 216
    goto :goto_6

    .line 217
    :cond_d
    cmpl-float v7, v8, v2

    .line 219
    if-ltz v7, :cond_f

    .line 221
    cmpl-float v7, v6, v8

    .line 223
    if-ltz v7, :cond_f

    .line 225
    :goto_6
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 227
    int-to-float v0, v0

    .line 228
    invoke-static {v0, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 231
    move-result-object v0

    .line 232
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 234
    if-eqz v2, :cond_e

    .line 236
    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 238
    invoke-static {v3, v2}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;

    .line 241
    move-result-object v2

    .line 242
    if-eqz v2, :cond_e

    .line 244
    iget v0, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    .line 246
    iget v2, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 248
    invoke-static {v0, v2}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/CombinedVote;

    .line 251
    move-result-object v0

    .line 252
    :cond_e
    move-object v4, v0

    .line 253
    new-instance v0, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;

    .line 255
    invoke-direct {v0, v1}, Lcom/android/server/display/mode/DisableRefreshRateSwitchingVote;-><init>(Z)V

    .line 258
    goto :goto_7

    .line 259
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 261
    goto :goto_5

    .line 262
    :cond_10
    :goto_7
    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 264
    if-eqz v1, :cond_11

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    .line 268
    const-string v2, "Display brightness "

    .line 270
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 275
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 278
    const-string v2, ", ambient lux "

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 288
    const-string v2, ", Vote "

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 300
    const-string v2, "DisplayModeDirector"

    .line 302
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_11
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 307
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 309
    const/4 v2, 0x3

    .line 310
    const/4 v3, -0x1

    .line 311
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 314
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 316
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 318
    const/16 v1, 0x15

    .line 320
    invoke-virtual {p0, v3, v1, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 323
    :cond_12
    :goto_8
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_5

    .line 3
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 5
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->setDefaultDisplayState(I)V

    .line 26
    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 28
    if-eqz v0, :cond_1

    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 33
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 35
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;->getDisplayManager()Landroid/hardware/display/DisplayManager;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 45
    invoke-virtual {p1}, Landroid/view/Display;->getBrightnessInfo()Landroid/hardware/display/BrightnessInfo;

    .line 48
    move-result-object p1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 p1, 0x0

    .line 51
    :goto_1
    if-eqz p1, :cond_3

    .line 53
    iget p1, p1, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 58
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 60
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 62
    monitor-enter v0

    .line 63
    :try_start_0
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 65
    invoke-static {p1, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_4

    .line 71
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 73
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 76
    goto :goto_3

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    :goto_3
    monitor-exit v0

    .line 80
    goto :goto_5

    .line 81
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0

    .line 83
    :cond_5
    :goto_5
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 3
    if-eq v0, p1, :cond_0

    .line 5
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 14
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 16
    const/4 v0, -0x1

    .line 17
    const/4 v1, 0x3

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 22
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 24
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 26
    const/16 p1, 0x15

    .line 28
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .locals 2

    .line 1
    sub-float p1, p2, p1

    .line 3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    cmpl-float p1, p1, v0

    .line 7
    if-lez p1, :cond_0

    .line 9
    const/high16 p1, 0x42700000    # 60.0f

    .line 11
    cmpl-float p1, p2, p1

    .line 13
    if-lez p1, :cond_0

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 20
    if-eq p2, p1, :cond_1

    .line 22
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 24
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 27
    if-nez p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 31
    iget-object p1, p1, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 33
    const/4 p2, -0x1

    .line 34
    const/4 v0, 0x3

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 39
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 41
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 43
    const/16 p1, 0x15

    .line 45
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 48
    :cond_1
    return-void
.end method

.method public final restartObserver()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-gtz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasLowLightVrrConfig()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 15
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 20
    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    .line 23
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 26
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 28
    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    .line 31
    move-result v0

    .line 32
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 34
    :goto_1
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 36
    if-lez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 40
    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    .line 43
    move-result v0

    .line 44
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 46
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 48
    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    .line 51
    move-result v0

    .line 52
    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 59
    :goto_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 61
    if-eqz v0, :cond_3

    .line 63
    const/4 v2, 0x1

    .line 64
    iput-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 66
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 68
    if-nez v2, :cond_5

    .line 70
    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 72
    if-eqz v2, :cond_4

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 78
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 83
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 85
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    .line 87
    const/4 v5, 0x5

    .line 88
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    .line 91
    move-result-object v2

    .line 92
    if-eqz v0, :cond_8

    .line 94
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 96
    if-eqz v0, :cond_8

    .line 98
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_6

    .line 106
    if-nez v2, :cond_8

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 110
    const v3, 0x1004e

    .line 113
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_7

    .line 123
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    move-result-object v0

    .line 127
    move-object v2, v0

    .line 128
    check-cast v2, Landroid/hardware/Sensor;

    .line 130
    goto :goto_4

    .line 131
    :cond_7
    const-string v0, "DisplayModeDirector"

    .line 133
    const-string v1, "Failed get SEM_TYPE_LIGHT_SEAMLESS"

    .line 135
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    .line 140
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 142
    if-eq v2, v0, :cond_9

    .line 144
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 149
    move-result-object v0

    .line 150
    const-string v1, "DisplayModeDirector"

    .line 152
    invoke-static {v0, v1}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Landroid/content/res/Resources;Ljava/lang/String;)Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter$WeightedMovingAverageAmbientFilter;

    .line 158
    iput-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 160
    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 163
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 165
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 167
    monitor-enter v0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 171
    monitor-exit v0

    .line 172
    return-void

    .line 173
    :catchall_0
    move-exception p0

    .line 174
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    throw p0
.end method

.method public setDefaultDisplayState(I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "setDefaultDisplayState: mDefaultDisplayState = "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, ", state = "

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const-string v1, "DisplayModeDirector"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 37
    if-eq v0, p1, :cond_1

    .line 39
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 41
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 44
    :cond_1
    return-void
.end method

.method public final unregisterSensorListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 3
    iget-object v1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;

    .line 5
    iget-object v1, v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 7
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    .line 9
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 14
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 16
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 22
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 24
    if-eqz v0, :cond_0

    .line 26
    const-string v0, "DisplayModeDirector"

    .line 28
    const-string/jumbo v1, "updateSensorStatus: unregisterListener"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_SEAMLESS:Z

    .line 36
    if-eqz v0, :cond_1

    .line 38
    const/high16 v0, -0x40800000    # -1.0f

    .line 40
    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 42
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 44
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector;->mRefreshRateModeManager:Lcom/android/server/display/mode/RefreshRateModeManager;

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/RefreshRateModeManager;->onLightSensorChanged(F)V

    .line 49
    :cond_1
    return-void
.end method

.method public final updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInHighZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInLowZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 7
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    .line 9
    const/4 v0, 0x6

    .line 10
    invoke-direct {v1, p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V

    .line 13
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    .line 15
    invoke-direct {v2, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;I)V

    .line 18
    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {v6, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 24
    const v3, 0x10700ac

    .line 27
    move-object v0, p0

    .line 28
    move-object v4, p1

    .line 29
    move v5, p2

    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 36
    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    .line 38
    const/4 v0, 0x7

    .line 39
    invoke-direct {v2, p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V

    .line 42
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    .line 44
    invoke-direct {v3, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;I)V

    .line 47
    new-instance v7, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-direct {v7, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 53
    const v4, 0x1070090

    .line 56
    move-object v1, p0

    .line 57
    move-object v5, p1

    .line 58
    move v6, p2

    .line 59
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 65
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 67
    array-length v1, v1

    .line 68
    array-length v0, v0

    .line 69
    const-string v2, ", ambientBrightnessThresholds="

    .line 71
    if-ne v1, v0, :cond_1

    .line 73
    new-instance v4, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    .line 75
    const/4 v0, 0x1

    .line 76
    invoke-direct {v4, p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V

    .line 79
    new-instance v5, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    .line 81
    invoke-direct {v5, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;I)V

    .line 84
    new-instance v9, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-direct {v9, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 90
    const v6, 0x107010f

    .line 93
    move-object v3, p0

    .line 94
    move-object v7, p1

    .line 95
    move v8, p2

    .line 96
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 102
    new-instance v4, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    .line 104
    const/4 v0, 0x2

    .line 105
    invoke-direct {v4, p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V

    .line 108
    new-instance v5, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    .line 110
    invoke-direct {v5, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;I)V

    .line 113
    new-instance v9, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-direct {v9, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 119
    const v6, 0x107010e

    .line 122
    move-object v3, p0

    .line 123
    move-object v7, p1

    .line 124
    move v8, p2

    .line 125
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    .line 128
    move-result-object p1

    .line 129
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 131
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 133
    array-length p2, p2

    .line 134
    array-length p1, p1

    .line 135
    if-ne p2, p1, :cond_0

    .line 137
    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    const-string/jumbo v0, "display high brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    .line 145
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 150
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 162
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object p0

    .line 173
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p1

    .line 177
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 179
    new-instance p2, Ljava/lang/StringBuilder;

    .line 181
    const-string/jumbo v0, "display low brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    .line 184
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 189
    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 201
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 204
    move-result-object p0

    .line 205
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object p0

    .line 212
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 215
    throw p1
.end method

.method public final updateSensorStatus()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 3
    if-eqz v0, :cond_e

    .line 5
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto/16 :goto_5

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    const-string v0, "DisplayModeDirector"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v2, "updateSensorStatus: mShouldObserveAmbientLowChange = "

    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    const-string v2, ", mShouldObserveAmbientHighChange = "

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v0, "DisplayModeDirector"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    const-string/jumbo v2, "updateSensorStatus: mLowPowerModeEnabled = "

    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, ", mRefreshRateChangeable = "

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 69
    invoke-static {v0, v1, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 72
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 74
    const/4 v1, 0x1

    .line 75
    const/4 v2, 0x0

    .line 76
    if-nez v0, :cond_2

    .line 78
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 80
    if-eqz v0, :cond_9

    .line 82
    :cond_2
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 84
    const/4 v3, 0x2

    .line 85
    if-ne v0, v3, :cond_9

    .line 87
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_VRR_POLICY:Z

    .line 89
    if-eqz v0, :cond_3

    .line 91
    invoke-static {}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->getInstance()Lcom/samsung/android/hardware/display/RefreshRateConfig;

    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/RefreshRateConfig;->unsupportedNS()Z

    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_4

    .line 101
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 103
    if-nez v0, :cond_9

    .line 105
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 107
    if-eqz v0, :cond_9

    .line 109
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 111
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 113
    if-ne v0, v3, :cond_5

    .line 115
    goto :goto_0

    .line 116
    :cond_5
    if-eqz v0, :cond_6

    .line 118
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->unregisterSensorListener()V

    .line 121
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 123
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 125
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 127
    const v5, 0x3d090

    .line 130
    iget-object v6, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 132
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 135
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 137
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 139
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 141
    if-eqz v0, :cond_7

    .line 143
    const-string v0, "DisplayModeDirector"

    .line 145
    const-string/jumbo v3, "updateSensorStatus: registerListener"

    .line 148
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 153
    if-nez v0, :cond_8

    .line 155
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 157
    if-eqz v0, :cond_a

    .line 159
    :cond_8
    move v0, v1

    .line 160
    goto :goto_1

    .line 161
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->unregisterSensorListener()V

    .line 164
    :cond_a
    move v0, v2

    .line 165
    :goto_1
    if-eqz v0, :cond_c

    .line 167
    iget-boolean v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    .line 169
    if-nez v3, :cond_c

    .line 171
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 173
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;

    .line 175
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    const-string/jumbo v0, "thermalservice"

    .line 183
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 190
    move-result-object v0

    .line 191
    const-string v4, "DisplayModeDirector"

    .line 193
    if-nez v0, :cond_b

    .line 195
    const-string v0, "Could not observe thermal status. Service not available"

    .line 197
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_2
    move v1, v2

    .line 201
    goto :goto_3

    .line 202
    :cond_b
    const/4 v5, 0x3

    .line 203
    :try_start_0
    invoke-interface {v0, v3, v5}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_3

    .line 207
    :catch_0
    move-exception v0

    .line 208
    const-string v1, "Failed to register thermal status listener"

    .line 210
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    goto :goto_2

    .line 214
    :goto_3
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    .line 216
    goto :goto_5

    .line 217
    :cond_c
    if-nez v0, :cond_e

    .line 219
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    .line 221
    if-eqz v0, :cond_e

    .line 223
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 225
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;

    .line 227
    check-cast v0, Lcom/android/server/display/mode/DisplayModeDirector$RealInjector;

    .line 229
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    const-string/jumbo v0, "thermalservice"

    .line 235
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 238
    move-result-object v0

    .line 239
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 242
    move-result-object v0

    .line 243
    const-string v3, "DisplayModeDirector"

    .line 245
    if-nez v0, :cond_d

    .line 247
    const-string v4, "Could not unregister thermal status. Service not available"

    .line 249
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_d
    :try_start_1
    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 255
    goto :goto_4

    .line 256
    :catch_1
    move-exception v0

    .line 257
    const-string v1, "Failed to unregister thermal status listener"

    .line 259
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :goto_4
    iput-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    .line 264
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 266
    iget-object v0, v0, Lcom/android/server/display/mode/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 268
    monitor-enter v0

    .line 269
    :try_start_2
    iput v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 271
    monitor-exit v0

    .line 272
    goto :goto_5

    .line 273
    :catchall_0
    move-exception p0

    .line 274
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    throw p0

    .line 276
    :cond_e
    :goto_5
    return-void
.end method
