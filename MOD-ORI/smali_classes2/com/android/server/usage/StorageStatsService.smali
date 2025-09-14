.class public final Lcom/android/server/usage/StorageStatsService;
.super Landroid/app/usage/IStorageStatsManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_QUOTA:J


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mCacheQuotas:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/usage/StorageStatsService$H;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mLock:Ljava/lang/Object;

.field public final mPackage:Landroid/content/pm/PackageManager;

.field public final mStorage:Landroid/os/storage/StorageManager;

.field public final mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mStorageThresholdPercentHigh:I

.field public final mUser:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x40

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/app/usage/IStorageStatsManager$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    const/16 v0, 0x14

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/content/Context;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-class v1, Landroid/app/AppOpsManager;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/app/AppOpsManager;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/app/AppOpsManager;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 45
    .line 46
    const-class v1, Landroid/os/UserManager;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/os/UserManager;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/os/UserManager;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/content/pm/PackageManager;

    .line 71
    .line 72
    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    const-class v1, Landroid/os/storage/StorageManager;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 81
    .line 82
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 87
    .line 88
    iput-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 89
    .line 90
    new-instance v2, Landroid/util/ArrayMap;

    .line 91
    .line 92
    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 96
    .line 97
    new-instance v2, Lcom/android/server/pm/Installer;

    .line 98
    .line 99
    invoke-direct {v2, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    iput-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->onStart()V

    .line 105
    .line 106
    .line 107
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 108
    .line 109
    .line 110
    move-result p1
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    if-nez p1, :cond_0

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    :try_start_1
    iget-object p1, v2, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 115
    .line 116
    invoke-interface {p1}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception p1

    .line 121
    :try_start_2
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 122
    .line 123
    .line 124
    const/4 p1, 0x0

    .line 125
    throw p1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 126
    :catch_1
    move-exception p1

    .line 127
    const-string v2, "StorageStatsService"

    .line 128
    .line 129
    const-string v3, "Failed to invalidate mounts"

    .line 130
    .line 131
    invoke-static {v2, v3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .line 133
    .line 134
    :goto_0
    new-instance p1, Lcom/android/server/usage/StorageStatsService$H;

    .line 135
    .line 136
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-direct {p1, p0, v2}, Lcom/android/server/usage/StorageStatsService$H;-><init>(Lcom/android/server/usage/StorageStatsService;Landroid/os/Looper;)V

    .line 145
    .line 146
    .line 147
    iput-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mHandler:Lcom/android/server/usage/StorageStatsService$H;

    .line 148
    .line 149
    const/16 v2, 0x65

    .line 150
    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 152
    .line 153
    .line 154
    new-instance p1, Lcom/android/server/usage/StorageStatsService$1;

    .line 155
    .line 156
    invoke-direct {p1, p0}, Lcom/android/server/usage/StorageStatsService$1;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 160
    .line 161
    .line 162
    new-instance p1, Lcom/android/server/usage/StorageStatsService$LocalService;

    .line 163
    .line 164
    invoke-direct {p1, p0}, Lcom/android/server/usage/StorageStatsService$LocalService;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    .line 165
    .line 166
    .line 167
    const-class v1, Lcom/android/server/usage/StorageStatsManagerLocal;

    .line 168
    .line 169
    invoke-static {v1, p1}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    new-instance p1, Landroid/content/IntentFilter;

    .line 173
    .line 174
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 178
    .line 179
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 183
    .line 184
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string/jumbo v1, "package"

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    new-instance v1, Lcom/android/server/usage/StorageStatsService$2;

    .line 194
    .line 195
    invoke-direct {v1, p0}, Lcom/android/server/usage/StorageStatsService$2;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/android/server/usage/StorageStatsService;->updateConfig()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    new-instance v0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;

    .line 209
    .line 210
    invoke-direct {v0, p0}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/usage/StorageStatsService;)V

    .line 211
    .line 212
    .line 213
    const-string/jumbo p0, "storage_native_boot"

    .line 214
    .line 215
    .line 216
    invoke-static {p0, p1, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public static checkCratesEnable()V
    .locals 2

    .line 1
    const-string v0, "fw.storage_crates"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v1, "Storage Crate feature is disabled."

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public static checkEquals(JJLjava/lang/String;)V
    .locals 1

    cmp-long v0, p0, p2

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " expected "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " actual "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StorageStatsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    .locals 5

    .line 1
    const-string v0, " codeSize"

    .line 2
    invoke-static {p0, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(JJLjava/lang/String;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " dataSize"

    .line 5
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(JJLjava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cacheSize"

    .line 8
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(JJLjava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " externalCodeSize"

    .line 11
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalCodeSize:J

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(JJLjava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " externalDataSize"

    .line 14
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v3, p2, Landroid/content/pm/PackageStats;->externalDataSize:J

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(JJLjava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " externalCacheSize"

    .line 17
    invoke-static {v0, p0, v1}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iget-wide p1, p2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    invoke-static {v0, v1, p1, p2, p0}, Lcom/android/server/usage/StorageStatsService;->checkEquals(JJLjava/lang/String;)V

    return-void
.end method

.method public static computeAppStatsByDataTypes(Landroid/content/pm/PackageStats;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->apkSize:J

    .line 22
    .line 23
    const-string v3, ".apk"

    .line 24
    .line 25
    invoke-static {v0, v3}, Lcom/android/server/usage/StorageStatsService;->getFileBytesInDir(Ljava/io/File;Ljava/lang/String;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    add-long/2addr v3, v1

    .line 30
    iput-wide v3, p0, Landroid/content/pm/PackageStats;->apkSize:J

    .line 31
    .line 32
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dmSize:J

    .line 33
    .line 34
    const-string v3, ".dm"

    .line 35
    .line 36
    invoke-static {v0, v3}, Lcom/android/server/usage/StorageStatsService;->getFileBytesInDir(Ljava/io/File;Ljava/lang/String;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    add-long/2addr v3, v1

    .line 41
    iput-wide v3, p0, Landroid/content/pm/PackageStats;->dmSize:J

    .line 42
    .line 43
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->libSize:J

    .line 44
    .line 45
    new-instance v2, Ljava/io/File;

    .line 46
    .line 47
    const-string v3, "/lib/"

    .line 48
    .line 49
    invoke-static {p1, v3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Lcom/android/server/usage/StorageStatsService;->getDirBytes(Ljava/io/File;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    add-long/2addr v2, v0

    .line 61
    iput-wide v2, p0, Landroid/content/pm/PackageStats;->libSize:J

    .line 62
    .line 63
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/DexOptHelper;->getArtManagerLocal()Lcom/android/server/art/ArtManagerLocal;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0, p1, p2}, Lcom/android/server/art/ArtManagerLocal;->getArtManagedFileStats(Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;Ljava/lang/String;)Lcom/android/server/art/model/ArtManagedFileStats;

    .line 76
    .line 77
    .line 78
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V

    .line 82
    .line 83
    .line 84
    :cond_1
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->dexoptSize:J

    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    invoke-virtual {p2, p1}, Lcom/android/server/art/model/ArtManagedFileStats;->getTotalSizeBytesByType(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    add-long/2addr v2, v0

    .line 92
    iput-wide v2, p0, Landroid/content/pm/PackageStats;->dexoptSize:J

    .line 93
    .line 94
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->refProfSize:J

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    invoke-virtual {p2, p1}, Lcom/android/server/art/model/ArtManagedFileStats;->getTotalSizeBytesByType(I)J

    .line 98
    .line 99
    .line 100
    move-result-wide v2

    .line 101
    add-long/2addr v2, v0

    .line 102
    iput-wide v2, p0, Landroid/content/pm/PackageStats;->refProfSize:J

    .line 103
    .line 104
    iget-wide v0, p0, Landroid/content/pm/PackageStats;->curProfSize:J

    .line 105
    .line 106
    const/4 p1, 0x2

    .line 107
    invoke-virtual {p2, p1}, Lcom/android/server/art/model/ArtManagedFileStats;->getTotalSizeBytesByType(I)J

    .line 108
    .line 109
    .line 110
    move-result-wide p1

    .line 111
    add-long/2addr p1, v0

    .line 112
    iput-wide p1, p0, Landroid/content/pm/PackageStats;->curProfSize:J

    .line 113
    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    if-eqz p1, :cond_2

    .line 117
    .line 118
    :try_start_1
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catchall_1
    move-exception p1

    .line 123
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    :goto_0
    throw p0
.end method

.method public static convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    array-length v1, p0

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v1, :cond_4

    .line 18
    .line 19
    aget-object v3, p0, v2

    .line 20
    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_3

    .line 30
    .line 31
    iget-object v4, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget v4, v3, Landroid/os/storage/CrateMetadata;->uid:I

    .line 41
    .line 42
    iget-object v5, v3, Landroid/os/storage/CrateMetadata;->packageName:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, v3, Landroid/os/storage/CrateMetadata;->id:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v4, v5, v3}, Landroid/os/storage/CrateInfo;->copyFrom(ILjava/lang/String;Ljava/lang/String;)Landroid/os/storage/CrateInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    return-object v0
.end method

.method public static getDirBytes(Ljava/io/File;)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v3, v0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-ge v4, v3, :cond_3

    .line 17
    .line 18
    aget-object v5, v0, v4

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    :goto_1
    add-long/2addr v1, v5

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    if-eqz v6, :cond_2

    .line 37
    .line 38
    invoke-static {v5}, Lcom/android/server/usage/StorageStatsService;->getDirBytes(Ljava/io/File;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v3, "Failed to list directory "

    .line 49
    .line 50
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v0, "StorageStatsService"

    .line 65
    .line 66
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    :cond_3
    return-wide v1
.end method

.method public static getFileBytesInDir(Ljava/io/File;Ljava/lang/String;)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    array-length v3, v0

    .line 15
    const/4 v4, 0x0

    .line 16
    :goto_0
    if-ge v4, v3, :cond_2

    .line 17
    .line 18
    aget-object v5, v0, v4

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-eqz v6, :cond_1

    .line 25
    .line 26
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    invoke-virtual {v6, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 37
    .line 38
    .line 39
    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    add-long/2addr v1, v5

    .line 41
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "Failed to list directory "

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string p1, "StorageStatsService"

    .line 63
    .line 64
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_2
    return-wide v1
.end method

.method public static isCacheQuotaCalculationsEnabled(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 1
    const-string v0, "enable_cache_quota_calculation"

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

.method public static translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;
    .locals 5

    .line 1
    new-instance v0, Landroid/app/usage/StorageStats;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/usage/StorageStats;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 7
    .line 8
    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 9
    .line 10
    add-long/2addr v1, v3

    .line 11
    iput-wide v1, v0, Landroid/app/usage/StorageStats;->codeBytes:J

    .line 12
    .line 13
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 14
    .line 15
    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 16
    .line 17
    add-long/2addr v1, v3

    .line 18
    iput-wide v1, v0, Landroid/app/usage/StorageStats;->dataBytes:J

    .line 19
    .line 20
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 21
    .line 22
    iget-wide v3, p0, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 23
    .line 24
    add-long/2addr v1, v3

    .line 25
    iput-wide v1, v0, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 26
    .line 27
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dexoptSize:J

    .line 28
    .line 29
    iput-wide v1, v0, Landroid/app/usage/StorageStats;->dexoptBytes:J

    .line 30
    .line 31
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->curProfSize:J

    .line 32
    .line 33
    iput-wide v1, v0, Landroid/app/usage/StorageStats;->curProfBytes:J

    .line 34
    .line 35
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->refProfSize:J

    .line 36
    .line 37
    iput-wide v1, v0, Landroid/app/usage/StorageStats;->refProfBytes:J

    .line 38
    .line 39
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->apkSize:J

    .line 40
    .line 41
    iput-wide v1, v0, Landroid/app/usage/StorageStats;->apkBytes:J

    .line 42
    .line 43
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->libSize:J

    .line 44
    .line 45
    iput-wide v1, v0, Landroid/app/usage/StorageStats;->libBytes:J

    .line 46
    .line 47
    iget-wide v1, p0, Landroid/content/pm/PackageStats;->dmSize:J

    .line 48
    .line 49
    iput-wide v1, v0, Landroid/app/usage/StorageStats;->dmBytes:J

    .line 50
    .line 51
    iput-wide v3, v0, Landroid/app/usage/StorageStats;->externalCacheBytes:J

    .line 52
    .line 53
    return-object v0
.end method


# virtual methods
.method public final checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x2b

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 6
    .line 7
    invoke-virtual {p3, v0, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 13
    .line 14
    invoke-virtual {p3, v0, p1, p2}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    :goto_0
    const/4 v0, 0x0

    .line 19
    if-eqz p3, :cond_3

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    if-eq p3, v1, :cond_1

    .line 23
    .line 24
    const-string p0, "Package "

    .line 25
    .line 26
    const-string v0, " from UID "

    .line 27
    .line 28
    const-string v1, " blocked by mode "

    .line 29
    .line 30
    invoke-static {p1, p0, p2, v0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_1
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 43
    .line 44
    const-string p3, "android.permission.PACKAGE_USAGE_STATS"

    .line 45
    .line 46
    invoke-virtual {p0, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    if-nez p0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    const-string p0, "Caller does not have android.permission.PACKAGE_USAGE_STATS; callingPackage="

    .line 54
    .line 55
    const-string p3, ", callingUid="

    .line 56
    .line 57
    invoke-static {p1, p0, p2, p3}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_3
    return-object v0
.end method

.method public final enforceStatsPermission(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/SecurityException;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method

.method public final forEachStorageStatsAugmenter(Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/usage/StorageStatsService;->mStorageStatsAugmenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Landroid/util/Pair;

    .line 17
    .line 18
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v2, Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;

    .line 25
    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v5, ":"

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    const-wide/32 v4, 0x80000

    .line 47
    .line 48
    .line 49
    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :try_start_0
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    .line 57
    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_0
    return-void
.end method

.method public final getAppCrates(Ljava/lang/String;I[Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 12
    .line 13
    invoke-interface {p0, p1, p3, p2}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    .line 14
    .line 15
    .line 16
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 17
    :goto_0
    :try_start_2
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    return-object p0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :catch_1
    move-exception p0

    .line 30
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 31
    .line 32
    .line 33
    throw v1
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    :goto_1
    new-instance p1, Landroid/os/ParcelableException;

    .line 35
    .line 36
    new-instance p2, Ljava/io/IOException;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public final getAppIds(I)[I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    const/16 v0, 0x2000

    .line 4
    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/4 p1, 0x0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 25
    .line 26
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 27
    .line 28
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-object p1
.end method

.method public final getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lcom/android/server/usage/StorageStatsService;->mUser:Landroid/os/UserManager;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 31
    .line 32
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-wide v2, v2, Landroid/app/usage/StorageStats;->cacheBytes:J

    .line 40
    .line 41
    add-long/2addr v0, v2

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-wide v0
.end method

.method public final getCacheQuotaBytes(Ljava/lang/String;ILjava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mCacheQuotas:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Landroid/util/SparseLongArray;

    .line 23
    .line 24
    sget-wide v0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    .line 25
    .line 26
    invoke-virtual {p0, p2, v0, v1}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    return-wide p0

    .line 31
    :cond_0
    sget-wide p0, Lcom/android/server/usage/StorageStatsService;->DEFAULT_QUOTA:J

    .line 32
    .line 33
    return-wide p0
.end method

.method public final getFreeBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    .line 1
    const-string p2, "android"

    .line 2
    .line 3
    const-string v0, "getFreeBytes: "

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 10
    .line 11
    invoke-virtual {v3, p1}, Landroid/os/storage/StorageManager;->findPathForUuid(Ljava/lang/String;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->getCacheBytes(Ljava/lang/String;Ljava/lang/String;)J

    .line 22
    .line 23
    .line 24
    move-result-wide p1

    .line 25
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-virtual {p0, v3, v4}, Landroid/os/storage/StorageManager;->getStorageCacheBytes(Ljava/io/File;I)J

    .line 29
    .line 30
    .line 31
    move-result-wide v4

    .line 32
    const-wide/16 v6, 0x0

    .line 33
    .line 34
    sub-long/2addr p1, v4

    .line 35
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide p0

    .line 39
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    add-long/2addr v3, p0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    :goto_0
    const-string p0, "StorageStatsService"

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-wide v3

    .line 72
    :catch_0
    move-exception p0

    .line 73
    :try_start_2
    new-instance p1, Landroid/os/ParcelableException;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    throw p0
.end method

.method public final getTotalBytes(Ljava/lang/String;Ljava/lang/String;)J
    .locals 7

    .line 1
    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 2
    .line 3
    if-ne p1, p2, :cond_2

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/storage/StorageManager;->getPrimaryStorageSize()J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    sget-object v0, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    .line 12
    .line 13
    const-wide/16 v1, 0x200

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    cmp-long v1, p1, v1

    .line 20
    .line 21
    if-gtz v1, :cond_0

    .line 22
    .line 23
    return-wide p1

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getInternalStorageBlockDeviceSize()J

    .line 27
    .line 28
    .line 29
    move-result-wide p0

    .line 30
    invoke-static {p0, p1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    sub-long v3, v1, p0

    .line 35
    .line 36
    const-wide/16 v5, 0x3

    .line 37
    .line 38
    invoke-virtual {v0, v5, v6}, Landroid/util/DataUnit;->toBytes(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    cmp-long p2, v3, v5

    .line 43
    .line 44
    if-gtz p2, :cond_1

    .line 45
    .line 46
    return-wide v1

    .line 47
    :cond_1
    return-wide p0

    .line 48
    :cond_2
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mStorage:Landroid/os/storage/StorageManager;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    iget-object p0, p0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    .line 57
    .line 58
    iget-wide p0, p0, Landroid/os/storage/DiskInfo;->size:J

    .line 59
    .line 60
    invoke-static {p0, p1}, Landroid/os/FileUtils;->roundStorageSize(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide p0

    .line 64
    return-wide p0

    .line 65
    :cond_3
    new-instance p0, Landroid/os/ParcelableException;

    .line 66
    .line 67
    new-instance p2, Ljava/io/IOException;

    .line 68
    .line 69
    const-string v0, "Failed to find storage device for UUID "

    .line 70
    .line 71
    invoke-static {v0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public final isQuotaSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 4
    .line 5
    .line 6
    move-result p2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 12
    .line 13
    invoke-interface {p0, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    :goto_0
    return p0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    :try_start_2
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 20
    .line 21
    .line 22
    const/4 p0, 0x0

    .line 23
    throw p0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 24
    :catch_1
    move-exception p0

    .line 25
    new-instance p1, Landroid/os/ParcelableException;

    .line 26
    .line 27
    new-instance p2, Ljava/io/IOException;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method

.method public final isReservedSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    if-ne p1, p0, :cond_1

    .line 5
    .line 6
    const-string/jumbo p0, "vold.has_reserved"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    sget-boolean p0, Landroid/os/Build;->IS_ARC:Z

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 p2, 0x1

    .line 20
    :cond_1
    return p2
.end method

.method public final queryCratesForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eq p3, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 13
    .line 14
    const-string v2, "StorageStatsService"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 20
    .line 21
    const/16 v1, 0x2000

    .line 22
    .line 23
    invoke-virtual {v0, p2, v1, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 32
    .line 33
    if-ne v1, v0, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    const-string v1, "android.permission.MANAGE_CRATES"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    filled-new-array {p2}, [Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;I[Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    new-instance p1, Landroid/os/ParcelableException;

    .line 57
    .line 58
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    throw p1
.end method

.method public final queryCratesForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 17
    .line 18
    const-string v3, "StorageStatsService"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v1, p2, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    const-string v2, "android.permission.MANAGE_CRATES"

    .line 36
    .line 37
    invoke-virtual {v1, v2, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object p3, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 41
    .line 42
    invoke-virtual {p3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const/4 p3, 0x0

    .line 51
    new-array v1, p3, [Ljava/lang/String;

    .line 52
    .line 53
    array-length v2, p2

    .line 54
    :goto_1
    if-ge p3, v2, :cond_4

    .line 55
    .line 56
    aget-object v3, p2, p3

    .line 57
    .line 58
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 66
    .line 67
    const/16 v5, 0x2000

    .line 68
    .line 69
    invoke-virtual {v4, v3, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_3
    const-class v4, Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v4, v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catch_0
    move-exception p0

    .line 88
    new-instance p1, Landroid/os/ParcelableException;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_4
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/usage/StorageStatsService;->getAppCrates(Ljava/lang/String;I[Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0
.end method

.method public final queryCratesForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/server/usage/StorageStatsService;->checkCratesEnable()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 13
    .line 14
    const-string v2, "StorageStatsService"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v1, "android.permission.MANAGE_CRATES"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 32
    .line 33
    .line 34
    move-result p3
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    const/4 v0, 0x0

    .line 36
    if-nez p3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 40
    .line 41
    invoke-interface {p0, p1, p2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    :goto_0
    :try_start_2
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/android/server/usage/StorageStatsService;->convertCrateInfoFrom([Landroid/os/storage/CrateMetadata;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    return-object p0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception p0

    .line 58
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 59
    .line 60
    .line 61
    throw v0
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :goto_1
    new-instance p1, Landroid/os/ParcelableException;

    .line 63
    .line 64
    new-instance p2, Ljava/io/IOException;

    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw p1
.end method

.method public final queryExternalStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/ExternalStorageStats;
    .locals 8

    .line 1
    const-string v0, "External "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eq p2, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    .line 12
    .line 13
    const-string v3, "StorageStatsService"

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0, v1, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 30
    .line 31
    const-string v2, "fw.disable_quota"

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    move v2, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/16 v2, 0x1000

    .line 43
    .line 44
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x6

    .line 50
    if-nez v4, :cond_2

    .line 51
    .line 52
    new-array v1, v6, [J
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :try_start_1
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 56
    .line 57
    invoke-interface {v1, p1, p2, v2, p3}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    .line 58
    .line 59
    .line 60
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 61
    :goto_1
    :try_start_2
    const-string v2, "fw.verify_storage"

    .line 62
    .line 63
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_3

    .line 76
    .line 77
    new-array p0, v6, [J
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 81
    .line 82
    invoke-interface {p0, p1, p2, v3, p3}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    .line 83
    .line 84
    .line 85
    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 86
    :goto_2
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    move p2, v3

    .line 99
    :goto_3
    array-length p3, p0

    .line 100
    if-ge p2, p3, :cond_4

    .line 101
    .line 102
    new-instance p3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v0, "["

    .line 111
    .line 112
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v0, "]"

    .line 119
    .line 120
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p3

    .line 127
    aget-wide v4, p0, p2

    .line 128
    .line 129
    aget-wide v6, v1, p2

    .line 130
    .line 131
    invoke-static {v4, v5, v6, v7, p3}, Lcom/android/server/usage/StorageStatsService;->checkEquals(JJLjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    add-int/lit8 p2, p2, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :catch_0
    move-exception p0

    .line 138
    goto :goto_4

    .line 139
    :catch_1
    move-exception p0

    .line 140
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    throw v5
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 144
    :cond_4
    new-instance p0, Landroid/app/usage/ExternalStorageStats;

    .line 145
    .line 146
    invoke-direct {p0}, Landroid/app/usage/ExternalStorageStats;-><init>()V

    .line 147
    .line 148
    .line 149
    aget-wide p1, v1, v3

    .line 150
    .line 151
    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->totalBytes:J

    .line 152
    .line 153
    const/4 p1, 0x1

    .line 154
    aget-wide p1, v1, p1

    .line 155
    .line 156
    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->audioBytes:J

    .line 157
    .line 158
    const/4 p1, 0x2

    .line 159
    aget-wide p1, v1, p1

    .line 160
    .line 161
    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->videoBytes:J

    .line 162
    .line 163
    const/4 p1, 0x3

    .line 164
    aget-wide p1, v1, p1

    .line 165
    .line 166
    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->imageBytes:J

    .line 167
    .line 168
    const/4 p1, 0x4

    .line 169
    aget-wide p1, v1, p1

    .line 170
    .line 171
    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->appBytes:J

    .line 172
    .line 173
    const/4 p1, 0x5

    .line 174
    aget-wide p1, v1, p1

    .line 175
    .line 176
    iput-wide p1, p0, Landroid/app/usage/ExternalStorageStats;->obbBytes:J

    .line 177
    .line 178
    return-object p0

    .line 179
    :catch_2
    move-exception p0

    .line 180
    :try_start_5
    invoke-static {p0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)V

    .line 181
    .line 182
    .line 183
    throw v5
    :try_end_5
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_5} :catch_0

    .line 184
    :goto_4
    new-instance p1, Landroid/os/ParcelableException;

    .line 185
    .line 186
    new-instance p2, Ljava/io/IOException;

    .line 187
    .line 188
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 196
    .line 197
    .line 198
    throw p1
.end method

.method public final queryStatsForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v10, p1

    .line 3
    .line 4
    move-object/from16 v11, p2

    .line 5
    .line 6
    move/from16 v12, p3

    .line 7
    .line 8
    move-object/from16 v1, p4

    .line 9
    .line 10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string v3, "StorageStatsService"

    .line 15
    .line 16
    if-eq v12, v2, :cond_0

    .line 17
    .line 18
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    .line 21
    .line 22
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    const/16 v4, 0x2000

    .line 28
    .line 29
    invoke-virtual {v2, v11, v4, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/4 v7, 0x1

    .line 41
    if-ne v4, v5, :cond_2

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-virtual {p0, v4, v1, v6}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    if-nez v4, :cond_1

    .line 52
    .line 53
    move v4, v7

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v4, v6

    .line 56
    :goto_0
    move v13, v4

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    invoke-virtual {p0, v4, v1}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    move v13, v7

    .line 66
    :goto_1
    iget-object v4, v0, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    array-length v4, v4

    .line 79
    if-ne v4, v7, :cond_3

    .line 80
    .line 81
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 82
    .line 83
    invoke-virtual {p0, v10, v2, v1}, Lcom/android/server/usage/StorageStatsService;->queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0

    .line 88
    :cond_3
    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 89
    .line 90
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    new-array v7, v7, [J

    .line 99
    .line 100
    new-array v1, v6, [Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-eqz v5, :cond_4

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-nez v5, :cond_4

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_4
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    if-eqz v5, :cond_5

    .line 120
    .line 121
    const-class v5, Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v5, v1, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, [Ljava/lang/String;

    .line 132
    .line 133
    :cond_5
    :goto_2
    move-object v9, v1

    .line 134
    new-instance v14, Landroid/content/pm/PackageStats;

    .line 135
    .line 136
    invoke-direct {v14, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :try_start_1
    iget-object v1, v0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    move-object/from16 v2, p1

    .line 143
    .line 144
    move-object v3, v4

    .line 145
    move/from16 v4, p3

    .line 146
    .line 147
    move v6, v8

    .line 148
    move-object v8, v9

    .line 149
    move-object v9, v14

    .line 150
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    .line 152
    .line 153
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 154
    .line 155
    if-ne v10, v1, :cond_6

    .line 156
    .line 157
    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    new-instance v2, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;

    .line 162
    .line 163
    invoke-direct {v2, v14, v11, v1, v13}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda2;-><init>(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V

    .line 164
    .line 165
    .line 166
    const-string/jumbo v1, "queryStatsForPackage"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, v1, v2}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    invoke-static {v14}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Landroid/os/ParcelableException;

    .line 179
    .line 180
    new-instance v2, Ljava/io/IOException;

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 190
    .line 191
    .line 192
    throw v1

    .line 193
    :catch_1
    move-exception v0

    .line 194
    new-instance v1, Landroid/os/ParcelableException;

    .line 195
    .line 196
    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 197
    .line 198
    .line 199
    throw v1
.end method

.method public final queryStatsForUid(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v0, p3

    .line 6
    .line 7
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 8
    .line 9
    .line 10
    move-result v12

    .line 11
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 12
    .line 13
    .line 14
    move-result v13

    .line 15
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const-string v14, "StorageStatsService"

    .line 20
    .line 21
    if-eq v12, v3, :cond_0

    .line 22
    .line 23
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    .line 26
    .line 27
    invoke-virtual {v3, v4, v14}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v15, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    if-ne v3, v2, :cond_2

    .line 37
    .line 38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3, v0, v15}, Lcom/android/server/usage/StorageStatsService;->checkStatsPermission(ILjava/lang/String;Z)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move v4, v15

    .line 50
    :goto_0
    move v11, v4

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-virtual {v1, v3, v0}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    iget-object v0, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v10

    .line 70
    array-length v0, v10

    .line 71
    new-array v9, v0, [J

    .line 72
    .line 73
    new-array v0, v15, [Ljava/lang/String;

    .line 74
    .line 75
    new-instance v8, Landroid/content/pm/PackageStats;

    .line 76
    .line 77
    invoke-direct {v8, v14}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    move v3, v15

    .line 81
    :goto_2
    array-length v4, v10

    .line 82
    if-ge v3, v4, :cond_6

    .line 83
    .line 84
    :try_start_0
    iget-object v4, v1, Lcom/android/server/usage/StorageStatsService;->mPackage:Landroid/content/pm/PackageManager;

    .line 85
    .line 86
    aget-object v5, v10, v3

    .line 87
    .line 88
    const/16 v6, 0x2000

    .line 89
    .line 90
    invoke-virtual {v4, v5, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-nez v5, :cond_3

    .line 105
    .line 106
    goto :goto_4

    .line 107
    :catch_0
    move-exception v0

    .line 108
    goto :goto_5

    .line 109
    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    const-class v5, Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-static {v5, v0, v6}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, [Ljava/lang/String;

    .line 126
    .line 127
    :cond_4
    move-object v5, v0

    .line 128
    invoke-static {}, Landroid/app/usage/Flags;->getAppBytesByDataTypeApi()Z

    .line 129
    .line 130
    .line 131
    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    :try_start_1
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 135
    .line 136
    aget-object v4, v10, v3

    .line 137
    .line 138
    invoke-static {v8, v0, v4}, Lcom/android/server/usage/StorageStatsService;->computeAppStatsByDataTypes(Landroid/content/pm/PackageStats;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :catch_1
    move-exception v0

    .line 143
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    aget-object v6, v10, v3

    .line 149
    .line 150
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v6, " sourceDir is null"

    .line 154
    .line 155
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-static {v14, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 163
    .line 164
    .line 165
    :cond_5
    :goto_3
    move-object v0, v5

    .line 166
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :goto_5
    new-instance v1, Landroid/os/ParcelableException;

    .line 170
    .line 171
    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw v1

    .line 175
    :cond_6
    :try_start_3
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 176
    .line 177
    const-string v4, "fw.disable_quota"

    .line 178
    .line 179
    invoke-static {v4, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-eqz v4, :cond_7

    .line 184
    .line 185
    move v7, v15

    .line 186
    goto :goto_6

    .line 187
    :cond_7
    const/16 v4, 0x1000

    .line 188
    .line 189
    move v7, v4

    .line 190
    :goto_6
    move-object/from16 v4, p1

    .line 191
    .line 192
    move-object v5, v10

    .line 193
    move v6, v12

    .line 194
    move-object/from16 p3, v8

    .line 195
    .line 196
    move v8, v13

    .line 197
    move-object/from16 v16, v9

    .line 198
    .line 199
    move-object/from16 v17, v10

    .line 200
    .line 201
    move-object v10, v0

    .line 202
    move/from16 v18, v11

    .line 203
    .line 204
    move-object/from16 v11, p3

    .line 205
    .line 206
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 207
    .line 208
    .line 209
    const-string v3, "fw.verify_storage"

    .line 210
    .line 211
    invoke-static {v3, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_8

    .line 216
    .line 217
    new-instance v15, Landroid/content/pm/PackageStats;

    .line 218
    .line 219
    invoke-direct {v15, v14}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object v3, v1, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 223
    .line 224
    const/4 v7, 0x0

    .line 225
    move-object/from16 v4, p1

    .line 226
    .line 227
    move-object/from16 v5, v17

    .line 228
    .line 229
    move v6, v12

    .line 230
    move v8, v13

    .line 231
    move-object/from16 v9, v16

    .line 232
    .line 233
    move-object v10, v0

    .line 234
    move-object v11, v15

    .line 235
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/pm/Installer;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V

    .line 236
    .line 237
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v3, "UID "

    .line 244
    .line 245
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    move-object/from16 v3, p3

    .line 256
    .line 257
    invoke-static {v0, v15, v3}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_2

    .line 258
    .line 259
    .line 260
    goto :goto_7

    .line 261
    :catch_2
    move-exception v0

    .line 262
    goto :goto_8

    .line 263
    :cond_8
    move-object/from16 v3, p3

    .line 264
    .line 265
    :goto_7
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 266
    .line 267
    move-object/from16 v4, p1

    .line 268
    .line 269
    if-ne v4, v0, :cond_9

    .line 270
    .line 271
    new-instance v0, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;

    .line 272
    .line 273
    move/from16 v4, v18

    .line 274
    .line 275
    invoke-direct {v0, v3, v2, v4}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageStats;IZ)V

    .line 276
    .line 277
    .line 278
    const-string/jumbo v2, "queryStatsForUid"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v2, v0}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 282
    .line 283
    .line 284
    :cond_9
    invoke-static {v3}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    return-object v0

    .line 289
    :goto_8
    new-instance v1, Landroid/os/ParcelableException;

    .line 290
    .line 291
    new-instance v2, Ljava/io/IOException;

    .line 292
    .line 293
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 301
    .line 302
    .line 303
    throw v1
.end method

.method public final queryStatsForUser(Ljava/lang/String;ILjava/lang/String;)Landroid/app/usage/StorageStats;
    .locals 10

    .line 1
    const-string v0, "User "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, "StorageStatsService"

    .line 8
    .line 9
    if-eq p2, v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/usage/StorageStatsService;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    .line 14
    .line 15
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {p0, v1, p3}, Lcom/android/server/usage/StorageStatsService;->enforceStatsPermission(ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/android/server/usage/StorageStatsService;->getAppIds(I)[I

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    new-instance v1, Landroid/content/pm/PackageStats;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 35
    .line 36
    const-string v4, "fw.disable_quota"

    .line 37
    .line 38
    const/4 v9, 0x0

    .line 39
    invoke-static {v4, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    move v6, v9

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/16 v4, 0x1000

    .line 48
    .line 49
    move v6, v4

    .line 50
    :goto_0
    move-object v4, p1

    .line 51
    move v5, p2

    .line 52
    move-object v7, p3

    .line 53
    move-object v8, v1

    .line 54
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 55
    .line 56
    .line 57
    const-string v3, "fw.verify_storage"

    .line 58
    .line 59
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    new-instance v9, Landroid/content/pm/PackageStats;

    .line 66
    .line 67
    invoke-direct {v9, v2}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p0, Lcom/android/server/usage/StorageStatsService;->mInstaller:Lcom/android/server/pm/Installer;

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    move-object v4, p1

    .line 74
    move v5, p2

    .line 75
    move-object v7, p3

    .line 76
    move-object v8, v9

    .line 77
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/pm/Installer;->getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V

    .line 78
    .line 79
    .line 80
    new-instance p3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-static {p3, v9, v1}, Lcom/android/server/usage/StorageStatsService;->checkEquals(Ljava/lang/String;Landroid/content/pm/PackageStats;Landroid/content/pm/PackageStats;)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    :goto_1
    sget-object p3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 99
    .line 100
    if-ne p1, p3, :cond_3

    .line 101
    .line 102
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    new-instance p2, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;

    .line 107
    .line 108
    invoke-direct {p2, v1, p1}, Lcom/android/server/usage/StorageStatsService$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V

    .line 109
    .line 110
    .line 111
    const-string/jumbo p1, "queryStatsForUser"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/StorageStatsService;->forEachStorageStatsAugmenter(Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-static {v1}, Lcom/android/server/usage/StorageStatsService;->translate(Landroid/content/pm/PackageStats;)Landroid/app/usage/StorageStats;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :goto_2
    new-instance p1, Landroid/os/ParcelableException;

    .line 123
    .line 124
    new-instance p2, Ljava/io/IOException;

    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method public final updateConfig()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/StorageStatsService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string/jumbo v1, "storage_native_boot"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "storage_threshold_percent_high"

    .line 8
    .line 9
    .line 10
    const/16 v3, 0x14

    .line 11
    .line 12
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput v1, p0, Lcom/android/server/usage/StorageStatsService;->mStorageThresholdPercentHigh:I

    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method
