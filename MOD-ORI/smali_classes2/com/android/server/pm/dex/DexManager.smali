.class public final Lcom/android/server/pm/dex/DexManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mBatteryManager:Landroid/os/BatteryManager;

.field public final mContext:Landroid/content/Context;

.field public final mCriticalBatteryLevel:I

.field public final mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

.field public final mPackageCodeLocationsCache:Ljava/util/Map;

.field public final mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DexManager"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageDexOptimizer;Lcom/android/server/pm/dex/DynamicCodeLogger;Landroid/content/pm/IPackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mBatteryManager:Landroid/os/BatteryManager;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 17
    .line 18
    new-instance p2, Lcom/android/server/pm/dex/PackageDexUsage;

    .line 19
    .line 20
    invoke-direct {p2}, Lcom/android/server/pm/dex/PackageDexUsage;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const-class p2, Landroid/os/PowerManager;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Landroid/os/PowerManager;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/pm/dex/DexManager;->mPowerManager:Landroid/os/PowerManager;

    .line 38
    .line 39
    if-nez p2, :cond_0

    .line 40
    .line 41
    const-string p2, "DexManager"

    .line 42
    .line 43
    const-string p3, "Power Manager is unavailable at time of Dex Manager start"

    .line 44
    .line 45
    invoke-static {p2, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const p2, 0x10e005e

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput p1, p0, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/android/server/pm/dex/DexManager;->mCriticalBatteryLevel:I

    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method public static auditUncompressedDexInApk(Ljava/lang/String;)Z
    .locals 12

    .line 1
    const-string v0, "DexManager"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    new-instance v3, Landroid/util/jar/StrictJarFile;

    .line 6
    .line 7
    invoke-direct {v3, p0, v1, v1}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    .line 9
    .line 10
    :try_start_1
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v4, 0x1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    if-eqz v5, :cond_2

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 26
    .line 27
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const-string v7, ".dex"

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getMethod()I

    .line 40
    .line 41
    .line 42
    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    const-string v7, "APK "

    .line 44
    .line 45
    if-eqz v6, :cond_1

    .line 46
    .line 47
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v6, " has compressed dex code "

    .line 59
    .line 60
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :goto_1
    move v4, v1

    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    move-object v2, v3

    .line 81
    goto :goto_3

    .line 82
    :catch_0
    move-object v2, v3

    .line 83
    goto :goto_2

    .line 84
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getDataOffset()J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    const-wide/16 v10, 0x3

    .line 89
    .line 90
    and-long/2addr v8, v10

    .line 91
    const-wide/16 v10, 0x0

    .line 92
    .line 93
    cmp-long v6, v8, v10

    .line 94
    .line 95
    if-eqz v6, :cond_0

    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v6, " has unaligned dex code "

    .line 109
    .line 110
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 129
    .line 130
    .line 131
    :catch_1
    return v4

    .line 132
    :catchall_1
    move-exception p0

    .line 133
    goto :goto_3

    .line 134
    :catch_2
    :goto_2
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    const-string v4, "Error when parsing APK "

    .line 140
    .line 141
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 152
    .line 153
    .line 154
    if-eqz v2, :cond_3

    .line 155
    .line 156
    :try_start_5
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 157
    .line 158
    .line 159
    :catch_3
    :cond_3
    return v1

    .line 160
    :goto_3
    if-eqz v2, :cond_4

    .line 161
    .line 162
    :try_start_6
    invoke-virtual {v2}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 163
    .line 164
    .line 165
    :catch_4
    :cond_4
    throw p0
.end method


# virtual methods
.method public final cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 5
    .line 6
    new-instance v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 7
    .line 8
    invoke-direct {v1, p3, p1, p2}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;-><init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object v1, p0

    .line 21
    :goto_0
    check-cast v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 22
    .line 23
    iput-object p2, v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mBaseCodePath:Ljava/lang/String;

    .line 24
    .line 25
    iget-object p0, v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    .line 26
    .line 27
    check-cast p0, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    array-length p1, p3

    .line 36
    move p2, p0

    .line 37
    :goto_1
    if-ge p2, p1, :cond_1

    .line 38
    .line 39
    aget-object v2, p3, p2

    .line 40
    .line 41
    iget-object v3, v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mSplitCodePaths:Ljava/util/Set;

    .line 42
    .line 43
    check-cast v3, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-eqz p4, :cond_4

    .line 52
    .line 53
    array-length p1, p4

    .line 54
    :goto_2
    if-ge p0, p1, :cond_4

    .line 55
    .line 56
    aget-object p2, p4, p0

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    iget-object p3, v1, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mAppDataDirs:Ljava/util/Map;

    .line 61
    .line 62
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    new-instance v3, Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 69
    .line 70
    .line 71
    check-cast p3, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-virtual {p3, v2, v3}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    if-nez p3, :cond_2

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    move-object v3, p3

    .line 81
    :goto_3
    check-cast v3, Ljava/util/Set;

    .line 82
    .line 83
    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_4

    .line 91
    :cond_4
    monitor-exit v0

    .line 92
    return-void

    .line 93
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    throw p0
.end method

.method public hasInfoOnPackage(Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDexUsage;->getPackageUseInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final load(Ljava/util/Map;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/DexManager;->loadInternal(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_1
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 12
    .line 13
    check-cast p0, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    const-string p0, "DexManager"

    .line 20
    .line 21
    const-string v0, "Exception while loading. Starting with a fresh state."

    .line 22
    .line 23
    invoke-static {p0, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw p0
.end method

.method public final loadInternal(Ljava/util/Map;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    check-cast p1, Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_4

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    if-eqz v5, :cond_0

    .line 60
    .line 61
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    move-object v12, v5

    .line 66
    check-cast v12, Landroid/content/pm/PackageInfo;

    .line 67
    .line 68
    iget-object v5, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 69
    .line 70
    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 71
    .line 72
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 75
    .line 76
    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    iget-object v6, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 85
    .line 86
    move-object v5, p0

    .line 87
    move v10, v11

    .line 88
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 89
    .line 90
    .line 91
    iget-object v5, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v6, Ljava/util/HashSet;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    if-nez v5, :cond_2

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    move-object v6, v5

    .line 106
    :goto_1
    check-cast v6, Ljava/util/Set;

    .line 107
    .line 108
    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    iget-object v5, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 112
    .line 113
    new-instance v6, Ljava/util/HashSet;

    .line 114
    .line 115
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    if-nez v5, :cond_3

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    move-object v6, v5

    .line 126
    :goto_2
    check-cast v6, Ljava/util/Set;

    .line 127
    .line 128
    iget-object v5, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 129
    .line 130
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 131
    .line 132
    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    iget-object v5, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 136
    .line 137
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 138
    .line 139
    if-eqz v5, :cond_1

    .line 140
    .line 141
    invoke-static {v6, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_4
    const/4 p0, 0x0

    .line 146
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/server/pm/AbstractStatsBase;->read(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 147
    .line 148
    .line 149
    new-instance p0, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/pm/dex/PackageDexUsage;->syncData(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :catch_0
    move-exception p0

    .line 159
    iget-object p1, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 160
    .line 161
    monitor-enter p1

    .line 162
    :try_start_1
    iget-object v0, v0, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 163
    .line 164
    check-cast v0, Ljava/util/HashMap;

    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    .line 168
    .line 169
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    const-string p1, "DexManager"

    .line 171
    .line 172
    const-string v0, "Exception while loading package dex usage. Starting with a fresh state."

    .line 173
    .line 174
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .line 176
    .line 177
    :goto_3
    return-void

    .line 178
    :catchall_0
    move-exception p0

    .line 179
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    throw p0
.end method

.method public notifyDexLoadInternal(Landroid/content/pm/ApplicationInfo;Ljava/util/Map;Ljava/lang/String;IZ)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move/from16 v10, p4

    .line 8
    .line 9
    const/4 v11, 0x1

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const-string v0, "DexManager"

    .line 20
    .line 21
    const-string v1, "Bad call to notifyDexLoad: class loaders list is empty"

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z

    .line 28
    .line 29
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 30
    .line 31
    array-length v4, v0

    .line 32
    const/4 v5, 0x0

    .line 33
    :goto_0
    if-ge v5, v4, :cond_2b

    .line 34
    .line 35
    aget-object v6, v0, v5

    .line 36
    .line 37
    invoke-static {v6}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2a

    .line 46
    .line 47
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 48
    .line 49
    if-eqz p5, :cond_2

    .line 50
    .line 51
    const-string v4, "..isolated"

    .line 52
    .line 53
    invoke-static {v0, v4}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_2
    move-object v13, v0

    .line 58
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_29

    .line 71
    .line 72
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    move-object v15, v0

    .line 77
    check-cast v15, Ljava/util/Map$Entry;

    .line 78
    .line 79
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    move-object v9, v0

    .line 84
    check-cast v9, Ljava/lang/String;

    .line 85
    .line 86
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 89
    .line 90
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 91
    .line 92
    new-instance v6, Ljava/util/HashSet;

    .line 93
    .line 94
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v7, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 103
    .line 104
    .line 105
    if-eqz v5, :cond_3

    .line 106
    .line 107
    array-length v8, v5

    .line 108
    const/4 v12, 0x0

    .line 109
    :goto_2
    if-ge v12, v8, :cond_3

    .line 110
    .line 111
    move/from16 p2, v8

    .line 112
    .line 113
    aget-object v8, v5, v12

    .line 114
    .line 115
    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    add-int/2addr v12, v11

    .line 119
    move/from16 v8, p2

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_3
    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    new-instance v12, Ljava/util/HashSet;

    .line 129
    .line 130
    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v7, v8, v12}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    if-nez v8, :cond_4

    .line 138
    .line 139
    goto :goto_3

    .line 140
    :cond_4
    move-object v12, v8

    .line 141
    :goto_3
    check-cast v12, Ljava/util/Set;

    .line 142
    .line 143
    invoke-interface {v12, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Ljava/util/Set;

    .line 155
    .line 156
    const/4 v7, 0x3

    .line 157
    const/4 v8, 0x2

    .line 158
    if-nez v5, :cond_6

    .line 159
    .line 160
    :cond_5
    const/4 v4, 0x0

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    if-eqz v4, :cond_7

    .line 167
    .line 168
    move v4, v11

    .line 169
    goto :goto_4

    .line 170
    :cond_7
    invoke-virtual {v6, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v4

    .line 174
    if-eqz v4, :cond_8

    .line 175
    .line 176
    move v4, v8

    .line 177
    goto :goto_4

    .line 178
    :cond_8
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-eqz v5, :cond_5

    .line 187
    .line 188
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    check-cast v5, Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-eqz v5, :cond_9

    .line 199
    .line 200
    move v4, v7

    .line 201
    :goto_4
    const/4 v12, 0x0

    .line 202
    if-eqz v4, :cond_a

    .line 203
    .line 204
    new-instance v5, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    .line 205
    .line 206
    invoke-direct {v5, v0, v4}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Ljava/lang/String;I)V

    .line 207
    .line 208
    .line 209
    :goto_5
    move-object v0, v5

    .line 210
    :goto_6
    const/4 v7, 0x0

    .line 211
    goto/16 :goto_a

    .line 212
    .line 213
    :cond_a
    iget-object v4, v1, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 214
    .line 215
    monitor-enter v4

    .line 216
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageCodeLocationsCache:Ljava/util/Map;

    .line 217
    .line 218
    check-cast v0, Ljava/util/HashMap;

    .line 219
    .line 220
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    if-eqz v5, :cond_c

    .line 233
    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    check-cast v5, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;

    .line 239
    .line 240
    invoke-virtual {v5, v10, v9}, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->searchDex(ILjava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    if-eqz v6, :cond_b

    .line 245
    .line 246
    new-instance v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    .line 247
    .line 248
    iget-object v5, v5, Lcom/android/server/pm/dex/DexManager$PackageCodeLocations;->mPackageName:Ljava/lang/String;

    .line 249
    .line 250
    invoke-direct {v0, v5, v6}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Ljava/lang/String;I)V

    .line 251
    .line 252
    .line 253
    monitor-exit v4

    .line 254
    goto :goto_6

    .line 255
    :catchall_0
    move-exception v0

    .line 256
    goto/16 :goto_17

    .line 257
    .line 258
    :cond_c
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 260
    .line 261
    const-string v4, "android"

    .line 262
    .line 263
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    if-eqz v0, :cond_10

    .line 268
    .line 269
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-static {v0}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    const-string v4, "/apex/"

    .line 278
    .line 279
    invoke-virtual {v9, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 280
    .line 281
    .line 282
    move-result v4

    .line 283
    if-eqz v4, :cond_d

    .line 284
    .line 285
    goto :goto_8

    .line 286
    :cond_d
    const/4 v4, 0x0

    .line 287
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    if-ge v4, v5, :cond_f

    .line 292
    .line 293
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    check-cast v5, Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 298
    .line 299
    invoke-virtual {v5, v9}, Landroid/content/pm/PackagePartitions$SystemPartition;->containsPath(Ljava/lang/String;)Z

    .line 300
    .line 301
    .line 302
    move-result v5

    .line 303
    if-eqz v5, :cond_e

    .line 304
    .line 305
    :goto_8
    new-instance v5, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    .line 306
    .line 307
    const-string v0, "android"

    .line 308
    .line 309
    invoke-direct {v5, v0, v7}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Ljava/lang/String;I)V

    .line 310
    .line 311
    .line 312
    goto :goto_5

    .line 313
    :cond_e
    add-int/2addr v4, v11

    .line 314
    goto :goto_7

    .line 315
    :cond_f
    const-string v0, "DexManager"

    .line 316
    .line 317
    const-string v4, "System server loads dex files outside paths supported for odex: "

    .line 318
    .line 319
    invoke-virtual {v4, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    :cond_10
    sget-boolean v0, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    .line 327
    .line 328
    if-eqz v0, :cond_11

    .line 329
    .line 330
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 331
    .line 332
    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    sget-boolean v4, Lcom/android/server/pm/PackageManagerServiceUtils;->DEBUG:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    .line 337
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-static {v0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    :try_start_3
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    if-nez v4, :cond_11

    .line 350
    .line 351
    const-string v4, "DexManager"

    .line 352
    .line 353
    new-instance v5, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v6, "Dex loaded with symlink. dexPath="

    .line 359
    .line 360
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    const-string v6, " dexPathReal="

    .line 367
    .line 368
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    goto :goto_9

    .line 382
    :catch_0
    move-exception v0

    .line 383
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 388
    :catch_1
    :cond_11
    :goto_9
    new-instance v5, Lcom/android/server/pm/dex/DexManager$DexSearchResult;

    .line 389
    .line 390
    const/4 v7, 0x0

    .line 391
    invoke-direct {v5, v12, v7}, Lcom/android/server/pm/dex/DexManager$DexSearchResult;-><init>(Ljava/lang/String;I)V

    .line 392
    .line 393
    .line 394
    move-object v0, v5

    .line 395
    :goto_a
    sget-boolean v4, Lcom/android/server/pm/dex/DexManager;->DEBUG:Z

    .line 396
    .line 397
    if-eqz v4, :cond_12

    .line 398
    .line 399
    const-string v5, "DexManager"

    .line 400
    .line 401
    new-instance v6, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v7, " loads from "

    .line 410
    .line 411
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v7, " : "

    .line 418
    .line 419
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string v7, " : "

    .line 426
    .line 427
    invoke-static {v6, v7, v9, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    :cond_12
    iget v5, v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I

    .line 431
    .line 432
    if-eqz v5, :cond_27

    .line 433
    .line 434
    iget-object v4, v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    .line 435
    .line 436
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    xor-int/2addr v4, v11

    .line 441
    iget v5, v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOutcome:I

    .line 442
    .line 443
    if-eq v5, v11, :cond_14

    .line 444
    .line 445
    if-ne v5, v8, :cond_13

    .line 446
    .line 447
    goto :goto_b

    .line 448
    :cond_13
    const/16 v17, 0x0

    .line 449
    .line 450
    goto :goto_c

    .line 451
    :cond_14
    :goto_b
    move/from16 v17, v11

    .line 452
    .line 453
    :goto_c
    if-eqz v17, :cond_15

    .line 454
    .line 455
    if-nez v4, :cond_15

    .line 456
    .line 457
    iget-object v4, v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    .line 458
    .line 459
    const-string v5, "android"

    .line 460
    .line 461
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v4

    .line 465
    if-nez v4, :cond_15

    .line 466
    .line 467
    goto/16 :goto_1

    .line 468
    .line 469
    :cond_15
    if-nez v17, :cond_16

    .line 470
    .line 471
    iget-object v8, v1, Lcom/android/server/pm/dex/DexManager;->mDynamicCodeLogger:Lcom/android/server/pm/dex/DynamicCodeLogger;

    .line 472
    .line 473
    iget-object v7, v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    .line 474
    .line 475
    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 476
    .line 477
    iget-object v4, v8, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 478
    .line 479
    const/16 v5, 0x44

    .line 480
    .line 481
    move-object/from16 v18, v6

    .line 482
    .line 483
    move/from16 v6, p4

    .line 484
    .line 485
    const/16 v16, 0x0

    .line 486
    .line 487
    move-object v11, v8

    .line 488
    move-object v8, v9

    .line 489
    move-object/from16 v19, v9

    .line 490
    .line 491
    move-object/from16 v9, v18

    .line 492
    .line 493
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->record(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 494
    .line 495
    .line 496
    move-result v4

    .line 497
    if-eqz v4, :cond_17

    .line 498
    .line 499
    iget-object v4, v11, Lcom/android/server/pm/dex/DynamicCodeLogger;->mPackageDynamicCodeLoading:Lcom/android/server/pm/dex/PackageDynamicCodeLoading;

    .line 500
    .line 501
    invoke-virtual {v4, v12}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    goto :goto_d

    .line 505
    :cond_16
    move-object/from16 v19, v9

    .line 506
    .line 507
    const/16 v16, 0x0

    .line 508
    .line 509
    :cond_17
    :goto_d
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v4

    .line 513
    check-cast v4, Ljava/lang/String;

    .line 514
    .line 515
    iget-object v5, v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    .line 516
    .line 517
    const-string v6, "android"

    .line 518
    .line 519
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result v5

    .line 523
    if-eqz v4, :cond_28

    .line 524
    .line 525
    invoke-static {v4}, Ldalvik/system/VMRuntime;->isValidClassLoaderContext(Ljava/lang/String;)Z

    .line 526
    .line 527
    .line 528
    move-result v6

    .line 529
    if-eqz v6, :cond_28

    .line 530
    .line 531
    iget-object v6, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 532
    .line 533
    iget-object v0, v0, Lcom/android/server/pm/dex/DexManager$DexSearchResult;->mOwningPackageName:Ljava/lang/String;

    .line 534
    .line 535
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 536
    .line 537
    .line 538
    const-string v7, "Trying to change ownerUserId for  dex path "

    .line 539
    .line 540
    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 541
    .line 542
    array-length v9, v8

    .line 543
    move/from16 v11, v16

    .line 544
    .line 545
    :goto_e
    if-ge v11, v9, :cond_26

    .line 546
    .line 547
    aget-object v15, v8, v11

    .line 548
    .line 549
    invoke-static {v15}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    .line 550
    .line 551
    .line 552
    move-result-object v15

    .line 553
    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .line 555
    .line 556
    move-result v15

    .line 557
    if-eqz v15, :cond_25

    .line 558
    .line 559
    const-string v8, "=UnsupportedClassLoaderContext="

    .line 560
    .line 561
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 562
    .line 563
    .line 564
    move-result v8

    .line 565
    if-eqz v8, :cond_18

    .line 566
    .line 567
    const-string v0, "PackageDexUsage"

    .line 568
    .line 569
    const-string v4, "Unsupported context?"

    .line 570
    .line 571
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    move/from16 v7, v16

    .line 575
    .line 576
    goto/16 :goto_14

    .line 577
    .line 578
    :cond_18
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 579
    .line 580
    .line 581
    move-result v8

    .line 582
    const/4 v9, 0x1

    .line 583
    xor-int/2addr v8, v9

    .line 584
    iget-object v15, v6, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 585
    .line 586
    monitor-enter v15

    .line 587
    :try_start_4
    iget-object v9, v6, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 588
    .line 589
    check-cast v9, Ljava/util/HashMap;

    .line 590
    .line 591
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    check-cast v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 596
    .line 597
    if-nez v9, :cond_1c

    .line 598
    .line 599
    new-instance v5, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 600
    .line 601
    invoke-direct {v5, v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;-><init>(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    if-eqz v17, :cond_1a

    .line 605
    .line 606
    iget-object v4, v5, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mPrimaryCodePaths:Ljava/util/Map;

    .line 607
    .line 608
    check-cast v4, Ljava/util/HashMap;

    .line 609
    .line 610
    move-object/from16 v11, v19

    .line 611
    .line 612
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    .line 614
    .line 615
    move-result-object v4

    .line 616
    check-cast v4, Ljava/util/Set;

    .line 617
    .line 618
    if-nez v4, :cond_19

    .line 619
    .line 620
    new-instance v4, Ljava/util/HashSet;

    .line 621
    .line 622
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 623
    .line 624
    .line 625
    iget-object v7, v5, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mPrimaryCodePaths:Ljava/util/Map;

    .line 626
    .line 627
    check-cast v7, Ljava/util/HashMap;

    .line 628
    .line 629
    invoke-virtual {v7, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    .line 631
    .line 632
    :cond_19
    invoke-interface {v4, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    goto :goto_f

    .line 636
    :cond_1a
    move-object/from16 v11, v19

    .line 637
    .line 638
    new-instance v7, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 639
    .line 640
    invoke-direct {v7, v8, v10, v4, v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 641
    .line 642
    .line 643
    iget-object v4, v5, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    .line 644
    .line 645
    check-cast v4, Ljava/util/HashMap;

    .line 646
    .line 647
    invoke-virtual {v4, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    .line 649
    .line 650
    iget-object v4, v7, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 651
    .line 652
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v7

    .line 656
    if-nez v7, :cond_1b

    .line 657
    .line 658
    check-cast v4, Ljava/util/HashSet;

    .line 659
    .line 660
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v4

    .line 664
    :cond_1b
    :goto_f
    iget-object v4, v6, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 665
    .line 666
    check-cast v4, Ljava/util/HashMap;

    .line 667
    .line 668
    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    .line 670
    .line 671
    monitor-exit v15

    .line 672
    :goto_10
    const/4 v7, 0x1

    .line 673
    goto/16 :goto_14

    .line 674
    .line 675
    :catchall_1
    move-exception v0

    .line 676
    goto/16 :goto_15

    .line 677
    .line 678
    :cond_1c
    move-object/from16 v11, v19

    .line 679
    .line 680
    if-eqz v17, :cond_1e

    .line 681
    .line 682
    iget-object v0, v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mPrimaryCodePaths:Ljava/util/Map;

    .line 683
    .line 684
    check-cast v0, Ljava/util/HashMap;

    .line 685
    .line 686
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v0

    .line 690
    check-cast v0, Ljava/util/Set;

    .line 691
    .line 692
    if-nez v0, :cond_1d

    .line 693
    .line 694
    new-instance v0, Ljava/util/HashSet;

    .line 695
    .line 696
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 697
    .line 698
    .line 699
    iget-object v4, v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mPrimaryCodePaths:Ljava/util/Map;

    .line 700
    .line 701
    check-cast v4, Ljava/util/HashMap;

    .line 702
    .line 703
    invoke-virtual {v4, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    :cond_1d
    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    move-result v7

    .line 710
    monitor-exit v15

    .line 711
    goto :goto_14

    .line 712
    :cond_1e
    new-instance v6, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 713
    .line 714
    invoke-direct {v6, v8, v10, v4, v3}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;-><init>(ZILjava/lang/String;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    iget-object v4, v6, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mLoadingPackages:Ljava/util/Set;

    .line 718
    .line 719
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    if-nez v0, :cond_1f

    .line 724
    .line 725
    check-cast v4, Ljava/util/HashSet;

    .line 726
    .line 727
    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    if-eqz v0, :cond_1f

    .line 732
    .line 733
    const/4 v0, 0x1

    .line 734
    goto :goto_11

    .line 735
    :cond_1f
    move/from16 v0, v16

    .line 736
    .line 737
    :goto_11
    iget-object v4, v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    .line 738
    .line 739
    check-cast v4, Ljava/util/HashMap;

    .line 740
    .line 741
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    .line 743
    .line 744
    move-result-object v4

    .line 745
    check-cast v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;

    .line 746
    .line 747
    if-nez v4, :cond_21

    .line 748
    .line 749
    iget-object v4, v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    .line 750
    .line 751
    check-cast v4, Ljava/util/HashMap;

    .line 752
    .line 753
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 754
    .line 755
    .line 756
    move-result v4

    .line 757
    const/16 v5, 0x64

    .line 758
    .line 759
    if-ge v4, v5, :cond_20

    .line 760
    .line 761
    iget-object v0, v9, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mDexUseInfoMap:Ljava/util/Map;

    .line 762
    .line 763
    check-cast v0, Ljava/util/HashMap;

    .line 764
    .line 765
    invoke-virtual {v0, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    monitor-exit v15

    .line 769
    goto :goto_10

    .line 770
    :cond_20
    monitor-exit v15

    .line 771
    move v7, v0

    .line 772
    goto :goto_14

    .line 773
    :cond_21
    iget v8, v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 774
    .line 775
    if-ne v10, v8, :cond_24

    .line 776
    .line 777
    invoke-static {v4, v6, v5}, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->-$$Nest$mmerge(Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;Z)Z

    .line 778
    .line 779
    .line 780
    move-result v4

    .line 781
    if-nez v4, :cond_23

    .line 782
    .line 783
    if-eqz v0, :cond_22

    .line 784
    .line 785
    goto :goto_12

    .line 786
    :cond_22
    move/from16 v7, v16

    .line 787
    .line 788
    goto :goto_13

    .line 789
    :cond_23
    :goto_12
    const/4 v7, 0x1

    .line 790
    :goto_13
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 791
    :goto_14
    if-eqz v7, :cond_28

    .line 792
    .line 793
    iget-object v0, v1, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 794
    .line 795
    invoke-virtual {v0, v12}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    goto :goto_16

    .line 799
    :cond_24
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 800
    .line 801
    new-instance v1, Ljava/lang/StringBuilder;

    .line 802
    .line 803
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    const-string v2, " from "

    .line 810
    .line 811
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    iget v2, v4, Lcom/android/server/pm/dex/PackageDexUsage$DexUseInfo;->mOwnerUserId:I

    .line 815
    .line 816
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    const-string v2, " to "

    .line 820
    .line 821
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v1

    .line 831
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 832
    .line 833
    .line 834
    throw v0

    .line 835
    :goto_15
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 836
    throw v0

    .line 837
    :cond_25
    move-object/from16 v12, v19

    .line 838
    .line 839
    const/16 v18, 0x1

    .line 840
    .line 841
    add-int/lit8 v11, v11, 0x1

    .line 842
    .line 843
    const/4 v12, 0x0

    .line 844
    goto/16 :goto_e

    .line 845
    .line 846
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 847
    .line 848
    const-string v1, "loaderIsa "

    .line 849
    .line 850
    const-string v2, " is unsupported"

    .line 851
    .line 852
    invoke-static {v1, v3, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 853
    .line 854
    .line 855
    move-result-object v1

    .line 856
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    throw v0

    .line 860
    :cond_27
    move-object v12, v9

    .line 861
    const/16 v16, 0x0

    .line 862
    .line 863
    if-eqz v4, :cond_28

    .line 864
    .line 865
    const-string v0, "DexManager"

    .line 866
    .line 867
    const-string v4, "Could not find owning package for dex file: "

    .line 868
    .line 869
    invoke-static {v4, v12, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    .line 871
    .line 872
    :cond_28
    :goto_16
    const/4 v11, 0x1

    .line 873
    goto/16 :goto_1

    .line 874
    .line 875
    :goto_17
    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 876
    throw v0

    .line 877
    :cond_29
    return-void

    .line 878
    :cond_2a
    move v6, v11

    .line 879
    const/16 v16, 0x0

    .line 880
    .line 881
    add-int/2addr v5, v6

    .line 882
    goto/16 :goto_0

    .line 883
    .line 884
    :cond_2b
    const-string v0, "DexManager"

    .line 885
    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    .line 887
    .line 888
    const-string v2, "Loading dex files "

    .line 889
    .line 890
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 894
    .line 895
    .line 896
    move-result-object v2

    .line 897
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 898
    .line 899
    .line 900
    const-string v2, " in unsupported ISA: "

    .line 901
    .line 902
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    const-string v2, "?"

    .line 909
    .line 910
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    .line 919
    .line 920
    return-void
.end method

.method public final notifyPackageUpdated([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, -0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move-object v3, p1

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/dex/DexManager;->cachePackageCodeLocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 11
    .line 12
    iget-object p3, p1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 13
    .line 14
    monitor-enter p3

    .line 15
    :try_start_0
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage;->mPackageUseInfoMap:Ljava/util/Map;

    .line 16
    .line 17
    check-cast p1, Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    monitor-exit p3

    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mPackageName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->mPrimaryCodePaths:Ljava/util/Map;

    .line 44
    .line 45
    check-cast p1, Ljava/util/HashMap;

    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_2

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/util/Set;

    .line 72
    .line 73
    invoke-interface {v2, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    move p2, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_1
    if-eqz p2, :cond_3

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/pm/dex/DexManager;->mPackageDexUsage:Lcom/android/server/pm/dex/PackageDexUsage;

    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void

    .line 91
    :goto_2
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0
.end method
