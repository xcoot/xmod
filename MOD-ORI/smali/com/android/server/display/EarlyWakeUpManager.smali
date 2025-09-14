.class public final Lcom/android/server/display/EarlyWakeUpManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAppliedLocked:Z

.field public final mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field public final mCallbacks:Lcom/android/server/display/DisplayPowerController$4;

.field public final mDisplayId:I

.field public mEarlyDisplayEnabled:Z

.field public mEarlyDisplayReadyLocked:Z

.field public mEarlyLightSensorEnabled:Z

.field public final mEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

.field public mEarlyLightSensorReadyLocked:Z

.field public final mEarlyWakeUpLock:Ljava/lang/Object;

.field public final mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

.field public mHoldingSuspendBlocker:Z

.field public mIsRequestInvalidated:Z

.field public mLastEnableRequestedTime:J

.field public final mTag:Ljava/lang/String;

.field public final mWakelockController:Lcom/android/server/display/WakelockController;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/server/display/DisplayPowerController$4;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/AutomaticBrightnessController;Lcom/android/server/display/WakelockController;)V
    .locals 1

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
    iput-object v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/display/EarlyWakeUpManager$1;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/display/EarlyWakeUpManager$1;-><init>(Lcom/android/server/display/EarlyWakeUpManager;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    .line 24
    .line 25
    iput p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mDisplayId:I

    .line 26
    .line 27
    iput-object p3, p0, Lcom/android/server/display/EarlyWakeUpManager;->mCallbacks:Lcom/android/server/display/DisplayPowerController$4;

    .line 28
    .line 29
    iput-object p4, p0, Lcom/android/server/display/EarlyWakeUpManager;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 30
    .line 31
    iput-object p5, p0, Lcom/android/server/display/EarlyWakeUpManager;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 32
    .line 33
    iput-object p6, p0, Lcom/android/server/display/EarlyWakeUpManager;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 34
    .line 35
    new-instance p2, Landroid/os/HandlerThread;

    .line 36
    .line 37
    const/4 p3, -0x4

    .line 38
    invoke-direct {p2, p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 42
    .line 43
    .line 44
    new-instance p1, Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-direct {p1, p0, p2}, Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;-><init>(Lcom/android/server/display/EarlyWakeUpManager;Landroid/os/Looper;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public final isEarlyLightSensorEnabled()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    .line 2
    .line 3
    return p0
.end method

.method public final setEarlyDisplayEnabledLocked(IZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p2, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_AOD_LIVE_CLOCK:Z

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void

    .line 20
    :cond_2
    :goto_0
    iput-boolean p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayEnabled:Z

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 24
    .line 25
    new-instance p1, Lcom/android/server/display/EarlyWakeUpManager$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {p1, p0, p2}, Lcom/android/server/display/EarlyWakeUpManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/EarlyWakeUpManager;Z)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final setEarlyLightSensorEnabledLocked(ZZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    if-nez p3, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-boolean p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    .line 14
    .line 15
    if-ne p1, p2, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    iput-boolean p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorEnabled:Z

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    iput-boolean p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 22
    .line 23
    iget-boolean p2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    .line 24
    .line 25
    if-eq p1, p2, :cond_3

    .line 26
    .line 27
    iput-boolean p1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShouldApplyEarlyWakeUp:Z

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyListener:Lcom/android/server/display/EarlyWakeUpManager$1;

    .line 30
    .line 31
    iput-object p0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingEarlyLightSensorReadyListener:Ljava/lang/Runnable;

    .line 32
    .line 33
    :cond_3
    return-void
.end method

.method public final update(IZZZ)V
    .locals 11

    .line 1
    const-string v0, "[ew] "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyWakeUpLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v2

    .line 10
    const/4 v4, 0x2

    .line 11
    const/4 v5, 0x1

    .line 12
    const/4 v6, 0x0

    .line 13
    if-eq p1, v4, :cond_4

    .line 14
    .line 15
    iget-boolean v4, p0, Lcom/android/server/display/EarlyWakeUpManager;->mIsRequestInvalidated:Z

    .line 16
    .line 17
    if-nez v4, :cond_4

    .line 18
    .line 19
    iget-boolean v4, p0, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    .line 20
    .line 21
    const-wide/16 v7, 0xbb8

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-wide v9, p0, Lcom/android/server/display/EarlyWakeUpManager;->mLastEnableRequestedTime:J

    .line 26
    .line 27
    add-long/2addr v9, v7

    .line 28
    cmp-long v4, v2, v9

    .line 29
    .line 30
    if-ltz v4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v4, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move v4, v6

    .line 36
    :goto_1
    if-nez p2, :cond_3

    .line 37
    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move v4, v6

    .line 42
    goto :goto_3

    .line 43
    :cond_3
    :goto_2
    move v4, v5

    .line 44
    :goto_3
    if-eqz p2, :cond_5

    .line 45
    .line 46
    iput-wide v2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mLastEnableRequestedTime:J

    .line 47
    .line 48
    iget-object p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    .line 49
    .line 50
    const-string v2, "[ew] resetEnableRequestTimeout +"

    .line 51
    .line 52
    invoke-static {p2, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    .line 56
    .line 57
    invoke-virtual {p2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 58
    .line 59
    .line 60
    iget-wide v2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mLastEnableRequestedTime:J

    .line 61
    .line 62
    add-long/2addr v2, v7

    .line 63
    invoke-virtual {p2, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 64
    .line 65
    .line 66
    goto :goto_4

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_6

    .line 69
    :cond_4
    move v4, v6

    .line 70
    :cond_5
    :goto_4
    iget-boolean p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    .line 71
    .line 72
    if-eq v4, p2, :cond_8

    .line 73
    .line 74
    iget-object p2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    if-eqz v4, :cond_6

    .line 92
    .line 93
    invoke-virtual {p0, v5, p3, p4}, Lcom/android/server/display/EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(ZZZ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1, v5}, Lcom/android/server/display/EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(IZ)V

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_6
    invoke-virtual {p0, v6, p3, p4}, Lcom/android/server/display/EarlyWakeUpManager;->setEarlyLightSensorEnabledLocked(ZZZ)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1, v6}, Lcom/android/server/display/EarlyWakeUpManager;->setEarlyDisplayEnabledLocked(IZ)V

    .line 104
    .line 105
    .line 106
    :goto_5
    if-nez v4, :cond_7

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    .line 109
    .line 110
    const-string p2, "[ew] clearEnableRequestTimeout -"

    .line 111
    .line 112
    invoke-static {p1, p2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHandler:Lcom/android/server/display/EarlyWakeUpManager$EarlyWakeUpHandler;

    .line 116
    .line 117
    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    .line 119
    .line 120
    :cond_7
    iput-boolean v4, p0, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    .line 121
    .line 122
    :cond_8
    iput-boolean v6, p0, Lcom/android/server/display/EarlyWakeUpManager;->mIsRequestInvalidated:Z

    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/android/server/display/EarlyWakeUpManager;->updateSuspendBlockerLocked()V

    .line 125
    .line 126
    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 129
    :goto_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p0
.end method

.method public final updateSuspendBlockerLocked()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mAppliedLocked:Z

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    iget-object v2, p0, Lcom/android/server/display/EarlyWakeUpManager;->mWakelockController:Lcom/android/server/display/WakelockController;

    .line 5
    .line 6
    iget-object v3, p0, Lcom/android/server/display/EarlyWakeUpManager;->mTag:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyDisplayReadyLocked:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mEarlyLightSensorReadyLocked:Z

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const-string v0, "[ew] releaseSuspendBlocker: -"

    .line 24
    .line 25
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Lcom/android/server/display/WakelockController;->releaseWakelockInternal(I)Z

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    const-string v0, "[ew] acquireSuspendBlocker: +"

    .line 40
    .line 41
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2, v1}, Lcom/android/server/display/WakelockController;->acquireWakelock(I)Z

    .line 45
    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/server/display/EarlyWakeUpManager;->mHoldingSuspendBlocker:Z

    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method
