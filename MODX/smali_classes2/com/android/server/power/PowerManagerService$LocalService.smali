.class final Lcom/android/server/power/PowerManagerService$LocalService;
.super Landroid/os/PowerManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/PowerManagerInternal;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final disableWakeUpPrevention(Landroid/os/IBinder;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[api] disableWakeUpPrevention: needWakeUp: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "PowerManagerService"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 20
    .line 21
    invoke-static {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$mdisableWakeUpPreventionInternal(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Z)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    const-string p1, "lock must not be null"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final enableWakeUpPrevention(Landroid/os/IBinder;)V
    .locals 11

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] enableWakeUpPrevention"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 12
    .line 13
    .line 14
    if-eqz p1, :cond_4

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionLocks:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    move v3, v2

    .line 28
    :goto_0
    const/4 v4, -0x1

    .line 29
    if-ge v3, v1, :cond_1

    .line 30
    .line 31
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionLocks:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeUpPreventionLock;

    .line 38
    .line 39
    iget-object v5, v5, Lcom/android/server/power/PowerManagerService$WakeUpPreventionLock;->mBinder:Landroid/os/IBinder;

    .line 40
    .line 41
    if-ne v5, p1, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v3, v4

    .line 48
    :goto_1
    if-eq v3, v4, :cond_2

    .line 49
    .line 50
    const-string p0, "PowerManagerService"

    .line 51
    .line 52
    const-string p1, "enableWakeUpPreventionInternal: sameRequest"

    .line 53
    .line 54
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    monitor-exit v0

    .line 58
    goto :goto_3

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_4

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mWakeUpPreventionLocks:Ljava/util/ArrayList;

    .line 71
    .line 72
    new-instance v3, Lcom/android/server/power/PowerManagerService$WakeUpPreventionLock;

    .line 73
    .line 74
    invoke-direct {v3, p0, p1, v9, v10}, Lcom/android/server/power/PowerManagerService$WakeUpPreventionLock;-><init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    const-string p1, " wakeUpPrevention enabled"

    .line 81
    .line 82
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenOffReason:Ljava/lang/String;

    .line 83
    .line 84
    :goto_2
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-ge v2, p1, :cond_3

    .line 91
    .line 92
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    move-object v4, p1

    .line 99
    check-cast v4, Lcom/android/server/power/PowerGroup;

    .line 100
    .line 101
    const/16 v7, 0x1a

    .line 102
    .line 103
    const/16 v8, 0x3e8

    .line 104
    .line 105
    move-object v3, p0

    .line 106
    move-wide v5, v9

    .line 107
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->sleepPowerGroupLocked(Lcom/android/server/power/PowerGroup;JII)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 v2, v2, 0x1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    monitor-exit v0

    .line 114
    :goto_3
    return-void

    .line 115
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    throw p0

    .line 117
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 118
    .line 119
    const-string p1, "lock must not be null"

    .line 120
    .line 121
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public final finishUidChanges()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 8
    .line 9
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 14
    .line 15
    .line 16
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanged:Z

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    :goto_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final getLastGoToSleep()Landroid/os/PowerManager$SleepData;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Landroid/os/PowerManager$SleepData;

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTime:J

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepReason:I

    .line 11
    .line 12
    invoke-direct {v1, v2, v3, p0}, Landroid/os/PowerManager$SleepData;-><init>(JI)V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final getLastUserActivityState()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget p0, p0, Lcom/android/server/power/PowerManagerService;->mLastUserActivityStateListenerState:I

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final getLastWakeup()Landroid/os/PowerManager$WakeData;
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v7, Landroid/os/PowerManager$WakeData;

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTime:J

    .line 9
    .line 10
    iget v4, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeReason:I

    .line 11
    .line 12
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalWakeTimeRealtime:J

    .line 13
    .line 14
    iget-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mLastGlobalSleepTimeRealtime:J

    .line 15
    .line 16
    sub-long/2addr v5, v8

    .line 17
    move-object v1, v7

    .line 18
    invoke-direct/range {v1 .. v6}, Landroid/os/PowerManager$WakeData;-><init>(JIJ)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-object v7

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final getLowPowerState(I)Landroid/os/PowerSaveState;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mBatterySaverPolicy:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Landroid/os/PowerSaveState$Builder;

    .line 19
    .line 20
    invoke-direct {p0}, Landroid/os/PowerSaveState$Builder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    :goto_0
    return-object p0
.end method

.method public final interceptPowerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->ignoreProximitySensorUntilChanged()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mInterceptedPowerKeyForProximity:Z

    .line 21
    .line 22
    monitor-exit p1

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    monitor-exit p1

    .line 27
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0

    .line 29
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final isAmbientDisplaySuppressed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mAmbientDisplaySuppressionController:Lcom/android/server/power/AmbientDisplaySuppressionController;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isInternalDisplayOff()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/server/power/PowerGroup;

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/power/PowerGroup;->mWakefulness:I

    .line 16
    .line 17
    invoke-static {p0}, Landroid/os/PowerManagerInternal;->isInteractive(I)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final isProximityPositive()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/power/PowerManagerService;->mProximityPositive:Z

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p0
.end method

.method public final nap(JZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    const/16 v0, 0x3e8

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->napInternal(IJZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] registerLowPowerModeObserver: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverSupported:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mBatterySaverStateMachine:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverController;->mListeners:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0

    .line 40
    :cond_0
    const-string p0, "PowerManagerService"

    .line 41
    .line 42
    const-string p1, "Battery saver is not supported, no low power mode observer registered"

    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method

.method public final registerUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "registerUserActivityStateListener: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "listener must not be null"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final setDeviceIdleMode(Z)Z
    .locals 4

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setDeviceIdleMode: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 23
    .line 24
    if-ne v1, p1, :cond_0

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    goto :goto_1

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 33
    .line 34
    .line 35
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    :cond_1
    move v2, v3

    .line 45
    :cond_2
    const/16 v1, 0x8

    .line 46
    .line 47
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 48
    .line 49
    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    const-string/jumbo p0, "power"

    .line 54
    .line 55
    .line 56
    const p1, 0x84d4

    .line 57
    .line 58
    .line 59
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const-string/jumbo p0, "power"

    .line 64
    .line 65
    .line 66
    const p1, 0x84d7

    .line 67
    .line 68
    .line 69
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :goto_0
    move v2, v3

    .line 73
    :goto_1
    return v2

    .line 74
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p0
.end method

.method public final setDeviceIdleTempWhitelist([I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doesIdleStateBlockWakeLocksLocked()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final setDeviceIdleWhitelist([I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doesIdleStateBlockWakeLocksLocked()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final setDozeOverrideFromDreamManager(III)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[api] setDozeOverrideFromDreamManager: screenState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screenBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, -0x1

    if-lt p3, v1, :cond_1

    const/16 v2, 0xff

    if-le p3, v2, :cond_2

    :cond_1
    move p3, v1

    .line 4
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetDozeOverrideFromDreamManagerInternal(Lcom/android/server/power/PowerManagerService;IIIZ)V

    return-void
.end method

.method public final setDozeOverrideFromDreamManager(IIIIZ)V
    .locals 5

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[api] setDozeOverrideFromDreamManager: screenState: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " screenBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shouldWait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-boolean v0, Lcom/android/server/power/PowerManagerService;->SEC_USE_FACTORY_BINARY:Z

    const/4 v2, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 9
    iget v3, v0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    if-eq v3, p4, :cond_1

    if-ne p4, v2, :cond_0

    .line 10
    const-string/jumbo p4, "setDozeModeBySysfs:  value is -1 , we ignore it. "

    invoke-static {v1, p4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iput p4, v0, Lcom/android/server/power/PowerManagerService;->mAlpmHlpmMode:I

    .line 13
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    .line 14
    const-string v0, "/sys/class/lcd/panel/alpm"

    invoke-static {v0, p4}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    .line 16
    const-string v0, "/sys/class/lcd/panel1/alpm"

    invoke-static {v0, p4}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    :pswitch_0
    if-lt p3, v2, :cond_2

    .line 17
    iget-object p4, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget p4, p4, Lcom/android/server/power/PowerManagerService;->mScreenExtendedBrightnessMaximum:I

    if-le p3, p4, :cond_3

    :cond_2
    move p3, v2

    .line 18
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0, p1, p2, p3, p5}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msetDozeOverrideFromDreamManagerInternal(Lcom/android/server/power/PowerManagerService;IIIZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final setDrawWakeLockOverrideFromSidekick(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    const-string v0, "[api] setDrawWakeLockOverrideFromSidekickInternal()"

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 9
    .line 10
    if-eq v2, p1, :cond_0

    .line 11
    .line 12
    const-string v2, "PowerManagerService"

    .line 13
    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString(Z)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDrawWakeLockOverrideFromSidekick:Z

    .line 35
    .line 36
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 37
    .line 38
    or-int/lit8 p1, p1, 0x20

    .line 39
    .line 40
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method public final setGoToSleepPrevention(Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[api] setGoToSleepPrevention: enabled: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "PowerManagerService"

    .line 13
    .line 14
    invoke-static {v2, v0, v1}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mGoToSleepPreventionEnabled:Z

    .line 20
    .line 21
    return-void
.end method

.method public final setHbmBlock(Z)V
    .locals 4

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setHbmBlock: enabled: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    const-string/jumbo v0, "setHbmBlockInternal: "

    .line 20
    .line 21
    .line 22
    const-string/jumbo v1, "setHbmBlockInternal: already "

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/power/PowerManagerService;->mHbmBlock:Z

    .line 29
    .line 30
    if-ne v3, p1, :cond_0

    .line 31
    .line 32
    const-string p0, "PowerManagerService"

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    monitor-exit v2

    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mHbmBlock:Z

    .line 54
    .line 55
    const-string v1, "PowerManagerService"

    .line 56
    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 73
    .line 74
    or-int/lit8 p1, p1, 0x20

    .line 75
    .line 76
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 79
    .line 80
    .line 81
    monitor-exit v2

    .line 82
    :goto_0
    return-void

    .line 83
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    throw p0
.end method

.method public final setLightDeviceIdleMode(Z)Z
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setLightDeviceIdleMode: "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 23
    .line 24
    if-eq v1, p1, :cond_3

    .line 25
    .line 26
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 27
    .line 28
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 29
    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-static {}, Lcom/android/server/deviceidle/Flags;->disableWakelocksInLightIdle()Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleMode:Z

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLightDeviceIdleMode:Z

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    :cond_1
    move v2, v1

    .line 48
    :cond_2
    const/16 p1, 0x8

    .line 49
    .line 50
    invoke-virtual {p0, p1, v2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 51
    .line 52
    .line 53
    monitor-exit v0

    .line 54
    move v2, v1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    monitor-exit v0

    .line 57
    :goto_1
    return v2

    .line 58
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final setLowPowerStandbyActive(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    .line 7
    .line 8
    if-eq v1, p1, :cond_0

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final setLowPowerStandbyAllowlist([I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyAllowlist:[I

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updateWakeLockDisabledStatesLocked()V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final setMaximumScreenOffTimeoutFromDeviceAdmin(IJ)V
    .locals 10

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    const-string v1, "[api] setMaximumScreenOffTimeoutFromDeviceAdmin: userId: "

    .line 4
    .line 5
    const-string v2, " timeMs: "

    .line 6
    .line 7
    invoke-static {p1, v1, p2, p3, v2}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 16
    .line 17
    if-gez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    const-string p0, "PowerManagerService"

    .line 23
    .line 24
    new-instance p2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p3, "Attempt to set screen off timeout for invalid user: "

    .line 27
    .line 28
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    :try_start_0
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService;->mMaximumScreenOffTimeoutFromDeviceAdmin:J

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_3

    .line 52
    :cond_1
    const-wide v3, 0x7fffffffffffffffL

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    cmp-long v1, p2, v3

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    const-wide/16 v3, 0x0

    .line 62
    .line 63
    cmp-long v1, p2, v3

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 75
    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    iput-wide p2, v1, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 82
    .line 83
    new-instance v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 84
    .line 85
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v7

    .line 94
    move-object v3, v9

    .line 95
    move v4, p1

    .line 96
    move-wide v5, p2

    .line 97
    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IJJ)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/power/PowerManagerService;->updateKnoxTimeoutValue(I)V

    .line 104
    .line 105
    .line 106
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 107
    .line 108
    or-int/2addr p1, v2

    .line 109
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 115
    .line 116
    .line 117
    :goto_1
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 118
    .line 119
    or-int/lit8 p1, p1, 0x20

    .line 120
    .line 121
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 122
    .line 123
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 124
    .line 125
    .line 126
    monitor-exit v0

    .line 127
    :goto_2
    return-void

    .line 128
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    throw p0
.end method

.method public final setMaximumScreenOffTimeoutFromKnox(IJ)V
    .locals 10

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    const-string v1, "[api] setMaximumScreenOffTimeoutFromKnox: userId: "

    .line 4
    .line 5
    const-string v2, " timeMs: "

    .line 6
    .line 7
    invoke-static {p1, v1, p2, p3, v2}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 16
    .line 17
    const-string/jumbo v0, "profile timeout changed : "

    .line 18
    .line 19
    .line 20
    if-gez p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    const-string p0, "PowerManagerService"

    .line 26
    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string p3, "Attempt to set screen off timeout for invalid user: "

    .line 30
    .line 31
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    const-string p1, "PowerManagerService"

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-wide v4, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    .line 66
    .line 67
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v0, " -> "

    .line 71
    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    iput-wide p2, v2, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeoutForUser:J

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 91
    .line 92
    new-instance v9, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    const/4 v4, 0x0

    .line 104
    move-object v2, v9

    .line 105
    move v3, p1

    .line 106
    move-wide v5, p2

    .line 107
    invoke-direct/range {v2 .. v8}, Lcom/android/server/power/PowerManagerService$ProfilePowerState;-><init>(IIJJ)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p1, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 114
    .line 115
    or-int/lit8 p1, p1, 0x1

    .line 116
    .line 117
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 118
    .line 119
    :goto_0
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 120
    .line 121
    or-int/lit8 p1, p1, 0x20

    .line 122
    .line 123
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 126
    .line 127
    .line 128
    monitor-exit v1

    .line 129
    :goto_1
    return-void

    .line 130
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    throw p0
.end method

.method public final setPowerBoost(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mIsPowerBoostInvokedFromLocal:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, "[api] setPowerBoost(L) boost:"

    .line 14
    .line 15
    const-string v1, ", durationMs:"

    .line 16
    .line 17
    const-string v3, ", caller"

    .line 18
    .line 19
    invoke-static {p1, p2, v0, v1, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "PowerManagerService"

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mHandlerPmsMisc:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v2, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-direct {v2, v3, p0}, Lcom/android/server/power/PowerManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    const-wide/16 v5, 0x1388

    .line 48
    .line 49
    add-long/2addr v3, v5

    .line 50
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 51
    .line 52
    .line 53
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mNativeWrapper:Lcom/android/server/power/PowerManagerService$NativeWrapper;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->-$$Nest$smnativeSetPowerBoost(II)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final setPowerMode(IZ)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/power/PowerManagerService;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->setPowerModeInternal(IZ)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setScreenBrightnessOverrideFromWindowManager(FLjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    :cond_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 13
    .line 14
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 15
    .line 16
    const-string v0, "[api] setScreenBrightnessOverrideFromWindowManagerInternal: brightness: "

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    iget v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    .line 22
    .line 23
    invoke-static {v2, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    .line 29
    const-string v2, "PowerManagerService"

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", packageName: "

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverrideFromWindowManager:F

    .line 59
    .line 60
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService;->mScreenBrightnessOverridePackageFromWindowManager:Ljava/lang/String;

    .line 61
    .line 62
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 63
    .line 64
    or-int/lit8 p1, p1, 0x20

    .line 65
    .line 66
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_0
    monitor-exit v1

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public final setScreenDimDurationOverrideFromSqd(Z)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    const-string v0, "[api] setScreenDimDurationOverrideFromSqdInternal: mScreenDimDurationOverrideFromSQD: "

    .line 4
    .line 5
    const-string v1, "[api] setScreenDimDurationOverrideFromSqdInternal: enabled: "

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    const-wide/16 v3, -0x1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    :try_start_0
    iget-wide v5, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    .line 15
    .line 16
    cmp-long p1, v5, v3

    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->getAttentiveTimeoutLocked()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/PowerManagerService;->getSleepTimeoutLocked(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    invoke-virtual {p0, v5, v6, v3, v4}, Lcom/android/server/power/PowerManagerService;->getScreenOffTimeoutLocked(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lcom/android/server/power/PowerGroup;

    .line 44
    .line 45
    iget-wide v8, p1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    .line 46
    .line 47
    add-long/2addr v8, v3

    .line 48
    sub-long/2addr v8, v5

    .line 49
    iput-wide v8, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    .line 50
    .line 51
    const-string p1, "PowerManagerService"

    .line 52
    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-wide v9, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    .line 59
    .line 60
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, " = "

    .line 64
    .line 65
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mPowerGroups:Landroid/util/SparseArray;

    .line 69
    .line 70
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/android/server/power/PowerGroup;

    .line 75
    .line 76
    iget-wide v9, v1, Lcom/android/server/power/PowerGroup;->mLastUserActivityTime:J

    .line 77
    .line 78
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, " + "

    .line 82
    .line 83
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v1, " - "

    .line 90
    .line 91
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    goto :goto_1

    .line 107
    :cond_0
    iput-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    .line 108
    .line 109
    :cond_1
    :goto_0
    const-string p1, "PowerManagerService"

    .line 110
    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-wide v3, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromSQD:J

    .line 117
    .line 118
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {p1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 129
    .line 130
    or-int/lit8 p1, p1, 0x20

    .line 131
    .line 132
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 135
    .line 136
    .line 137
    monitor-exit v2

    .line 138
    return-void

    .line 139
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    throw p0
.end method

.method public final setScreenDimDurationOverrideFromWindowManager(J)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    const-string v0, "[api] setScreenDimDurationOverrideFromWindowManagerInternal: timeoutMillis: "

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    .line 9
    .line 10
    cmp-long v2, v2, p1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "PowerManagerService"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mScreenDimDurationOverrideFromWindowManager:J

    .line 32
    .line 33
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 34
    .line 35
    or-int/lit8 p1, p1, 0x20

    .line 36
    .line 37
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final setUserActivityTimeoutForDexOverrideFromWindowManager(J)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    const-string v0, "[api] setUserActivityTimeoutForDexOverrideFromWindowManagerInternal: timeoutMillis: "

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    .line 9
    .line 10
    cmp-long v2, v2, p1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "PowerManagerService"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutForDexOverrideFromWindowManager:J

    .line 32
    .line 33
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 34
    .line 35
    or-int/lit8 p1, p1, 0x20

    .line 36
    .line 37
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public final setUserActivityTimeoutOverrideFromWindowManager(J)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    const-string v0, "[api] setUserActivityTimeoutOverrideFromWindowManagerInternal: timeoutMillis: "

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 9
    .line 10
    cmp-long v2, v2, p1

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "PowerManagerService"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityTimeoutOverrideFromWindowManager:J

    .line 32
    .line 33
    const/16 v0, 0x6aff

    .line 34
    .line 35
    invoke-static {v0, p1, p2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 36
    .line 37
    .line 38
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 39
    .line 40
    or-int/lit8 p1, p1, 0x20

    .line 41
    .line 42
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v1

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final setUserInactiveOverrideFromWindowManager()V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "[api] setUserInactiveOverrideFromWindowManager()"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    const/4 v1, 0x1

    .line 20
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUserInactiveOverrideFromWindowManager:Z

    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 23
    .line 24
    or-int/lit8 v1, v1, 0x4

    .line 25
    .line 26
    iput v1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final setWakeLockBlackListEnableDisable(IZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 9
    .line 10
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 23
    .line 24
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :cond_1
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_6

    .line 52
    .line 53
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 54
    .line 55
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mWakelockBlacklistAppid:Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :goto_0
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 73
    .line 74
    iget-object p2, p2, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/4 v1, 0x0

    .line 81
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v3, 0x1

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 93
    .line 94
    iget v4, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 95
    .line 96
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ne v4, p1, :cond_2

    .line 101
    .line 102
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 103
    .line 104
    invoke-virtual {v4, v2}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_2

    .line 109
    .line 110
    iget-boolean v1, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 111
    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 115
    .line 116
    const/4 v4, -0x1

    .line 117
    invoke-virtual {v1, v2, v4}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_3
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 122
    .line 123
    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 124
    .line 125
    .line 126
    :goto_2
    move v1, v3

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    if-eqz v1, :cond_5

    .line 129
    .line 130
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 131
    .line 132
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 133
    .line 134
    or-int/2addr p1, v3

    .line 135
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 138
    .line 139
    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 142
    :cond_5
    const-string p0, "PowerManagerService"

    .line 143
    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v1, "[PWL] can not change appid =  "

    .line 150
    .line 151
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    monitor-exit v0

    .line 165
    return-void

    .line 166
    :cond_6
    monitor-exit v0

    .line 167
    return-void

    .line 168
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    throw p0
.end method

.method public final setWakeLockDisabledStateForChinaModelLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 6

    .line 1
    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    .line 2
    .line 3
    const v1, 0xffff

    .line 4
    .line 5
    .line 6
    and-int/2addr v0, v1

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_4

    .line 10
    .line 11
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabledByFreecess:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v1

    .line 20
    move v3, v0

    .line 21
    :goto_0
    iget-boolean v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 22
    .line 23
    if-eq v4, v3, :cond_1

    .line 24
    .line 25
    iput-boolean v3, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 26
    .line 27
    iput v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisableReason:I

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v2, "[PWL] find out: "

    .line 33
    .line 34
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v2, "  disabled -> "

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "PowerManagerService"

    .line 50
    .line 51
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    if-eqz v1, :cond_4

    .line 55
    .line 56
    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mNotifiedAcquired:Z

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mClock:Lcom/android/server/power/PowerManagerService$Injector$1;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    iget-wide v4, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mAcquireTime:J

    .line 72
    .line 73
    sub-long/2addr v2, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_2
    const-wide/16 v2, 0x0

    .line 76
    .line 77
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ":"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mPackageName:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 102
    .line 103
    if-eqz v2, :cond_3

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v3, "(disabled:"

    .line 108
    .line 109
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService$WakeLock;->-$$Nest$mgetDisableReasonString(Lcom/android/server/power/PowerManagerService$WakeLock;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p1, ")"

    .line 120
    .line 121
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    goto :goto_2

    .line 129
    :cond_3
    const-string p1, "(enabled)"

    .line 130
    .line 131
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v0, "DIS"

    .line 139
    .line 140
    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    const/16 p1, 0xaa9

    .line 145
    .line 146
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    :cond_4
    return v1
.end method

.method public final setWakeLockEnableDisable(IZ)I
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "[PWL] SetWakeLockEnableDisable uid = "

    .line 3
    .line 4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5
    .line 6
    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    const-string v3, "PowerManagerService"

    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " , disable= "

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v3, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v3, 0x0

    .line 43
    move v4, v3

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_8

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v5, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 55
    .line 56
    iget v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    .line 57
    .line 58
    const/4 v7, -0x1

    .line 59
    if-ne v6, p1, :cond_3

    .line 60
    .line 61
    iget-boolean v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabledByFreecess:Z

    .line 62
    .line 63
    if-eq v6, p2, :cond_3

    .line 64
    .line 65
    iput-boolean p2, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabledByFreecess:Z

    .line 66
    .line 67
    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 68
    .line 69
    invoke-virtual {v6, v5}, Lcom/android/server/power/PowerManagerService;->setWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-eqz v6, :cond_2

    .line 74
    .line 75
    iget-boolean v4, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 80
    .line 81
    invoke-virtual {v4, v5, v7}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto/16 :goto_6

    .line 87
    .line 88
    :cond_1
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    move v4, v0

    .line 94
    :cond_2
    if-eqz v4, :cond_0

    .line 95
    .line 96
    const-string v6, "PowerManagerService"

    .line 97
    .line 98
    new-instance v7, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v8, "[PWL] find out: "

    .line 104
    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v5, "  disabled -> "

    .line 112
    .line 113
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    iget-object v6, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 128
    .line 129
    if-eqz v6, :cond_0

    .line 130
    .line 131
    invoke-virtual {v6}, Landroid/os/WorkSource;->size()I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    sget-object v8, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$ActiveMusicRecordFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    .line 136
    .line 137
    iget-object v9, v8, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSilentAudioDetectionMap:Landroid/util/ArrayMap;

    .line 138
    .line 139
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :try_start_1
    sget-boolean v10, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 141
    .line 142
    sget-object v10, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 143
    .line 144
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    .line 146
    .line 147
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 148
    .line 149
    .line 150
    move-result v10

    .line 151
    if-eqz v10, :cond_4

    .line 152
    .line 153
    iget-object v8, v8, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mSlientAudioApp:Landroid/util/ArraySet;

    .line 154
    .line 155
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-virtual {v8, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-eqz v8, :cond_4

    .line 164
    .line 165
    move v8, v0

    .line 166
    goto :goto_2

    .line 167
    :catchall_1
    move-exception p0

    .line 168
    goto :goto_5

    .line 169
    :cond_4
    move v8, v3

    .line 170
    :goto_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    if-eqz v8, :cond_6

    .line 172
    .line 173
    if-ne v6, v0, :cond_6

    .line 174
    .line 175
    :try_start_2
    iget-object v8, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 176
    .line 177
    invoke-virtual {v8, v3}, Landroid/os/WorkSource;->getUid(I)I

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    if-ne v8, p1, :cond_6

    .line 182
    .line 183
    invoke-virtual {p0, v5}, Lcom/android/server/power/PowerManagerService$LocalService;->setWakeLockDisabledStateForChinaModelLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)Z

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_0

    .line 188
    .line 189
    iget-boolean v4, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 190
    .line 191
    if-eqz v4, :cond_5

    .line 192
    .line 193
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 194
    .line 195
    invoke-virtual {v4, v5, v7}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;I)V

    .line 196
    .line 197
    .line 198
    goto :goto_3

    .line 199
    :cond_5
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 200
    .line 201
    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    .line 202
    .line 203
    .line 204
    :goto_3
    move v4, v0

    .line 205
    goto/16 :goto_0

    .line 206
    .line 207
    :cond_6
    move v7, v3

    .line 208
    :goto_4
    if-ge v7, v6, :cond_0

    .line 209
    .line 210
    iget-object v8, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    .line 211
    .line 212
    invoke-virtual {v8, v7}, Landroid/os/WorkSource;->get(I)I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    if-ne v8, p1, :cond_7

    .line 217
    .line 218
    iget-boolean v8, v5, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    .line 219
    .line 220
    if-eq v8, p2, :cond_7

    .line 221
    .line 222
    const-string p0, "PowerManagerService"

    .line 223
    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v0, "[PWL] find out in ws: "

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v0, "  disabled -> "

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    const/4 p0, 0x2

    .line 254
    return p0

    .line 255
    :cond_7
    add-int/2addr v7, v0

    .line 256
    goto :goto_4

    .line 257
    :goto_5
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 258
    :try_start_4
    throw p0

    .line 259
    :cond_8
    if-eqz v4, :cond_9

    .line 260
    .line 261
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 262
    .line 263
    iget p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 264
    .line 265
    or-int/2addr p1, v0

    .line 266
    iput p1, p0, Lcom/android/server/power/PowerManagerService;->mDirty:I

    .line 267
    .line 268
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    .line 269
    .line 270
    .line 271
    monitor-exit v2

    .line 272
    return v0

    .line 273
    :cond_9
    const-string p0, "PowerManagerService"

    .line 274
    .line 275
    new-instance p2, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    .line 279
    .line 280
    const-string v0, "[PWL] can not change uid =  "

    .line 281
    .line 282
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-static {p0, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    monitor-exit v2

    .line 296
    return v3

    .line 297
    :goto_6
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 298
    throw p0
.end method

.method public final startUidChanges()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x1

    .line 7
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/power/PowerManagerService;->mUidsChanging:Z

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final uidActive(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x13

    .line 22
    .line 23
    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 35
    .line 36
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 37
    .line 38
    if-lez p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 41
    .line 42
    .line 43
    :cond_1
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final uidGone(I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-ltz p1, :cond_1

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 21
    .line 22
    const/16 v2, 0x14

    .line 23
    .line 24
    iput v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    iput-boolean v2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 28
    .line 29
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doesIdleStateBlockWakeLocksLocked()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    iget-boolean p1, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 48
    .line 49
    if-lez p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 52
    .line 53
    .line 54
    :cond_1
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public final uidIdle(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 18
    .line 19
    iget p1, p1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 20
    .line 21
    if-lez p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final unregisterUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "unregisterUserActivityStateListener: "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mUserActivityStateListenerListeners:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p1, "listener must not be null"

    .line 41
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method

.method public final updateProfileActivityTimeFromKnox(IJ)V
    .locals 3

    .line 1
    const-string v0, "PowerManagerService"

    .line 2
    .line 3
    const-string v1, "[api] updateProfileActivityTimeFromKnox: userId: "

    .line 4
    .line 5
    const-string v2, " timeMs: "

    .line 6
    .line 7
    invoke-static {p1, v1, p2, p3, v2}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayManagerService$BinderService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v0

    .line 20
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService;->mProfilePowerState:Landroid/util/SparseArray;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-wide v1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 37
    .line 38
    cmp-long p1, p2, v1

    .line 39
    .line 40
    if-lez p1, :cond_0

    .line 41
    .line 42
    const-string p1, "PowerManagerService"

    .line 43
    .line 44
    const-string/jumbo v1, "updated ProfilePowerState for Workspace"

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_2

    .line 55
    :cond_0
    :goto_0
    monitor-exit v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    monitor-exit v0

    .line 58
    :goto_1
    return-void

    .line 59
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final updateUidProcState(II)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/power/PowerManagerService$UidState;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lcom/android/server/power/PowerManagerService$UidState;-><init>(I)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService;->mUidState:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_4

    .line 29
    :cond_0
    :goto_0
    iget p1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    const/16 v4, 0xb

    .line 34
    .line 35
    if-gt p1, v4, :cond_1

    .line 36
    .line 37
    move p1, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    move p1, v2

    .line 40
    :goto_1
    iput p2, v1, Lcom/android/server/power/PowerManagerService$UidState;->mProcState:I

    .line 41
    .line 42
    iget v5, v1, Lcom/android/server/power/PowerManagerService$UidState;->mNumWakeLocks:I

    .line 43
    .line 44
    if-lez v5, :cond_5

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->doesIdleStateBlockWakeLocksLocked()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_4

    .line 51
    .line 52
    iget-boolean v5, p0, Lcom/android/server/power/PowerManagerService;->mLowPowerStandbyActive:Z

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-boolean v1, v1, Lcom/android/server/power/PowerManagerService$UidState;->mActive:Z

    .line 58
    .line 59
    if-nez v1, :cond_5

    .line 60
    .line 61
    if-gt p2, v4, :cond_3

    .line 62
    .line 63
    move v2, v3

    .line 64
    :cond_3
    if-eq p1, v2, :cond_5

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 67
    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService;->handleUidStateChangeLocked()V

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_3
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final wasDeviceIdleFor(J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$LocalService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService;->wasDeviceIdleForInternal(J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
