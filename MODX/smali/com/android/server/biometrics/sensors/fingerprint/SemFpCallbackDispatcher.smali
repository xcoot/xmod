.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mAuthenticationListeners:Ljava/util/List;

.field public final mCaptureEventListeners:Ljava/util/List;

.field public final mChallengeListeners:Ljava/util/List;

.field public final mEnrollListeners:Ljava/util/List;

.field public final mEventListeners:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

.field public final mResetLockoutListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mChallengeListeners:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEventListeners:Ljava/util/List;

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEnrollListeners:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mCaptureEventListeners:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mResetLockoutListeners:Ljava/util/List;

    .line 46
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 48
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method


# virtual methods
.method public final dispatchChallengeListener(IIZJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mChallengeListeners:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 21
    if-eqz p3, :cond_1

    .line 23
    new-instance v8, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;

    .line 25
    move-object v2, v8

    .line 26
    move-object v3, p0

    .line 27
    move v4, p1

    .line 28
    move v5, p2

    .line 29
    move-wide v6, p4

    .line 30
    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;IIJ)V

    .line 33
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 35
    monitor-enter v2

    .line 36
    :try_start_0
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 38
    new-instance v4, Landroid/util/Pair;

    .line 40
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    move-result-object v5

    .line 44
    invoke-direct {v4, v8, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 55
    move-result v3

    .line 56
    const/4 v4, 0x1

    .line 57
    if-ne v3, v4, :cond_0

    .line 59
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 61
    invoke-virtual {v3, v1}, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->registerStateCallback(Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor$DisplayStateCallback;)V

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_2

    .line 67
    :cond_0
    :goto_1
    monitor-exit v2

    .line 68
    goto :goto_0

    .line 69
    :goto_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw p0

    .line 71
    :cond_1
    iget-object v2, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 73
    monitor-enter v2

    .line 74
    :try_start_1
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 76
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 79
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mEnrollSessions:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 84
    move-result v3

    .line 85
    if-nez v3, :cond_2

    .line 87
    iget-object v3, v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;->mDisplayStateMonitor:Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;

    .line 89
    iget-object v3, v3, Lcom/android/server/biometrics/SemBiometricDisplayStateMonitor;->mDisplayStateCallbacks:Ljava/util/List;

    .line 91
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    goto :goto_3

    .line 97
    :catchall_1
    move-exception p0

    .line 98
    goto :goto_4

    .line 99
    :cond_2
    :goto_3
    monitor-exit v2

    .line 100
    goto :goto_0

    .line 101
    :goto_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 102
    throw p0

    .line 103
    :cond_3
    return-void
.end method

.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2

    .line 1
    instance-of p2, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 3
    if-eqz p2, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 25
    iget v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 27
    iget v1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 29
    invoke-interface {p2, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationFinished(II)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    instance-of p2, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    .line 35
    if-eqz p2, :cond_1

    .line 37
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEnrollListeners:Ljava/util/List;

    .line 39
    check-cast p0, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p0

    .line 45
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_1

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    .line 57
    iget v0, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 59
    iget v1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 61
    invoke-interface {p2, v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollFinished(II)V

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/AuthenticationClient;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 25
    iget v1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 27
    iget v2, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 29
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;->onAuthenticationStarted(II)V

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    instance-of v0, p1, Lcom/android/server/biometrics/sensors/EnrollClient;

    .line 35
    if-eqz v0, :cond_1

    .line 37
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEnrollListeners:Ljava/util/List;

    .line 39
    check-cast p0, Ljava/util/ArrayList;

    .line 41
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object p0

    .line 45
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 51
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    .line 57
    iget v1, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 59
    iget v2, p1, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 61
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;->onEnrollStarted(II)V

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    return-void
.end method
