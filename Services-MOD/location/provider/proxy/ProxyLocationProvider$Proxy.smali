.class public final Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;
.super Landroid/location/provider/ILocationProviderManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyLocationProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 3
    invoke-direct {p0}, Landroid/location/provider/ILocationProviderManager$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onFlushComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 8
    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 10
    if-eq v2, p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 24
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 26
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mFlushListeners:Ljava/util/ArrayList;

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Runnable;

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz p0, :cond_2

    .line 40
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 43
    :cond_2
    return-void

    .line 44
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p0
.end method

.method public final onInitialize(ZLandroid/location/provider/ProviderProperties;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 8
    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 10
    if-eq v2, p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getHandler()Landroid/os/Handler;

    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 26
    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;

    .line 28
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 33
    const/4 v2, 0x0

    .line 34
    iput-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mResetter:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$1;

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    new-array v1, v1, [Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 41
    iget-object v2, v2, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 43
    iget-object v2, v2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mMetadata:Landroid/os/Bundle;

    .line 45
    if-eqz v2, :cond_2

    .line 47
    const-string v3, "android:location_allow_listed_tags"

    .line 49
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_2

    .line 59
    const-string v1, ";"

    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    const-string v2, "LocationManagerService"

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    iget-object v4, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 74
    iget-object v4, v4, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mName:Ljava/lang/String;

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v4, " provider loaded extra attribution tags: "

    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 87
    move-result-object v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    new-instance v2, Landroid/util/ArraySet;

    .line 100
    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    .line 103
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 105
    iget-object v1, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 107
    iget-object v1, v1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 109
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1, p3}, Landroid/location/util/identity/CallerIdentity;->fromBinderUnsafe(Ljava/lang/String;Ljava/lang/String;)Landroid/location/util/identity/CallerIdentity;

    .line 116
    move-result-object p3

    .line 117
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 119
    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;

    .line 121
    invoke-direct {v1, p1, p2, p3, v2}, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy$$ExternalSyntheticLambda0;-><init>(ZLandroid/location/provider/ProviderProperties;Landroid/location/util/identity/CallerIdentity;Landroid/util/ArraySet;)V

    .line 124
    invoke-virtual {p0, v1}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 129
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p0
.end method

.method public final onReportLocation(Landroid/location/Location;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 8
    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 10
    if-eq v2, p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x1

    .line 17
    new-array p0, p0, [Landroid/location/Location;

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object p1, p0, v2

    .line 22
    invoke-static {p0}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final onReportLocations(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 8
    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 10
    if-eq v2, p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Landroid/location/LocationResult;->wrap(Ljava/util/List;)Landroid/location/LocationResult;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->reportLocation(Landroid/location/LocationResult;)V

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onSetAllowed(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 8
    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 10
    if-eq v2, p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda0;-><init>(Z)V

    .line 21
    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method

.method public final onSetProperties(Landroid/location/provider/ProviderProperties;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;->this$0:Lcom/android/server/location/provider/proxy/ProxyLocationProvider;

    .line 8
    iget-object v2, v1, Lcom/android/server/location/provider/proxy/ProxyLocationProvider;->mProxy:Lcom/android/server/location/provider/proxy/ProxyLocationProvider$Proxy;

    .line 10
    if-eq v2, p0, :cond_0

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    new-instance p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, v2, p1}, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 25
    invoke-virtual {v1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0
.end method
