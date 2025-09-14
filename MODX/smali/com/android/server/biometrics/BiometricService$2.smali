.class public final Lcom/android/server/biometrics/BiometricService$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricSysuiReceiver;


# instance fields
.field public final mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

.field public final synthetic this$0:Lcom/android/server/biometrics/BiometricService;

.field public final synthetic val$requestId:J


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 6
    iput-wide p2, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 8
    new-instance p1, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

    .line 10
    invoke-direct {p1, p0}, Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;-><init>(Lcom/android/server/biometrics/BiometricService$2;)V

    .line 13
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$2;->mSysUiListener:Lcom/android/server/biometrics/SemBiometricSysUiReceiver$1;

    .line 15
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
.end method

.method public final onDeviceCredentialPressed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 5
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 7
    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;

    .line 9
    const/4 v4, 0x2

    .line 10
    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    .line 13
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
.end method

.method public final onDialogAnimatedIn(Z)V
    .locals 7

    .line 1
    const-string v0, "Session start for [BIOMETRIC_PROMPT] id="

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mHandler:Landroid/os/Handler;

    .line 10
    iget-object v3, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mShowDialogWatchdog:Lcom/android/server/biometrics/SemBiometricSysUiWrapper$$ExternalSyntheticLambda0;

    .line 12
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v2, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 17
    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 19
    iget-object v2, v2, Lcom/android/server/biometrics/log/BiometricContextProvider;->mISessionListener:Lcom/android/server/biometrics/log/BiometricContextProvider$3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-nez v2, :cond_0

    .line 23
    monitor-exit v1

    .line 24
    goto :goto_3

    .line 25
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    .line 27
    const/4 v4, 0x2

    .line 28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v5

    .line 32
    check-cast v3, Ljava/util/HashMap;

    .line 34
    const/4 v6, 0x0

    .line 35
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    .line 41
    const-string v0, "SemBiometricSysUiWrapper"

    .line 43
    const-string/jumbo v2, "session [BIOMETRIC_PROMPT] was already started"

    .line 46
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit v1

    .line 50
    goto :goto_3

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_4

    .line 53
    :cond_1
    :try_start_2
    iget-object v3, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mInstanceIdGenerator:Lcom/android/internal/logging/InstanceIdSequence;

    .line 55
    invoke-virtual {v3}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 58
    move-result-object v3

    .line 59
    iget-object v5, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    .line 61
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v6

    .line 65
    check-cast v5, Ljava/util/HashMap;

    .line 67
    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    sget-boolean v5, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 72
    if-eqz v5, :cond_2

    .line 74
    const-string v5, "SemBiometricSysUiWrapper"

    .line 76
    new-instance v6, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    :goto_0
    invoke-virtual {v2, v4, v3}, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    goto :goto_2

    .line 98
    :goto_1
    :try_start_4
    const-string v2, "SemBiometricSysUiWrapper"

    .line 100
    const-string v3, "Unable to send onSessionStarted for session=[BIOMETRIC_PROMPT]"

    .line 102
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    :goto_2
    monitor-exit v1

    .line 106
    :goto_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 108
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 110
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 112
    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;

    .line 114
    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/BiometricService$2;JZ)V

    .line 117
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void

    .line 121
    :goto_4
    monitor-exit v1

    .line 122
    throw p0
.end method

.method public final onDialogDismissed(I[B)V
    .locals 8

    .line 1
    const-string v0, "Session end for [BIOMETRIC_PROMPT] id="

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 5
    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/server/biometrics/SemBiometricSysUiWrapper;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 10
    check-cast v2, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 12
    iget-object v2, v2, Lcom/android/server/biometrics/log/BiometricContextProvider;->mISessionListener:Lcom/android/server/biometrics/log/BiometricContextProvider$3;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-nez v2, :cond_0

    .line 16
    monitor-exit v1

    .line 17
    goto :goto_3

    .line 18
    :cond_0
    :try_start_1
    iget-object v3, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    .line 20
    const/4 v4, 0x2

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v5

    .line 25
    check-cast v3, Ljava/util/HashMap;

    .line 27
    const/4 v6, 0x0

    .line 28
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_1

    .line 34
    const-string v0, "SemBiometricSysUiWrapper"

    .line 36
    const-string/jumbo v2, "session [BIOMETRIC_PROMPT] was not started"

    .line 39
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    monitor-exit v1

    .line 43
    goto :goto_3

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_4

    .line 46
    :cond_1
    :try_start_2
    iget-object v3, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    .line 48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    move-result-object v5

    .line 52
    check-cast v3, Ljava/util/HashMap;

    .line 54
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/android/internal/logging/InstanceId;

    .line 60
    iget-object v5, v1, Lcom/android/server/biometrics/SemBiometricSysUiWrapper;->mSessionToInstanceId:Ljava/util/Map;

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v7

    .line 66
    check-cast v5, Ljava/util/HashMap;

    .line 68
    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :try_start_3
    sget-boolean v5, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 73
    if-eqz v5, :cond_2

    .line 75
    const-string v5, "SemBiometricSysUiWrapper"

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    :goto_0
    invoke-virtual {v2, v4, v3}, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    goto :goto_2

    .line 99
    :goto_1
    :try_start_4
    const-string v2, "SemBiometricSysUiWrapper"

    .line 101
    const-string v3, "Unable to send onSessionEnded for session=[BIOMETRIC_PROMPT]"

    .line 103
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    :goto_2
    monitor-exit v1

    .line 107
    :goto_3
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 109
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 111
    iget-wide v3, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 113
    new-instance v7, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;

    .line 115
    move-object v1, v7

    .line 116
    move-object v2, p0

    .line 117
    move v5, p1

    .line 118
    move-object v6, p2

    .line 119
    invoke-direct/range {v1 .. v6}, Lcom/android/server/biometrics/BiometricService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI[B)V

    .line 122
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void

    .line 126
    :goto_4
    monitor-exit v1

    .line 127
    throw p0
.end method

.method public final onStartFingerprintNow()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 5
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 7
    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;

    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    .line 13
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
.end method

.method public final onSystemEvent(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 5
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 7
    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;

    .line 9
    invoke-direct {v3, p0, v1, v2, p1}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    .line 12
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
.end method

.method public final onTryAgainPressed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$2;->this$0:Lcom/android/server/biometrics/BiometricService;

    .line 3
    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    .line 5
    iget-wide v1, p0, Lcom/android/server/biometrics/BiometricService$2;->val$requestId:J

    .line 7
    new-instance v3, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/server/biometrics/BiometricService$2$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/BiometricService$2;JI)V

    .line 13
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    return-void
.end method
