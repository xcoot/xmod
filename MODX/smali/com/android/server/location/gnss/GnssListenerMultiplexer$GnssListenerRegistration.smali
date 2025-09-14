.class public Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.super Lcom/android/server/location/listeners/BinderListenerRegistration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mForeground:Z

.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public mPermitted:Z

.field public final mRequest:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method public constructor <init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 3
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->isMyProcess()Z

    .line 6
    move-result p3

    .line 7
    if-eqz p3, :cond_0

    .line 9
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 12
    move-result-object p3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object p3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 16
    :goto_0
    invoke-direct {p0, p3, p2}, Lcom/android/server/location/listeners/RemovableListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 19
    iput-object p4, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mRequest:Ljava/lang/Object;

    .line 21
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 23
    return-void
.end method


# virtual methods
.method public final getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;
    .locals 0

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 3
    return-object p1
.end method

.method public final getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 3
    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "GnssManager"

    .line 3
    return-object p0
.end method

.method public onActive()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    .line 4
    return-void
.end method

.method public onInactive()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    .line 4
    return-void
.end method

.method public final onLocationPermissionsChanged$2()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 5
    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 11
    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public onRegister()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->onRegister()V

    .line 4
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 6
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 8
    const/4 v1, 0x2

    .line 9
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 14
    move-result v0

    .line 15
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    .line 17
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 19
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 21
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 23
    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->isAppForeground(I)Z

    .line 30
    move-result v0

    .line 31
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    .line 33
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Landroid/util/ArraySet;

    .line 13
    const/4 v2, 0x2

    .line 14
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 17
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    .line 19
    if-nez v2, :cond_0

    .line 21
    const-string v2, "bg"

    .line 23
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    .line 28
    if-nez v2, :cond_1

    .line 30
    const-string/jumbo v2, "na"

    .line 33
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 39
    move-result v2

    .line 40
    const-string v3, " "

    .line 42
    if-nez v2, :cond_2

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mRequest:Ljava/lang/Object;

    .line 52
    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mRequest:Ljava/lang/Object;

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public final updateGnssListener()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 3
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getBinderFromKey(Ljava/lang/Object;)Landroid/os/IBinder;

    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :goto_0
    move-object v4, v2

    .line 15
    goto :goto_1

    .line 16
    :catch_0
    const/4 v2, 0x0

    .line 17
    goto :goto_0

    .line 18
    :goto_1
    iget-boolean v5, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mActive:Z

    .line 20
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 27
    move-result v8

    .line 28
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 31
    move-result v9

    .line 32
    iget-object v3, v1, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mNSLocationProviderHelper:Lcom/android/server/location/nsflp/NSLocationProviderHelper;

    .line 34
    if-nez v3, :cond_0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 40
    move-result-object v7

    .line 41
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/location/nsflp/NSLocationProviderHelper;->updateGnssDataListener(Landroid/os/IBinder;ZLjava/lang/String;Landroid/location/LocationConstants$LISTENER_TYPE;II)V

    .line 44
    :goto_2
    return-void
.end method
