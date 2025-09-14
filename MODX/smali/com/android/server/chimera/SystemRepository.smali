.class public final Lcom/android/server/chimera/SystemRepository;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final IS_SHIP_BUILD:Z


# instance fields
.field public final fileCacheReclaimTarget:[Ljava/lang/String;

.field public final mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mAudioManager:Landroid/media/AudioManager;

.field public final mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

.field public final mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

.field public final mCameraDeviceStateCallback:Lcom/android/server/chimera/SystemRepository$3;

.field public final mChimeraProcessObservers:Ljava/util/List;

.field public final mChimeraUidObservers:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mFGActivityManager:Lcom/android/server/chimera/SystemRepository$ForegroundActivityManager;

.field public final mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

.field public mLastForegroundApp:Landroid/util/Pair;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPkgIconMap:Ljava/util/Map;

.field public final mProcessObserver:Lcom/android/server/chimera/SystemRepository$2;

.field public volatile mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mSmartSwitchEventReceiver:Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;

.field public mSystemEventListenerHandler:Landroid/os/Handler;

.field public final mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 4
    const-string v1, "0x4f4c"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    sput-boolean v0, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mPkgIconMap:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mChimeraUidObservers:Ljava/util/List;

    .line 18
    new-instance v0, Lcom/android/server/chimera/SystemRepository$1;

    .line 20
    invoke-direct {v0, p0}, Lcom/android/server/chimera/SystemRepository$1;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mChimeraProcessObservers:Ljava/util/List;

    .line 30
    new-instance v0, Lcom/android/server/chimera/SystemRepository$2;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/server/chimera/SystemRepository$2;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 35
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mProcessObserver:Lcom/android/server/chimera/SystemRepository$2;

    .line 37
    new-instance v0, Lcom/android/server/chimera/SystemRepository$3;

    .line 39
    invoke-direct {v0, p0}, Lcom/android/server/chimera/SystemRepository$3;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 42
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mCameraDeviceStateCallback:Lcom/android/server/chimera/SystemRepository$3;

    .line 44
    const-string/jumbo v0, "oat/arm/base.odex"

    .line 47
    const-string/jumbo v1, "oat/arm/base.vdex"

    .line 50
    const-string v2, "base.apk"

    .line 52
    const-string/jumbo v3, "oat/arm64/base.odex"

    .line 55
    const-string/jumbo v4, "oat/arm64/base.vdex"

    .line 58
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->fileCacheReclaimTarget:[Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 66
    const-string v0, "activity"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/app/ActivityManager;

    .line 74
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManager:Landroid/app/ActivityManager;

    .line 76
    const-string v0, "audio"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/media/AudioManager;

    .line 84
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mAudioManager:Landroid/media/AudioManager;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    iput-object p2, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 94
    const-class p2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 96
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 102
    iput-object p2, p0, Lcom/android/server/chimera/SystemRepository;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 104
    new-instance p2, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;

    .line 106
    invoke-direct {p2}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 109
    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p2, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnStart:Z

    .line 112
    iput-boolean v0, p2, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnTransfer:Z

    .line 114
    new-instance v2, Landroid/content/IntentFilter;

    .line 116
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 119
    const-string/jumbo v0, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    .line 122
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string/jumbo v0, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    .line 128
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    .line 134
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string/jumbo v0, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    .line 140
    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v3, "com.wssnps.permission.COM_WSSNPS"

    .line 146
    const/4 v4, 0x0

    .line 147
    const/4 v5, 0x2

    .line 148
    move-object v0, p1

    .line 149
    move-object v1, p2

    .line 150
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 153
    iput-object p2, p0, Lcom/android/server/chimera/SystemRepository;->mSmartSwitchEventReceiver:Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;

    .line 155
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 157
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 163
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 165
    new-instance p1, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 167
    const/4 p2, 0x1

    .line 168
    invoke-direct {p1, p0, p2}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;-><init>(Lcom/android/server/chimera/SystemRepository;I)V

    .line 171
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository;->mBigGameApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 173
    new-instance p1, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 175
    const/4 p2, 0x0

    .line 176
    invoke-direct {p1, p0, p2}, Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;-><init>(Lcom/android/server/chimera/SystemRepository;I)V

    .line 179
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository;->mCameraApps:Lcom/android/server/chimera/ICollectionCache$CameraAppsCache;

    .line 181
    new-instance p1, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    .line 183
    invoke-direct {p1, p0}, Lcom/android/server/chimera/ICollectionCache$GameAppsCache;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 186
    iput-object p1, p0, Lcom/android/server/chimera/SystemRepository;->mGameApps:Lcom/android/server/chimera/ICollectionCache$GameAppsCache;

    .line 188
    return-void
.end method

.method public static convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Chimera"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    :cond_0
    return-object p0
.end method

.method public static getCurrentHomePackageName()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/am/mars/filter/filter/DefaultAppFilter$DefaultAppFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/DefaultAppFilter;

    .line 3
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 16
    move-result-object v0

    .line 17
    const-string/jumbo v1, "com.sec.android.app.launcher"

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 26
    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/server/chimera/SystemRepository;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/chimera/SystemRepository;->IS_SHIP_BUILD:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/android/server/chimera/SystemRepository;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public final getAccessibilityServicePackages()Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 6
    move-result-object p0

    .line 7
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 22
    move-result-object p0

    .line 23
    new-instance v0, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {v0, v1}, Lcom/android/server/chimera/SystemRepository$$ExternalSyntheticLambda1;-><init>(I)V

    .line 38
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 41
    move-result-object p0

    .line 42
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 45
    move-result-object v0

    .line 46
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Ljava/util/List;

    .line 52
    :goto_0
    return-object p0
.end method

.method public final getAvailableMemory()J
    .locals 7

    .line 1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 3
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManager:Landroid/app/ActivityManager;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 11
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 13
    const-string p0, "Shmem"

    .line 15
    sget-object v2, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 17
    const-string v2, ":"

    .line 19
    const-string v3, "/proc/meminfo"

    .line 21
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    .line 23
    invoke-direct {v4, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    .line 28
    const/16 v5, 0x800

    .line 30
    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 36
    move-result-object v5

    .line 37
    if-eqz v5, :cond_1

    .line 39
    const-string v6, "Shmem:"

    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 44
    move-result v6

    .line 45
    :goto_0
    if-gez v6, :cond_0

    .line 47
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 69
    move-result v6

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 77
    const-string v2, "\\D+"

    .line 79
    const-string v5, ""

    .line 81
    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 88
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    int-to-long v5, p0

    .line 90
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 96
    goto :goto_9

    .line 97
    :catch_0
    move-exception p0

    .line 98
    goto :goto_5

    .line 99
    :catch_1
    move-exception p0

    .line 100
    goto :goto_6

    .line 101
    :catch_2
    move-exception p0

    .line 102
    goto :goto_7

    .line 103
    :catchall_1
    move-exception p0

    .line 104
    goto :goto_3

    .line 105
    :cond_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 108
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 111
    goto :goto_8

    .line 112
    :goto_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 115
    goto :goto_2

    .line 116
    :catchall_2
    move-exception v2

    .line 117
    :try_start_8
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 120
    :goto_2
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 121
    :goto_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 124
    goto :goto_4

    .line 125
    :catchall_3
    move-exception v2

    .line 126
    :try_start_a
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 129
    :goto_4
    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 130
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    goto :goto_8

    .line 134
    :goto_6
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 137
    goto :goto_8

    .line 138
    :goto_7
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :goto_8
    const-wide/16 v5, 0x0

    .line 143
    :goto_9
    const-wide/16 v2, 0x400

    .line 145
    mul-long/2addr v5, v2

    .line 146
    sub-long/2addr v0, v5

    .line 147
    return-wide v0
.end method

.method public final getMemmoryOfPid(I)J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManager:Landroid/app/ActivityManager;

    .line 5
    filled-new-array {p1}, [I

    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 12
    move-result-object p0

    .line 13
    array-length p1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, p1, :cond_0

    .line 17
    aget-object v3, p0, v2

    .line 19
    invoke-virtual {v3}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 22
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    int-to-long v3, v3

    .line 24
    add-long/2addr v0, v3

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    :cond_0
    return-wide v0
.end method

.method public final getNativeProcesses(Ljava/util/Set;)Ljava/util/List;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    if-nez p1, :cond_1

    .line 13
    new-instance p1, Ljava/util/HashSet;

    .line 15
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 18
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 20
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 26
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v2

    .line 32
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 44
    iget v3, v3, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 69
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 71
    new-instance v1, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;

    .line 73
    invoke-direct {v1, p1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda5;-><init>(Ljava/util/Set;Ljava/util/ArrayList;)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppProfiler;->forAllCpuStats(Ljava/util/function/Consumer;)V

    .line 79
    return-object v0
.end method

.method public final getProcStateAndOomScoreForPid(I)[I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 4
    new-array v0, v0, [I

    .line 6
    filled-new-array {p1}, [I

    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    .line 15
    const/4 p0, 0x0

    .line 16
    aget p1, v1, p0

    .line 18
    aget p0, v0, p0

    .line 20
    filled-new-array {p1, p0}, [I

    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public final getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    if-gtz v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    new-array v1, v0, [I

    .line 8
    new-array v0, v0, [I

    .line 10
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 12
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    .line 15
    new-instance p0, Landroid/util/Pair;

    .line 17
    invoke-direct {p0, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    return-object p0
.end method

.method public final getRunningAppProcesses()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 28
    new-instance v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 35
    iput-object v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 37
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 39
    iput v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 41
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 43
    iput v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 45
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 47
    iput-object v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 49
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 51
    iput v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 53
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 55
    iput v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    .line 57
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 59
    iput v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 61
    iget-wide v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 63
    iput-wide v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 65
    iget-wide v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastPss:J

    .line 67
    iput-wide v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 69
    iget-wide v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastSwapPss:J

    .line 71
    iput-wide v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastSwapPss:J

    .line 73
    iget-boolean v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->isProtectedInPicked:Z

    .line 75
    iput-boolean v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->isProtectedInPicked:Z

    .line 77
    iget-wide v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->avgPss:J

    .line 79
    iput-wide v3, v2, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    .line 81
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-object v0
.end method

.method public final hasConnectionProvider(ILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 18
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 22
    const/4 p0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->hasContentProviderConnection(Lcom/android/server/am/ProcessRecord;)Z

    .line 29
    move-result p1

    .line 30
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 34
    move p0, p1

    .line 35
    :goto_0
    return p0

    .line 36
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 40
    throw p1
.end method

.method public final killGenieProcess(ILjava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "Genie Process uid of "

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v2, "killGenieProcess pkg: "

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, ", adj threshold:"

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    const-string v1, "SystemRepositoryDefault"

    .line 28
    invoke-static {v1, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz p2, :cond_0

    .line 33
    :try_start_0
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    move-result-object p1

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 46
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v0, " is"

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-static {v1, v0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "GenAI Unload Policy"

    .line 73
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/server/chimera/SystemRepository;->killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    const-string p2, "Exception:"

    .line 82
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 96
    invoke-static {v1, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void
.end method

.method public final killProcessForChimera(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 15

    .line 1
    move-object/from16 v0, p2

    .line 3
    move-object v1, p0

    .line 4
    iget-object v1, v1, Lcom/android/server/chimera/SystemRepository;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    const-string v2, "E|killProcessForChimera "

    .line 11
    const-string v3, "Chimera kill failed, this is system process: "

    .line 13
    const-string v4, "B|killProcessForChimera "

    .line 15
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18
    monitor-enter v1

    .line 19
    :try_start_0
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 21
    move/from16 v6, p1

    .line 23
    invoke-virtual {v5, v6, v0}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 26
    move-result-object v5

    .line 27
    if-eqz v5, :cond_1

    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string v4, "("

    .line 39
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 44
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v4, ")"

    .line 49
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v4

    .line 56
    const/4 v14, 0x0

    .line 57
    invoke-static {v4, v14}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 60
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 62
    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 64
    if-ne v4, v6, :cond_0

    .line 66
    const-string v2, "ActivityManager"

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto :goto_1

    .line 90
    :cond_0
    :try_start_1
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 92
    const/4 v8, 0x0

    .line 93
    const/16 v10, 0xd

    .line 95
    const/4 v11, 0x0

    .line 96
    const/4 v13, 0x1

    .line 97
    move-object v7, v5

    .line 98
    move/from16 v9, p4

    .line 100
    move-object/from16 v12, p3

    .line 102
    invoke-virtual/range {v6 .. v13}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v0, "("

    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    const-string v0, ")"

    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0, v14}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 135
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 139
    :goto_0
    return-void

    .line 140
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 144
    throw v0
.end method

.method public final registerProcessObserver(Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/SystemRepository;->mChimeraProcessObservers:Ljava/util/List;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/chimera/SystemRepository;->mChimeraProcessObservers:Ljava/util/List;

    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p1, p0, Lcom/android/server/chimera/SystemRepository;->mChimeraProcessObservers:Ljava/util/List;

    .line 13
    check-cast p1, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 18
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-ne p1, v1, :cond_0

    .line 22
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mProcessObserver:Lcom/android/server/chimera/SystemRepository$2;

    .line 28
    invoke-interface {p1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception p0

    .line 35
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    throw p0
.end method

.method public final sendHqmBigData(Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/SystemRepository;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "HqmManagerService"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    move-object v0, p0

    .line 10
    check-cast v0, Landroid/os/SemHqmManager;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string v5, "1.1"

    .line 16
    const-string/jumbo v6, "sec"

    .line 19
    const/4 v1, 0x0

    .line 20
    const-string v2, "Sluggish"

    .line 22
    const-string v3, "KPUT"

    .line 24
    const-string/jumbo v4, "ph"

    .line 27
    const-string v7, ""

    .line 29
    const-string v9, ""

    .line 31
    move-object v8, p1

    .line 32
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 35
    move-result p0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v1, "sending bigdata : "

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 51
    const-string v0, "SystemRepositoryDefault"

    .line 53
    invoke-static {v0, p0}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 58
    const-string/jumbo v1, "feature : KPUT, json : "

    .line 61
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {v0, p0}, Lcom/android/server/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method
