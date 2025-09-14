.class public final Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 4

    .line 1
    const/16 v0, 0x226

    .line 3
    if-ne p1, v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v0, "network_watchlist_enabled"

    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 23
    sget p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->$r8$clinit:I

    .line 25
    const-string p0, "NetworkWatchlistService"

    .line 27
    const-string p1, "Network Watchlist service is disabled"

    .line 29
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void

    .line 33
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 35
    iget-object p1, p1, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :try_start_1
    new-instance p1, Ljava/io/File;

    .line 42
    const-string v0, "/data/misc/network_watchlist/network_watchlist_for_test.xml"

    .line 44
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    :try_start_2
    const-string p1, "WatchlistConfig"

    .line 59
    const-string v0, "Unable to delete test config"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    const-string/jumbo v0, "connmetrics"

    .line 72
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p1, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 82
    iget-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 84
    invoke-virtual {p1}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->startWatchlistLogging()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 87
    :catch_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 90
    move-result-object p0

    .line 91
    sget p1, Lcom/android/server/net/watchlist/ReportWatchlistJobService;->$r8$clinit:I

    .line 93
    const-string/jumbo p1, "jobscheduler"

    .line 96
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/app/job/JobScheduler;

    .line 102
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    .line 104
    new-instance v2, Landroid/content/ComponentName;

    .line 106
    const-class v3, Lcom/android/server/net/watchlist/ReportWatchlistJobService;

    .line 108
    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const p0, 0xd7689

    .line 114
    invoke-direct {v0, p0, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 117
    sget-wide v2, Lcom/android/server/net/watchlist/ReportWatchlistJobService;->REPORT_WATCHLIST_RECORDS_PERIOD_MILLIS:J

    .line 119
    invoke-virtual {v0, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    .line 122
    move-result-object p0

    .line 123
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0, v1}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    .line 130
    move-result-object p0

    .line 131
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 143
    :cond_2
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "network_watchlist_enabled"

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    sget p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->$r8$clinit:I

    .line 21
    const-string p0, "NetworkWatchlistService"

    .line 23
    const-string v0, "Network Watchlist service is disabled"

    .line 25
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 29
    :cond_0
    new-instance v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 31
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 34
    move-result-object v1

    .line 35
    invoke-direct {v0, v1}, Lcom/android/server/net/watchlist/NetworkWatchlistService;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;->mService:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 40
    const-string/jumbo v1, "network_watchlist"

    .line 43
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 46
    return-void
.end method
