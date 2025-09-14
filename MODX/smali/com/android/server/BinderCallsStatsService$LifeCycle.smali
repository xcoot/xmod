.class public final Lcom/android/server/BinderCallsStatsService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field public mService:Lcom/android/server/BinderCallsStatsService;

.field public mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


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
    .locals 10

    .line 1
    const/16 v0, 0x1f4

    .line 3
    if-ne v0, p1, :cond_2

    .line 5
    const-class p1, Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/internal/os/CachedDeviceState$Readonly;

    .line 13
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/internal/os/BinderCallsStats;->setDeviceState(Lcom/android/internal/os/CachedDeviceState$Readonly;)V

    .line 18
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 20
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p1, v0}, Lcom/android/internal/os/BinderCallsStats;->enablePackageStats(Z)V

    .line 24
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/power/optimization/Flags;->disableSystemServicePowerAttr()Z

    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_0

    .line 30
    const-class p1, Landroid/os/BatteryStatsInternal;

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/os/BatteryStatsInternal;

    .line 38
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 40
    new-instance v1, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;

    .line 42
    invoke-direct {v1, p1}, Lcom/android/server/BinderCallsStatsService$LifeCycle$1;-><init>(Landroid/os/BatteryStatsInternal;)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/android/internal/os/BinderCallsStats;->setCallStatsObserver(Lcom/android/internal/os/BinderInternal$CallStatsObserver;)V

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    new-instance v1, Landroid/util/ArraySet;

    .line 59
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 62
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 65
    move-result v2

    .line 66
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 69
    move-result v2

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    move-result-object v0

    .line 81
    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    .line 83
    filled-new-array {v2}, [Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    const/high16 v3, 0xc0000

    .line 89
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 96
    move-result v4

    .line 97
    const/4 v5, 0x0

    .line 98
    :goto_0
    if-ge v5, v4, :cond_1

    .line 100
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 106
    :try_start_0
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v7, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 111
    move-result v7

    .line 112
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    .line 115
    move-result v7

    .line 116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v7

    .line 120
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v7

    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    .line 127
    const-string v9, "Cannot find uid for package name "

    .line 129
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 134
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v6

    .line 141
    const-string v8, "BinderCallsStatsService"

    .line 143
    invoke-static {v8, v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 148
    goto :goto_0

    .line 149
    :cond_1
    iput-object v1, p1, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdTrustlist:Landroid/util/ArraySet;

    .line 151
    iget-object p1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mService:Lcom/android/server/BinderCallsStatsService;

    .line 153
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 160
    new-instance v0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    .line 162
    iget-object v1, p1, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 164
    iget-object p1, p1, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 166
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V

    .line 169
    goto :goto_2

    .line 170
    :cond_2
    const/16 v0, 0x3e8

    .line 172
    if-ne v0, p1, :cond_3

    .line 174
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 177
    move-result-object p1

    .line 178
    new-instance v0, Lcom/android/server/BinderCallsStatsService$LifeCycle$$ExternalSyntheticLambda0;

    .line 180
    invoke-direct {v0, p0}, Lcom/android/server/BinderCallsStatsService$LifeCycle$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/BinderCallsStatsService$LifeCycle;)V

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    :cond_3
    :goto_2
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/internal/os/BinderCallsStats;

    .line 3
    new-instance v1, Lcom/android/internal/os/BinderCallsStats$Injector;

    .line 5
    invoke-direct {v1}, Lcom/android/internal/os/BinderCallsStats$Injector;-><init>()V

    .line 8
    invoke-direct {v0, v1}, Lcom/android/internal/os/BinderCallsStats;-><init>(Lcom/android/internal/os/BinderCallsStats$Injector;)V

    .line 11
    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 13
    new-instance v0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 15
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v1, Landroid/util/ArraySet;

    .line 20
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 23
    iput-object v1, v0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdTrustlist:Landroid/util/ArraySet;

    .line 25
    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 27
    new-instance v0, Lcom/android/server/BinderCallsStatsService;

    .line 29
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 31
    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 33
    invoke-direct {v0, v1, v2}, Lcom/android/server/BinderCallsStatsService;-><init>(Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V

    .line 36
    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mService:Lcom/android/server/BinderCallsStatsService;

    .line 38
    new-instance v0, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 40
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 42
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v2

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/android/server/BinderCallsStatsService$Internal;-><init>(Lcom/android/internal/os/BinderCallsStats;Landroid/content/Context;)V

    .line 49
    const-class v1, Lcom/android/server/BinderCallsStatsService$Internal;

    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 54
    const-string/jumbo v0, "binder_calls_stats"

    .line 57
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mService:Lcom/android/server/BinderCallsStatsService;

    .line 59
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 62
    const-string/jumbo v0, "persist.sys.binder_calls_detailed_tracking"

    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_0

    .line 72
    const-string v0, "BinderCallsStatsService"

    .line 74
    const-string v1, "Enabled CPU usage tracking for binder calls. Controlled by persist.sys.binder_calls_detailed_tracking or via dumpsys binder_calls_stats --enable-detailed-tracking"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object p0, p0, Lcom/android/server/BinderCallsStatsService$LifeCycle;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 85
    :cond_0
    return-void
.end method
