.class public final Lcom/android/server/tv/TvRemoteService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 12
    .line 13
    invoke-direct {v1, p1, v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/android/server/tv/TvRemoteService;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 17
    .line 18
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final monitor()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final onBootPhase(I)V
    .locals 10

    .line 1
    const/16 v0, 0x258

    .line 2
    .line 3
    if-ne p1, v0, :cond_1

    .line 4
    .line 5
    sget-boolean p1, Lcom/android/server/tv/TvRemoteProviderWatcher;->DEBUG:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteService;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string p1, "TvRemoteProviderWatcher"

    .line 15
    .line 16
    const-string/jumbo v0, "start()"

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 23
    .line 24
    if-nez p1, :cond_1

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mRunning:Z

    .line 28
    .line 29
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 30
    .line 31
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 32
    .line 33
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 34
    .line 35
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 36
    .line 37
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    .line 38
    .line 39
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string/jumbo p1, "package"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v7, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    new-instance v6, Landroid/os/UserHandle;

    .line 52
    .line 53
    iget p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mUserId:I

    .line 54
    .line 55
    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    iget-object v9, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesReceiver:Lcom/android/server/tv/TvRemoteProviderWatcher$1;

    .line 62
    .line 63
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mScanPackagesRunnable:Lcom/android/server/tv/TvRemoteProviderWatcher$2;

    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method
