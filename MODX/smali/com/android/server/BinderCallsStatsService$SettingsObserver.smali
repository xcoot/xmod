.class public final Lcom/android/server/BinderCallsStatsService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mParser:Landroid/util/KeyValueListParser;

.field public final mUri:Landroid/net/Uri;

.field public final mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8
    const-string/jumbo v0, "binder_calls_stats"

    .line 11
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mUri:Landroid/net/Uri;

    .line 17
    new-instance v1, Landroid/util/KeyValueListParser;

    .line 19
    const/16 v2, 0x2c

    .line 21
    invoke-direct {v1, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 24
    iput-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    .line 26
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object p1

    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, v1, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 36
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 38
    iput-object p3, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 40
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->onChange()V

    .line 43
    return-void
.end method


# virtual methods
.method public final onChange()V
    .locals 5

    .line 3
    const-string/jumbo v0, "persist.sys.binder_calls_detailed_tracking"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "binder_calls_stats"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    const-string v1, "BinderCallsStatsService"

    const-string v2, "Bad binder call stats settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "detailed_tracking"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "sampling_interval"

    const/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 8
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "max_call_stats_count"

    const/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setMaxBinderCallStats(I)V

    .line 9
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_screen_state"

    const/4 v4, 0x0

    .line 10
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackScreenInteractive(Z)V

    .line 12
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "track_calling_uid"

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setTrackDirectCallerUid(Z)V

    .line 15
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "ignore_battery_status"

    .line 16
    invoke-virtual {v1, v2, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setIgnoreBatteryStatus(Z)V

    .line 18
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "sharding_modulo"

    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setShardingModulo(I)V

    .line 19
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v2, "collect_latency_data"

    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setCollectLatencyData(Z)V

    .line 22
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 23
    invoke-virtual {v1}, Lcom/android/internal/os/BinderCallsStats;->getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/android/internal/os/BinderCallsStats$SettingsObserver;->configureLatencyObserver(Landroid/util/KeyValueListParser;Lcom/android/internal/os/BinderLatencyObserver;)V

    .line 25
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v1, "enabled"

    .line 26
    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 27
    iget-boolean v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mEnabled:Z

    if-eq v1, v0, :cond_2

    if-eqz v0, :cond_1

    .line 28
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 29
    new-instance v1, Landroid/os/Binder$PropagateWorkSourceTransactListener;

    invoke-direct {v1}, Landroid/os/Binder$PropagateWorkSourceTransactListener;-><init>()V

    invoke-static {v1}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-static {v1}, Landroid/os/Binder;->setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 31
    invoke-static {v1}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 32
    invoke-static {v1}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 33
    new-instance v1, Lcom/android/server/BinderCallsStatsService$SettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Landroid/os/Binder;->setWorkSourceProvider(Lcom/android/internal/os/BinderInternal$WorkSourceProvider;)V

    .line 34
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mEnabled:Z

    .line 35
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    new-array v2, v4, [Z

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BinderCallsStats;->reset([Z)V

    .line 36
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BinderCallsStats;->setAddDebugEntries(Z)V

    .line 37
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {p0}, Lcom/android/internal/os/BinderCallsStats;->getLatencyObserver()Lcom/android/internal/os/BinderLatencyObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/os/BinderLatencyObserver;->reset()V

    :cond_2
    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;->onChange()V

    :cond_0
    return-void
.end method
