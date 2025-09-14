.class public final Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mCancelWatchdog:Ljava/lang/Runnable;

.field public final mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public final mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

.field public final mIsDebuggable:Ljava/util/function/BooleanSupplier;

.field public mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

.field public mState:I


# direct methods
.method public constructor <init>(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2, p3, p1, v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;ILjava/util/function/BooleanSupplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;ILjava/util/function/BooleanSupplier;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 6
    iput p3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 7
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    .line 8
    new-instance p1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;ILjava/util/function/BooleanSupplier;)V

    return-void
.end method


# virtual methods
.method public final cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    filled-new-array {v0}, [I

    .line 5
    move-result-object v0

    .line 6
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 8
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 11
    move-result v0

    .line 12
    const-string v1, "BiometricSchedulerOperation"

    .line 14
    if-eqz v0, :cond_1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    const-string/jumbo v3, "cancel: mState must not be "

    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    .line 35
    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 41
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 53
    return-void

    .line 54
    :cond_2
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 56
    const/4 v2, 0x3

    .line 57
    if-ne v0, v2, :cond_3

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    const-string p2, "Cannot cancel - already invoked for operation: "

    .line 63
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 77
    :cond_3
    iput v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 79
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 81
    if-eqz v0, :cond_5

    .line 83
    const/4 v3, 0x1

    .line 84
    if-eq v0, v3, :cond_5

    .line 86
    const/4 v3, 0x4

    .line 87
    if-ne v0, v3, :cond_4

    .line 89
    goto :goto_1

    .line 90
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "[Cancelling] Current client: "

    .line 94
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 104
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancel()V

    .line 110
    goto :goto_2

    .line 111
    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    const-string v3, "[Cancelling] Current client (without start): "

    .line 115
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 131
    move-result-object p2

    .line 132
    invoke-virtual {v2, p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->cancelWithoutStarting(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 135
    :goto_2
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mCancelWatchdog:Ljava/lang/Runnable;

    .line 137
    const-wide/16 v0, 0xbb8

    .line 139
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    return-void
.end method

.method public final doStart(Lcom/android/server/biometrics/sensors/BiometricScheduler$1;)Z
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mOnStartCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 6
    move-result-object p1

    .line 7
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "BiometricSchedulerOperation"

    .line 12
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 14
    const/4 v4, 0x1

    .line 15
    if-ne v0, v4, :cond_1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v5, "Operation marked for cancellation, cancelling now: "

    .line 21
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 31
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 37
    instance-of p0, v3, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 39
    if-eqz p0, :cond_0

    .line 41
    check-cast v3, Lcom/android/server/biometrics/sensors/ErrorConsumer;

    .line 43
    const/4 p0, 0x5

    .line 44
    invoke-interface {v3, p0, v1}, Lcom/android/server/biometrics/sensors/ErrorConsumer;->onError(II)V

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string/jumbo p0, "monitor cancelled but does not implement ErrorConsumer"

    .line 51
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return v1

    .line 55
    :cond_1
    instance-of v0, v3, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 57
    if-eqz v0, :cond_2

    .line 59
    move-object v0, v3

    .line 60
    check-cast v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 62
    iget-object v5, v0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 64
    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 67
    move-result-object v5

    .line 68
    if-nez v5, :cond_2

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    const-string/jumbo v5, "unable to start: "

    .line 75
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 91
    invoke-virtual {p1, v3, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 94
    return v1

    .line 95
    :cond_2
    const/4 v0, 0x2

    .line 96
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 98
    invoke-virtual {v3, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v0, "started: "

    .line 106
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object p0

    .line 116
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v4
.end method

.method public final varargs errorWhenNoneOf(Ljava/lang/String;[I)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 3
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 11
    const-string v1, ": mState="

    .line 13
    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object p1

    .line 17
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 19
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, " must be one of "

    .line 24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    .line 40
    invoke-interface {p0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_0

    .line 46
    const-string p0, "BiometricSchedulerOperation"

    .line 48
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    throw p0

    .line 58
    :cond_1
    :goto_0
    return v0
.end method

.method public final getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;

    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    .line 6
    new-instance v1, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 10
    filled-new-array {v0, p1, p0}, [Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;-><init>([Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 17
    return-object v1
.end method

.method public final isMatchingRequestId(J)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 3
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    cmp-long p0, v0, v2

    .line 9
    if-lez p0, :cond_1

    .line 11
    cmp-long p0, v0, p1

    .line 13
    if-nez p0, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public final markCanceling()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 7
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isInterruptable()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public markCancelingForWatchdog()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 4
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", State: "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method
