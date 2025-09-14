.class public interface abstract Lcom/android/server/biometrics/log/BiometricContext;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;
    .locals 8

    .line 1
    const-class v0, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_1
    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 9
    .line 10
    const-string/jumbo v2, "window"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    move-object v4, v2

    .line 18
    check-cast v4, Landroid/view/WindowManager;

    .line 19
    .line 20
    const-string/jumbo v2, "statusbar"

    .line 21
    .line 22
    .line 23
    invoke-static {v2}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    sget-object v2, Lcom/android/server/biometrics/BiometricHandlerProvider;->sBiometricHandlerProvider:Lcom/android/server/biometrics/BiometricHandlerProvider;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricHandlerProvider;->getBiometricCallbackHandler()Landroid/os/Handler;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    new-instance v7, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeClock()Ljava/time/Clock;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-direct {v7, v2}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;-><init>(Ljava/time/Clock;)V

    .line 44
    .line 45
    .line 46
    move-object v2, v1

    .line 47
    move-object v3, p0

    .line 48
    invoke-direct/range {v2 .. v7}, Lcom/android/server/biometrics/log/BiometricContextProvider;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/internal/statusbar/IStatusBarService;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p0

    .line 57
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v2, "Failed to find required service"

    .line 60
    .line 61
    invoke-direct {v1, v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw v1

    .line 65
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    sget-object p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->sInstance:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 67
    .line 68
    return-object p0

    .line 69
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    throw p0
.end method
