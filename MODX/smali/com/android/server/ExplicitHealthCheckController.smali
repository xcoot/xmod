.class public final Lcom/android/server/ExplicitHealthCheckController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mLock:Ljava/lang/Object;

.field public mNotifySyncRunnable:Ljava/lang/Runnable;

.field public mPassedConsumer:Ljava/util/function/Consumer;

.field public mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

.field public mSupportedConsumer:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 11
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public final bindService()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 6
    if-eqz v1, :cond_2

    .line 8
    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

    .line 10
    if-nez v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 14
    if-eqz v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->getServiceComponentNameLocked()Landroid/content/ComponentName;

    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 23
    const-string p0, "ExplicitHealthCheckController"

    .line 25
    const-string v1, "Explicit health check service not found"

    .line 27
    invoke-static {p0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    new-instance v2, Landroid/content/Intent;

    .line 36
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 39
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$1;

    .line 44
    invoke-direct {v1, p0}, Lcom/android/server/ExplicitHealthCheckController$1;-><init>(Lcom/android/server/ExplicitHealthCheckController;)V

    .line 47
    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

    .line 49
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 51
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 53
    const/4 v4, 0x1

    .line 54
    invoke-virtual {p0, v2, v1, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 57
    const-string p0, "ExplicitHealthCheckController"

    .line 59
    const-string v1, "Explicit health check service is bound"

    .line 61
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 68
    const-string p0, "ExplicitHealthCheckController"

    .line 70
    const-string v1, "Not binding to service, service disabled"

    .line 72
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 78
    if-eqz p0, :cond_4

    .line 80
    const-string p0, "ExplicitHealthCheckController"

    .line 82
    const-string v1, "Not binding to service, service already connected"

    .line 84
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const-string p0, "ExplicitHealthCheckController"

    .line 90
    const-string v1, "Not binding to service, service already connecting"

    .line 92
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_1
    monitor-exit v0

    .line 96
    return-void

    .line 97
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    throw p0
.end method

.method public final getServiceComponentNameLocked()Landroid/content/ComponentName;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string v1, "ExplicitHealthCheckController"

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_0

    .line 16
    const-string/jumbo p0, "no external services package!"

    .line 19
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :goto_0
    move-object p0, v2

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    const-string v3, "android.service.watchdog.ExplicitHealthCheckService"

    .line 26
    invoke-static {v3, v0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    move-result-object v0

    .line 30
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    move-result-object p0

    .line 36
    const/16 v3, 0x84

    .line 38
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 44
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 46
    if-nez p0, :cond_2

    .line 48
    :cond_1
    const-string p0, "No valid components found."

    .line 50
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    if-nez p0, :cond_3

    .line 56
    return-object v2

    .line 57
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    .line 59
    iget-object v3, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 61
    iget-object v4, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 63
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v3, "android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

    .line 68
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 70
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_4

    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, " does not require permission android.permission.BIND_EXPLICIT_HEALTH_CHECK_SERVICE"

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-object v2

    .line 101
    :cond_4
    return-object v0
.end method

.method public final prepareServiceLocked(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-boolean v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "Service not ready to "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 23
    if-eqz p1, :cond_1

    .line 25
    const-string p1, ". Binding..."

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string p1, ". Disabled"

    .line 30
    :goto_0
    const-string v1, "ExplicitHealthCheckController"

    .line 32
    invoke-static {v0, p1, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-boolean p1, p0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 37
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/android/server/ExplicitHealthCheckController;->bindService()V

    .line 42
    :cond_2
    const/4 p0, 0x0

    .line 43
    return p0
.end method

.method public final unbindService()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mContext:Landroid/content/Context;

    .line 10
    iget-object v2, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 18
    iput-object v1, p0, Lcom/android/server/ExplicitHealthCheckController;->mConnection:Lcom/android/server/ExplicitHealthCheckController$1;

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    const-string p0, "ExplicitHealthCheckController"

    .line 25
    const-string v1, "Explicit health check service is unbound"

    .line 27
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method
