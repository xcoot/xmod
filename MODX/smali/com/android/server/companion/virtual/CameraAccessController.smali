.class public final Lcom/android/server/companion/virtual/CameraAccessController;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

.field public final mBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;

.field public final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public mObserverCount:I

.field public final mObserverLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageToSessionData:Landroid/util/ArrayMap;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    .line 23
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 28
    new-instance v0, Landroid/util/ArrayMap;

    .line 30
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    .line 35
    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 39
    iput-object p3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mBlockedCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;

    .line 41
    const-class p2, Landroid/hardware/camera2/CameraManager;

    .line 43
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroid/hardware/camera2/CameraManager;

    .line 49
    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    move-result-object p2

    .line 55
    iput-object p2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    const-class p2, Landroid/os/UserManager;

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/os/UserManager;

    .line 65
    iput-object p1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mUserManager:Landroid/os/UserManager;

    .line 67
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .line 1
    const-string v0, "Unexpected close with observers remaining: "

    .line 3
    const-string v1, "Unexpected negative mObserverCount: "

    .line 5
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 10
    if-gez v3, :cond_0

    .line 12
    const-string v0, "CameraAccessController"

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    if-lez v3, :cond_1

    .line 36
    const-string v1, "CameraAccessController"

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mObserverCount:I

    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 58
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 61
    return-void

    .line 62
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0
.end method

.method public final onCameraClosed(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 14
    move-result v1

    .line 15
    add-int/lit8 v1, v1, -0x1

    .line 17
    :goto_0
    if-ltz v1, :cond_1

    .line 19
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 27
    iget-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/hardware/camera2/CameraInjectionSession;

    .line 35
    if-eqz v3, :cond_0

    .line 37
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 40
    iget-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v2, v2, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    .line 47
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 55
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 6
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 12
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mUserManager:Landroid/os/UserManager;

    .line 14
    invoke-virtual {v2}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 17
    move-result-object v2

    .line 18
    new-instance v3, Landroid/util/ArraySet;

    .line 20
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object v2

    .line 27
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_4

    .line 33
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 39
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 46
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    const/4 v5, -0x1

    .line 48
    :try_start_1
    iget-object v6, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 50
    const/4 v7, 0x1

    .line 51
    invoke-virtual {v6, p2, v7, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 54
    move-result-object v4

    .line 55
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v4

    .line 59
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v7, "queryUidFromPackageName - unknown package "

    .line 64
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 74
    const-string v7, "CameraAccessController"

    .line 76
    invoke-static {v7, v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    move v4, v5

    .line 80
    :goto_1
    iget-object v6, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mVirtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 82
    invoke-virtual {v6, v4}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->isAppRunningOnAnyVirtualDevice(I)Z

    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_3

    .line 88
    if-nez v1, :cond_1

    .line 90
    new-instance v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;

    .line 92
    invoke-direct {v1}, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;-><init>()V

    .line 95
    iput v4, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->appUid:I

    .line 97
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 99
    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    goto :goto_2

    .line 103
    :catchall_0
    move-exception p0

    .line 104
    goto :goto_4

    .line 105
    :cond_1
    :goto_2
    iget-object v1, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    .line 107
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 115
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->startBlocking(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 120
    :cond_3
    if-eq v4, v5, :cond_0

    .line 122
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 129
    goto :goto_0

    .line 130
    :cond_4
    new-instance v2, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;

    .line 132
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, v2, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageName:Ljava/lang/String;

    .line 137
    iput-object v3, v2, Lcom/android/server/companion/virtual/CameraAccessController$OpenCameraInfo;->packageUids:Ljava/util/Set;

    .line 139
    iget-object v3, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mAppsToBlockOnVirtualDevice:Landroid/util/ArrayMap;

    .line 141
    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    if-eqz v1, :cond_5

    .line 146
    iget-object v2, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    .line 148
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v2

    .line 152
    check-cast v2, Landroid/hardware/camera2/CameraInjectionSession;

    .line 154
    goto :goto_3

    .line 155
    :cond_5
    const/4 v2, 0x0

    .line 156
    :goto_3
    if-eqz v2, :cond_6

    .line 158
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraInjectionSession;->close()V

    .line 161
    iget-object v2, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    .line 163
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object p1, v1, Lcom/android/server/companion/virtual/CameraAccessController$InjectionSessionData;->cameraIdToSession:Landroid/util/ArrayMap;

    .line 168
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_6

    .line 174
    iget-object p0, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mPackageToSessionData:Landroid/util/ArrayMap;

    .line 176
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_6
    monitor-exit v0

    .line 180
    return-void

    .line 181
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    throw p0
.end method

.method public final startBlocking(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "CameraAccessController"

    .line 3
    const-string/jumbo v1, "startBlocking() cameraId: "

    .line 6
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, " packageName: "

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v2, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 31
    const-string v5, ""

    .line 33
    iget-object v1, p0, Lcom/android/server/companion/virtual/CameraAccessController;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 38
    move-result-object v6

    .line 39
    new-instance v7, Lcom/android/server/companion/virtual/CameraAccessController$1;

    .line 41
    invoke-direct {v7, p0, p2, p1}, Lcom/android/server/companion/virtual/CameraAccessController$1;-><init>(Lcom/android/server/companion/virtual/CameraAccessController;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    move-object v3, p1

    .line 45
    move-object v4, p2

    .line 46
    invoke-virtual/range {v2 .. v7}, Landroid/hardware/camera2/CameraManager;->injectCamera(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception p0

    .line 51
    const-string v1, "Failed to injectCamera for cameraId:"

    .line 53
    const-string v2, " package:"

    .line 55
    invoke-static {v1, p2, v2, p1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_0
    return-void
.end method
