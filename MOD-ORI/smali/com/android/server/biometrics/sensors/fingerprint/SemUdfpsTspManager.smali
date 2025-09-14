.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final CMD_CONTROL_TIME:I = 0xa

.field static final CMD_DISABLE:I = 0x0

.field static final CMD_ENABLE:I = 0x1

.field static final CMD_FOD_DISABLE:I = 0x6

.field static final CMD_FOD_ENABLE:I = 0x2

.field static final CMD_FOD_ENABLE_50:I = 0x3

.field static final CMD_FOD_RECT:I = 0x7

.field static final CMD_FOD_STRICT_ENABLE:I = 0x4

.field static final CMD_FOD_STRICT_ENABLE_50:I = 0x5

.field static final CMD_LP_MODE:I = 0x8

.field static final CMD_TEMPERATURE:I = 0x9


# instance fields
.field public final mCommands:Landroid/util/SparseArray;

.field public final mEnableClient:Landroid/util/SparseBooleanArray;

.field public mFodRect:Landroid/graphics/Rect;

.field public mInterruptDelay:I

.field public mIsEnable:Z

.field public mIsHalfMode:Z

.field public mIsHalfModeBlocked:Z

.field public mIsInterruptDelayModeOn:Z

.field public mIsLpMode:Z

.field public mIsStrictMode:Z

.field public mLastCmd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mEnableClient:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mCommands:Landroid/util/SparseArray;

    .line 17
    .line 18
    return-void
.end method

.method public static declared-synchronized get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
    .locals 2

    .line 1
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$InstanceHolder;->INSTANCE:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    .line 10
    throw v1
.end method


# virtual methods
.method public final declared-synchronized disable(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mEnableClient:Landroid/util/SparseBooleanArray;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5
    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mEnableClient:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x6

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    throw p1
.end method

.method public final declared-synchronized enable(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mEnableClient:Landroid/util/SparseBooleanArray;

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 6
    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodEnable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getInputDeviceManager()Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;
    .locals 7

    .line 1
    const-string/jumbo p0, "getInputDeviceManager: wait for service result = "

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    const-string v1, "SemInputDeviceManagerService"

    .line 7
    .line 8
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/ServiceThread;

    .line 26
    .line 27
    const/16 v2, 0xa

    .line 28
    .line 29
    const-string v3, "FingerprintService"

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 36
    .line 37
    invoke-direct {v2, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    invoke-direct {v5, v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 56
    .line 57
    const-wide/16 v5, 0x2

    .line 58
    .line 59
    invoke-virtual {v2, v5, v6, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 84
    .line 85
    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 91
    .line 92
    return-object p0
.end method

.method public isFirstApiLevel31orGreater()Z
    .locals 1

    .line 1
    sget p0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    .line 2
    .line 3
    const/16 v0, 0x1e

    .line 4
    .line 5
    if-le p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final declared-synchronized screenOff()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_AOD:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    .line 19
    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfModeBlocked:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    .line 27
    .line 28
    .line 29
    :cond_2
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfModeBlocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :cond_3
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_1
    monitor-exit p0

    .line 35
    throw v0
.end method

.method public final sendCommand(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->getHandler()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final setFodEnable()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsInterruptDelayModeOn:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z

    .line 7
    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsStrictMode:Z

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x5

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x4

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    goto :goto_0

    .line 28
    :cond_3
    const/4 v0, 0x2

    .line 29
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    .line 30
    .line 31
    .line 32
    :cond_4
    return-void
.end method

.method public final declared-synchronized setFodRect(Landroid/graphics/Rect;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "set_fod_rect,"

    .line 2
    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mFodRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 8
    .line 9
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 12
    .line 13
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 14
    .line 15
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ","

    .line 26
    .line 27
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ","

    .line 34
    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ","

    .line 42
    .line 43
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mCommands:Landroid/util/SparseArray;

    .line 54
    .line 55
    const/4 v1, 0x7

    .line 56
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit p0

    .line 66
    throw p1
.end method

.method public final declared-synchronized setHalfMode(Z)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-ne v0, p1, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodEnable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method
