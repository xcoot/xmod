.class public final Lcom/android/server/biometrics/BiometricHandlerProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;


# instance fields
.field public mBiometricsCallbackHandler:Landroid/os/Handler;

.field public mFaceHandler:Landroid/os/Handler;

.field public mFingerprintHandler:Landroid/os/Handler;

.field public mTestHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 8
    return-void
.end method

.method public static getNewHandler(ILjava/lang/String;)Landroid/os/Handler;
    .locals 1

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 3
    invoke-direct {v0, p1, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance p0, Landroid/os/Handler;

    .line 11
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 14
    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    return-object p0
.end method


# virtual methods
.method public final declared-synchronized getBiometricCallbackHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mTestHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mBiometricsCallbackHandler:Landroid/os/Handler;

    .line 10
    if-nez v0, :cond_1

    .line 12
    const-string v0, "BiometricsCallbackHandler"

    .line 14
    const/4 v1, -0x4

    .line 15
    invoke-static {v1, v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getNewHandler(ILjava/lang/String;)Landroid/os/Handler;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mBiometricsCallbackHandler:Landroid/os/Handler;

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mBiometricsCallbackHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public final declared-synchronized getFaceHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mTestHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFaceHandler:Landroid/os/Handler;

    .line 10
    if-nez v0, :cond_1

    .line 12
    const-string v0, "FaceHandler"

    .line 14
    const/4 v1, -0x2

    .line 15
    invoke-static {v1, v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getNewHandler(ILjava/lang/String;)Landroid/os/Handler;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFaceHandler:Landroid/os/Handler;

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFaceHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public final declared-synchronized getFingerprintHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mTestHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFingerprintHandler:Landroid/os/Handler;

    .line 10
    if-nez v0, :cond_1

    .line 12
    const-string v0, "FingerprintHandler"

    .line 14
    const/4 v1, -0x2

    .line 15
    invoke-static {v1, v0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getNewHandler(ILjava/lang/String;)Landroid/os/Handler;

    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFingerprintHandler:Landroid/os/Handler;

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mFingerprintHandler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public declared-synchronized setTestHandler(Landroid/os/Handler;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->mTestHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method
