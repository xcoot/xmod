.class public Landroid/net/ConnectivityModuleConnector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final CONFIG_ALWAYS_RATELIMIT_NETWORKSTACK_CRASH:Ljava/lang/String; = "always_ratelimit_networkstack_crash"

.field private static final CONFIG_MIN_CRASH_INTERVAL_MS:Ljava/lang/String; = "min_crash_interval"

.field private static final CONFIG_MIN_UPTIME_BEFORE_CRASH_MS:Ljava/lang/String; = "min_uptime_before_crash"

.field private static final DEFAULT_MIN_CRASH_INTERVAL_MS:J = 0x1499700L

.field private static final DEFAULT_MIN_UPTIME_BEFORE_CRASH_MS:J = 0x1b7740L

.field private static final IN_PROCESS_SUFFIX:Ljava/lang/String; = ".InProcess"

.field private static final PREFS_FILE:Ljava/lang/String; = "ConnectivityModuleConnector.xml"

.field private static final PREF_KEY_LAST_CRASH_TIME:Ljava/lang/String; = "lastcrash_time"

.field private static final TAG:Ljava/lang/String; = "ConnectivityModuleConnector"

.field private static sInstance:Landroid/net/ConnectivityModuleConnector;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

.field private final mHealthListeners:Landroid/util/ArraySet;


# direct methods
.method public static bridge synthetic -$$Nest$mlogi(Landroid/net/ConnectivityModuleConnector;)V
    .locals 1

    .line 1
    const-string v0, "Networking module service connected"

    .line 3
    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->logi(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeCrashWithTerribleFailure(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Lost network stack. This is not the root cause of any issue, it is a side effect of a crash that happened earlier. Earlier logs should point to the actual issue."

    .line 3
    invoke-direct {p0, v0, p1}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static bridge synthetic -$$Nest$smcheckModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/net/ConnectivityModuleConnector$DependenciesImpl;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;-><init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityModuleConnector$Dependencies;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    .line 6
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    return-void
.end method

.method private static checkModuleServicePermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    if-nez p0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 14
    const-string p1, "Networking module does not have permission "

    .line 16
    invoke-static {p1, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
.end method

.method public static declared-synchronized getInstance()Landroid/net/ConnectivityModuleConnector;
    .locals 2

    .line 1
    const-class v0, Landroid/net/ConnectivityModuleConnector;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Landroid/net/ConnectivityModuleConnector;

    .line 10
    invoke-direct {v1}, Landroid/net/ConnectivityModuleConnector;-><init>()V

    .line 13
    sput-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Landroid/net/ConnectivityModuleConnector;->sInstance:Landroid/net/ConnectivityModuleConnector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0

    .line 23
    throw v1
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 7
    move-result-object v2

    .line 8
    const-string v3, "ConnectivityModuleConnector.xml"

    .line 10
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 22
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    const-string v1, "Error loading shared preferences"

    .line 27
    invoke-direct {p0, v1, v0}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    return-void
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    .line 3
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget-object p0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    .line 3
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p0, Landroid/net/ConnectivityModuleConnector;->TAG:Ljava/lang/String;

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    return-void
.end method

.method private declared-synchronized maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    monitor-enter p0

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_0
    invoke-direct {v1, v0, v3}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    move-result-wide v3

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    move-result-wide v5

    .line 20
    const-string/jumbo v7, "connectivity"

    .line 23
    const-string/jumbo v8, "min_crash_interval"

    .line 26
    const-wide/32 v9, 0x1499700

    .line 29
    invoke-static {v7, v8, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 32
    move-result-wide v7

    .line 33
    const-string/jumbo v9, "connectivity"

    .line 36
    const-string/jumbo v10, "min_uptime_before_crash"

    .line 39
    const-wide/32 v11, 0x1b7740

    .line 42
    invoke-static {v9, v10, v11, v12}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    .line 45
    move-result-wide v9

    .line 46
    const-string/jumbo v11, "connectivity"

    .line 49
    const-string v12, "always_ratelimit_networkstack_crash"

    .line 51
    const/4 v13, 0x0

    .line 52
    invoke-static {v11, v12, v13}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 55
    move-result v11

    .line 56
    invoke-direct/range {p0 .. p0}, Landroid/net/ConnectivityModuleConnector;->getSharedPreferences()Landroid/content/SharedPreferences;

    .line 59
    move-result-object v12

    .line 60
    invoke-direct {v1, v12}, Landroid/net/ConnectivityModuleConnector;->tryGetLastCrashTime(Landroid/content/SharedPreferences;)J

    .line 63
    move-result-wide v14

    .line 64
    sget-boolean v16, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 66
    const/16 v17, 0x1

    .line 68
    if-eqz v16, :cond_0

    .line 70
    if-nez v11, :cond_0

    .line 72
    move/from16 v11, v17

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move v11, v13

    .line 76
    :goto_0
    cmp-long v3, v3, v9

    .line 78
    if-gez v3, :cond_1

    .line 80
    move/from16 v3, v17

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    move v3, v13

    .line 84
    :goto_1
    const-wide/16 v9, 0x0

    .line 86
    cmp-long v4, v14, v9

    .line 88
    if-eqz v4, :cond_2

    .line 90
    cmp-long v4, v14, v5

    .line 92
    if-gez v4, :cond_2

    .line 94
    add-long/2addr v14, v7

    .line 95
    cmp-long v4, v5, v14

    .line 97
    if-gez v4, :cond_2

    .line 99
    move/from16 v13, v17

    .line 101
    :cond_2
    if-nez v11, :cond_5

    .line 103
    if-nez v3, :cond_3

    .line 105
    if-eqz v13, :cond_5

    .line 107
    :cond_3
    if-eqz v2, :cond_4

    .line 109
    iget-object v3, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    .line 111
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    new-instance v0, Landroid/util/ArraySet;

    .line 114
    iget-object v4, v1, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    .line 116
    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 119
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :try_start_2
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 123
    move-result-object v0

    .line 124
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_4

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;

    .line 136
    invoke-interface {v3, v2}, Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;->onNetworkStackFailure(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    goto :goto_2

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    goto :goto_3

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 144
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    :cond_4
    monitor-exit p0

    .line 146
    return-void

    .line 147
    :cond_5
    :try_start_5
    invoke-direct {v1, v12, v5, v6}, Landroid/net/ConnectivityModuleConnector;->tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V

    .line 150
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 152
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 155
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 156
    :goto_3
    monitor-exit p0

    .line 157
    throw v0
.end method

.method private tryGetLastCrashTime(Landroid/content/SharedPreferences;)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-wide v0

    .line 6
    :cond_0
    :try_start_0
    const-string/jumbo v2, "lastcrash_time"

    .line 9
    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 12
    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-wide p0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    const-string v2, "Error getting last crash time"

    .line 17
    invoke-direct {p0, v2, p1}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-wide v0
.end method

.method private tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 7
    move-result-object p1

    .line 8
    const-string/jumbo v0, "lastcrash_time"

    .line 11
    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    const-string p2, "Error writing last crash time"

    .line 22
    invoke-direct {p0, p2, p1}, Landroid/net/ConnectivityModuleConnector;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :goto_0
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "Network stack init"

    .line 3
    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    .line 8
    return-void
.end method

.method public registerHealthListener(Landroid/net/ConnectivityModuleConnector$ConnectivityModuleHealthListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Landroid/net/ConnectivityModuleConnector;->mHealthListeners:Landroid/util/ArraySet;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    .locals 3

    .line 1
    const-string v0, "Starting networking module "

    .line 3
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Landroid/net/ConnectivityModuleConnector;->logi(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 25
    iget-object v1, p0, Landroid/net/ConnectivityModuleConnector;->mDeps:Landroid/net/ConnectivityModuleConnector$Dependencies;

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-interface {v1, v0, p1, p2, v2}, Landroid/net/ConnectivityModuleConnector$Dependencies;->getModuleServiceIntent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    move-result-object v1

    .line 32
    const-string p1, "Starting networking module in network_stack process"

    .line 34
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->logi(Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p1, "Starting networking module in system_server process"

    .line 40
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->logi(Ljava/lang/String;)V

    .line 43
    :goto_0
    if-nez v1, :cond_1

    .line 45
    const-string p1, "Could not resolve the networking module"

    .line 47
    const/4 p2, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .line 52
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p0, Landroid/net/ConnectivityModuleConnector;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;

    .line 64
    invoke-direct {v0, p0, p1, p3}, Landroid/net/ConnectivityModuleConnector$ModuleServiceConnection;-><init>(Landroid/net/ConnectivityModuleConnector;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V

    .line 67
    const/16 p3, 0x41

    .line 69
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 71
    invoke-virtual {p2, v1, v0, p3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 74
    move-result p2

    .line 75
    if-nez p2, :cond_2

    .line 77
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    const-string p3, "Could not bind to networking module in-process, or in app with "

    .line 81
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p2

    .line 91
    invoke-direct {p0, p2, p1}, Landroid/net/ConnectivityModuleConnector;->maybeCrashWithTerribleFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 95
    :cond_2
    const-string p1, "Networking module service start requested"

    .line 97
    invoke-direct {p0, p1}, Landroid/net/ConnectivityModuleConnector;->log(Ljava/lang/String;)V

    .line 100
    return-void
.end method
