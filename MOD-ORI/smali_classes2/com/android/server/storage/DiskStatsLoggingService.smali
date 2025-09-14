.class public Lcom/android/server/storage/DiskStatsLoggingService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sDiskStatsLoggingService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/storage/DiskStatsLoggingService;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/storage/DiskStatsLoggingService;->sDiskStatsLoggingService:Landroid/content/ComponentName;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isDumpsysTaskEnabled(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 1
    const-string v0, "enable_diskstats_logging"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 9

    .line 1
    const-string v0, "batterymanager"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/os/BatteryManager;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/os/BatteryManager;->isCharging()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    const/4 v2, 0x1

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/job/JobService;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/android/server/storage/DiskStatsLoggingService;->isDumpsysTaskEnabled(Landroid/content/ContentResolver;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/app/job/JobService;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    return v1

    .line 43
    :cond_2
    new-instance v1, Lcom/android/server/storage/AppCollector;

    .line 44
    .line 45
    invoke-direct {v1, p0, v0}, Lcom/android/server/storage/AppCollector;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    new-instance v3, Landroid/os/Environment$UserEnvironment;

    .line 53
    .line 54
    invoke-direct {v3, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;-><init>()V

    .line 60
    .line 61
    .line 62
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Landroid/os/Environment$UserEnvironment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iput-object v3, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mDownloadsDirectory:Ljava/io/File;

    .line 69
    .line 70
    sget-object v3, Lcom/android/server/storage/FileCollector;->EXTENSION_MAP:Ljava/util/Map;

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    const-string/jumbo v4, "storage"

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Landroid/os/storage/StorageManager;

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-wide/16 v5, 0x0

    .line 94
    .line 95
    if-nez v3, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    if-nez v3, :cond_4

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getTotalSpace()J

    .line 106
    .line 107
    .line 108
    move-result-wide v7

    .line 109
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    .line 110
    .line 111
    .line 112
    move-result-wide v3

    .line 113
    sub-long/2addr v3, v7

    .line 114
    cmp-long v7, v3, v5

    .line 115
    .line 116
    if-gtz v7, :cond_5

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_5
    move-wide v5, v3

    .line 120
    :goto_1
    iput-wide v5, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mSystemSize:J

    .line 121
    .line 122
    new-instance v3, Ljava/io/File;

    .line 123
    .line 124
    const-string v4, "/data/system/diskstats_cache.json"

    .line 125
    .line 126
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iput-object v3, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mOutputFile:Ljava/io/File;

    .line 130
    .line 131
    iput-object v1, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mCollector:Lcom/android/server/storage/AppCollector;

    .line 132
    .line 133
    iput-object p0, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mJobService:Landroid/app/job/JobService;

    .line 134
    .line 135
    iput-object p1, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mParams:Landroid/app/job/JobParameters;

    .line 136
    .line 137
    iput-object p0, v0, Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;->mContext:Landroid/content/Context;

    .line 138
    .line 139
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 140
    .line 141
    .line 142
    return v2

    .line 143
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 144
    .line 145
    .line 146
    return v1
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
