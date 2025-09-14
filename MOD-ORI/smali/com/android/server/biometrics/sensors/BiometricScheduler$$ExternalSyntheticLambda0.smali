.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

.field public final synthetic f$1:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/BiometricScheduler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 6
    .line 7
    if-ne p0, v1, :cond_3

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-string/jumbo p0, "biometric.value_scheduler_watchdog_triggered_count"

    .line 16
    .line 17
    .line 18
    invoke-static {p0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 22
    .line 23
    if-nez p0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const-string v2, "BiometricScheduler"

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "[Watchdog cancelling pending] "

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v4, v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->markCancelingForWatchdog()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v1, "[Watchdog cancelling current] "

    .line 72
    .line 73
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    iget-object p0, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 91
    .line 92
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->getInternalCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_1
    return-void
.end method
