.class public final Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/vibrator/VibratorController$OnVibrationCompleteListener;
.implements Lcom/android/server/vibrator/VibratorManagerService$OnSyncedVibrationCompleteListener;


# instance fields
.field public this$0:Ljava/lang/Object;


# virtual methods
.method public noteVibratorOff(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mFrameworkStatsLogger:Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2;

    .line 16
    .line 17
    invoke-direct {v0, p1}, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger$$ExternalSyntheticLambda2;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorFrameworkStatsLogger;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    const-string p1, "VibratorManagerService"

    .line 28
    .line 29
    const-string v0, "Error logging VibratorStateChanged to OFF"

    .line 30
    .line 31
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method public onComplete(IJ)V
    .locals 4

    .line 9
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz p0, :cond_1

    .line 10
    const-string v0, "Vibration "

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 13
    iget-wide v2, v2, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 14
    const-string v2, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " on vibrator "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " complete, notifying thread"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string p2, "VibrationThread"

    const-string p3, "Vibration complete reported by vibrator "

    .line 17
    invoke-static {p1, p3, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    iget-object p3, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mSignalVibratorsComplete:Landroid/util/IntArray;

    invoke-virtual {p3, p1}, Landroid/util/IntArray;->add(I)V

    .line 20
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationStepConductor;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 21
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public onComplete(J)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibrationThreadCallbacks;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/vibrator/VibratorManagerService;

    if-eqz p0, :cond_1

    .line 2
    const-string v0, "Synced vibration "

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, v2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 5
    iget-wide v2, v2, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 6
    const-string v2, "VibratorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " complete, notifying thread"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->notifySyncedVibrationComplete()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method
