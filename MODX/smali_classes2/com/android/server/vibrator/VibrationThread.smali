.class public final Lcom/android/server/vibrator/VibrationThread;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCalledVibrationCompleteCallback:Z

.field public mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mLock:Ljava/lang/Object;

.field public mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mVibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 13
    .line 14
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    const-string p0, "VibratorManagerService"

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v4, "Vibration "

    .line 24
    .line 25
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, " finished with "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {p0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object p0, v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 56
    .line 57
    iget-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 58
    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    iget-object v3, v3, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 62
    .line 63
    iget-wide v3, v3, Lcom/android/server/vibrator/Vibration;->id:J

    .line 64
    .line 65
    cmp-long v1, v3, v1

    .line 66
    .line 67
    if-nez v1, :cond_0

    .line 68
    .line 69
    invoke-static {v0, p1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mreportFinishedVibrationLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    .line 76
    goto :goto_2

    .line 77
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p1

    .line 79
    :cond_1
    :goto_2
    return-void
.end method

.method public isRunningVibrationId(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 9
    .line 10
    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 11
    .line 12
    cmp-long p0, v1, p1

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final playVibration()V
    .locals 5

    .line 1
    const-string/jumbo v0, "playVibration"

    .line 2
    .line 3
    .line 4
    const-wide/32 v1, 0x800000

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->prepareToStart()V

    .line 13
    .line 14
    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_7

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->waitUntilNextStepIsDue()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->runNextStep()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_4

    .line 39
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 49
    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    invoke-static {v3}, Lcom/android/server/vibrator/VibrationStepConductor;->expectIsVibrationThread(Z)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v3, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mCancelledVibrationEndInfo:Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    iget v3, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mPendingVibrateSteps:I

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    if-gtz v3, :cond_6

    .line 65
    .line 66
    iget v3, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mRemainingStartSequentialEffectSteps:I

    .line 67
    .line 68
    if-lez v3, :cond_4

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_4
    iget v0, v0, Lcom/android/server/vibrator/VibrationStepConductor;->mSuccessfulVibratorOnSteps:I

    .line 72
    .line 73
    if-lez v0, :cond_5

    .line 74
    .line 75
    new-instance v3, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 76
    .line 77
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->FINISHED:Lcom/android/server/vibrator/Vibration$Status;

    .line 78
    .line 79
    invoke-direct {v3, v0, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    new-instance v3, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 84
    .line 85
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_UNSUPPORTED:Lcom/android/server/vibrator/Vibration$Status;

    .line 86
    .line 87
    invoke-direct {v3, v0, v4}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    :goto_2
    move-object v3, v4

    .line 92
    :goto_3
    if-eqz v3, :cond_0

    .line 93
    .line 94
    invoke-virtual {p0, v3}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_7
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 103
    .line 104
    .line 105
    throw p0
.end method

.method public final run()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, -0x8

    .line 4
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 5
    .line 6
    .line 7
    :goto_0
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 11
    .line 12
    if-eqz v0, :cond_6

    .line 13
    .line 14
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 15
    iput-object v0, v1, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, v1, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 19
    .line 20
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

    .line 21
    .line 22
    new-instance v3, Landroid/os/WorkSource;

    .line 23
    .line 24
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 29
    .line 30
    iget v4, v4, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 31
    .line 32
    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    .line 33
    .line 34
    .line 35
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 36
    .line 37
    invoke-virtual {v4, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v1, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibrationThread;->runCurrentVibrationWithWakeLockAndDeathLink()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 47
    .line 48
    .line 49
    :try_start_2
    new-instance v4, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 50
    .line 51
    invoke-direct {v4, v2, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v4}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 55
    .line 56
    .line 57
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 60
    .line 61
    .line 62
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-nez v2, :cond_0

    .line 74
    .line 75
    const-string v2, "VibrationThread"

    .line 76
    .line 77
    const-string v4, "VibrationThread terminated with unfinished vibration"

    .line 78
    .line 79
    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_0
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter v2

    .line 85
    :try_start_3
    iput-object v3, v1, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 86
    .line 87
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 88
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;

    .line 89
    .line 90
    iget-object v4, v1, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 91
    .line 92
    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 93
    .line 94
    iget-wide v4, v4, Lcom/android/server/vibrator/Vibration;->id:J

    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    const-string v6, "VibratorManagerService"

    .line 100
    .line 101
    const-string v7, "VibrationThread released after finished vibration"

    .line 102
    .line 103
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    iget-object v6, v2, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v6, Lcom/android/server/vibrator/VibratorManagerService;

    .line 109
    .line 110
    iget-object v6, v6, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter v6

    .line 113
    :try_start_4
    const-string v7, "VibratorManagerService"

    .line 114
    .line 115
    const-string v8, "Processing VibrationThread released callback"

    .line 116
    .line 117
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 121
    .line 122
    if-eqz v7, :cond_1

    .line 123
    .line 124
    iget-object v7, v2, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v7, Lcom/android/server/vibrator/VibratorManagerService;

    .line 127
    .line 128
    iget-object v7, v7, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 129
    .line 130
    if-eqz v7, :cond_1

    .line 131
    .line 132
    iget-object v7, v7, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 133
    .line 134
    iget-wide v7, v7, Lcom/android/server/vibrator/Vibration;->id:J

    .line 135
    .line 136
    cmp-long v9, v7, v4

    .line 137
    .line 138
    if-eqz v9, :cond_1

    .line 139
    .line 140
    const-string v9, "VibratorManagerService"

    .line 141
    .line 142
    const-string v10, "VibrationId mismatch on release. expected=%d, released=%d"

    .line 143
    .line 144
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    filled-new-array {v7, v4}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-static {v10, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v9, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :cond_1
    :goto_1
    iget-object v4, v2, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v4, Lcom/android/server/vibrator/VibratorManagerService;

    .line 170
    .line 171
    iget-object v5, v4, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 172
    .line 173
    const/4 v7, 0x1

    .line 174
    if-eqz v5, :cond_3

    .line 175
    .line 176
    iget-object v4, v4, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 177
    .line 178
    iget-object v5, v5, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 179
    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 181
    .line 182
    .line 183
    move-result-wide v14

    .line 184
    invoke-virtual {v5}, Lcom/android/server/vibrator/HalVibration;->isRepeating()Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-eqz v8, :cond_2

    .line 189
    .line 190
    const/4 v8, 0x2

    .line 191
    move v10, v8

    .line 192
    goto :goto_2

    .line 193
    :cond_2
    move v10, v7

    .line 194
    :goto_2
    new-instance v13, Lcom/android/server/vibrator/VibrationStats$StatsInfo;

    .line 195
    .line 196
    iget-object v8, v5, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 197
    .line 198
    iget v9, v8, Lcom/android/server/vibrator/Vibration$CallerInfo;->uid:I

    .line 199
    .line 200
    iget-object v8, v8, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 201
    .line 202
    invoke-virtual {v8}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    iget-object v12, v5, Lcom/android/server/vibrator/HalVibration;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 207
    .line 208
    iget-object v5, v5, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 209
    .line 210
    move-object v8, v13

    .line 211
    move-object v0, v13

    .line 212
    move-object v13, v5

    .line 213
    invoke-direct/range {v8 .. v15}, Lcom/android/server/vibrator/VibrationStats$StatsInfo;-><init>(IIILcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;J)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v4, v0}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->writeVibrationReportedAsync(Lcom/android/server/vibrator/VibrationStats$StatsInfo;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 222
    .line 223
    iput-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 224
    .line 225
    :cond_3
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 228
    .line 229
    iget-object v4, v0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 230
    .line 231
    if-eqz v4, :cond_4

    .line 232
    .line 233
    iput-object v3, v0, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 234
    .line 235
    invoke-virtual {v0, v4}, Lcom/android/server/vibrator/VibratorManagerService;->startVibrationOnThreadLocked(Lcom/android/server/vibrator/VibrationStepConductor;)Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_4

    .line 240
    .line 241
    iget-object v5, v2, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast v5, Lcom/android/server/vibrator/VibratorManagerService;

    .line 244
    .line 245
    iget-object v4, v4, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 246
    .line 247
    invoke-virtual {v5, v4, v0, v7}, Lcom/android/server/vibrator/VibratorManagerService;->endVibrationLocked(Lcom/android/server/vibrator/HalVibration;Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 248
    .line 249
    .line 250
    :cond_4
    iget-object v0, v2, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 253
    .line 254
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    if-eqz v2, :cond_5

    .line 259
    .line 260
    invoke-virtual {v0}, Lcom/android/server/vibrator/VibratorManagerService;->getDefaultVibratorController()Lcom/android/server/vibrator/VibratorController;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iget-object v2, v0, Lcom/android/server/vibrator/VibratorController;->mLock:Ljava/lang/Object;

    .line 265
    .line 266
    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    const/4 v4, 0x0

    .line 268
    :try_start_5
    invoke-virtual {v0, v4}, Lcom/android/server/vibrator/VibratorController;->notifyListenerOnVibrating(Z)V

    .line 269
    .line 270
    .line 271
    monitor-exit v2

    .line 272
    goto :goto_3

    .line 273
    :catchall_1
    move-exception v0

    .line 274
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 275
    :try_start_6
    throw v0

    .line 276
    :cond_5
    :goto_3
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 277
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 278
    .line 279
    monitor-enter v2

    .line 280
    :try_start_7
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 283
    .line 284
    .line 285
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 286
    iput-object v3, v1, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :catchall_2
    move-exception v0

    .line 291
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 292
    throw v0

    .line 293
    :goto_4
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 294
    throw v0

    .line 295
    :catchall_3
    move-exception v0

    .line 296
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 297
    throw v0

    .line 298
    :catchall_4
    move-exception v0

    .line 299
    goto :goto_5

    .line 300
    :catchall_5
    move-exception v0

    .line 301
    move-object v4, v0

    .line 302
    :try_start_b
    new-instance v0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 303
    .line 304
    invoke-direct {v0, v2, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v1, v0}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 308
    .line 309
    .line 310
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 311
    :goto_5
    iget-object v2, v1, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 312
    .line 313
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 314
    .line 315
    .line 316
    iget-object v1, v1, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 317
    .line 318
    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 319
    .line 320
    .line 321
    throw v0

    .line 322
    :catchall_6
    move-exception v0

    .line 323
    goto :goto_7

    .line 324
    :cond_6
    :try_start_c
    iget-object v0, v1, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 327
    .line 328
    .line 329
    goto :goto_6

    .line 330
    :catch_0
    :try_start_d
    const-string v0, "VibrationThread"

    .line 331
    .line 332
    const-string v3, "VibrationThread interrupted waiting to start, continuing"

    .line 333
    .line 334
    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    :goto_6
    monitor-exit v2

    .line 338
    goto/16 :goto_0

    .line 339
    .line 340
    :goto_7
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 341
    throw v0
.end method

.method public final runCurrentVibrationWithWakeLockAndDeathLink()V
    .locals 5

    .line 1
    const-string v0, "Failed to unlink token"

    .line 2
    .line 3
    const-string v1, "VibrationThread"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/vibrator/Vibration;->callerToken:Landroid/os/IBinder;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_0
    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->playVibration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_2
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 19
    .line 20
    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :catchall_0
    move-exception v2

    .line 30
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 31
    .line 32
    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catch_1
    move-exception p0

    .line 37
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :goto_1
    throw v2

    .line 41
    :catch_2
    move-exception v0

    .line 42
    const-string v2, "Error linking vibration to token death"

    .line 43
    .line 44
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .line 46
    .line 47
    new-instance v0, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 48
    .line 49
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v0, v1, v2}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final waitForThreadIdle(J)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-long/2addr p1, v0

    .line 6
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    monitor-exit v2

    .line 14
    const/4 p0, 0x1

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    cmp-long v3, v0, p1

    .line 19
    .line 20
    if-ltz v3, :cond_1

    .line 21
    .line 22
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const/4 p0, 0x0

    .line 24
    return p0

    .line 25
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    sub-long v0, p1, v0

    .line 28
    .line 29
    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    :try_start_2
    const-string v0, "VibrationThread"

    .line 34
    .line 35
    const-string v1, "VibrationThread interrupted waiting to stop, continuing"

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v0

    .line 44
    goto :goto_0

    .line 45
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw p0
.end method
