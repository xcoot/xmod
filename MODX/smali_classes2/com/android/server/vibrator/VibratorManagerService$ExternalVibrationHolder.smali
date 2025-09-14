.class public final Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
.super Lcom/android/server/vibrator/Vibration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final externalVibration:Landroid/os/ExternalVibration;

.field public mStatus:Lcom/android/server/vibrator/Vibration$Status;

.field public scale:Landroid/os/ExternalVibrationScale;

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/ExternalVibration;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getToken()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v6, Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p2}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v3, -0x1

    .line 23
    move-object v0, v6

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/android/server/vibrator/Vibration$CallerInfo;-><init>(Landroid/os/VibrationAttributes;IILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, p1, v6}, Lcom/android/server/vibrator/Vibration;-><init>(Landroid/os/IBinder;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Landroid/os/ExternalVibrationScale;

    .line 31
    .line 32
    invoke-direct {p1}, Landroid/os/ExternalVibrationScale;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 38
    .line 39
    sget-object p1, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentExternalVibration:Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "VibratorManagerService"

    .line 13
    .line 14
    const-string v2, "External vibration finished because binder died"

    .line 15
    .line 16
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 22
    .line 23
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BINDER_DIED:Lcom/android/server/vibrator/Vibration$Status;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-direct {v1, v2, v3}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService;->endExternalVibrateLocked(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    :goto_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->mStatus:Lcom/android/server/vibrator/Vibration$Status;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->scale:Landroid/os/ExternalVibrationScale;

    .line 6
    .line 7
    iget v5, v0, Landroid/os/ExternalVibrationScale;->scaleLevel:I

    .line 8
    .line 9
    iget v6, v0, Landroid/os/ExternalVibrationScale;->adaptiveHapticsScale:F

    .line 10
    .line 11
    iget-object v7, p0, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/vibrator/Vibration;->stats:Lcom/android/server/vibrator/VibrationStats;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/android/server/vibrator/Vibration$DebugInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/VibrationStats;Landroid/os/CombinedVibration;Landroid/os/CombinedVibration;IFLcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 19
    .line 20
    .line 21
    return-object v8
.end method

.method public final isRepeating()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->externalVibration:Landroid/os/ExternalVibration;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    const/16 v0, 0x21

    .line 12
    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x11

    .line 16
    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
.end method
