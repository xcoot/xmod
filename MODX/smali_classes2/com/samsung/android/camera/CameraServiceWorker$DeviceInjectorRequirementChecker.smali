.class public final Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDexMode:Z

.field public mExternalCameraPresent:Z

.field public final mExternalDeviceMap:Landroid/util/ArrayMap;

.field public mRequirementMet:Z

.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mRequirementMet:Z

    .line 12
    .line 13
    new-instance v0, Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalDeviceMap:Landroid/util/ArrayMap;

    .line 19
    .line 20
    new-instance v3, Landroid/content/IntentFilter;

    .line 21
    .line 22
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v0, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v5, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    const/4 v6, 0x2

    .line 40
    const/4 v4, 0x0

    .line 41
    move-object v2, p0

    .line 42
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    iget-object v0, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    const-class v1, Landroid/hardware/camera2/CameraManager;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 54
    .line 55
    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;-><init>(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p1, Lcom/samsung/android/camera/CameraServiceWorker;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final notifyDeviceInjectorAvailabilityChanged()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DeviceInjector requirement = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    move v1, v3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v2

    .line 21
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " (Dex = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", External = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ")"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "CameraService_worker"

    .line 54
    .line 55
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mRequirementMet:Z

    .line 59
    .line 60
    iget-boolean v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    iget-boolean v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    .line 65
    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    move v4, v3

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move v4, v2

    .line 71
    :goto_1
    if-eq v0, v4, :cond_3

    .line 72
    .line 73
    const-string v0, "DeviceInjector requirement change. notify."

    .line 74
    .line 75
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    move v2, v3

    .line 87
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mRequirementMet:Z

    .line 88
    .line 89
    const-string v0, "intentfilter.samsung.vtcamerasetting.deviceinjector.option"

    .line 90
    .line 91
    const-string v1, "com.samsung.android.vtcamerasettings"

    .line 92
    .line 93
    invoke-static {v0, v1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "dex_and_camera"

    .line 98
    .line 99
    iget-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mRequirementMet:Z

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    .line 105
    .line 106
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 109
    .line 110
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 111
    .line 112
    .line 113
    :cond_3
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string p1, "DeviceInjector, dex mode = "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    sget-object v0, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput-boolean p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    .line 15
    .line 16
    const-string p2, "CameraService_worker"

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->notifyDeviceInjectorAvailabilityChanged()V

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p1
.end method
