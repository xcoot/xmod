.class public final Lcom/android/server/pm/InitAppsHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mApexManager:Lcom/android/server/pm/ApexManager;

.field public mCachedSystemApps:I

.field public final mDirsToScanAsSystem:Ljava/util/List;

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mExpectingBetter:Landroid/util/ArrayMap;

.field public final mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

.field public final mIsDeviceUpgrading:Z

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

.field public final mScanFlags:I

.field public final mStubSystemApps:Ljava/util/List;

.field public mSystemPackagesCount:I

.field public final mSystemParseFlags:I

.field public final mSystemScanFlags:I

.field public mSystemScanTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Lcom/android/server/pm/InstallPackageHelper;Ljava/util/List;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 30
    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 37
    .line 38
    .line 39
    new-instance p3, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const/4 p4, 0x0

    .line 49
    move v0, p4

    .line 50
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ge v0, v1, :cond_4

    .line 55
    .line 56
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 61
    .line 62
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    move v3, p4

    .line 69
    :goto_1
    if-ge v3, v2, :cond_2

    .line 70
    .line 71
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Lcom/android/server/pm/ScanPartition;

    .line 78
    .line 79
    iget-object v5, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v4}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    if-nez v5, :cond_1

    .line 98
    .line 99
    iget-object v5, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    new-instance v6, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v5

    .line 134
    if-eqz v5, :cond_0

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    :goto_2
    new-instance v2, Lcom/android/server/pm/ScanPartition;

    .line 141
    .line 142
    iget-object v3, v1, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    .line 143
    .line 144
    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/pm/ScanPartition;-><init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_2
    const/4 v2, 0x0

    .line 149
    :goto_3
    if-eqz v2, :cond_3

    .line 150
    .line 151
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_4
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 158
    .line 159
    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string p3, "Directories scanned as system partitions: "

    .line 163
    .line 164
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    const-string p3, "PackageManager"

    .line 175
    .line 176
    invoke-static {p3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 180
    .line 181
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    iput-boolean p1, p0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    .line 188
    .line 189
    if-nez p1, :cond_6

    .line 190
    .line 191
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 192
    .line 193
    iget-boolean p1, p1, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 194
    .line 195
    if-eqz p1, :cond_5

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_5
    const/16 p1, 0x210

    .line 199
    .line 200
    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 201
    .line 202
    goto :goto_5

    .line 203
    :cond_6
    :goto_4
    const/16 p1, 0x1210

    .line 204
    .line 205
    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 206
    .line 207
    :goto_5
    iget-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 208
    .line 209
    iget p1, p1, Lcom/android/server/pm/PackageManagerService;->mDefParseFlags:I

    .line 210
    .line 211
    or-int/lit8 p1, p1, 0x10

    .line 212
    .line 213
    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 214
    .line 215
    iget p1, p0, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 216
    .line 217
    const/high16 p2, 0x10000

    .line 218
    .line 219
    or-int/2addr p1, p2

    .line 220
    iput p1, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    .line 221
    .line 222
    const/4 p1, -0x2

    .line 223
    const/4 p2, 0x4

    .line 224
    const-string/jumbo p3, "package-parsing-thread"

    .line 225
    .line 226
    .line 227
    invoke-static {p2, p3, p1}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    iput-object p1, p0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 232
    .line 233
    return-void
.end method


# virtual methods
.method public getSystemScanFlags()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    .line 2
    .line 3
    return p0
.end method

.method public final initNonSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;[IJ)V
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    const-string v0, "PackageManager"

    .line 4
    .line 5
    const-string v1, "!@Boot_EBS_F: boot_progress_pms_data_scan_start"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/16 v0, 0xc08

    .line 11
    .line 12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-static {v0, v1, v2}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 17
    .line 18
    .line 19
    iget v0, v8, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 20
    .line 21
    const/16 v1, 0x1000

    .line 22
    .line 23
    and-int/2addr v0, v1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    :try_start_0
    iget-object v0, v8, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    .line 35
    .line 36
    .line 37
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :try_start_1
    new-instance v0, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda0;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1, v0}, Ljava/nio/file/DirectoryStream;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    :try_start_2
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    goto :goto_1

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    move-object v2, v0

    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    :try_start_3
    invoke-interface {v1}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_1
    move-exception v0

    .line 61
    move-object v1, v0

    .line 62
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 66
    :goto_1
    const-string v1, "PackageManager"

    .line 67
    .line 68
    const-string v2, "Failed to walk the app install directory to fix the modes"

    .line 69
    .line 70
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_2
    iget-object v0, v8, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 74
    .line 75
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mAppInstallDir:Ljava/io/File;

    .line 76
    .line 77
    iget v0, v8, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 78
    .line 79
    or-int/lit16 v4, v0, 0x80

    .line 80
    .line 81
    iget-object v6, v8, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 82
    .line 83
    const/4 v7, 0x0

    .line 84
    const/4 v3, 0x0

    .line 85
    move-object/from16 v1, p0

    .line 86
    .line 87
    move-object/from16 v5, p1

    .line 88
    .line 89
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, v8, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_1a

    .line 103
    .line 104
    iget-object v1, v8, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 105
    .line 106
    iget-object v0, v8, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    .line 107
    .line 108
    iget v2, v8, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move-object v3, v0

    .line 114
    check-cast v3, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    add-int/lit8 v0, v0, -0x1

    .line 121
    .line 122
    move v4, v0

    .line 123
    :goto_3
    const/4 v5, 0x0

    .line 124
    const/4 v6, 0x5

    .line 125
    if-ltz v4, :cond_6

    .line 126
    .line 127
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    move-object v7, v0

    .line 132
    check-cast v7, Ljava/lang/String;

    .line 133
    .line 134
    iget-object v9, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 135
    .line 136
    iget-object v0, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 139
    .line 140
    invoke-virtual {v0, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 145
    .line 146
    iget-object v10, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 147
    .line 148
    iget-object v11, v10, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 149
    .line 150
    invoke-virtual {v11, v7}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v11

    .line 154
    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 155
    .line 156
    if-eqz v11, :cond_2

    .line 157
    .line 158
    invoke-virtual {v10, v11}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    if-eqz v12, :cond_2

    .line 163
    .line 164
    iget-object v13, v12, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 165
    .line 166
    invoke-virtual {v13, v11}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v12, v5}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    .line 170
    .line 171
    .line 172
    :cond_2
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 173
    .line 174
    const-string v11, "Updated system package "

    .line 175
    .line 176
    if-nez v0, :cond_3

    .line 177
    .line 178
    const-string v0, " no longer exists; removing its data"

    .line 179
    .line 180
    invoke-static {v11, v7, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    goto :goto_7

    .line 185
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v11, " no longer exists; rescanning package on data"

    .line 194
    .line 195
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v11

    .line 202
    invoke-virtual {v10, v0}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 203
    .line 204
    .line 205
    iget-object v12, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 206
    .line 207
    invoke-virtual {v12, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 208
    .line 209
    .line 210
    move-result-object v12

    .line 211
    if-eqz v12, :cond_4

    .line 212
    .line 213
    iget-object v12, v12, Lcom/android/server/pm/PackageSetting;->pkgState:Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 214
    .line 215
    invoke-virtual {v12, v5}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)V

    .line 216
    .line 217
    .line 218
    :cond_4
    new-instance v12, Ljava/io/File;

    .line 219
    .line 220
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPath()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :try_start_5
    iget-object v13, v9, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 228
    .line 229
    iget-object v0, v13, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_5
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_5 .. :try_end_5} :catch_1

    .line 232
    .line 233
    .line 234
    :try_start_6
    invoke-virtual {v1, v12, v5, v2}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 235
    .line 236
    .line 237
    :try_start_7
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_7
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7 .. :try_end_7} :catch_1

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :catch_1
    move-exception v0

    .line 242
    goto :goto_5

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    move-object v5, v0

    .line 245
    :try_start_8
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :catchall_3
    move-exception v0

    .line 250
    move-object v12, v0

    .line 251
    :try_start_9
    invoke-virtual {v5, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    :goto_4
    throw v5
    :try_end_9
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_9 .. :try_end_9} :catch_1

    .line 255
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v12, "Failed to parse updated, ex-system package: "

    .line 258
    .line 259
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    const-string v5, "PackageManager"

    .line 274
    .line 275
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    :goto_6
    move-object v0, v11

    .line 279
    :goto_7
    iget-object v5, v9, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 280
    .line 281
    invoke-virtual {v5, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    if-eqz v5, :cond_5

    .line 286
    .line 287
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 288
    .line 289
    iget-object v9, v9, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 290
    .line 291
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v7

    .line 295
    if-nez v7, :cond_5

    .line 296
    .line 297
    move-object/from16 v7, p2

    .line 298
    .line 299
    invoke-virtual {v10, v5, v7}, Lcom/android/server/pm/RemovePackageHelper;->removePackageData(Lcom/android/server/pm/PackageSetting;[I)V

    .line 300
    .line 301
    .line 302
    goto :goto_8

    .line 303
    :cond_5
    move-object/from16 v7, p2

    .line 304
    .line 305
    :goto_8
    invoke-static {v6, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    add-int/lit8 v4, v4, -0x1

    .line 309
    .line 310
    goto/16 :goto_3

    .line 311
    .line 312
    :cond_6
    iget-object v0, v8, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 313
    .line 314
    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService;->mFirstBoot:Z

    .line 315
    .line 316
    if-eqz v0, :cond_7

    .line 317
    .line 318
    iget v0, v8, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 319
    .line 320
    or-int/lit16 v0, v0, 0x1080

    .line 321
    .line 322
    iget-object v1, v8, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 323
    .line 324
    iget-object v2, v8, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 325
    .line 326
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 327
    .line 328
    iget-object v4, v3, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    .line 329
    .line 330
    monitor-enter v4

    .line 331
    :try_start_a
    iget-object v3, v3, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mSystemPackages:Ljava/util/Map;

    .line 332
    .line 333
    new-instance v7, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps$$ExternalSyntheticLambda0;

    .line 334
    .line 335
    invoke-direct {v7, v2}, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;)V

    .line 336
    .line 337
    .line 338
    check-cast v3, Landroid/util/ArrayMap;

    .line 339
    .line 340
    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 341
    .line 342
    .line 343
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 344
    const-string/jumbo v2, "package-parsing-thread"

    .line 345
    .line 346
    .line 347
    const/4 v3, -0x2

    .line 348
    const/4 v4, 0x4

    .line 349
    invoke-static {v4, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    iget-object v3, v1, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 354
    .line 355
    new-instance v4, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;

    .line 356
    .line 357
    move-object/from16 v7, p1

    .line 358
    .line 359
    invoke-direct {v4, v1, v0, v7, v2}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/InstallPackageHelper;ILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V

    .line 360
    .line 361
    .line 362
    iget-object v7, v3, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    .line 363
    .line 364
    monitor-enter v7

    .line 365
    :try_start_b
    iget-object v0, v3, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    .line 366
    .line 367
    check-cast v0, Landroid/util/ArrayMap;

    .line 368
    .line 369
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 370
    .line 371
    .line 372
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 373
    iget-object v0, v1, Lcom/android/server/pm/InstallPackageHelper;->mPreloadDuplicateApps:Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;

    .line 374
    .line 375
    iget-object v1, v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mLock:Ljava/lang/Object;

    .line 376
    .line 377
    monitor-enter v1

    .line 378
    :try_start_c
    iget-object v3, v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mDuplicateDataPackages:Ljava/util/Map;

    .line 379
    .line 380
    check-cast v3, Landroid/util/ArrayMap;

    .line 381
    .line 382
    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 383
    .line 384
    .line 385
    iget-object v0, v0, Lcom/samsung/android/server/pm/install/PreloadDuplicateApps;->mSystemPackages:Ljava/util/Map;

    .line 386
    .line 387
    check-cast v0, Landroid/util/ArrayMap;

    .line 388
    .line 389
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 390
    .line 391
    .line 392
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 393
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 394
    .line 395
    .line 396
    goto :goto_9

    .line 397
    :catchall_4
    move-exception v0

    .line 398
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 399
    throw v0

    .line 400
    :catchall_5
    move-exception v0

    .line 401
    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 402
    throw v0

    .line 403
    :catchall_6
    move-exception v0

    .line 404
    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 405
    throw v0

    .line 406
    :cond_7
    :goto_9
    iget-object v1, v8, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 407
    .line 408
    iget-object v2, v8, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 409
    .line 410
    iget-object v3, v8, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    .line 411
    .line 412
    iget v4, v8, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    .line 413
    .line 414
    iget v7, v8, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 415
    .line 416
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    .line 418
    .line 419
    move v9, v5

    .line 420
    :goto_a
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 421
    .line 422
    .line 423
    move-result v0

    .line 424
    if-ge v9, v0, :cond_e

    .line 425
    .line 426
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    check-cast v0, Ljava/lang/String;

    .line 431
    .line 432
    iget-object v10, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 433
    .line 434
    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 435
    .line 436
    iget-object v11, v11, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 437
    .line 438
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v11

    .line 442
    if-eqz v11, :cond_8

    .line 443
    .line 444
    goto/16 :goto_13

    .line 445
    .line 446
    :cond_8
    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v11

    .line 450
    check-cast v11, Ljava/io/File;

    .line 451
    .line 452
    new-instance v12, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v13, "Expected better "

    .line 455
    .line 456
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    const-string v13, " but never showed up; reverting to system"

    .line 463
    .line 464
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v12

    .line 471
    invoke-static {v6, v12}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 472
    .line 473
    .line 474
    iget-object v12, v10, Lcom/android/server/pm/PackageManagerService;->mInitAppsHelper:Lcom/android/server/pm/InitAppsHelper;

    .line 475
    .line 476
    iget-object v12, v12, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 477
    .line 478
    check-cast v12, Ljava/util/ArrayList;

    .line 479
    .line 480
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 481
    .line 482
    .line 483
    move-result v13

    .line 484
    add-int/lit8 v13, v13, -0x1

    .line 485
    .line 486
    :goto_b
    if-ltz v13, :cond_b

    .line 487
    .line 488
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 489
    .line 490
    .line 491
    move-result-object v14

    .line 492
    check-cast v14, Lcom/android/server/pm/ScanPartition;

    .line 493
    .line 494
    invoke-virtual {v14, v11}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPrivApp(Ljava/io/File;)Z

    .line 495
    .line 496
    .line 497
    move-result v15

    .line 498
    if-eqz v15, :cond_9

    .line 499
    .line 500
    const/high16 v12, 0x20000

    .line 501
    .line 502
    or-int/2addr v12, v4

    .line 503
    iget v13, v14, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    .line 504
    .line 505
    or-int/2addr v12, v13

    .line 506
    :goto_c
    move v13, v7

    .line 507
    goto :goto_d

    .line 508
    :cond_9
    invoke-virtual {v14, v11}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsApp(Ljava/io/File;)Z

    .line 509
    .line 510
    .line 511
    move-result v15

    .line 512
    if-eqz v15, :cond_a

    .line 513
    .line 514
    iget v12, v14, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    .line 515
    .line 516
    or-int/2addr v12, v4

    .line 517
    goto :goto_c

    .line 518
    :cond_a
    add-int/lit8 v13, v13, -0x1

    .line 519
    .line 520
    goto :goto_b

    .line 521
    :cond_b
    move v12, v5

    .line 522
    move v13, v12

    .line 523
    :goto_d
    new-instance v14, Landroid/util/Pair;

    .line 524
    .line 525
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 526
    .line 527
    .line 528
    move-result-object v12

    .line 529
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 530
    .line 531
    .line 532
    move-result-object v13

    .line 533
    invoke-direct {v14, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 534
    .line 535
    .line 536
    iget-object v12, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 537
    .line 538
    check-cast v12, Ljava/lang/Integer;

    .line 539
    .line 540
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 541
    .line 542
    .line 543
    move-result v12

    .line 544
    iget-object v13, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 545
    .line 546
    check-cast v13, Ljava/lang/Integer;

    .line 547
    .line 548
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 549
    .line 550
    .line 551
    move-result v13

    .line 552
    const-string v14, "PackageManager"

    .line 553
    .line 554
    if-nez v12, :cond_c

    .line 555
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    .line 557
    .line 558
    const-string v10, "Ignoring unexpected fallback path "

    .line 559
    .line 560
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    goto :goto_13

    .line 574
    :cond_c
    iget-object v15, v10, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 575
    .line 576
    invoke-virtual {v15, v0}, Lcom/android/server/pm/Settings;->enableSystemPackageLPw(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    :try_start_10
    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 580
    .line 581
    iget-object v15, v10, Lcom/android/server/pm/PackageManagerTracedLock;->mLock:Lcom/android/server/pm/PackageManagerTracedLock$RawLock;

    .line 582
    .line 583
    invoke-virtual {v15}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_10
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_10 .. :try_end_10} :catch_2

    .line 584
    .line 585
    .line 586
    :try_start_11
    invoke-virtual {v1, v11, v13, v12}, Lcom/android/server/pm/InstallPackageHelper;->initPackageTracedLI(Ljava/io/File;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 587
    .line 588
    .line 589
    move-result-object v11

    .line 590
    invoke-interface {v11}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    .line 591
    .line 592
    .line 593
    move-result v11

    .line 594
    if-eqz v11, :cond_d

    .line 595
    .line 596
    move-object v11, v3

    .line 597
    check-cast v11, Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 600
    .line 601
    .line 602
    goto :goto_f

    .line 603
    :goto_e
    move-object v11, v0

    .line 604
    goto :goto_10

    .line 605
    :cond_d
    :goto_f
    :try_start_12
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_12
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_12 .. :try_end_12} :catch_2

    .line 606
    .line 607
    .line 608
    goto :goto_13

    .line 609
    :catch_2
    move-exception v0

    .line 610
    goto :goto_12

    .line 611
    :catchall_7
    move-exception v0

    .line 612
    goto :goto_e

    .line 613
    :goto_10
    :try_start_13
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 614
    .line 615
    .line 616
    goto :goto_11

    .line 617
    :catchall_8
    move-exception v0

    .line 618
    move-object v10, v0

    .line 619
    :try_start_14
    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 620
    .line 621
    .line 622
    :goto_11
    throw v11
    :try_end_14
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_14 .. :try_end_14} :catch_2

    .line 623
    :goto_12
    new-instance v10, Ljava/lang/StringBuilder;

    .line 624
    .line 625
    const-string v11, "Failed to parse original system package: "

    .line 626
    .line 627
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v0

    .line 634
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    .line 643
    .line 644
    :goto_13
    add-int/lit8 v9, v9, 0x1

    .line 645
    .line 646
    goto/16 :goto_a

    .line 647
    .line 648
    :cond_e
    iget-object v1, v8, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 649
    .line 650
    iget-object v0, v8, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    .line 651
    .line 652
    iget v2, v8, Lcom/android/server/pm/InitAppsHelper;->mScanFlags:I

    .line 653
    .line 654
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 655
    .line 656
    .line 657
    move-object v3, v0

    .line 658
    check-cast v3, Ljava/util/ArrayList;

    .line 659
    .line 660
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 661
    .line 662
    .line 663
    move-result v0

    .line 664
    add-int/lit8 v0, v0, -0x1

    .line 665
    .line 666
    move v4, v0

    .line 667
    :goto_14
    const-string v0, "android"

    .line 668
    .line 669
    iget-object v6, v1, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 670
    .line 671
    if-ltz v4, :cond_13

    .line 672
    .line 673
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 674
    .line 675
    .line 676
    move-result-object v7

    .line 677
    check-cast v7, Ljava/lang/String;

    .line 678
    .line 679
    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 680
    .line 681
    iget-object v9, v9, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 682
    .line 683
    iget-object v9, v9, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 684
    .line 685
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 686
    .line 687
    .line 688
    move-result v9

    .line 689
    if-eqz v9, :cond_f

    .line 690
    .line 691
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 692
    .line 693
    .line 694
    goto :goto_17

    .line 695
    :cond_f
    iget-object v9, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 696
    .line 697
    iget-object v9, v9, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 698
    .line 699
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    move-result-object v9

    .line 703
    check-cast v9, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 704
    .line 705
    if-nez v9, :cond_10

    .line 706
    .line 707
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    goto :goto_17

    .line 711
    :cond_10
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 712
    .line 713
    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 714
    .line 715
    .line 716
    move-result-object v6

    .line 717
    if-eqz v6, :cond_11

    .line 718
    .line 719
    invoke-virtual {v6, v5}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    .line 720
    .line 721
    .line 722
    move-result v7

    .line 723
    const/4 v10, 0x3

    .line 724
    if-ne v7, v10, :cond_11

    .line 725
    .line 726
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    goto :goto_17

    .line 730
    :cond_11
    :try_start_15
    invoke-virtual {v1, v9, v5, v2}, Lcom/android/server/pm/InstallPackageHelper;->installStubPackageLI(Lcom/android/server/pm/pkg/AndroidPackage;II)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 731
    .line 732
    .line 733
    if-eqz v6, :cond_12

    .line 734
    .line 735
    invoke-virtual {v6, v5, v5, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 736
    .line 737
    .line 738
    goto :goto_15

    .line 739
    :catch_3
    move-exception v0

    .line 740
    goto :goto_16

    .line 741
    :cond_12
    :goto_15
    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_15
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_15 .. :try_end_15} :catch_3

    .line 742
    .line 743
    .line 744
    goto :goto_17

    .line 745
    :goto_16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 746
    .line 747
    const-string v7, "Failed to parse uncompressed system package: "

    .line 748
    .line 749
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 753
    .line 754
    .line 755
    move-result-object v0

    .line 756
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    const-string v6, "PackageManager"

    .line 764
    .line 765
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    .line 767
    .line 768
    :goto_17
    add-int/lit8 v4, v4, -0x1

    .line 769
    .line 770
    goto :goto_14

    .line 771
    :cond_13
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 772
    .line 773
    .line 774
    move-result v1

    .line 775
    add-int/lit8 v1, v1, -0x1

    .line 776
    .line 777
    :goto_18
    if-ltz v1, :cond_14

    .line 778
    .line 779
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 780
    .line 781
    .line 782
    move-result-object v2

    .line 783
    check-cast v2, Ljava/lang/String;

    .line 784
    .line 785
    iget-object v4, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 786
    .line 787
    invoke-virtual {v4, v2}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 788
    .line 789
    .line 790
    move-result-object v4

    .line 791
    const/4 v7, 0x2

    .line 792
    invoke-virtual {v4, v7, v5, v0}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    .line 793
    .line 794
    .line 795
    new-instance v4, Ljava/lang/StringBuilder;

    .line 796
    .line 797
    const-string v7, "Stub disabled; pkg: "

    .line 798
    .line 799
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 800
    .line 801
    .line 802
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    const/4 v4, 0x6

    .line 810
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 811
    .line 812
    .line 813
    add-int/lit8 v1, v1, -0x1

    .line 814
    .line 815
    goto :goto_18

    .line 816
    :cond_14
    sget-object v0, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 817
    .line 818
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 819
    .line 820
    .line 821
    move-result v0

    .line 822
    iget v1, v8, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    .line 823
    .line 824
    sub-int/2addr v0, v1

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 826
    .line 827
    .line 828
    move-result-wide v1

    .line 829
    iget-wide v3, v8, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 830
    .line 831
    sub-long/2addr v1, v3

    .line 832
    sub-long v1, v1, p3

    .line 833
    .line 834
    iget-object v3, v8, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 835
    .line 836
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 837
    .line 838
    iget-object v3, v3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 839
    .line 840
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 841
    .line 842
    .line 843
    move-result v3

    .line 844
    iget v4, v8, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 845
    .line 846
    sub-int/2addr v3, v4

    .line 847
    const-string v4, "!@Boot_EBS_F: Finished scanning non-system apps ("

    .line 848
    .line 849
    const-string v5, " ms), packageCount: "

    .line 850
    .line 851
    invoke-static {v3, v4, v1, v2, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    move-result-object v4

    .line 855
    const-string v5, " , cached: "

    .line 856
    .line 857
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v4

    .line 867
    const-string v6, "PackageManager"

    .line 868
    .line 869
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    .line 871
    .line 872
    new-instance v4, Ljava/lang/StringBuilder;

    .line 873
    .line 874
    const-string v7, "Finished scanning non-system apps. Time: "

    .line 875
    .line 876
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    const-string v7, " ms, packageCount: "

    .line 883
    .line 884
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    .line 886
    .line 887
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 888
    .line 889
    .line 890
    const-string v7, " , timePerPackage: "

    .line 891
    .line 892
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    if-nez v3, :cond_15

    .line 896
    .line 897
    const-wide/16 v9, 0x0

    .line 898
    .line 899
    goto :goto_19

    .line 900
    :cond_15
    int-to-long v9, v3

    .line 901
    div-long v9, v1, v9

    .line 902
    .line 903
    :goto_19
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v4

    .line 916
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    .line 918
    .line 919
    const-string/jumbo v4, "non-system"

    .line 920
    .line 921
    .line 922
    invoke-static {v3, v0, v1, v2, v4}, Lcom/samsung/android/server/pm/PmLog;->logFinishedScanningInfo(IIJLjava/lang/String;)V

    .line 923
    .line 924
    .line 925
    iget-boolean v0, v8, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    .line 926
    .line 927
    if-eqz v0, :cond_16

    .line 928
    .line 929
    if-lez v3, :cond_16

    .line 930
    .line 931
    int-to-long v3, v3

    .line 932
    div-long/2addr v1, v3

    .line 933
    const/16 v0, 0xef

    .line 934
    .line 935
    const/16 v3, 0xe

    .line 936
    .line 937
    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 938
    .line 939
    .line 940
    :cond_16
    iget-object v0, v8, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 941
    .line 942
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 943
    .line 944
    .line 945
    iget-object v0, v8, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 946
    .line 947
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 948
    .line 949
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 950
    .line 951
    iget-object v2, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 952
    .line 953
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 954
    .line 955
    .line 956
    move-result v2

    .line 957
    add-int/lit8 v2, v2, -0x1

    .line 958
    .line 959
    :goto_1a
    if-ltz v2, :cond_19

    .line 960
    .line 961
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 962
    .line 963
    iget-object v4, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 964
    .line 965
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v4

    .line 969
    iget-object v3, v3, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 970
    .line 971
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .line 973
    .line 974
    move-result-object v3

    .line 975
    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 976
    .line 977
    if-nez v3, :cond_18

    .line 978
    .line 979
    iget-object v3, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 980
    .line 981
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-result-object v3

    .line 985
    iget-boolean v4, v1, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    .line 986
    .line 987
    if-eqz v4, :cond_17

    .line 988
    .line 989
    instance-of v4, v3, Lcom/android/server/utils/Watchable;

    .line 990
    .line 991
    if-eqz v4, :cond_17

    .line 992
    .line 993
    iget-object v4, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 994
    .line 995
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    .line 996
    .line 997
    .line 998
    move-result v4

    .line 999
    if-nez v4, :cond_17

    .line 1000
    .line 1001
    check-cast v3, Lcom/android/server/utils/Watchable;

    .line 1002
    .line 1003
    iget-object v4, v1, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/WatchedArrayMap$1;

    .line 1004
    .line 1005
    invoke-interface {v3, v4}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 1006
    .line 1007
    .line 1008
    :cond_17
    invoke-virtual {v1, v1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 1009
    .line 1010
    .line 1011
    :cond_18
    add-int/lit8 v2, v2, -0x1

    .line 1012
    .line 1013
    goto :goto_1a

    .line 1014
    :cond_19
    return-void

    .line 1015
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1016
    .line 1017
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1018
    .line 1019
    const-string v3, "Not all tasks finished before calling close: "

    .line 1020
    .line 1021
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1032
    .line 1033
    .line 1034
    throw v1
.end method

.method public final initSystemApps(Lcom/android/internal/pm/parsing/PackageParser2;Lcom/android/server/utils/WatchedArrayMap;[IJ)Lcom/android/internal/content/om/OverlayConfig;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v8, p2

    .line 4
    .line 5
    const-string/jumbo v1, "scanApexPackages"

    .line 6
    .line 7
    .line 8
    const-wide/32 v2, 0x40000

    .line 9
    .line 10
    .line 11
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v9, v0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 17
    .line 18
    check-cast v1, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->waitForApexService()Landroid/apex/IApexService;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :try_start_2
    iget v11, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 32
    .line 33
    iget v12, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    .line 34
    .line 35
    iget-object v14, v0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    move-object/from16 v13, p1

    .line 38
    .line 39
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/InstallPackageHelper;->scanApexPackages([Landroid/apex/ApexInfo;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 44
    .line 45
    .line 46
    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 47
    .line 48
    check-cast v2, Lcom/android/server/pm/ApexManager$ApexManagerImpl;

    .line 49
    .line 50
    iget-object v4, v2, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->mLock:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v4

    .line 53
    :try_start_3
    invoke-virtual {v2, v1}, Lcom/android/server/pm/ApexManager$ApexManagerImpl;->notifyScanResultLocked(Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    iget-object v9, v0, Lcom/android/server/pm/InitAppsHelper;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 58
    .line 59
    new-instance v10, Ljava/io/File;

    .line 60
    .line 61
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "framework"

    .line 66
    .line 67
    invoke-direct {v10, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 71
    .line 72
    check-cast v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const/4 v11, 0x1

    .line 79
    sub-int/2addr v1, v11

    .line 80
    move v12, v1

    .line 81
    :goto_0
    iget v13, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanFlags:I

    .line 82
    .line 83
    if-ltz v12, :cond_1

    .line 84
    .line 85
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 86
    .line 87
    check-cast v1, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/android/server/pm/ScanPartition;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    if-nez v2, :cond_0

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_0
    invoke-virtual {v1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getOverlayFolder()Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    iget v3, v1, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    .line 107
    .line 108
    or-int v4, v13, v3

    .line 109
    .line 110
    iget-object v7, v1, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 111
    .line 112
    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 113
    .line 114
    move-object/from16 v1, p0

    .line 115
    .line 116
    move-object/from16 v5, p1

    .line 117
    .line 118
    move-object v6, v9

    .line 119
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 120
    .line 121
    .line 122
    :goto_1
    add-int/lit8 v12, v12, -0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_1
    const v1, 0x20001

    .line 126
    .line 127
    .line 128
    or-int v4, v13, v1

    .line 129
    .line 130
    const/4 v7, 0x0

    .line 131
    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 132
    .line 133
    move-object/from16 v1, p0

    .line 134
    .line 135
    move-object v2, v10

    .line 136
    move-object/from16 v5, p1

    .line 137
    .line 138
    move-object v6, v9

    .line 139
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 145
    .line 146
    iget-object v1, v1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 147
    .line 148
    const-string v2, "android"

    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    if-eqz v1, :cond_1e

    .line 155
    .line 156
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 157
    .line 158
    check-cast v1, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 161
    .line 162
    .line 163
    move-result v10

    .line 164
    const/4 v14, 0x0

    .line 165
    :goto_2
    if-ge v14, v10, :cond_3

    .line 166
    .line 167
    iget-object v1, v0, Lcom/android/server/pm/InitAppsHelper;->mDirsToScanAsSystem:Ljava/util/List;

    .line 168
    .line 169
    check-cast v1, Ljava/util/ArrayList;

    .line 170
    .line 171
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    move-object v15, v1

    .line 176
    check-cast v15, Lcom/android/server/pm/ScanPartition;

    .line 177
    .line 178
    invoke-virtual {v15}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-eqz v1, :cond_2

    .line 183
    .line 184
    invoke-virtual {v15}, Landroid/content/pm/PackagePartitions$SystemPartition;->getPrivAppFolder()Ljava/io/File;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    const/high16 v1, 0x20000

    .line 189
    .line 190
    or-int/2addr v1, v13

    .line 191
    iget v3, v15, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    .line 192
    .line 193
    or-int v4, v1, v3

    .line 194
    .line 195
    iget-object v7, v15, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 196
    .line 197
    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 198
    .line 199
    move-object/from16 v1, p0

    .line 200
    .line 201
    move-object/from16 v5, p1

    .line 202
    .line 203
    move-object v6, v9

    .line 204
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 205
    .line 206
    .line 207
    :cond_2
    invoke-virtual {v15}, Landroid/content/pm/PackagePartitions$SystemPartition;->getAppFolder()Ljava/io/File;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    iget v1, v15, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    .line 212
    .line 213
    or-int v4, v13, v1

    .line 214
    .line 215
    iget-object v7, v15, Lcom/android/server/pm/ScanPartition;->apexInfo:Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 216
    .line 217
    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemParseFlags:I

    .line 218
    .line 219
    move-object/from16 v1, p0

    .line 220
    .line 221
    move-object/from16 v5, p1

    .line 222
    .line 223
    move-object v6, v9

    .line 224
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/InitAppsHelper;->scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V

    .line 225
    .line 226
    .line 227
    add-int/lit8 v14, v14, 0x1

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_3
    new-instance v1, Landroid/util/ArrayMap;

    .line 231
    .line 232
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 233
    .line 234
    .line 235
    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 236
    .line 237
    invoke-virtual {v2}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_5

    .line 250
    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 256
    .line 257
    iget-object v4, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 258
    .line 259
    iget-object v5, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexModuleName:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v4, v5}, Lcom/android/server/pm/ApexManager;->getActivePackageNameForApexModuleName(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    iget-object v5, v0, Lcom/android/server/pm/InitAppsHelper;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 266
    .line 267
    invoke-virtual {v5, v4}, Lcom/android/server/pm/ApexManager;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    if-eqz v5, :cond_4

    .line 280
    .line 281
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    check-cast v5, Ljava/lang/String;

    .line 286
    .line 287
    iget-object v6, v3, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->preInstalledApexPath:Ljava/io/File;

    .line 288
    .line 289
    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    goto :goto_3

    .line 293
    :cond_5
    new-instance v2, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;

    .line 294
    .line 295
    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/InitAppsHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InitAppsHelper;Landroid/util/ArrayMap;)V

    .line 296
    .line 297
    .line 298
    invoke-static {v2}, Lcom/android/internal/content/om/OverlayConfig;->initializeSystemInstance(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Lcom/android/internal/content/om/OverlayConfig;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mStubSystemApps:Ljava/util/List;

    .line 303
    .line 304
    iget-object v3, v0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 305
    .line 306
    iget-object v4, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 307
    .line 308
    iget-object v4, v4, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 309
    .line 310
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 311
    .line 312
    .line 313
    move-result v4

    .line 314
    const/4 v5, 0x0

    .line 315
    :goto_4
    if-ge v5, v4, :cond_7

    .line 316
    .line 317
    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 318
    .line 319
    iget-object v6, v6, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 320
    .line 321
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    check-cast v6, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 326
    .line 327
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->isStub()Z

    .line 328
    .line 329
    .line 330
    move-result v7

    .line 331
    if-eqz v7, :cond_6

    .line 332
    .line 333
    invoke-interface {v6}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    move-object v7, v2

    .line 338
    check-cast v7, Ljava/util/ArrayList;

    .line 339
    .line 340
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_7
    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 347
    .line 348
    iget-object v3, v0, Lcom/android/server/pm/InitAppsHelper;->mPossiblyDeletedUpdatedSystemApps:Ljava/util/List;

    .line 349
    .line 350
    iget-object v4, v0, Lcom/android/server/pm/InitAppsHelper;->mExpectingBetter:Landroid/util/ArrayMap;

    .line 351
    .line 352
    iget-object v5, v2, Lcom/android/server/pm/InstallPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 353
    .line 354
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 355
    .line 356
    .line 357
    move-result v6

    .line 358
    if-eqz v6, :cond_8

    .line 359
    .line 360
    const-string v6, "/system/etc/system_to_data_app_list.xml"

    .line 361
    .line 362
    invoke-static {v6}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackages(Ljava/lang/String;)Ljava/util/List;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    goto :goto_5

    .line 367
    :cond_8
    const/4 v6, 0x0

    .line 368
    :goto_5
    iget-object v7, v8, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 369
    .line 370
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 371
    .line 372
    .line 373
    move-result v7

    .line 374
    sub-int/2addr v7, v11

    .line 375
    :goto_6
    if-ltz v7, :cond_11

    .line 376
    .line 377
    iget-object v9, v8, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 378
    .line 379
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v9

    .line 383
    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 384
    .line 385
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    .line 388
    .line 389
    .line 390
    move-result v13

    .line 391
    if-nez v13, :cond_a

    .line 392
    .line 393
    :cond_9
    :goto_7
    move-object/from16 v12, p3

    .line 394
    .line 395
    goto/16 :goto_9

    .line 396
    .line 397
    :cond_a
    iget-object v13, v5, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 398
    .line 399
    iget-object v13, v13, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 400
    .line 401
    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    .line 403
    .line 404
    move-result-object v13

    .line 405
    check-cast v13, Lcom/android/server/pm/pkg/AndroidPackage;

    .line 406
    .line 407
    iget-object v14, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 408
    .line 409
    invoke-virtual {v14, v10}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 410
    .line 411
    .line 412
    move-result-object v14

    .line 413
    const/4 v15, 0x5

    .line 414
    if-eqz v13, :cond_c

    .line 415
    .line 416
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    .line 417
    .line 418
    .line 419
    move-result v16

    .line 420
    if-eqz v16, :cond_b

    .line 421
    .line 422
    goto :goto_7

    .line 423
    :cond_b
    if-eqz v14, :cond_9

    .line 424
    .line 425
    const-string v14, "Expecting better updated system app for "

    .line 426
    .line 427
    const-string v12, "; removing system app.  Last known codePath="

    .line 428
    .line 429
    invoke-static {v14, v10, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    move-result-object v10

    .line 433
    iget-object v12, v9, Lcom/android/server/pm/PackageSetting;->mPathString:Ljava/lang/String;

    .line 434
    .line 435
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v12, ", versionCode="

    .line 439
    .line 440
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    iget-wide v11, v9, Lcom/android/server/pm/PackageSetting;->versionCode:J

    .line 444
    .line 445
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    const-string v11, "; scanned versionCode="

    .line 449
    .line 450
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getLongVersionCode()J

    .line 454
    .line 455
    .line 456
    move-result-wide v11

    .line 457
    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v10

    .line 464
    invoke-static {v15, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget-object v10, v2, Lcom/android/server/pm/InstallPackageHelper;->mRemovePackageHelper:Lcom/android/server/pm/RemovePackageHelper;

    .line 468
    .line 469
    invoke-virtual {v10, v13}, Lcom/android/server/pm/RemovePackageHelper;->removePackage(Lcom/android/server/pm/pkg/AndroidPackage;)V

    .line 470
    .line 471
    .line 472
    iget-object v10, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 473
    .line 474
    iget-object v9, v9, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 475
    .line 476
    invoke-virtual {v4, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    goto :goto_7

    .line 480
    :cond_c
    if-nez v14, :cond_e

    .line 481
    .line 482
    if-eqz v6, :cond_d

    .line 483
    .line 484
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 485
    .line 486
    .line 487
    move-result v11

    .line 488
    if-nez v11, :cond_d

    .line 489
    .line 490
    iget-object v11, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 491
    .line 492
    invoke-interface {v6, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 493
    .line 494
    .line 495
    move-result v11

    .line 496
    if-eqz v11, :cond_d

    .line 497
    .line 498
    const/4 v10, -0x2

    .line 499
    iput v10, v9, Lcom/android/server/pm/SettingBase;->mPkgFlags:I

    .line 500
    .line 501
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 502
    .line 503
    .line 504
    new-instance v10, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    const-string v11, "Don\'t remove this system package "

    .line 507
    .line 508
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    iget-object v9, v9, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 512
    .line 513
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    const-string v9, "; It will be re-installed in data partition."

    .line 517
    .line 518
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v9

    .line 525
    invoke-static {v15, v9}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 526
    .line 527
    .line 528
    goto/16 :goto_7

    .line 529
    .line 530
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    const-string v12, "System package "

    .line 533
    .line 534
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    const-string v10, " no longer exists; its data will be wiped"

    .line 541
    .line 542
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v10

    .line 549
    invoke-static {v15, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 550
    .line 551
    .line 552
    iget-object v10, v2, Lcom/android/server/pm/InstallPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 553
    .line 554
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    .line 555
    .line 556
    .line 557
    move-result-object v10

    .line 558
    new-instance v11, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda6;

    .line 559
    .line 560
    move-object/from16 v12, p3

    .line 561
    .line 562
    invoke-direct {v11, v2, v9, v12}, Lcom/android/server/pm/InstallPackageHelper$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/InstallPackageHelper;Lcom/android/server/pm/PackageSetting;[I)V

    .line 563
    .line 564
    .line 565
    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    .line 567
    .line 568
    goto :goto_9

    .line 569
    :cond_e
    move-object/from16 v12, p3

    .line 570
    .line 571
    iget-object v9, v14, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 572
    .line 573
    if-eqz v9, :cond_10

    .line 574
    .line 575
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 576
    .line 577
    .line 578
    move-result v9

    .line 579
    if-eqz v9, :cond_10

    .line 580
    .line 581
    iget-object v9, v14, Lcom/android/server/pm/PackageSetting;->pkg:Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    .line 582
    .line 583
    if-nez v9, :cond_f

    .line 584
    .line 585
    goto :goto_8

    .line 586
    :cond_f
    iget-object v9, v14, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 587
    .line 588
    iget-object v10, v14, Lcom/android/server/pm/PackageSetting;->mPath:Ljava/io/File;

    .line 589
    .line 590
    invoke-virtual {v4, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    goto :goto_9

    .line 594
    :cond_10
    :goto_8
    move-object v9, v3

    .line 595
    check-cast v9, Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    .line 599
    .line 600
    :goto_9
    add-int/lit8 v7, v7, -0x1

    .line 601
    .line 602
    const/4 v11, 0x1

    .line 603
    goto/16 :goto_6

    .line 604
    .line 605
    :cond_11
    sget-object v2, Lcom/android/server/pm/parsing/PackageCacher;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 606
    .line 607
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    iput v2, v0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    .line 612
    .line 613
    iget-object v2, v0, Lcom/android/server/pm/InitAppsHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 614
    .line 615
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    .line 616
    .line 617
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 618
    .line 619
    .line 620
    new-instance v4, Ljava/util/ArrayList;

    .line 621
    .line 622
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .line 624
    .line 625
    new-instance v5, Ljava/util/ArrayList;

    .line 626
    .line 627
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 628
    .line 629
    .line 630
    iget-object v6, v3, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 631
    .line 632
    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    .line 633
    .line 634
    .line 635
    move-result-object v7

    .line 636
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 637
    .line 638
    .line 639
    move-result-object v7

    .line 640
    :cond_12
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 641
    .line 642
    .line 643
    move-result v8

    .line 644
    if-eqz v8, :cond_1b

    .line 645
    .line 646
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 647
    .line 648
    .line 649
    move-result-object v8

    .line 650
    check-cast v8, Ljava/util/Map$Entry;

    .line 651
    .line 652
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v9

    .line 656
    check-cast v9, Lcom/android/server/pm/SharedUserSetting;

    .line 657
    .line 658
    if-nez v9, :cond_13

    .line 659
    .line 660
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 661
    .line 662
    .line 663
    move-result-object v8

    .line 664
    check-cast v8, Ljava/lang/String;

    .line 665
    .line 666
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    .line 668
    .line 669
    goto :goto_a

    .line 670
    :cond_13
    iget-object v8, v9, Lcom/android/server/pm/SharedUserSetting;->mPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 671
    .line 672
    iget-object v10, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 673
    .line 674
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    .line 675
    .line 676
    .line 677
    move-result v10

    .line 678
    const/4 v11, 0x1

    .line 679
    sub-int/2addr v10, v11

    .line 680
    const/4 v11, 0x0

    .line 681
    :goto_b
    if-ltz v10, :cond_16

    .line 682
    .line 683
    iget-object v12, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 684
    .line 685
    invoke-virtual {v12, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    move-result-object v12

    .line 689
    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 690
    .line 691
    iget-object v13, v3, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 692
    .line 693
    iget-object v12, v12, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 694
    .line 695
    iget-object v13, v13, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 696
    .line 697
    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    .line 699
    .line 700
    move-result-object v12

    .line 701
    if-nez v12, :cond_15

    .line 702
    .line 703
    iget-object v11, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 704
    .line 705
    invoke-virtual {v11, v10}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 706
    .line 707
    .line 708
    move-result-object v11

    .line 709
    iget-boolean v12, v8, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 710
    .line 711
    if-eqz v12, :cond_14

    .line 712
    .line 713
    instance-of v12, v11, Lcom/android/server/utils/Watchable;

    .line 714
    .line 715
    if-eqz v12, :cond_14

    .line 716
    .line 717
    iget-object v12, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 718
    .line 719
    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v12

    .line 723
    if-nez v12, :cond_14

    .line 724
    .line 725
    check-cast v11, Lcom/android/server/utils/Watchable;

    .line 726
    .line 727
    iget-object v12, v8, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    .line 728
    .line 729
    invoke-interface {v11, v12}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 730
    .line 731
    .line 732
    :cond_14
    invoke-virtual {v8, v8}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 733
    .line 734
    .line 735
    const/4 v11, 0x1

    .line 736
    :cond_15
    add-int/lit8 v10, v10, -0x1

    .line 737
    .line 738
    goto :goto_b

    .line 739
    :cond_16
    iget-object v10, v9, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 740
    .line 741
    iget-object v12, v10, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 742
    .line 743
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    .line 744
    .line 745
    .line 746
    move-result v12

    .line 747
    const/4 v13, 0x1

    .line 748
    sub-int/2addr v12, v13

    .line 749
    :goto_c
    if-ltz v12, :cond_19

    .line 750
    .line 751
    iget-object v14, v10, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 752
    .line 753
    invoke-virtual {v14, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 754
    .line 755
    .line 756
    move-result-object v14

    .line 757
    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 758
    .line 759
    iget-object v15, v3, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 760
    .line 761
    iget-object v14, v14, Lcom/android/server/pm/PackageSetting;->mName:Ljava/lang/String;

    .line 762
    .line 763
    iget-object v15, v15, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 764
    .line 765
    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    move-result-object v14

    .line 769
    if-nez v14, :cond_18

    .line 770
    .line 771
    iget-object v11, v10, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 772
    .line 773
    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v11

    .line 777
    iget-boolean v14, v10, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 778
    .line 779
    if-eqz v14, :cond_17

    .line 780
    .line 781
    instance-of v14, v11, Lcom/android/server/utils/Watchable;

    .line 782
    .line 783
    if-eqz v14, :cond_17

    .line 784
    .line 785
    iget-object v14, v10, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 786
    .line 787
    invoke-virtual {v14, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v14

    .line 791
    if-nez v14, :cond_17

    .line 792
    .line 793
    check-cast v11, Lcom/android/server/utils/Watchable;

    .line 794
    .line 795
    iget-object v14, v10, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/WatchedArraySet$1;

    .line 796
    .line 797
    invoke-interface {v11, v14}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 798
    .line 799
    .line 800
    :cond_17
    invoke-virtual {v10, v10}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    .line 801
    .line 802
    .line 803
    move v11, v13

    .line 804
    :cond_18
    add-int/lit8 v12, v12, -0x1

    .line 805
    .line 806
    goto :goto_c

    .line 807
    :cond_19
    if-eqz v11, :cond_1a

    .line 808
    .line 809
    invoke-virtual {v9}, Lcom/android/server/pm/SettingBase;->onChanged$2()V

    .line 810
    .line 811
    .line 812
    :cond_1a
    iget-object v8, v8, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 813
    .line 814
    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    .line 815
    .line 816
    .line 817
    move-result v8

    .line 818
    if-eqz v8, :cond_12

    .line 819
    .line 820
    iget-object v8, v10, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    .line 821
    .line 822
    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    .line 823
    .line 824
    .line 825
    move-result v8

    .line 826
    if-eqz v8, :cond_12

    .line 827
    .line 828
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    .line 830
    .line 831
    goto/16 :goto_a

    .line 832
    .line 833
    :cond_1b
    new-instance v7, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;

    .line 834
    .line 835
    const/4 v8, 0x0

    .line 836
    invoke-direct {v7, v8, v6}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 840
    .line 841
    .line 842
    new-instance v4, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;

    .line 843
    .line 844
    const/4 v6, 0x1

    .line 845
    invoke-direct {v4, v6, v3}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 849
    .line 850
    .line 851
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 852
    .line 853
    .line 854
    move-result-wide v3

    .line 855
    sub-long v3, v3, p4

    .line 856
    .line 857
    iput-wide v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 858
    .line 859
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 860
    .line 861
    iget-object v2, v2, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    .line 862
    .line 863
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 864
    .line 865
    .line 866
    move-result v2

    .line 867
    iput v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 868
    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    .line 870
    .line 871
    const-string v3, "!@Boot_EBS_F: Finished scanning system apps ("

    .line 872
    .line 873
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 874
    .line 875
    .line 876
    iget-wide v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 877
    .line 878
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 879
    .line 880
    .line 881
    const-string v3, " ms), packageCount: "

    .line 882
    .line 883
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 887
    .line 888
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 889
    .line 890
    .line 891
    const-string v3, ", cached: "

    .line 892
    .line 893
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    .line 895
    .line 896
    iget v3, v0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    .line 897
    .line 898
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 899
    .line 900
    .line 901
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 902
    .line 903
    .line 904
    move-result-object v2

    .line 905
    const-string v3, "PackageManager"

    .line 906
    .line 907
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    .line 909
    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    .line 911
    .line 912
    const-string v4, "Finished scanning system apps. Time: "

    .line 913
    .line 914
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 915
    .line 916
    .line 917
    iget-wide v4, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 918
    .line 919
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    const-string v4, " ms, packageCount: "

    .line 923
    .line 924
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    iget v4, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 928
    .line 929
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    const-string v4, " , timePerPackage: "

    .line 933
    .line 934
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    iget v4, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 938
    .line 939
    if-nez v4, :cond_1c

    .line 940
    .line 941
    const-wide/16 v4, 0x0

    .line 942
    .line 943
    goto :goto_d

    .line 944
    :cond_1c
    iget-wide v5, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 945
    .line 946
    int-to-long v7, v4

    .line 947
    div-long v4, v5, v7

    .line 948
    .line 949
    :goto_d
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    const-string v4, " , cached: "

    .line 953
    .line 954
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    .line 956
    .line 957
    iget v4, v0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    .line 958
    .line 959
    invoke-static {v2, v4, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 960
    .line 961
    .line 962
    iget-wide v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 963
    .line 964
    iget v4, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 965
    .line 966
    iget v5, v0, Lcom/android/server/pm/InitAppsHelper;->mCachedSystemApps:I

    .line 967
    .line 968
    const-string/jumbo v6, "system"

    .line 969
    .line 970
    .line 971
    invoke-static {v4, v5, v2, v3, v6}, Lcom/samsung/android/server/pm/PmLog;->logFinishedScanningInfo(IIJLjava/lang/String;)V

    .line 972
    .line 973
    .line 974
    iget-boolean v2, v0, Lcom/android/server/pm/InitAppsHelper;->mIsDeviceUpgrading:Z

    .line 975
    .line 976
    if-eqz v2, :cond_1d

    .line 977
    .line 978
    iget v2, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemPackagesCount:I

    .line 979
    .line 980
    if-lez v2, :cond_1d

    .line 981
    .line 982
    iget-wide v3, v0, Lcom/android/server/pm/InitAppsHelper;->mSystemScanTime:J

    .line 983
    .line 984
    int-to-long v5, v2

    .line 985
    div-long/2addr v3, v5

    .line 986
    const/16 v0, 0xef

    .line 987
    .line 988
    const/16 v2, 0xf

    .line 989
    .line 990
    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 991
    .line 992
    .line 993
    :cond_1d
    return-object v1

    .line 994
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 995
    .line 996
    const-string v1, "Failed to load frameworks package; check log for warnings"

    .line 997
    .line 998
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    throw v0

    .line 1002
    :catchall_0
    move-exception v0

    .line 1003
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1004
    throw v0

    .line 1005
    :catchall_1
    move-exception v0

    .line 1006
    goto :goto_e

    .line 1007
    :catch_0
    move-exception v0

    .line 1008
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1009
    .line 1010
    const-string v4, "Unable to retrieve packages from apexservice: "

    .line 1011
    .line 1012
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v4

    .line 1019
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v1

    .line 1026
    const-string v4, "ApexManager"

    .line 1027
    .line 1028
    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .line 1030
    .line 1031
    new-instance v1, Ljava/lang/RuntimeException;

    .line 1032
    .line 1033
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 1034
    .line 1035
    .line 1036
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1037
    :goto_e
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1038
    .line 1039
    .line 1040
    throw v0
.end method

.method public final scanDirTracedLI(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "scanDir ["

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "]"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/32 v1, 0x40000

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/high16 v0, 0x800000

    .line 32
    .line 33
    and-int/2addr v0, p3

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    move v0, p2

    .line 37
    or-int/lit16 v0, v0, 0x200

    .line 38
    .line 39
    :goto_0
    move v5, v0

    .line 40
    move-object v0, p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move v0, p2

    .line 43
    goto :goto_0

    .line 44
    :goto_1
    :try_start_0
    iget-object v3, v0, Lcom/android/server/pm/InitAppsHelper;->mInstallPackageHelper:Lcom/android/server/pm/InstallPackageHelper;

    .line 45
    .line 46
    move-object v4, p1

    .line 47
    move v6, p3

    .line 48
    move-object v7, p4

    .line 49
    move-object v8, p5

    .line 50
    move-object/from16 v9, p6

    .line 51
    .line 52
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/pm/InstallPackageHelper;->installPackagesFromDir(Ljava/io/File;IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;Lcom/android/server/pm/ApexManager$ActiveApexInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 61
    .line 62
    .line 63
    throw v0
.end method
