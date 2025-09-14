.class public final Lcom/android/server/location/LocationManagerService$LocalService;
.super Landroid/location/LocationManagerInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    invoke-direct {p0}, Landroid/location/LocationManagerInternal;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final addProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 13
    return-void
.end method

.method public final getGnssTimeMillis()Landroid/location/LocationTime;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    const-string/jumbo v0, "gps"

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 9
    move-result-object v1

    .line 10
    const/4 p0, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 v4, 0x0

    .line 15
    const-wide v5, 0x7fffffffffffffffL

    .line 20
    const/4 v2, -0x1

    .line 21
    const/4 v3, 0x2

    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 28
    return-object p0

    .line 29
    :cond_1
    new-instance p0, Landroid/location/LocationTime;

    .line 31
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 38
    move-result-wide v3

    .line 39
    invoke-direct {p0, v1, v2, v3, v4}, Landroid/location/LocationTime;-><init>(JJ)V

    .line 42
    return-object p0
.end method

.method public final isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object p0

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager;

    .line 21
    if-eqz p1, :cond_1

    .line 23
    iget-object v1, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v1, v0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 34
    iget-object v1, v1, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 36
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 42
    iget-object v1, v1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 44
    iget-object v1, v1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 46
    invoke-virtual {p2, v1}, Landroid/location/util/identity/CallerIdentity;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager;->isVisibleToCaller()Z

    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_0

    .line 58
    const/4 p0, 0x1

    .line 59
    return p0

    .line 60
    :cond_2
    const/4 p0, 0x0

    .line 61
    return p0
.end method

.method public final isProviderEnabledForUser(Ljava/lang/String;I)Z
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result v1

    .line 9
    const-string/jumbo v5, "isProviderEnabledForUser"

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x0

    .line 15
    move v2, p2

    .line 16
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result p2

    .line 20
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_0

    .line 28
    const/4 p0, 0x0

    .line 29
    return p0

    .line 30
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    .line 33
    move-result p0

    .line 34
    return p0
.end method

.method public final removeProviderEnabledListener(Ljava/lang/String;Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationManagerService;->getLocationProviderManager(Ljava/lang/String;)Lcom/android/server/location/provider/LocationProviderManager;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 13
    return-void
.end method

.method public final setLocationPackageTagsListener(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 8
    iput-object p1, v1, Lcom/android/server/location/LocationManagerService;->mLocationTagsChangedListener:Landroid/location/LocationManagerInternal$LocationPackageTagsListener;

    .line 10
    if-eqz p1, :cond_3

    .line 12
    new-instance v1, Landroid/util/ArraySet;

    .line 14
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 16
    iget-object v2, v2, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 21
    move-result v2

    .line 22
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 25
    iget-object v2, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 27
    iget-object v2, v2, Lcom/android/server/location/LocationManagerService;->mProviderManagers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v2

    .line 33
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 39
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/server/location/provider/LocationProviderManager;

    .line 45
    iget-object v3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 47
    iget-object v3, v3, Lcom/android/server/location/provider/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 55
    iget-object v3, v3, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 57
    iget-object v3, v3, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    .line 59
    if-eqz v3, :cond_0

    .line 61
    invoke-virtual {v3}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 64
    move-result v3

    .line 65
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 78
    move-result-object v1

    .line 79
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 94
    move-result v2

    .line 95
    iget-object v3, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 97
    invoke-virtual {v3, v2}, Lcom/android/server/location/LocationManagerService;->calculateAppOpsLocationSourceTags(I)Landroid/os/PackageTagsList;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Landroid/os/PackageTagsList;->isEmpty()Z

    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_2

    .line 107
    iget-object v4, p0, Lcom/android/server/location/LocationManagerService$LocalService;->this$0:Lcom/android/server/location/LocationManagerService;

    .line 109
    iget-object v4, v4, Lcom/android/server/location/LocationManagerService;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v5, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;

    .line 113
    const/4 v6, 0x2

    .line 114
    invoke-direct {v5, p1, v2, v3, v6}, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda12;-><init>(Landroid/location/LocationManagerInternal$LocationPackageTagsListener;ILandroid/os/PackageTagsList;I)V

    .line 117
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    goto :goto_1

    .line 121
    :cond_3
    monitor-exit v0

    .line 122
    return-void

    .line 123
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    throw p0
.end method
