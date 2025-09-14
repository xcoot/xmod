.class public final Lcom/android/server/biometrics/sensors/BiometricScheduler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBiometricService:Landroid/hardware/biometrics/IBiometricService;

.field public final mCrashStates:Ljava/util/ArrayDeque;

.field mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

.field public final mCurrentUserRetriever:Ljava/util/function/Supplier;

.field public final mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

.field public final mHandler:Landroid/os/Handler;

.field public final mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

.field final mPendingOperations:Ljava/util/Deque;

.field public final mRecentOperations:Ljava/util/List;

.field public final mRecentOperationsLimit:I

.field public final mSensorType:I

.field public mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

.field public mTotalOperationsHandled:I

.field public final mUserSwitchProvider:Lcom/android/server/biometrics/sensors/UserSwitchProvider;


# direct methods
.method public constructor <init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 4
    iput p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mSensorType:I

    .line 5
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 6
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 7
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    .line 9
    iput p5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;ILjava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$1;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    .line 13
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 14
    iput p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mSensorType:I

    .line 15
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 16
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 17
    iput-object p4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 18
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    .line 19
    iput p5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperationsLimit:I

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 21
    iput-object p6, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentUserRetriever:Ljava/util/function/Supplier;

    .line 22
    iput-object p7, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mUserSwitchProvider:Lcom/android/server/biometrics/sensors/UserSwitchProvider;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Ljava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V
    .locals 9

    .line 23
    const-string/jumbo v0, "biometric"

    .line 24
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/IBiometricService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricService;

    move-result-object v5

    const/16 v6, 0x32

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v7, p4

    move-object v8, p5

    .line 25
    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Landroid/os/Handler;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;Landroid/hardware/biometrics/IBiometricService;ILjava/util/function/Supplier;Lcom/android/server/biometrics/sensors/UserSwitchProvider;)V

    return-void
.end method


# virtual methods
.method public final cancelAuthenticationOrDetection(Landroid/os/IBinder;J)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "cancelAuthenticationOrDetection, requestId: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "BiometricScheduler"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 27
    instance-of v3, v2, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 29
    instance-of v4, v2, Lcom/android/server/biometrics/sensors/DetectionConsumer;

    .line 31
    if-nez v3, :cond_0

    .line 33
    if-eqz v4, :cond_1

    .line 35
    :cond_0
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 37
    if-ne v2, p1, :cond_1

    .line 39
    invoke-virtual {v0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingRequestId(J)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 47
    const-string p2, "Cancelling auth/detect op: "

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 66
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    .line 68
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 76
    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 79
    move-result-object p0

    .line 80
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_4

    .line 86
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 92
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 94
    instance-of v3, v2, Lcom/android/server/biometrics/sensors/AuthenticationConsumer;

    .line 96
    instance-of v4, v2, Lcom/android/server/biometrics/sensors/DetectionConsumer;

    .line 98
    if-nez v3, :cond_3

    .line 100
    if-eqz v4, :cond_2

    .line 102
    :cond_3
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 104
    if-ne v2, p1, :cond_2

    .line 106
    invoke-virtual {v0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingRequestId(J)Z

    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_2

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 114
    const-string v3, "Cancelling pending auth/detect op: "

    .line 116
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v2

    .line 126
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->markCanceling()Z

    .line 132
    goto :goto_0

    .line 133
    :cond_4
    :goto_1
    return-void
.end method

.method public final cancelEnrollment(Landroid/os/IBinder;J)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "cancelEnrollment, requestId: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, "BiometricScheduler"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 27
    instance-of v3, v2, Lcom/android/server/biometrics/sensors/EnrollClient;

    .line 29
    if-eqz v3, :cond_0

    .line 31
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 33
    if-ne v2, p1, :cond_0

    .line 35
    invoke-virtual {v0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingRequestId(J)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    const-string p2, "Cancelling enrollment op: "

    .line 45
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 57
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 62
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    .line 64
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 66
    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 72
    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 75
    move-result-object p0

    .line 76
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 88
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 90
    instance-of v3, v2, Lcom/android/server/biometrics/sensors/EnrollClient;

    .line 92
    if-eqz v3, :cond_1

    .line 94
    iget-object v2, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 96
    if-ne v2, p1, :cond_1

    .line 98
    invoke-virtual {v0, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->isMatchingRequestId(J)Z

    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    const-string v3, "Cancelling pending enrollment op: "

    .line 108
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->markCanceling()Z

    .line 124
    goto :goto_0

    .line 125
    :cond_2
    :goto_1
    return-void
.end method

.method public final checkCurrentUserAndStartNextOperation()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 3
    const-string v1, "Not idle, current operation: "

    .line 5
    const-string v2, "BiometricScheduler"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 29
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    .line 32
    move-result v0

    .line 33
    const-string v3, "No operations, returning to idle"

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentUserRetriever:Ljava/util/function/Supplier;

    .line 43
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/Integer;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v0

    .line 53
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 55
    invoke-interface {v4}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 61
    iget-object v4, v4, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 63
    iget v4, v4, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 65
    if-eq v4, v0, :cond_6

    .line 67
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 69
    invoke-interface {v5}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 75
    iget-object v5, v5, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 77
    instance-of v5, v5, Lcom/android/server/biometrics/sensors/StartUserClient;

    .line 79
    if-eqz v5, :cond_2

    .line 81
    goto/16 :goto_0

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mUserSwitchProvider:Lcom/android/server/biometrics/sensors/UserSwitchProvider;

    .line 85
    const/16 v3, -0x2710

    .line 87
    const/4 v5, 0x2

    .line 88
    if-ne v0, v3, :cond_3

    .line 90
    if-eqz v1, :cond_3

    .line 92
    invoke-interface {v1, v4}, Lcom/android/server/biometrics/sensors/UserSwitchProvider;->getStartUserClient(I)Lcom/android/server/biometrics/sensors/StartUserClient;

    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;

    .line 98
    invoke-direct {v1, p0, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/HalClientMonitor;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    const-string v4, "[Starting User] "

    .line 105
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 120
    invoke-direct {v2, v5, v0, v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 123
    iput-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 128
    goto/16 :goto_8

    .line 130
    :cond_3
    if-eqz v1, :cond_5

    .line 132
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 134
    if-eqz v3, :cond_4

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "[Waiting for StopUser] "

    .line 140
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 145
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p0

    .line 152
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto/16 :goto_8

    .line 157
    :cond_4
    invoke-interface {v1, v0}, Lcom/android/server/biometrics/sensors/UserSwitchProvider;->getStopUserClient(I)Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 160
    move-result-object v1

    .line 161
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 163
    new-instance v3, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;

    .line 165
    invoke-direct {v3, p0, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler$UserSwitchClientCallback;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/HalClientMonitor;)V

    .line 168
    const-string v1, "[Stopping User] current: "

    .line 170
    const-string v6, ", next: "

    .line 172
    const-string v7, ". "

    .line 174
    invoke-static {v0, v4, v1, v6, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 187
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 192
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 194
    invoke-direct {v0, v5, v1, v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 197
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 199
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mStopUserClient:Lcom/android/server/biometrics/sensors/StopUserClient;

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 204
    goto/16 :goto_8

    .line 206
    :cond_5
    const-string p0, "Cannot start next operation."

    .line 208
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    goto/16 :goto_8

    .line 213
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 215
    if-eqz v0, :cond_7

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 224
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p0

    .line 231
    invoke-static {v2, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    goto/16 :goto_8

    .line 236
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 238
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_8

    .line 244
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    goto/16 :goto_8

    .line 249
    :cond_8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 251
    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 257
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    .line 261
    const-string v1, "[Polled] "

    .line 263
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    move-result-object v0

    .line 275
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 280
    iget v1, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 282
    const/4 v3, 0x1

    .line 283
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    .line 285
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 287
    if-ne v1, v3, :cond_9

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    .line 291
    const-string v1, "[Now Cancelling] "

    .line 293
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v0

    .line 305
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 310
    invoke-virtual {p0, v5, v4}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 313
    goto/16 :goto_8

    .line 315
    :cond_9
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 317
    instance-of v6, v1, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 319
    if-eqz v6, :cond_a

    .line 321
    move-object v7, v1

    .line 322
    check-cast v7, Lcom/android/server/biometrics/sensors/AcquisitionClient;

    .line 324
    iget-boolean v7, v7, Lcom/android/server/biometrics/sensors/AcquisitionClient;->mAlreadyCancelled:Z

    .line 326
    if-eqz v7, :cond_a

    .line 328
    invoke-virtual {v0, v5, v4}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 331
    goto/16 :goto_8

    .line 333
    :cond_a
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mGestureAvailabilityDispatcher:Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 335
    if-eqz v0, :cond_b

    .line 337
    if-eqz v6, :cond_b

    .line 339
    iget v1, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 341
    invoke-virtual {v0, v1, v3}, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->markSensorActive(IZ)V

    .line 344
    :cond_b
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 346
    iget v1, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 348
    const/4 v5, 0x4

    .line 349
    const/4 v6, 0x0

    .line 350
    if-eq v1, v5, :cond_d

    .line 352
    if-nez v1, :cond_c

    .line 354
    goto :goto_1

    .line 355
    :cond_c
    move v7, v6

    .line 356
    goto :goto_2

    .line 357
    :cond_d
    :goto_1
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 359
    iget v7, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 361
    if-eqz v7, :cond_e

    .line 363
    iput v5, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 365
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 368
    move-result-object v0

    .line 369
    iput-object v0, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    .line 371
    :cond_e
    :goto_2
    if-nez v7, :cond_17

    .line 373
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 375
    filled-new-array {v6, v5, v3}, [I

    .line 378
    move-result-object v1

    .line 379
    const-string/jumbo v7, "start"

    .line 382
    invoke-virtual {v0, v7, v1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    .line 385
    move-result v1

    .line 386
    const-string v7, "BiometricSchedulerOperation"

    .line 388
    if-eqz v1, :cond_f

    .line 390
    move v0, v6

    .line 391
    goto :goto_4

    .line 392
    :cond_f
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 394
    iget v1, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 396
    if-eqz v1, :cond_11

    .line 398
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mIsDebuggable:Ljava/util/function/BooleanSupplier;

    .line 400
    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 403
    move-result v1

    .line 404
    const-string/jumbo v8, "operation requires cookie"

    .line 407
    if-nez v1, :cond_10

    .line 409
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    goto :goto_3

    .line 413
    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 415
    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 418
    throw p0

    .line 419
    :cond_11
    :goto_3
    invoke-virtual {v0, v4}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/BiometricScheduler$1;)Z

    .line 422
    move-result v0

    .line 423
    :goto_4
    if-nez v0, :cond_18

    .line 425
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 427
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 430
    move-result v0

    .line 431
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 433
    invoke-interface {v1}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    .line 436
    move-result-object v1

    .line 437
    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    .line 441
    const-string v8, "[Unable To Start] "

    .line 443
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 448
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 451
    const-string v8, ". Last pending operation: "

    .line 453
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 462
    move-result-object v1

    .line 463
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    move v1, v6

    .line 467
    :goto_5
    const/4 v4, 0x0

    .line 468
    if-ge v1, v0, :cond_15

    .line 470
    iget-object v8, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 472
    invoke-interface {v8}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    .line 475
    move-result-object v8

    .line 476
    check-cast v8, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 478
    if-eqz v8, :cond_14

    .line 480
    new-instance v9, Ljava/lang/StringBuilder;

    .line 482
    const-string v10, "[Aborting Operation] "

    .line 484
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 487
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object v9

    .line 494
    invoke-static {v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    filled-new-array {v6, v5, v3}, [I

    .line 500
    move-result-object v9

    .line 501
    const-string v10, "abort"

    .line 503
    invoke-virtual {v8, v10, v9}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    .line 506
    move-result v9

    .line 507
    if-eqz v9, :cond_12

    .line 509
    goto :goto_6

    .line 510
    :cond_12
    iget-object v9, v8, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 512
    instance-of v10, v9, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 514
    if-eqz v10, :cond_13

    .line 516
    move-object v10, v9

    .line 517
    check-cast v10, Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 519
    invoke-virtual {v10}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unableToStart()V

    .line 522
    :cond_13
    invoke-virtual {v8, v4}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->getWrappedCallback(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;

    .line 525
    move-result-object v4

    .line 526
    invoke-virtual {v4, v9, v6}, Lcom/android/server/biometrics/sensors/ClientMonitorCompositeCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    .line 531
    const-string v9, "Aborted: "

    .line 533
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    move-result-object v4

    .line 543
    invoke-static {v7, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    goto :goto_6

    .line 547
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 549
    const-string v8, "Null operation, index: "

    .line 551
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 557
    const-string v8, ", expected length: "

    .line 559
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 568
    move-result-object v4

    .line 569
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 574
    goto :goto_5

    .line 575
    :cond_15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 577
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 579
    if-eqz v0, :cond_16

    .line 581
    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    .line 584
    :cond_16
    iput-object v4, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 586
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->checkCurrentUserAndStartNextOperation()V

    .line 589
    goto :goto_8

    .line 590
    :cond_17
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mBiometricService:Landroid/hardware/biometrics/IBiometricService;

    .line 592
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 594
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 596
    iget-wide v3, v1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mRequestId:J

    .line 598
    invoke-interface {v0, v3, v4, v7}, Landroid/hardware/biometrics/IBiometricService;->onReadyForAuthentication(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    goto :goto_7

    .line 602
    :catch_0
    move-exception v0

    .line 603
    const-string v1, "Remote exception when contacting BiometricService"

    .line 605
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 608
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 610
    const-string v1, "Waiting for cookie before starting: "

    .line 612
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 617
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 620
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    move-result-object p0

    .line 624
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_18
    :goto_8
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Dump of BiometricScheduler BiometricScheduler"

    .line 3
    const-string v1, "Type: "

    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mSensorType:I

    .line 11
    const-string v2, "Current operation: "

    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "Pending operations: "

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 38
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 54
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 57
    move-result-object v0

    .line 58
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    const-string v3, "Pending operation: "

    .line 74
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    .line 90
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object p0

    .line 94
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_1

    .line 100
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    const-string v2, "Crash State "

    .line 110
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    goto :goto_1

    .line 124
    :cond_1
    return-void
.end method

.method public final dumpProtoState(Z)[B
    .locals 5

    .line 1
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    .line 3
    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v1, v1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 13
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getProtoEnum()I

    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    const-wide v3, 0x10e00000001L

    .line 24
    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 27
    const-wide v3, 0x10500000002L

    .line 32
    iget v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mTotalOperationsHandled:I

    .line 34
    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 37
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 39
    check-cast v1, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 44
    move-result v1

    .line 45
    const-wide v3, 0x20e00000003L

    .line 50
    if-nez v1, :cond_1

    .line 52
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 54
    check-cast v1, Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 59
    move-result v1

    .line 60
    if-ge v2, v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 64
    check-cast v1, Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Ljava/lang/Integer;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    invoke-virtual {v0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 85
    :cond_2
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 88
    if-eqz p1, :cond_3

    .line 90
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mRecentOperations:Ljava/util/List;

    .line 92
    check-cast p0, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 97
    :cond_3
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 100
    move-result-object p0

    .line 101
    return-object p0
.end method

.method public final getCurrentClient()Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return-object p0
.end method

.method public getInternalCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    .line 3
    return-object p0
.end method

.method public final recordCrashState()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 9
    if-lt v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 16
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 18
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    .line 21
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 26
    new-instance v1, Ljava/util/Date;

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 31
    move-result-wide v2

    .line 32
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 35
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 46
    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v2

    .line 50
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 62
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->toString()Ljava/lang/String;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;

    .line 72
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 74
    if-eqz v3, :cond_2

    .line 76
    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->toString()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v3, 0x0

    .line 82
    :goto_1
    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 85
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCrashStates:Ljava/util/ArrayDeque;

    .line 87
    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance p0, Ljava/lang/StringBuilder;

    .line 92
    const-string v0, "Recorded crash state: "

    .line 94
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricScheduler$CrashState;->toString()Ljava/lang/String;

    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p0

    .line 108
    const-string v0, "BiometricScheduler"

    .line 110
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public final reset()V
    .locals 2

    .line 1
    const-string v0, "BiometricScheduler"

    .line 3
    const-string v1, "Resetting scheduler"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 10
    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 16
    return-void
.end method

.method public final scheduleClientMonitor(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->interruptsPrecedingClients()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "BiometricScheduler"

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 11
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 27
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->markCanceling()Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    const-string v4, "New client, marking pending op as canceling: "

    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 53
    new-instance v2, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-direct {v2, v3, p1, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;-><init>(ILcom/android/server/biometrics/sensors/BaseClientMonitor;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 59
    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "[Added] "

    .line 66
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v0, ", new queue size: "

    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mPendingOperations:Ljava/util/Deque;

    .line 79
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    .line 82
    move-result v0

    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->interruptsPrecedingClients()Z

    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 101
    if-eqz p1, :cond_3

    .line 103
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 105
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->isInterruptable()Z

    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 111
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 113
    iget p1, p1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mState:I

    .line 115
    const/4 p2, 0x2

    .line 116
    if-ne p1, p2, :cond_2

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    const/4 p2, 0x4

    .line 120
    if-ne p1, p2, :cond_3

    .line 122
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    const-string p2, "[Cancelling Interruptable]: "

    .line 126
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 131
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 143
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    .line 145
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 147
    invoke-virtual {p1, p0, p2}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->cancel(Landroid/os/Handler;Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->checkCurrentUserAndStartNextOperation()V

    .line 154
    :goto_2
    return-void
.end method

.method public final startPreparedClient(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 3
    const-string v1, "BiometricScheduler"

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p0, "Current operation is null"

    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 15
    iget v2, v2, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCookie:I

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq v2, p1, :cond_1

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    const-string v4, "Mismatched cookie for operation: "

    .line 24
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    const-string v0, ", received: "

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    const-string v0, "BiometricSchedulerOperation"

    .line 44
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p1, 0x4

    .line 49
    const/4 v2, 0x1

    .line 50
    filled-new-array {v3, p1, v2}, [I

    .line 53
    move-result-object p1

    .line 54
    const-string/jumbo v2, "start"

    .line 57
    invoke-virtual {v0, v2, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->errorWhenNoneOf(Ljava/lang/String;[I)Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_2

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/BiometricScheduler$1;

    .line 66
    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->doStart(Lcom/android/server/biometrics/sensors/BiometricScheduler$1;)Z

    .line 69
    move-result v3

    .line 70
    :goto_0
    if-eqz v3, :cond_3

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    const-string v0, "[Started] Prepared client: "

    .line 76
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    const-string v0, "[Unable To Start] Prepared client: "

    .line 96
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 113
    iget-object p1, p1, Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;->mClientMonitor:Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 115
    if-eqz p1, :cond_4

    .line 117
    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->destroy()V

    .line 120
    :cond_4
    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 123
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BiometricScheduler;->checkCurrentUserAndStartNextOperation()V

    .line 126
    :goto_1
    return-void
.end method

.method public final startWatchdog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mCurrentOperation:Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v1, p0, v0}, Lcom/android/server/biometrics/sensors/BiometricScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/BiometricScheduler;Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation;)V

    .line 11
    const-wide/16 v2, 0x2710

    .line 13
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/BiometricScheduler;->mHandler:Landroid/os/Handler;

    .line 15
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    return-void
.end method
