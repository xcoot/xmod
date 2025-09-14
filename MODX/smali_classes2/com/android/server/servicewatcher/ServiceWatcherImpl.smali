.class public final Lcom/android/server/servicewatcher/ServiceWatcherImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;


# static fields
.field public static final D:Z


# instance fields
.field public final mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/location/injector/Injector;

.field public final mNsHandler:Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;

.field public final mPackageMonitor:Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

.field public mRegistered:Z

.field public mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

.field public final mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

.field public final mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

.field public final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ServiceWatcher"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->D:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;Lcom/android/server/location/injector/Injector;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 13
    .line 14
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 21
    .line 22
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mNsHandler:Lcom/android/server/servicewatcher/ServiceWatcherImpl$2;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    iput-object p3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 34
    .line 35
    iput-object p4, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    .line 36
    .line 37
    iput-object p5, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;

    .line 38
    .line 39
    iput-object p6, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mInjector:Lcom/android/server/location/injector/Injector;

    .line 40
    .line 41
    new-instance p1, Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 42
    .line 43
    invoke-direct {p1, p3}, Lcom/android/server/location/nsflp/NSConnectionRecord;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mConnectionRecord:Lcom/android/server/location/nsflp/NSConnectionRecord;

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final checkServiceResolves()Z
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/location/flags/Flags;->fixServiceWatcher()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, ""

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/high16 v0, 0x1c0000

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/high16 v0, 0xc0000

    .line 38
    .line 39
    :goto_0
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    iget-object p0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 46
    .line 47
    invoke-virtual {v2, p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    xor-int/lit8 v1, p0, 0x1

    .line 56
    .line 57
    :goto_1
    return v1
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v1, "target service="

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v1, "connected="

    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-static {p0, v0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method

.method public final declared-synchronized onServiceChanged(Z)V
    .locals 4

    .line 1
    const-string v0, "["

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    .line 9
    .line 10
    check-cast v1, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 23
    .line 24
    const/4 v3, 0x1

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    move v2, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v2, 0x0

    .line 30
    :goto_1
    xor-int/2addr v2, v3

    .line 31
    or-int/2addr p1, v2

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 37
    .line 38
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_3

    .line 43
    .line 44
    :cond_2
    const-string p1, "ServiceWatcher"

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mTag:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "] chose new implementation "

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 72
    .line 73
    new-instance v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 74
    .line 75
    invoke-direct {v0, p0, v1}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 81
    .line 82
    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/4 v3, 0x0

    .line 85
    invoke-direct {v2, p1, v0, v3}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Ljava/lang/Object;I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    :cond_3
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :goto_2
    monitor-exit p0

    .line 94
    throw p1
.end method

.method public final declared-synchronized register()V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    xor-int/2addr v0, v1

    .line 6
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 7
    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-virtual {v0, v2, v5, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    .line 23
    .line 24
    move-object v4, v0

    .line 25
    check-cast v4, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    .line 26
    .line 27
    iget-object v0, v4, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v1, v2

    .line 34
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 35
    .line 36
    .line 37
    iput-object p0, v4, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 38
    .line 39
    new-instance v6, Landroid/content/IntentFilter;

    .line 40
    .line 41
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 45
    .line 46
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 50
    .line 51
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x3e8

    .line 55
    .line 56
    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, v4, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 60
    .line 61
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    const/4 v7, 0x0

    .line 66
    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    monitor-exit p0

    .line 76
    throw v0
.end method

.method public final declared-synchronized runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v2, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    invoke-direct {v2, v0, p1, v3}, Lcom/android/server/servicewatcher/ServiceWatcherImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;Ljava/lang/Object;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceConnection:Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p0, v0, Lcom/android/server/servicewatcher/ServiceWatcherImpl$MyServiceConnection;->mBoundServiceInfo:Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    throw v0
.end method

.method public final declared-synchronized unregister()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 3
    .line 4
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mServiceSupplier:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;

    .line 8
    .line 9
    check-cast v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    .line 10
    .line 11
    iget-object v1, v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 24
    .line 25
    iget-object v1, v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mPackageMonitor:Lcom/android/server/servicewatcher/ServiceWatcherImpl$1;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 33
    .line 34
    .line 35
    iput-boolean v2, p0, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->mRegistered:Z

    .line 36
    .line 37
    invoke-virtual {p0, v2}, Lcom/android/server/servicewatcher/ServiceWatcherImpl;->onServiceChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    monitor-exit p0

    .line 44
    throw v0
.end method
