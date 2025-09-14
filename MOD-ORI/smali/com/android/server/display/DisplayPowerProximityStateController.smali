.class public final Lcom/android/server/display/DisplayPowerProximityStateController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x1

.field static final PROXIMITY_POSITIVE:I = 0x1

.field static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field static final PROXIMITY_UNKNOWN:I = -0x1


# instance fields
.field public final mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

.field public mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public mDualScreenPolicy:I

.field public final mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

.field public mIgnoreProximityUntilChanged:Z

.field public mIsEarsenseProximity:Z

.field public mIsProximitySensorOnFoldingSide:Z

.field public mIsViewTypeCover:Z

.field public final mLock:Ljava/lang/Object;

.field public final mNudgeUpdatePowerState:Ljava/lang/Runnable;

.field public mPendingProximity:I

.field public mPendingProximityDebounceTime:J

.field public mPendingWaitForNegativeProximityLocked:Z

.field public mProximity:I

.field public mProximitySensor:Landroid/hardware/Sensor;

.field public mProximitySensorEnabled:Z

.field public final mProximitySensorListener:Lcom/android/server/display/DisplayPowerProximityStateController$1;

.field public mProximityThreshold:F

.field public mScreenOffBecauseOfProximity:Z

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mSensorNegativeDebounceDelay:I

.field public mSensorPositiveDebounceDelay:I

.field public mSkipRampBecauseOfProximityChangeToNegative:Z

.field public final mTag:Ljava/lang/String;

.field public mWaitingForNegativeProximity:Z

.field public final mWakelockController:Lcom/android/server/display/WakelockController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WakelockController;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Looper;Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda1;ILandroid/hardware/SensorManager;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/display/DisplayPowerProximityStateController$1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerProximityStateController$1;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Lcom/android/server/display/DisplayPowerProximityStateController$1;

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 20
    .line 21
    const-wide/16 v1, -0x1

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 24
    .line 25
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 29
    .line 30
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorPositiveDebounceDelay:I

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorNegativeDebounceDelay:I

    .line 33
    .line 34
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDualScreenPolicy:I

    .line 35
    .line 36
    new-instance v0, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/android/server/display/DisplayPowerProximityStateController$Injector;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 49
    .line 50
    new-instance p1, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 51
    .line 52
    invoke-direct {p1, p0, p3}, Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;-><init>(Lcom/android/server/display/DisplayPowerProximityStateController;Landroid/os/Looper;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 56
    .line 57
    iput-object p4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    .line 58
    .line 59
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 60
    .line 61
    iput p5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    .line 62
    .line 63
    const-string p1, "DisplayPowerProximityStateController["

    .line 64
    .line 65
    const-string p2, "]"

    .line 66
    .line 67
    invoke-static {p5, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    .line 72
    .line 73
    iput-object p6, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerProximityStateController;->loadProximitySensor()V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final debounceProximitySensor()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-ltz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mClock:Lcom/android/server/display/DisplayPowerProximityStateController$Injector$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 28
    .line 29
    cmp-long v0, v2, v0

    .line 30
    .line 31
    if-gtz v0, :cond_1

    .line 32
    .line 33
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 34
    .line 35
    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 36
    .line 37
    if-eq v0, v1, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "No longer ignoring proximity ["

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 50
    .line 51
    const-string v2, "]"

    .line 52
    .line 53
    invoke-static {v1, v0, v2}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 63
    .line 64
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mNudgeUpdatePowerState:Ljava/lang/Runnable;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 72
    .line 73
    const/4 v1, 0x3

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    .line 80
    const-wide/16 v0, -0x1

    .line 81
    .line 82
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 86
    .line 87
    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 95
    .line 96
    .line 97
    :cond_2
    :goto_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPendingProximity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 2
    .line 3
    return p0
.end method

.method public getPendingProximityDebounceTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPendingWaitForNegativeProximityLocked()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public getProximity()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 2
    .line 3
    return p0
.end method

.method public getProximitySensorListener()Landroid/hardware/SensorEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Lcom/android/server/display/DisplayPowerProximityStateController$1;

    .line 2
    .line 3
    return-object p0
.end method

.method public getWaitingForNegativeProximity()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 2
    .line 3
    return p0
.end method

.method public final isProximityPositive()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final isProximitySensorValidState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 3

    .line 1
    iget-boolean p1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_COVER_DISPLAY:Z

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    iget p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    .line 13
    .line 14
    if-nez p1, :cond_2

    .line 15
    .line 16
    iget v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDualScreenPolicy:I

    .line 17
    .line 18
    if-eq v2, v1, :cond_2

    .line 19
    .line 20
    :cond_1
    :goto_0
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    if-ne p1, v1, :cond_3

    .line 23
    .line 24
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsProximitySensorOnFoldingSide:Z

    .line 25
    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    iget p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDualScreenPolicy:I

    .line 29
    .line 30
    if-ne p0, v1, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    :goto_1
    return v0
.end method

.method public final loadProximitySensor()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_FLIP_LARGE_COVER_DISPLAY:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 17
    .line 18
    :goto_1
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 21
    .line 22
    iget-object v4, v4, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 23
    .line 24
    if-nez v4, :cond_2

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    iget-object v5, v4, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, v4, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v3, v5, v4, v0}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_2
    iput-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 37
    .line 38
    if-eqz v0, :cond_5

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/high16 v3, 0x40a00000    # 5.0f

    .line 45
    .line 46
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximityThreshold:F

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v3, "Palm"

    .line 59
    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v3, "Ear Hover"

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    :cond_3
    move v1, v2

    .line 81
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsEarsenseProximity:Z

    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/hardware/Sensor;->semIsOnFoldingSide()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIsProximitySensorOnFoldingSide:Z

    .line 90
    .line 91
    :cond_5
    return-void
.end method

.method public final setProximitySensorEnabled(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorListener:Lcom/android/server/display/DisplayPowerProximityStateController$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mHandler:Lcom/android/server/display/DisplayPowerProximityStateController$DisplayPowerProximityStateHandler;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mTag:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 17
    .line 18
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 19
    .line 20
    const-string/jumbo p1, "setProximitySensorEnabled::registerListener"

    .line 21
    .line 22
    .line 23
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 29
    .line 30
    invoke-virtual {p1, v0, p0, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 35
    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximitySensorEnabled:Z

    .line 39
    .line 40
    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mProximity:I

    .line 42
    .line 43
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 44
    .line 45
    iput p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximity:I

    .line 46
    .line 47
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo p1, "setProximitySensorEnabled::unregisterListener"

    .line 51
    .line 52
    .line 53
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    const-wide/16 v0, -0x1

    .line 70
    .line 71
    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingProximityDebounceTime:J

    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method

.method public shouldIgnoreProximityUntilChanged()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 2
    .line 3
    return p0
.end method

.method public final shouldSkipRampBecauseOfProximityChangeToNegative()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mSkipRampBecauseOfProximityChangeToNegative:Z

    .line 2
    .line 3
    return p0
.end method

.method public final updatePendingProximityRequestsLocked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 5
    .line 6
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 7
    .line 8
    or-int/2addr v1, v2

    .line 9
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mPendingWaitForNegativeProximityLocked:Z

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mIgnoreProximityUntilChanged:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerProximityStateController;->mWaitingForNegativeProximity:Z

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method
