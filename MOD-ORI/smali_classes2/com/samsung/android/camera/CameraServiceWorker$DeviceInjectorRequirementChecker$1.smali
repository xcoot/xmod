.class public final Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSemCameraDeviceRawStatus(Ljava/lang/String;I)V
    .locals 4

    .line 1
    const-string v0, "DeviceInjector, onSemCameraDeviceRawStatus "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    const-string v2, "CameraService_worker"

    .line 7
    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, " "

    .line 17
    .line 18
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalDeviceMap:Landroid/util/ArrayMap;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 v0, 0x1

    .line 44
    if-ne p2, v0, :cond_1

    .line 45
    .line 46
    iget-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    .line 47
    .line 48
    iget-object p2, p2, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalDeviceMap:Landroid/util/ArrayMap;

    .line 49
    .line 50
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1$$ExternalSyntheticLambda0;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    .line 59
    .line 60
    iget-boolean p2, p1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    .line 61
    .line 62
    iget-object p1, p1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalDeviceMap:Landroid/util/ArrayMap;

    .line 63
    .line 64
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eq p2, p1, :cond_2

    .line 71
    .line 72
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;->this$1:Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;

    .line 73
    .line 74
    iget-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalDeviceMap:Landroid/util/ArrayMap;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v0, "DeviceInjector, updateExternalCameraPresentAndNotify : mExternalCameraPresent = "

    .line 83
    .line 84
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    .line 88
    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v0, " isExternalCameraPresent() = "

    .line 93
    .line 94
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const-string v0, "CameraService_worker"

    .line 105
    .line 106
    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    iput-boolean p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->notifyDeviceInjectorAvailabilityChanged()V

    .line 112
    .line 113
    .line 114
    :cond_2
    monitor-exit v1

    .line 115
    return-void

    .line 116
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0
.end method
