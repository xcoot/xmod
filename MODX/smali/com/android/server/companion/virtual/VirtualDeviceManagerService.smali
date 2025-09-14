.class public final Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

.field public static final sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mActiveAssociations:Landroid/util/ArrayMap;

.field public final mActivityInterceptorCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$2;

.field public final mAppsOnVirtualDevices:Landroid/util/SparseArray;

.field public final mCdmAssociationListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;

.field public final mHandler:Landroid/os/Handler;

.field public final mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

.field public final mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

.field public final mNativeImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

.field public final mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

.field public final mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

.field public final mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

.field public final mVirtualDeviceManagerLock:Ljava/lang/Object;

.field public final mVirtualDevices:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    .line 3
    const-string v1, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    .line 5
    const-string v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 23
    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 11
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 13
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceLog;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 22
    new-instance p1, Landroid/os/Handler;

    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 31
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    .line 33
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 35
    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;-><init>(Landroid/os/Handler;)V

    .line 38
    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 40
    new-instance p1, Landroid/util/ArrayMap;

    .line 42
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    .line 47
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;

    .line 49
    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    .line 52
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCdmAssociationListener:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;

    .line 54
    new-instance p1, Landroid/os/RemoteCallbackList;

    .line 56
    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    .line 61
    new-instance p1, Landroid/util/SparseArray;

    .line 63
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 68
    new-instance p1, Landroid/util/SparseArray;

    .line 70
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    .line 75
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$2;

    .line 77
    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    .line 80
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$2;

    .line 82
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 84
    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    .line 87
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 89
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->enableNativeVdm()Z

    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_0

    .line 95
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

    .line 97
    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const/4 p1, 0x0

    .line 102
    :goto_0
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mNativeImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

    .line 104
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 106
    invoke-direct {p1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    .line 109
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 111
    return-void
.end method


# virtual methods
.method public addVirtualDevice(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 6
    iget v1, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDeviceId:I

    .line 8
    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public getLocalServiceInstance()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 3
    return-object p0
.end method

.method public final getVirtualDevicesSnapshot()Ljava/util/ArrayList;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 11
    move-result v2

    .line 12
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_0

    .line 24
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    monitor-exit v0

    .line 41
    return-object v1

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0
.end method

.method public notifyRunningAppsChanged(ILandroid/util/ArraySet;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "notifyRunningAppsChanged called for unknown deviceId:"

    .line 4
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 15
    const-string p0, "VirtualDeviceManagerService"

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    const-string p1, " (maybe it was recently closed?)"

    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    .line 43
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    new-instance p1, Landroid/util/ArraySet;

    .line 54
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 57
    iget-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 59
    iget-object p2, p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 61
    monitor-enter p2

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 64
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    .line 66
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 69
    move-result v0

    .line 70
    const/4 v1, 0x0

    .line 71
    move v2, v1

    .line 72
    :goto_0
    if-ge v2, v0, :cond_1

    .line 74
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 76
    iget-object v3, v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDevices:Landroid/util/SparseArray;

    .line 78
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroid/util/ArraySet;

    .line 84
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 87
    add-int/lit8 v2, v2, 0x1

    .line 89
    goto :goto_0

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    goto :goto_2

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAllUidsOnVirtualDevice:Landroid/util/ArraySet;

    .line 94
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAllUidsOnVirtualDevice:Landroid/util/ArraySet;

    .line 102
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 105
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAllUidsOnVirtualDevice:Landroid/util/ArraySet;

    .line 107
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    .line 112
    new-array v1, v1, [Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 118
    check-cast v0, [Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;

    .line 120
    goto :goto_1

    .line 121
    :cond_2
    const/4 v0, 0x0

    .line 122
    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    if-eqz v0, :cond_3

    .line 125
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 127
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance p2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 131
    const/4 v1, 0x0

    .line 132
    invoke-direct {p2, v1, v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 138
    :cond_3
    return-void

    .line 139
    :goto_2
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    throw p0

    .line 141
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    throw p0
.end method

.method public final onCdmAssociationsChanged(Ljava/util/List;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    .line 3
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_1

    .line 14
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/companion/AssociationInfo;

    .line 20
    sget-object v4, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    .line 22
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_0

    .line 32
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isRevoked()Z

    .line 35
    move-result v4

    .line 36
    if-nez v4, :cond_0

    .line 38
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    .line 41
    move-result v4

    .line 42
    sget v5, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->$r8$clinit:I

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v6, "companion:"

    .line 49
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    .line 67
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 70
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 72
    monitor-enter v2

    .line 73
    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    .line 75
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 82
    move-result-object v4

    .line 83
    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 86
    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 90
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 93
    move-result v0

    .line 94
    if-ge v1, v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 98
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 104
    iget-object v4, v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPersistentDeviceId:Ljava/lang/String;

    .line 106
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_2

    .line 112
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    goto :goto_2

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    goto :goto_5

    .line 118
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object p1

    .line 126
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_4

    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 138
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    .line 141
    goto :goto_3

    .line 142
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    .line 145
    move-result p1

    .line 146
    if-nez p1, :cond_5

    .line 148
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 150
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 152
    iget-object p1, p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 154
    monitor-enter p1

    .line 155
    :try_start_1
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->mPersistentDeviceIdRemovedListeners:Ljava/util/ArrayList;

    .line 157
    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    .line 160
    move-result-object v0

    .line 161
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 164
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance p1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;

    .line 168
    invoke-direct {p1, v3, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;Ljava/util/List;)V

    .line 171
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    goto :goto_4

    .line 175
    :catchall_1
    move-exception p0

    .line 176
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    throw p0

    .line 178
    :cond_5
    :goto_4
    return-void

    .line 179
    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 180
    throw p0
.end method

.method public final onStart()V
    .locals 4

    .line 1
    const-string/jumbo v0, "virtualdevice"

    .line 4
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->enableNativeVdm()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo v0, "virtualdevice_native"

    .line 18
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mNativeImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    .line 25
    const-class v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 30
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 38
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$2;

    .line 40
    const/4 v2, 0x3

    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 44
    invoke-static {}, Landroid/companion/virtual/flags/Flags;->persistentDeviceIdApi()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v0

    .line 54
    const-class v1, Landroid/companion/CompanionDeviceManager;

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/companion/CompanionDeviceManager;

    .line 62
    if-eqz v0, :cond_1

    .line 64
    const/4 v1, -0x1

    .line 65
    invoke-virtual {v0, v1}, Landroid/companion/CompanionDeviceManager;->getAllAssociations(I)Ljava/util/List;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onCdmAssociationsChanged(Ljava/util/List;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 79
    move-result-object v2

    .line 80
    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;

    .line 82
    invoke-direct {v3, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    .line 85
    invoke-virtual {v0, v2, v3, v1}, Landroid/companion/CompanionDeviceManager;->addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;I)V

    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const-string p0, "VirtualDeviceManagerService"

    .line 91
    const-string v0, "Failed to find CompanionDeviceManager. No CDM association info  will be available."

    .line 93
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_2
    :goto_0
    return-void
.end method
