.class public final Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final DISPLAY_PANEL_TYPE_PATH:Ljava/lang/String; = "sys/class/lcd/panel/window_type"

.field static final HW_LIGHT_CIRCLE_DRAW:Ljava/lang/String; = "1"

.field static final HW_LIGHT_CIRCLE_HIDE:Ljava/lang/String; = "0"

.field static final HW_LIGHT_SOURCE_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/fp_green_circle"

.field static final MAX_BRIGHTNESS_PATH:Ljava/lang/String; = "/sys/class/lcd/panel/mask_brightness"

.field static final OPTICAL_CALIBRATION_LOW_BRIGHTNESS:I = 0x2

.field static final OPTICAL_CALIBRATION_NORMAL:I = 0x1


# instance fields
.field public final mBinderForDisplayStateLimit:Landroid/os/IBinder;

.field public mBrightnessColor:Ljava/lang/String;

.field public mBrightnessColorForLowBrightness:Ljava/lang/String;

.field public mCalibrationClient:Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

.field public mCalibrationStatus:I

.field public mDisplayAdjManager:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$DisplayAdjustmentManager;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayPanelType:Ljava/lang/String;

.field public final mGetDisplayStateMonitor:Ljava/util/function/Supplier;

.field public mIsLimitedDisplayOn:Z

.field public final mIsSupportHwLightSource:Z

.field public mLatestHwLightMode:Ljava/lang/String;

.field public final mMaskClientList:Ljava/util/Map;

.field public mMaxBrightness:F

.field public mNits:I

.field public mPreviousLogicalState:I

.field public final mRunnableDisableFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

.field public final mRunnableRestoreFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

.field public final mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;Ljava/util/function/Supplier;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaxBrightness:F

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mNits:I

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mLatestHwLightMode:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mCalibrationStatus:I

    .line 16
    .line 17
    new-instance v0, Ljava/util/HashMap;

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaskClientList:Ljava/util/Map;

    .line 24
    .line 25
    iput-boolean p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsSupportHwLightSource:Z

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mGetDisplayStateMonitor:Ljava/util/function/Supplier;

    .line 30
    .line 31
    new-instance p1, Landroid/os/Binder;

    .line 32
    .line 33
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBinderForDisplayStateLimit:Landroid/os/IBinder;

    .line 37
    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mRunnableDisableFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 47
    .line 48
    new-instance p1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 49
    .line 50
    const/4 p2, 0x1

    .line 51
    invoke-direct {p1, p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;I)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mRunnableRestoreFunctionForLightSource:Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda1;

    .line 55
    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public getBgHandler()Landroid/os/Handler;
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

.method public getDisplaySolutionManager()Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
    .locals 7

    .line 1
    const-string/jumbo p0, "getDisplaySolutionManager: wait for service result = "

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    const-string v1, "DisplaySolution"

    .line 7
    .line 8
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

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
    new-instance v5, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda0;

    .line 48
    .line 49
    invoke-direct {v5, v0, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

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
    const-wide/16 v5, 0x3

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
    check-cast p0, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    .line 91
    .line 92
    return-object p0
.end method

.method public final removeMaskView(Landroid/os/IBinder;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "removeMaskView: No registered client:  "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaskClientList:Ljava/util/Map;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaskClientList:Ljava/util/Map;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string p0, "FingerprintService"

    .line 20
    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mMaskClientList:Ljava/util/Map;

    .line 40
    .line 41
    check-cast p0, Ljava/util/HashMap;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpOpticalClient;->stop()V

    .line 47
    .line 48
    .line 49
    :goto_0
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final setDisplayStateLimit(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBinderForDisplayStateLimit:Landroid/os/IBinder;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_3

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsLimitedDisplayOn:Z

    .line 26
    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsLimitedDisplayOn:Z

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBinderForDisplayStateLimit:Landroid/os/IBinder;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-virtual {p1, p0, v1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateOverride(Landroid/os/IBinder;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsLimitedDisplayOn:Z

    .line 42
    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mIsLimitedDisplayOn:Z

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mBinderForDisplayStateLimit:Landroid/os/IBinder;

    .line 51
    .line 52
    invoke-virtual {v1, p0, p1}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayStateOverride(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :goto_1
    :try_start_1
    const-string p1, "FingerprintService"

    .line 57
    .line 58
    const-string/jumbo v1, "setDisplayStateLimit: "

    .line 59
    .line 60
    .line 61
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_2
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0
.end method

.method public final setHwLightMode(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mLatestHwLightMode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mSysFsProvider:Lcom/android/server/biometrics/sensors/SemBioSysFsProvider;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/io/File;

    .line 21
    .line 22
    const-string v2, "/sys/class/lcd/panel/fp_green_circle"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)V

    .line 28
    .line 29
    .line 30
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    const-string/jumbo v0, "setHwLightMode: ["

    .line 35
    .line 36
    .line 37
    const-string v1, "] done"

    .line 38
    .line 39
    const-string v2, "FingerprintService"

    .line 40
    .line 41
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsOpticalHelper;->mLatestHwLightMode:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    return-void
.end method
