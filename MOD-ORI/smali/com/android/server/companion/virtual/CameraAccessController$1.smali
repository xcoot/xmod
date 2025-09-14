.class public final Lcom/android/server/companion/virtual/CameraAccessController$1;
.super Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/CameraAccessController;

.field public final synthetic val$cameraId:Ljava/lang/String;

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->this$0:Lcom/android/server/companion/virtual/CameraAccessController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$cameraId:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$packageName:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onInjectionError(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->this$0:Lcom/android/server/companion/virtual/CameraAccessController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$cameraId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$packageName:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v0, "CameraAccessController"

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "Unexpected injection error code:"

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " for camera:"

    .line 26
    .line 27
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " and package:"

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object p1, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter p1

    .line 52
    :try_start_0
    iget-object v1, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 53
    .line 54
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    check-cast p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 59
    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    iget-object v0, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;

    .line 63
    .line 64
    iget p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    .line 65
    .line 66
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x0

    .line 73
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-ge v2, v3, :cond_1

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-object v5, v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 90
    .line 91
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    const v6, 0x1041000

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;Landroid/os/Looper;)V

    .line 111
    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_2

    .line 118
    :cond_1
    monitor-exit p1

    .line 119
    :goto_1
    return-void

    .line 120
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0
.end method

.method public final onInjectionSucceeded(Landroid/hardware/camera2/CameraInjectionSession;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->this$0:Lcom/android/server/companion/virtual/CameraAccessController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$cameraId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController$1;->val$packageName:Ljava/lang/String;

    .line 6
    .line 7
    const-string/jumbo v2, "onInjectionSucceeded found unexpected existing session for camera "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "onInjectionSucceeded didn\'t find expected entry for package "

    .line 11
    .line 12
    .line 13
    iget-object v4, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v4

    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 23
    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    const-string v0, "CameraAccessController"

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 44
    .line 45
    .line 46
    monitor-exit v4

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object p0, v0, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Landroid/hardware/camera2/CameraInjectionSession;

    .line 57
    .line 58
    if-eqz p0, :cond_1

    .line 59
    .line 60
    const-string p1, "CameraAccessController"

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 78
    .line 79
    .line 80
    :cond_1
    monitor-exit v4

    .line 81
    :goto_0
    return-void

    .line 82
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method
