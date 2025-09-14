.class public abstract Lcom/android/server/biometrics/sensors/InternalCleanupClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;
.implements Lcom/android/server/biometrics/sensors/RemovalConsumer;
.implements Lcom/android/server/biometrics/sensors/EnrollmentModifier;


# instance fields
.field public final mAuthenticatorIds:Ljava/util/Map;

.field public final mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

.field public mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

.field public final mEnumerateCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

.field public mFavorHalEnrollments:Z

.field public final mHasEnrollmentsBeforeStarting:Z

.field public final mRemoveCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

.field public final mUnknownHALTemplates:Ljava/util/ArrayList;


# direct methods
.method public static -$$Nest$mstartCleanupUnknownHalTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V
    .locals 14

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "startCleanupUnknownHalTemplates, size: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "Biometrics/InternalCleanupClient"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;

    .line 36
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 43
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 45
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 47
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mIdentifier:Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 49
    invoke-virtual {v1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    .line 52
    move-result v6

    .line 53
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    move-result-object v8

    .line 59
    iget-object v9, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 61
    iget v10, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 63
    iget-object v11, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 65
    iget-object v12, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 67
    iget-object v13, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 69
    iget v7, v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$UserTemplate;->mUserId:I

    .line 71
    move-object v2, p0

    .line 72
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;

    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 78
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 80
    invoke-virtual {v0}, Lcom/android/server/biometrics/log/BiometricLogger;->shouldSkipLogging()Z

    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mSink:Lcom/android/server/biometrics/log/BiometricFrameworkStatsLogger;

    .line 89
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    iget v0, v0, Lcom/android/server/biometrics/log/BiometricLogger;->mStatsModality:I

    .line 94
    const/4 v1, 0x3

    .line 95
    const/16 v2, 0x94

    .line 97
    const/4 v3, -0x1

    .line 98
    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 103
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mRemoveCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    .line 105
    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;ILjava/lang/String;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;Ljava/util/Map;)V
    .locals 14

    .line 1
    move-object v12, p0

    .line 2
    move-object/from16 v13, p8

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v11, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object/from16 v2, p2

    .line 12
    move/from16 v5, p3

    .line 14
    move-object/from16 v6, p4

    .line 16
    move/from16 v8, p5

    .line 18
    move-object/from16 v9, p6

    .line 20
    move-object/from16 v10, p7

    .line 22
    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 32
    const/4 v0, 0x0

    .line 33
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mFavorHalEnrollments:Z

    .line 35
    new-instance v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;-><init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;I)V

    .line 41
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnumerateCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    .line 43
    new-instance v0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;-><init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;I)V

    .line 49
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mRemoveCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    .line 51
    iput-object v13, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 53
    move-object/from16 v0, p9

    .line 55
    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mAuthenticatorIds:Ljava/util/Map;

    .line 57
    move-object v0, p1

    .line 58
    move/from16 v1, p3

    .line 60
    invoke-interface {v13, p1, v1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 67
    move-result v0

    .line 68
    xor-int/lit8 v0, v0, 0x1

    .line 70
    iput-boolean v0, v12, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mHasEnrollmentsBeforeStarting:Z

    .line 72
    return-void
.end method


# virtual methods
.method public getCurrentEnumerateClient()Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 3
    check-cast p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    .line 5
    return-object p0
.end method

.method public getCurrentRemoveClient()Lcom/android/server/biometrics/sensors/RemovalClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 3
    check-cast p0, Lcom/android/server/biometrics/sensors/RemovalClient;

    .line 5
    return-object p0
.end method

.method public abstract getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
.end method

.method public final getProtoEnum()I
    .locals 0

    .line 1
    const/4 p0, 0x7

    .line 2
    return p0
.end method

.method public abstract getRemovalClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Ljava/util/Map;)Lcom/android/server/biometrics/sensors/RemovalClient;
.end method

.method public getUnknownHALTemplates()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mUnknownHALTemplates:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public final hasEnrollmentStateChanged()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 5
    iget v2, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 7
    invoke-interface {v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    xor-int/2addr v0, v1

    .line 17
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mHasEnrollmentsBeforeStarting:Z

    .line 19
    if-eq v0, p0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    return v1
.end method

.method public final hasEnrollments()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 3
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 5
    iget p0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 7
    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 14
    move-result p0

    .line 15
    xor-int/lit8 p0, p0, 0x1

    .line 17
    return p0
.end method

.method public abstract onAddUnknownTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
.end method

.method public final onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 3
    instance-of v1, v0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    .line 5
    const-string v2, "Biometrics/InternalCleanupClient"

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    const-string/jumbo p1, "onEnumerationResult received during client: "

    .line 20
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_0
    const-string/jumbo v0, "onEnumerated, remaining: "

    .line 31
    invoke-static {p2, v0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 36
    check-cast p0, Lcom/android/server/biometrics/sensors/EnumerateConsumer;

    .line 38
    invoke-interface {p0, p1, p2}, Lcom/android/server/biometrics/sensors/EnumerateConsumer;->onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 41
    return-void
.end method

.method public final onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 3
    instance-of v0, p0, Lcom/android/server/biometrics/sensors/RemovalClient;

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    const-string/jumbo p1, "onRemoved received during client: "

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const-string p1, "Biometrics/InternalCleanupClient"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_0
    check-cast p0, Lcom/android/server/biometrics/sensors/RemovalClient;

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/sensors/RemovalClient;->onRemoved(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V

    .line 33
    return-void
.end method

.method public final start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 4
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 8
    iget v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 10
    invoke-interface {p1, v0, v1}, Lcom/android/server/biometrics/sensors/BiometricUtils;->getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;

    .line 13
    move-result-object p1

    .line 14
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mContext:Landroid/content/Context;

    .line 16
    iget-object v4, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor;->mLazyDaemon:Ljava/util/function/Supplier;

    .line 18
    iget-object v5, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mToken:Landroid/os/IBinder;

    .line 20
    iget v6, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mTargetUserId:I

    .line 22
    iget-object v7, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mOwner:Ljava/lang/String;

    .line 24
    iget-object v9, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mBiometricUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 26
    iget v10, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mSensorId:I

    .line 28
    iget-object v11, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mLogger:Lcom/android/server/biometrics/log/BiometricLogger;

    .line 30
    iget-object v12, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mBiometricContext:Lcom/android/server/biometrics/log/BiometricContext;

    .line 32
    move-object v2, p0

    .line 33
    move-object v8, p1

    .line 34
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->getEnumerateClient(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;ILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)Lcom/android/server/biometrics/sensors/InternalEnumerateClient;

    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string v1, "Starting enumerate: "

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, " enrolledList size:"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    move-result p1

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    const-string v0, "Biometrics/InternalCleanupClient"

    .line 70
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mCurrentTask:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    .line 75
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->mEnumerateCallback:Lcom/android/server/biometrics/sensors/InternalCleanupClient$1;

    .line 77
    invoke-virtual {p1, p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 80
    return-void
.end method

.method public final unableToStart()V
    .locals 0

    .line 1
    return-void
.end method
