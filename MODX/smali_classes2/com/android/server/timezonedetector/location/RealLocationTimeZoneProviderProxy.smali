.class public final Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;
.implements Lcom/android/server/timezonedetector/Dumpable;


# instance fields
.field public mListener:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

.field public mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

.field public mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

.field public final mSharedLock:Ljava/lang/Object;

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object v0, v7, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mLockObject:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v0, v7, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, v7, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 22
    .line 23
    sget-object v0, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->STOP_UPDATES:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 24
    .line 25
    iput-object v0, v7, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 26
    .line 27
    invoke-static/range {p5 .. p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    if-eqz p6, :cond_0

    .line 31
    .line 32
    new-instance v8, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    .line 33
    .line 34
    const-string v4, "android.permission.BIND_TIME_ZONE_PROVIDER_SERVICE"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v0, v8

    .line 39
    move-object/from16 v1, p1

    .line 40
    .line 41
    move-object/from16 v2, p4

    .line 42
    .line 43
    move-object/from16 v3, p5

    .line 44
    .line 45
    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    move-object v4, v8

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    .line 51
    .line 52
    const/4 v15, 0x1

    .line 53
    const-string v13, "android.permission.BIND_TIME_ZONE_PROVIDER_SERVICE"

    .line 54
    .line 55
    const-string v14, "android.permission.INSTALL_LOCATION_TIME_ZONE_PROVIDER_SERVICE"

    .line 56
    .line 57
    move-object v9, v0

    .line 58
    move-object/from16 v10, p1

    .line 59
    .line 60
    move-object/from16 v11, p4

    .line 61
    .line 62
    move-object/from16 v12, p5

    .line 63
    .line 64
    invoke-direct/range {v9 .. v15}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    move-object v4, v0

    .line 68
    :goto_0
    new-instance v8, Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 69
    .line 70
    const/4 v6, 0x0

    .line 71
    const-string v3, "RealLocationTimeZoneProviderProxy"

    .line 72
    .line 73
    move-object v0, v8

    .line 74
    move-object/from16 v1, p1

    .line 75
    .line 76
    move-object/from16 v2, p2

    .line 77
    .line 78
    move-object/from16 v5, p0

    .line 79
    .line 80
    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)V

    .line 81
    .line 82
    .line 83
    iput-object v8, v7, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string/jumbo p2, "mRequest="

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    const-string/jumbo v1, "{RealLocationTimeZoneProviderProxy}"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 19
    .line 20
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->dump(Ljava/io/PrintWriter;)V

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter p1

    .line 9
    :try_start_0
    new-instance p2, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 10
    .line 11
    invoke-direct {p2, p0}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;-><init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->onProviderBound()V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mRequest:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 24
    .line 25
    new-instance v1, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    .line 26
    .line 27
    invoke-direct {v1, v0, p2}, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcherImpl;

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    .line 33
    .line 34
    .line 35
    monitor-exit p1

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final onUnbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mListener:Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/BinderLocationTimeZoneProvider$1;->onProviderUnbound()V

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method
