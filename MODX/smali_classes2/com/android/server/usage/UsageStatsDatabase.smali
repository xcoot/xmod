.class public final Lcom/android/server/usage/UsageStatsDatabase;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final BACKUP_VERSION:I = 0x4

.field static final MAX_FILES_PER_INTERVAL_TYPE:[I

.field public static final SELECTION_LOG_RETENTION_LEN:I


# instance fields
.field public final mBackupsDir:Ljava/io/File;

.field public final mCal:Lcom/android/server/usage/UnixCalendar;

.field public mCurrentVersion:I

.field public final mIntervalDirs:[Ljava/io/File;

.field public final mLock:Ljava/lang/Object;

.field public mNewUpdate:Z

.field public final mPackageMappingsFile:Ljava/io/File;

.field public final mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

.field final mSortedStatFiles:[Landroid/util/LongSparseArray;

.field public final mUpdateBreadcrumb:Ljava/io/File;

.field public mUpgradePerformed:Z

.field public final mVersionFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    const/16 v2, 0x64

    .line 6
    .line 7
    const/16 v3, 0x32

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [I

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    .line 14
    .line 15
    const-string/jumbo v0, "ro.usagestats.chooser.retention"

    .line 16
    .line 17
    .line 18
    const/16 v1, 0xe

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sput v0, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/usage/PackagesTokenData;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/usage/PackagesTokenData;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    new-array v1, v0, [Ljava/io/File;

    .line 20
    .line 21
    new-instance v2, Ljava/io/File;

    .line 22
    .line 23
    const-string v3, "daily"

    .line 24
    .line 25
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    aput-object v2, v1, v3

    .line 30
    .line 31
    new-instance v2, Ljava/io/File;

    .line 32
    .line 33
    const-string/jumbo v3, "weekly"

    .line 34
    .line 35
    .line 36
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    aput-object v2, v1, v3

    .line 41
    .line 42
    new-instance v2, Ljava/io/File;

    .line 43
    .line 44
    const-string/jumbo v3, "monthly"

    .line 45
    .line 46
    .line 47
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    aput-object v2, v1, v3

    .line 52
    .line 53
    new-instance v2, Ljava/io/File;

    .line 54
    .line 55
    const-string/jumbo v3, "yearly"

    .line 56
    .line 57
    .line 58
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x3

    .line 62
    aput-object v2, v1, v3

    .line 63
    .line 64
    iput-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 65
    .line 66
    iput p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 67
    .line 68
    new-instance p2, Ljava/io/File;

    .line 69
    .line 70
    const-string/jumbo v1, "version"

    .line 71
    .line 72
    .line 73
    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 77
    .line 78
    new-instance p2, Ljava/io/File;

    .line 79
    .line 80
    const-string v1, "backups"

    .line 81
    .line 82
    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 86
    .line 87
    new-instance p2, Ljava/io/File;

    .line 88
    .line 89
    const-string v1, "breadcrumb"

    .line 90
    .line 91
    invoke-direct {p2, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 95
    .line 96
    new-array p2, v0, [Landroid/util/LongSparseArray;

    .line 97
    .line 98
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 99
    .line 100
    new-instance p2, Ljava/io/File;

    .line 101
    .line 102
    const-string/jumbo v0, "mappings"

    .line 103
    .line 104
    .line 105
    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    .line 109
    .line 110
    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    .line 111
    .line 112
    invoke-direct {p1}, Lcom/android/server/usage/UnixCalendar;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 116
    .line 117
    return-void
.end method

.method public static calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/app/usage/UsageStats;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getLastTimePackageUsed()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    cmp-long v1, v1, p2

    .line 28
    .line 29
    if-lez v1, :cond_0

    .line 30
    .line 31
    iget-object v0, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 32
    .line 33
    move-object v1, p1

    .line 34
    check-cast v1, Landroid/util/ArraySet;

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    array-length v1, v0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v1, :cond_1

    .line 10
    .line 11
    aget-object v3, v0, v2

    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 9
    .line 10
    iget-object v1, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/app/usage/EventList;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/app/usage/EventList;->merge(Landroid/app/usage/EventList;)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public static parseBeginTime(Ljava/io/File;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    move v1, v0

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x30

    .line 18
    .line 19
    if-lt v2, v3, :cond_1

    .line 20
    .line 21
    const/16 v3, 0x39

    .line 22
    .line 23
    if-le v2, v3, :cond_0

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    return-wide v0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance v0, Ljava/io/IOException;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public static pruneFilesOlderThan(Ljava/io/File;J)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 6
    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_1

    .line 10
    .line 11
    aget-object v2, p0, v1

    .line 12
    .line 13
    :try_start_0
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    const-wide/16 v3, 0x0

    .line 19
    .line 20
    :goto_1
    cmp-long v3, v3, p1

    .line 21
    .line 22
    if-gez v3, :cond_0

    .line 23
    .line 24
    new-instance v3, Landroid/util/AtomicFile;

    .line 25
    .line 26
    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/util/AtomicFile;->delete()V

    .line 30
    .line 31
    .line 32
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method

.method public static pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ltz v0, :cond_2

    .line 11
    .line 12
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Landroid/app/usage/UsageStats;

    .line 19
    .line 20
    iget-object v4, v3, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/Long;

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    iget-wide v6, v3, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 35
    .line 36
    cmp-long v3, v4, v6

    .line 37
    .line 38
    if-lez v3, :cond_1

    .line 39
    .line 40
    :cond_0
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move v2, v1

    .line 46
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 54
    .line 55
    .line 56
    :cond_3
    iget-object v0, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    sub-int/2addr v0, v1

    .line 63
    :goto_1
    if-ltz v0, :cond_6

    .line 64
    .line 65
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 72
    .line 73
    invoke-virtual {p0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    check-cast v4, Ljava/lang/Long;

    .line 78
    .line 79
    if-eqz v4, :cond_4

    .line 80
    .line 81
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 82
    .line 83
    .line 84
    move-result-wide v4

    .line 85
    iget-wide v6, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 86
    .line 87
    cmp-long v3, v4, v6

    .line 88
    .line 89
    if-lez v3, :cond_5

    .line 90
    .line 91
    :cond_4
    iget-object v2, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    .line 94
    .line 95
    .line 96
    move v2, v1

    .line 97
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_6
    return v2
.end method

.method public static readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    .locals 3

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    move-result-wide v1

    .line 6
    iput-wide v1, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 7
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    move-result p2

    .line 8
    invoke-virtual {p0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    move-result-wide p3

    iput-wide p3, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p2

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 10
    :catch_1
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    .line 11
    const-string p1, "UsageStatsDatabase"

    invoke-static {p1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 12
    throw p0
.end method

.method public static readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    .locals 17

    move-object/from16 v1, p1

    move/from16 v0, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 13
    const-string v5, "UsageStatsDatabase"

    if-eq v0, v4, :cond_1a

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1a

    const/4 v6, 0x3

    if-eq v0, v6, :cond_1a

    const/4 v6, 0x4

    const-string v7, "Unable to read interval stats from proto."

    if-eq v0, v6, :cond_19

    const/4 v6, 0x5

    if-ne v0, v6, :cond_18

    move-object/from16 v8, p0

    move/from16 v9, p4

    .line 14
    :try_start_0
    invoke-static {v8, v1, v9}, Lcom/android/server/usage/UsageStatsProtoV2;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v8, v0

    .line 15
    invoke-static {v5, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :goto_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 17
    iget-object v5, v1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v7, v3

    move v8, v7

    :goto_1
    const/4 v9, 0x0

    if-ge v7, v5, :cond_6

    .line 18
    iget-object v10, v1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 19
    iget-object v11, v1, Lcom/android/server/usage/IntervalStats;->packageStatsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/usage/UsageStats;

    .line 20
    iget-object v12, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v12, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    if-nez v12, :cond_0

    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 23
    :goto_2
    iput-object v9, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 24
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move v8, v4

    move/from16 p0, v5

    goto :goto_7

    .line 25
    :cond_1
    iget-object v9, v11, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v12, v3

    :goto_3
    if-ge v12, v9, :cond_5

    .line 26
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 27
    iget-object v14, v11, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    .line 28
    invoke-virtual {v2, v10, v14}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_2

    move/from16 p0, v5

    goto :goto_6

    .line 29
    :cond_2
    iget-object v15, v11, Landroid/app/usage/UsageStats;->mChooserCountsObfuscated:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseIntArray;

    .line 31
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    :goto_4
    if-ge v3, v6, :cond_4

    .line 32
    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 33
    invoke-virtual {v2, v10, v4}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move/from16 p0, v5

    goto :goto_5

    .line 34
    :cond_3
    invoke-virtual {v15, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v16

    move/from16 p0, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, p0

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    move/from16 p0, v5

    .line 35
    iget-object v3, v11, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v3, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v5, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x5

    goto :goto_3

    :cond_5
    move/from16 p0, v5

    .line 36
    iget-object v3, v1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    iget-object v4, v11, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, p0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x5

    goto/16 :goto_1

    .line 37
    :cond_6
    const-string v3, "IntervalStats"

    if-eqz v8, :cond_7

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to parse usage stats packages: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_7
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 42
    iget-object v4, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v4}, Landroid/app/usage/EventList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, 0x0

    :goto_8
    if-ltz v4, :cond_15

    .line 43
    iget-object v7, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v7, v4}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v7

    .line 44
    iget v10, v7, Landroid/app/usage/UsageEvents$Event;->mPackageToken:I

    .line 45
    iget-object v11, v2, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-nez v11, :cond_8

    move-object v11, v9

    const/4 v12, 0x0

    goto :goto_9

    :cond_8
    const/4 v12, 0x0

    .line 47
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 48
    :goto_9
    iput-object v11, v7, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-nez v11, :cond_9

    .line 49
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v6, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    move v6, v5

    const/4 v13, 0x5

    goto/16 :goto_c

    .line 51
    :cond_9
    iget v11, v7, Landroid/app/usage/UsageEvents$Event;->mClassToken:I

    const/4 v13, -0x1

    if-eq v11, v13, :cond_a

    .line 52
    invoke-virtual {v2, v10, v11}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 53
    :cond_a
    iget v11, v7, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackageToken:I

    if-eq v11, v13, :cond_b

    .line 54
    invoke-virtual {v2, v10, v11}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 55
    :cond_b
    iget v11, v7, Landroid/app/usage/UsageEvents$Event;->mTaskRootClassToken:I

    if-eq v11, v13, :cond_c

    .line 56
    invoke-virtual {v2, v10, v11}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 57
    :cond_c
    iget v11, v7, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v13, 0x5

    if-eq v11, v13, :cond_13

    const/16 v14, 0xc

    const-string v15, " for package "

    if-eq v11, v14, :cond_12

    const/16 v14, 0x1e

    if-eq v11, v14, :cond_11

    const/4 v14, 0x7

    if-eq v11, v14, :cond_e

    const/16 v14, 0x8

    if-eq v11, v14, :cond_d

    goto/16 :goto_c

    .line 58
    :cond_d
    iget v11, v7, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    invoke-virtual {v2, v10, v11}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-nez v11, :cond_14

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Unable to parse shortcut "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v7, Landroid/app/usage/UsageEvents$Event;->mShortcutIdToken:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v6, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    :goto_a
    move v6, v5

    goto/16 :goto_c

    .line 61
    :cond_e
    iget-object v11, v7, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    if-eqz v11, :cond_14

    .line 62
    iget v11, v11, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mCategoryToken:I

    invoke-virtual {v2, v10, v11}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v11

    .line 63
    iget-object v14, v7, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    iget v14, v14, Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;->mActionToken:I

    invoke-virtual {v2, v10, v14}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v10

    .line 64
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    goto :goto_b

    .line 65
    :cond_f
    new-instance v14, Landroid/os/PersistableBundle;

    invoke-direct {v14}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v14, v7, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    .line 66
    const-string v15, "android.app.usage.extra.EVENT_CATEGORY"

    invoke-virtual {v14, v15, v11}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v11, v7, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    const-string v14, "android.app.usage.extra.EVENT_ACTION"

    invoke-virtual {v11, v14, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iput-object v9, v7, Landroid/app/usage/UsageEvents$Event;->mUserInteractionExtrasToken:Landroid/app/usage/UsageEvents$Event$UserInteractionEventExtrasToken;

    goto :goto_c

    .line 69
    :cond_10
    :goto_b
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v6, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto :goto_a

    .line 70
    :cond_11
    iget v11, v7, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    invoke-virtual {v2, v10, v11}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Landroid/app/usage/UsageEvents$Event;->mLocusId:Ljava/lang/String;

    if-nez v11, :cond_14

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Unable to parse locus "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v7, Landroid/app/usage/UsageEvents$Event;->mLocusIdToken:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v6, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto :goto_a

    .line 73
    :cond_12
    iget v11, v7, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    invoke-virtual {v2, v10, v11}, Lcom/android/server/usage/PackagesTokenData;->getString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-nez v11, :cond_14

    .line 74
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Unable to parse notification channel "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v7, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelIdToken:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v6, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v6, v4}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    goto/16 :goto_a

    .line 76
    :cond_13
    iget-object v10, v7, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v10, :cond_14

    .line 77
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    iput-object v10, v7, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    :cond_14
    :goto_c
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_8

    :cond_15
    const/4 v12, 0x0

    if-eqz v6, :cond_16

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse event packages: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    if-nez v8, :cond_17

    if-eqz v6, :cond_1b

    :cond_17
    move v3, v5

    goto :goto_e

    .line 81
    :cond_18
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unhandled UsageStatsDatabase version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " on read."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_19
    move-object/from16 v8, p0

    move v12, v3

    .line 83
    :try_start_1
    invoke-static/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsProto;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 84
    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :cond_1a
    move-object/from16 v8, p0

    move v12, v3

    .line 85
    const-string v2, "Reading UsageStats as XML; database version: "

    .line 86
    invoke-static {v0, v2, v5}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_2
    invoke-static/range {p0 .. p1}, Lcom/android/server/usage/UsageStatsXml;->read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    move-object v1, v0

    .line 88
    const-string v0, "Unable to read interval stats from XML"

    invoke-static {v5, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1b
    :goto_d
    move v3, v12

    :goto_e
    return v3
.end method

.method public static writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 8
    throw p1

    .line 9
    :catch_0
    invoke-virtual {p0, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_0
    return-void
.end method

.method public static writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    .locals 3

    const/4 v0, 0x1

    .line 10
    const-string v1, "UsageStatsDatabase"

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    const-string v2, "Unable to write interval stats to proto."

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 11
    invoke-virtual {p1, p3}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 12
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProtoV2;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    throw p0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unhandled UsageStatsDatabase version: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on write."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 17
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsProto;->write(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 18
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    throw p0

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Attempting to write UsageStats as XML with version "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)Ljava/util/Set;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    const-string/jumbo v0, "usage_stats"

    .line 7
    .line 8
    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_8

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-virtual {v1, v4}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    const/4 v6, 0x2

    .line 28
    invoke-virtual {v1, v6}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    const/4 v8, 0x3

    .line 33
    invoke-virtual {v1, v8}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    new-instance v10, Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_1
    new-instance v11, Ljava/io/DataInputStream;

    .line 43
    .line 44
    new-instance v12, Ljava/io/ByteArrayInputStream;

    .line 45
    .line 46
    move-object/from16 v13, p2

    .line 47
    .line 48
    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 55
    .line 56
    .line 57
    move-result v12

    .line 58
    if-lt v12, v4, :cond_7

    .line 59
    .line 60
    const/4 v13, 0x4

    .line 61
    if-le v12, v13, :cond_0

    .line 62
    .line 63
    goto/16 :goto_7

    .line 64
    .line 65
    :cond_0
    move v13, v0

    .line 66
    :goto_0
    iget-object v14, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 67
    .line 68
    array-length v15, v14

    .line 69
    if-ge v13, v15, :cond_2

    .line 70
    .line 71
    aget-object v14, v14, v13

    .line 72
    .line 73
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 74
    .line 75
    .line 76
    move-result-object v14

    .line 77
    array-length v15, v14

    .line 78
    move v8, v0

    .line 79
    :goto_1
    if-ge v8, v15, :cond_1

    .line 80
    .line 81
    aget-object v16, v14, v8

    .line 82
    .line 83
    invoke-static/range {v16 .. v16}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 84
    .line 85
    .line 86
    add-int/lit8 v8, v8, 0x1

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 90
    .line 91
    const/4 v8, 0x3

    .line 92
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    goto/16 :goto_a

    .line 95
    .line 96
    :catch_0
    move-exception v0

    .line 97
    goto/16 :goto_8

    .line 98
    .line 99
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    .line 101
    .line 102
    move-result-wide v13

    .line 103
    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 104
    .line 105
    move-object/from16 v16, v7

    .line 106
    .line 107
    const-wide/16 v6, 0x5a

    .line 108
    .line 109
    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    sub-long/2addr v13, v6

    .line 114
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    move v7, v0

    .line 119
    :goto_2
    if-ge v7, v6, :cond_3

    .line 120
    .line 121
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    new-array v15, v8, [B

    .line 126
    .line 127
    invoke-virtual {v11, v15, v0, v8}, Ljava/io/DataInputStream;->read([BII)I

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v12, v15}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    invoke-static {v8, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    .line 135
    .line 136
    .line 137
    iget-object v15, v8, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 138
    .line 139
    invoke-virtual {v15}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    invoke-virtual {v10, v15}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 144
    .line 145
    .line 146
    invoke-static {v8, v3}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v0, v8}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v7, v7, 0x1

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    move v6, v0

    .line 160
    :goto_3
    if-ge v6, v3, :cond_4

    .line 161
    .line 162
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    new-array v8, v7, [B

    .line 167
    .line 168
    invoke-virtual {v11, v8, v0, v7}, Ljava/io/DataInputStream;->read([BII)I

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v12, v8}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-static {v7, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    .line 176
    .line 177
    .line 178
    invoke-static {v7, v5}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1, v4, v7}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 182
    .line 183
    .line 184
    add-int/lit8 v6, v6, 0x1

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_4
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    move v4, v0

    .line 192
    :goto_4
    if-ge v4, v3, :cond_5

    .line 193
    .line 194
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    new-array v6, v5, [B

    .line 199
    .line 200
    invoke-virtual {v11, v6, v0, v5}, Ljava/io/DataInputStream;->read([BII)I

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v12, v6}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v5, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    .line 208
    .line 209
    .line 210
    move-object/from16 v6, v16

    .line 211
    .line 212
    invoke-static {v5, v6}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    .line 213
    .line 214
    .line 215
    const/4 v7, 0x2

    .line 216
    invoke-virtual {v1, v7, v5}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 217
    .line 218
    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 220
    .line 221
    move-object/from16 v16, v6

    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_5
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    move v4, v0

    .line 229
    :goto_5
    if-ge v4, v3, :cond_6

    .line 230
    .line 231
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    new-array v6, v5, [B

    .line 236
    .line 237
    invoke-virtual {v11, v6, v0, v5}, Ljava/io/DataInputStream;->read([BII)I

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v12, v6}, Lcom/android/server/usage/UsageStatsDatabase;->deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v5, v10, v13, v14}, Lcom/android/server/usage/UsageStatsDatabase;->calculatePackagesUsedWithinTimeframe(Lcom/android/server/usage/IntervalStats;Ljava/util/Set;J)V

    .line 245
    .line 246
    .line 247
    invoke-static {v5, v9}, Lcom/android/server/usage/UsageStatsDatabase;->mergeStats(Lcom/android/server/usage/IntervalStats;Lcom/android/server/usage/IntervalStats;)Lcom/android/server/usage/IntervalStats;

    .line 248
    .line 249
    .line 250
    const/4 v6, 0x3

    .line 251
    invoke-virtual {v1, v6, v5}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    .line 253
    .line 254
    add-int/lit8 v4, v4, 0x1

    .line 255
    .line 256
    goto :goto_5

    .line 257
    :cond_6
    :goto_6
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 258
    .line 259
    .line 260
    goto :goto_9

    .line 261
    :catchall_1
    move-exception v0

    .line 262
    goto :goto_b

    .line 263
    :cond_7
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 264
    .line 265
    .line 266
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 267
    return-object v10

    .line 268
    :goto_8
    :try_start_3
    const-string v3, "UsageStatsDatabase"

    .line 269
    .line 270
    const-string v4, "Failed to read data from input stream"

    .line 271
    .line 272
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :goto_9
    :try_start_4
    monitor-exit v2

    .line 277
    return-object v10

    .line 278
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 279
    .line 280
    .line 281
    throw v0

    .line 282
    :cond_8
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 283
    .line 284
    monitor-exit v2

    .line 285
    return-object v0

    .line 286
    :goto_b
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 287
    throw v0
.end method

.method public final checkVersionAndBuildLocked()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "\n"

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v4, ";"

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object v5, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v5, "ro.csc.sales_code"

    .line 51
    .line 52
    .line 53
    const-string v6, ""

    .line 54
    .line 55
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v4, "ril.official_cscver"

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    const/4 v4, 0x1

    .line 87
    iput-boolean v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    .line 91
    .line 92
    new-instance v0, Ljava/io/FileReader;

    .line 93
    .line 94
    iget-object v7, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 95
    .line 96
    invoke-direct {v0, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v7

    .line 118
    if-eqz v7, :cond_0

    .line 119
    .line 120
    iput-boolean v5, v1, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    move-object v7, v0

    .line 125
    goto :goto_1

    .line 126
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    .line 128
    .line 129
    move v6, v0

    .line 130
    goto :goto_3

    .line 131
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    move-object v6, v0

    .line 137
    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :goto_2
    throw v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 141
    :catch_0
    move v6, v5

    .line 142
    :goto_3
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 143
    .line 144
    const-string v7, "UsageStatsDatabase"

    .line 145
    .line 146
    if-eq v6, v0, :cond_2

    .line 147
    .line 148
    const-string v0, "Upgrading from version "

    .line 149
    .line 150
    const-string v8, " to "

    .line 151
    .line 152
    invoke-static {v6, v0, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 157
    .line 158
    invoke-static {v0, v9, v7}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_1

    .line 168
    .line 169
    :try_start_5
    invoke-virtual {v1, v6}, Lcom/android/server/usage/UsageStatsDatabase;->doUpgradeLocked(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :catch_1
    move-exception v0

    .line 174
    move-object v2, v0

    .line 175
    const-string v0, "Failed to upgrade from version "

    .line 176
    .line 177
    invoke-static {v6, v0, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget v3, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 182
    .line 183
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v7, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    .line 192
    .line 193
    iput v6, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 194
    .line 195
    return-void

    .line 196
    :cond_1
    const-string v0, "Version upgrade breadcrumb found on disk! Continuing version upgrade"

    .line 197
    .line 198
    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    :cond_2
    :goto_4
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_9

    .line 208
    .line 209
    :try_start_6
    new-instance v8, Ljava/io/BufferedReader;

    .line 210
    .line 211
    new-instance v0, Ljava/io/FileReader;

    .line 212
    .line 213
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 214
    .line 215
    invoke-direct {v0, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 216
    .line 217
    .line 218
    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 219
    .line 220
    .line 221
    :try_start_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 226
    .line 227
    .line 228
    move-result-wide v9

    .line 229
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 237
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 238
    .line 239
    .line 240
    iget v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 241
    .line 242
    const/4 v11, 0x4

    .line 243
    if-lt v8, v11, :cond_8

    .line 244
    .line 245
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 246
    .line 247
    const/4 v11, 0x3

    .line 248
    if-gt v0, v11, :cond_3

    .line 249
    .line 250
    new-instance v11, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v12, "Reading UsageStats as XML; current database version: "

    .line 253
    .line 254
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 258
    .line 259
    invoke-static {v11, v12, v7}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :cond_3
    new-instance v11, Ljava/io/File;

    .line 263
    .line 264
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 265
    .line 266
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    invoke-direct {v11, v12, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    const/4 v9, 0x5

    .line 274
    if-lt v0, v9, :cond_4

    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    .line 277
    .line 278
    .line 279
    :cond_4
    move v10, v5

    .line 280
    :goto_5
    iget-object v12, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 281
    .line 282
    array-length v12, v12

    .line 283
    if-ge v10, v12, :cond_7

    .line 284
    .line 285
    new-instance v12, Ljava/io/File;

    .line 286
    .line 287
    iget-object v13, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 288
    .line 289
    aget-object v13, v13, v10

    .line 290
    .line 291
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v13

    .line 295
    invoke-direct {v12, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 299
    .line 300
    .line 301
    move-result-object v12

    .line 302
    if-eqz v12, :cond_6

    .line 303
    .line 304
    move v13, v5

    .line 305
    :goto_6
    array-length v14, v12

    .line 306
    if-ge v13, v14, :cond_6

    .line 307
    .line 308
    :try_start_9
    new-instance v14, Lcom/android/server/usage/IntervalStats;

    .line 309
    .line 310
    invoke-direct {v14}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 311
    .line 312
    .line 313
    new-instance v15, Landroid/util/AtomicFile;

    .line 314
    .line 315
    aget-object v4, v12, v13

    .line 316
    .line 317
    invoke-direct {v15, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 318
    .line 319
    .line 320
    invoke-static {v15, v14, v0, v8, v5}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    .line 321
    .line 322
    .line 323
    iget v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 324
    .line 325
    if-lt v4, v9, :cond_5

    .line 326
    .line 327
    invoke-virtual {v14, v8}, Lcom/android/server/usage/IntervalStats;->obfuscateData(Lcom/android/server/usage/PackagesTokenData;)V

    .line 328
    .line 329
    .line 330
    goto :goto_7

    .line 331
    :catch_2
    move/from16 v16, v10

    .line 332
    .line 333
    goto :goto_8

    .line 334
    :cond_5
    :goto_7
    new-instance v4, Landroid/util/AtomicFile;

    .line 335
    .line 336
    new-instance v15, Ljava/io/File;

    .line 337
    .line 338
    iget-object v5, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 339
    .line 340
    aget-object v5, v5, v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 341
    .line 342
    move/from16 v16, v10

    .line 343
    .line 344
    :try_start_a
    iget-wide v9, v14, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 345
    .line 346
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    invoke-direct {v15, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-direct {v4, v15}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 354
    .line 355
    .line 356
    iget v5, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 357
    .line 358
    invoke-static {v4, v14, v5, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 359
    .line 360
    .line 361
    goto :goto_9

    .line 362
    :catch_3
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    const-string v5, "Failed to upgrade backup file : "

    .line 365
    .line 366
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    aget-object v5, v12, v13

    .line 370
    .line 371
    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v4

    .line 382
    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 386
    .line 387
    move/from16 v10, v16

    .line 388
    .line 389
    const/4 v4, 0x1

    .line 390
    const/4 v5, 0x0

    .line 391
    const/4 v9, 0x5

    .line 392
    goto :goto_6

    .line 393
    :cond_6
    move/from16 v16, v10

    .line 394
    .line 395
    add-int/lit8 v10, v16, 0x1

    .line 396
    .line 397
    const/4 v4, 0x1

    .line 398
    const/4 v5, 0x0

    .line 399
    const/4 v9, 0x5

    .line 400
    goto :goto_5

    .line 401
    :cond_7
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 402
    .line 403
    const/4 v4, 0x5

    .line 404
    if-lt v0, v4, :cond_9

    .line 405
    .line 406
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 407
    .line 408
    .line 409
    goto :goto_c

    .line 410
    :catch_4
    const-string v0, "Failed to write the tokens mappings file."

    .line 411
    .line 412
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    goto :goto_c

    .line 416
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    const-string v4, "Attempting to upgrade to an unsupported version: "

    .line 419
    .line 420
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    iget v4, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 424
    .line 425
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    goto :goto_c

    .line 436
    :catch_5
    move-exception v0

    .line 437
    goto :goto_b

    .line 438
    :catchall_2
    move-exception v0

    .line 439
    move-object v1, v0

    .line 440
    :try_start_c
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 441
    .line 442
    .line 443
    goto :goto_a

    .line 444
    :catchall_3
    move-exception v0

    .line 445
    move-object v2, v0

    .line 446
    :try_start_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 447
    .line 448
    .line 449
    :goto_a
    throw v1
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 450
    :goto_b
    const-string v1, "Failed read version upgrade breadcrumb"

    .line 451
    .line 452
    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    .line 454
    .line 455
    new-instance v1, Ljava/lang/RuntimeException;

    .line 456
    .line 457
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 458
    .line 459
    .line 460
    throw v1

    .line 461
    :cond_9
    :goto_c
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 462
    .line 463
    if-ne v6, v0, :cond_a

    .line 464
    .line 465
    iget-boolean v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mNewUpdate:Z

    .line 466
    .line 467
    if-eqz v0, :cond_b

    .line 468
    .line 469
    :cond_a
    :try_start_e
    new-instance v4, Ljava/io/BufferedWriter;

    .line 470
    .line 471
    new-instance v0, Ljava/io/FileWriter;

    .line 472
    .line 473
    iget-object v5, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 474
    .line 475
    invoke-direct {v0, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 476
    .line 477
    .line 478
    invoke-direct {v4, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 479
    .line 480
    .line 481
    :try_start_f
    iget v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 482
    .line 483
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 500
    .line 501
    .line 502
    :try_start_10
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 503
    .line 504
    .line 505
    :cond_b
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 506
    .line 507
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    if-eqz v0, :cond_c

    .line 512
    .line 513
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 514
    .line 515
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 516
    .line 517
    .line 518
    const/4 v2, 0x1

    .line 519
    iput-boolean v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 520
    .line 521
    goto :goto_d

    .line 522
    :cond_c
    const/4 v2, 0x1

    .line 523
    :goto_d
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_d

    .line 530
    .line 531
    iput-boolean v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpgradePerformed:Z

    .line 532
    .line 533
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 534
    .line 535
    invoke-static {v0}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDirectory(Ljava/io/File;)V

    .line 536
    .line 537
    .line 538
    :cond_d
    return-void

    .line 539
    :catch_6
    move-exception v0

    .line 540
    goto :goto_f

    .line 541
    :catchall_4
    move-exception v0

    .line 542
    move-object v1, v0

    .line 543
    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 544
    .line 545
    .line 546
    goto :goto_e

    .line 547
    :catchall_5
    move-exception v0

    .line 548
    move-object v2, v0

    .line 549
    :try_start_12
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 550
    .line 551
    .line 552
    :goto_e
    throw v1
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 553
    :goto_f
    const-string v1, "Failed to write new version"

    .line 554
    .line 555
    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    new-instance v1, Ljava/lang/RuntimeException;

    .line 559
    .line 560
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 561
    .line 562
    .line 563
    throw v1
.end method

.method public final deserializeIntervalStats(I[B)Lcom/android/server/usage/IntervalStats;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Ljava/io/DataInputStream;

    .line 7
    .line 8
    invoke-direct {p2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    iput-wide v1, v0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p2, v0, p1, p0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    const-string p1, "UsageStatsDatabase"

    .line 31
    .line 32
    const-string p2, "DeSerializing IntervalStats Failed"

    .line 33
    .line 34
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0
.end method

.method public final doUpgradeLocked(I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "\n"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const-string v3, "UsageStatsDatabase"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    move/from16 v5, p1

    .line 10
    .line 11
    if-ge v5, v2, :cond_1

    .line 12
    .line 13
    const-string v0, "Deleting all usage stats files"

    .line 14
    .line 15
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move v0, v4

    .line 19
    :goto_0
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 20
    .line 21
    array-length v3, v2

    .line 22
    if-ge v0, v3, :cond_5

    .line 23
    .line 24
    aget-object v2, v2, v0

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    move v5, v4

    .line 34
    :goto_1
    if-ge v5, v3, :cond_0

    .line 35
    .line 36
    aget-object v6, v2, v5

    .line 37
    .line 38
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    new-instance v2, Ljava/io/File;

    .line 52
    .line 53
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mBackupsDir:Ljava/io/File;

    .line 54
    .line 55
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_6

    .line 70
    .line 71
    :try_start_0
    iget-object v8, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    new-instance v9, Ljava/io/File;

    .line 78
    .line 79
    iget-object v10, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 80
    .line 81
    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-direct {v9, v2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    const/4 v10, 0x1

    .line 93
    new-array v11, v10, [Ljava/nio/file/CopyOption;

    .line 94
    .line 95
    sget-object v12, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 96
    .line 97
    aput-object v12, v11, v4

    .line 98
    .line 99
    invoke-static {v8, v9, v11}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 100
    .line 101
    .line 102
    move v8, v4

    .line 103
    :goto_2
    iget-object v9, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 104
    .line 105
    array-length v9, v9

    .line 106
    if-ge v8, v9, :cond_4

    .line 107
    .line 108
    new-instance v9, Ljava/io/File;

    .line 109
    .line 110
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 111
    .line 112
    aget-object v11, v11, v8

    .line 113
    .line 114
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v11

    .line 118
    invoke-direct {v9, v2, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 125
    .line 126
    .line 127
    move-result v11

    .line 128
    if-eqz v11, :cond_3

    .line 129
    .line 130
    iget-object v11, v1, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 131
    .line 132
    aget-object v11, v11, v8

    .line 133
    .line 134
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    if-eqz v11, :cond_2

    .line 139
    .line 140
    move v12, v4

    .line 141
    :goto_3
    array-length v13, v11

    .line 142
    if-ge v12, v13, :cond_2

    .line 143
    .line 144
    new-instance v13, Ljava/io/File;

    .line 145
    .line 146
    aget-object v14, v11, v12

    .line 147
    .line 148
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    invoke-direct {v13, v9, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :try_start_1
    aget-object v14, v11, v12

    .line 156
    .line 157
    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 158
    .line 159
    .line 160
    move-result-object v14

    .line 161
    invoke-virtual {v13}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 162
    .line 163
    .line 164
    move-result-object v13

    .line 165
    new-array v15, v10, [Ljava/nio/file/CopyOption;

    .line 166
    .line 167
    sget-object v16, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 168
    .line 169
    aput-object v16, v15, v4

    .line 170
    .line 171
    invoke-static {v14, v13, v15}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    .line 173
    .line 174
    add-int/lit8 v12, v12, 0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string v2, "Failed to back up file : "

    .line 181
    .line 182
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    aget-object v2, v11, v12

    .line 186
    .line 187
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    new-instance v1, Ljava/lang/RuntimeException;

    .line 202
    .line 203
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    throw v1

    .line 207
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string v2, "Failed to create interval backup directory "

    .line 215
    .line 216
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw v0

    .line 234
    :cond_4
    const/4 v2, 0x0

    .line 235
    :try_start_2
    new-instance v4, Ljava/io/BufferedWriter;

    .line 236
    .line 237
    new-instance v8, Ljava/io/FileWriter;

    .line 238
    .line 239
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mUpdateBreadcrumb:Ljava/io/File;

    .line 240
    .line 241
    invoke-direct {v8, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 242
    .line 243
    .line 244
    invoke-direct {v4, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 245
    .line 246
    .line 247
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    invoke-virtual {v4, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    .line 269
    .line 270
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 271
    .line 272
    .line 273
    :cond_5
    return-void

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    move-object v2, v4

    .line 276
    goto :goto_5

    .line 277
    :catch_1
    move-exception v0

    .line 278
    move-object v2, v4

    .line 279
    goto :goto_4

    .line 280
    :catchall_1
    move-exception v0

    .line 281
    goto :goto_5

    .line 282
    :catch_2
    move-exception v0

    .line 283
    :goto_4
    :try_start_4
    const-string v1, "Failed to write new version upgrade breadcrumb"

    .line 284
    .line 285
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    new-instance v1, Ljava/lang/RuntimeException;

    .line 289
    .line 290
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 294
    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 295
    .line 296
    .line 297
    throw v0

    .line 298
    :catch_3
    move-exception v0

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v4, "Failed to back up version file : "

    .line 302
    .line 303
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mVersionFile:Ljava/io/File;

    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    .line 321
    .line 322
    new-instance v1, Ljava/lang/RuntimeException;

    .line 323
    .line 324
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 325
    .line 326
    .line 327
    throw v1

    .line 328
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 329
    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    const-string v3, "Failed to create backup directory "

    .line 333
    .line 334
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v2

    .line 341
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v1

    .line 348
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    throw v0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5
    .line 6
    .line 7
    const-string v1, "UsageStatsDatabase:"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 19
    .line 20
    .line 21
    const-string v1, "Database Summary:"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    move v2, v1

    .line 31
    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 32
    .line 33
    array-length v4, v3

    .line 34
    if-ge v2, v4, :cond_2

    .line 35
    .line 36
    aget-object v3, v3, v2

    .line 37
    .line 38
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-static {v2}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v5, " stats files: "

    .line 50
    .line 51
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 55
    .line 56
    .line 57
    const-string v5, ", sorted list of files:"

    .line 58
    .line 59
    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 63
    .line 64
    .line 65
    move v5, v1

    .line 66
    :goto_1
    if-ge v5, v4, :cond_1

    .line 67
    .line 68
    invoke-virtual {v3, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    if-eqz p2, :cond_0

    .line 73
    .line 74
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_3

    .line 84
    :cond_0
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    const/4 v9, 0x1

    .line 89
    invoke-static {v6, v7, v9}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {p1, v8, v6}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 94
    .line 95
    .line 96
    :goto_2
    invoke-virtual {v3, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Landroid/util/AtomicFile;

    .line 101
    .line 102
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v8, " size:"

    .line 112
    .line 113
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 117
    .line 118
    .line 119
    move-result-wide v8

    .line 120
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v6, "byte"

    .line 124
    .line 125
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 136
    .line 137
    .line 138
    add-int/lit8 v5, v5, 0x1

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 142
    .line 143
    .line 144
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 148
    .line 149
    .line 150
    monitor-exit v0

    .line 151
    return-void

    .line 152
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    throw p0
.end method

.method public final dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 6

    .line 1
    const-string v0, "Removed Package Tokens: "

    .line 2
    .line 3
    const-string v1, "Tokens Map Size: "

    .line 4
    .line 5
    const-string v2, "Counter: "

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v3

    .line 10
    :try_start_0
    const-string v4, "Obfuscated Packages Mappings:"

    .line 11
    .line 12
    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 16
    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 24
    .line 25
    iget v2, v2, Lcom/android/server/usage/PackagesTokenData;->counter:I

    .line 26
    .line 27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/usage/PackagesTokenData;->removedPackageTokens:Landroid/util/ArraySet;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto :goto_2

    .line 100
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 101
    :goto_1
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 102
    .line 103
    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 104
    .line 105
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-ge v0, v1, :cond_1

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const-string v2, ", "

    .line 120
    .line 121
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 122
    .line 123
    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 124
    .line 125
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    check-cast v4, Ljava/lang/Iterable;

    .line 130
    .line 131
    invoke-static {v2, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v5, "Token "

    .line 141
    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ": ["

    .line 149
    .line 150
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, "]"

    .line 157
    .line 158
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    add-int/lit8 v0, v0, 0x1

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 175
    .line 176
    .line 177
    monitor-exit v3

    .line 178
    return-void

    .line 179
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    throw p0
.end method

.method public forceIndexFiles()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method public getBackupPayload(Ljava/lang/String;I)[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lt p2, v2, :cond_0

    .line 5
    .line 6
    if-gt p2, v1, :cond_0

    .line 7
    .line 8
    const-string p0, "UsageStatsDatabase"

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v1, "Attempting to backup UsageStats as XML with version "

    .line 13
    .line 14
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_0
    if-lt p2, v2, :cond_6

    .line 29
    .line 30
    const/4 v3, 0x4

    .line 31
    if-le p2, v3, :cond_1

    .line 32
    .line 33
    goto/16 :goto_6

    .line 34
    .line 35
    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v3

    .line 38
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v4, "usage_stats"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, v4, v5, p1}, Lcom/android/server/usage/UsageStatsDatabase;->prune(JZ)V

    .line 58
    .line 59
    .line 60
    new-instance v4, Ljava/io/DataOutputStream;

    .line 61
    .line 62
    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 66
    .line 67
    .line 68
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 69
    .line 70
    aget-object v5, v5, p1

    .line 71
    .line 72
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    move v5, p1

    .line 80
    :goto_0
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 81
    .line 82
    aget-object v6, v6, p1

    .line 83
    .line 84
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-ge v5, v6, :cond_2

    .line 89
    .line 90
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 91
    .line 92
    aget-object v6, v6, p1

    .line 93
    .line 94
    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Landroid/util/AtomicFile;

    .line 99
    .line 100
    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :catch_0
    move-exception p0

    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_2
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 113
    .line 114
    aget-object v5, v5, v2

    .line 115
    .line 116
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 121
    .line 122
    .line 123
    move v5, p1

    .line 124
    :goto_1
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 125
    .line 126
    aget-object v6, v6, v2

    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    if-ge v5, v6, :cond_3

    .line 133
    .line 134
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 135
    .line 136
    aget-object v6, v6, v2

    .line 137
    .line 138
    invoke-virtual {v6, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    check-cast v6, Landroid/util/AtomicFile;

    .line 143
    .line 144
    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 145
    .line 146
    .line 147
    add-int/lit8 v5, v5, 0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 151
    .line 152
    const/4 v5, 0x2

    .line 153
    aget-object v2, v2, v5

    .line 154
    .line 155
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 160
    .line 161
    .line 162
    move v2, p1

    .line 163
    :goto_2
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 164
    .line 165
    aget-object v6, v6, v5

    .line 166
    .line 167
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-ge v2, v6, :cond_4

    .line 172
    .line 173
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 174
    .line 175
    aget-object v6, v6, v5

    .line 176
    .line 177
    invoke-virtual {v6, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    check-cast v6, Landroid/util/AtomicFile;

    .line 182
    .line 183
    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V

    .line 184
    .line 185
    .line 186
    add-int/lit8 v2, v2, 0x1

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_4
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 190
    .line 191
    aget-object v2, v2, v1

    .line 192
    .line 193
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 198
    .line 199
    .line 200
    :goto_3
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 201
    .line 202
    aget-object v2, v2, v1

    .line 203
    .line 204
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-ge p1, v2, :cond_5

    .line 209
    .line 210
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 211
    .line 212
    aget-object v2, v2, v1

    .line 213
    .line 214
    invoke-virtual {v2, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    check-cast v2, Landroid/util/AtomicFile;

    .line 219
    .line 220
    invoke-virtual {p0, v4, v2, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .line 222
    .line 223
    add-int/lit8 p1, p1, 0x1

    .line 224
    .line 225
    goto :goto_3

    .line 226
    :goto_4
    :try_start_2
    const-string p1, "UsageStatsDatabase"

    .line 227
    .line 228
    const-string p2, "Failed to write data to output stream"

    .line 229
    .line 230
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 234
    .line 235
    .line 236
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    monitor-exit v3

    .line 241
    return-object p0

    .line 242
    :goto_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    throw p0

    .line 244
    :cond_6
    :goto_6
    const-string p0, "UsageStatsDatabase"

    .line 245
    .line 246
    new-instance p1, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    const-string v1, "Attempting to backup UsageStats with an unknown version: "

    .line 249
    .line 250
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    return-object v0
.end method

.method public final getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;
    .locals 4

    .line 1
    const-string v0, "Bad interval type "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    if-ltz p1, :cond_1

    .line 7
    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    if-ge p1, v2, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 14
    .line 15
    aget-object v0, v0, p1

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    return-object v2

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 29
    .line 30
    aget-object p1, v3, p1

    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/util/AtomicFile;

    .line 39
    .line 40
    new-instance v0, Lcom/android/server/usage/IntervalStats;

    .line 41
    .line 42
    invoke-direct {v0}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_2
    monitor-exit v1

    .line 50
    return-object v0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    const-string p1, "UsageStatsDatabase"

    .line 53
    .line 54
    const-string v0, "Failed to read usage stats file"

    .line 55
    .line 56
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    .line 58
    .line 59
    monitor-exit v1

    .line 60
    return-object v2

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 62
    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0

    .line 79
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    throw p0
.end method

.method public final indexFilesLocked()V
    .locals 12

    .line 1
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 9
    .line 10
    array-length v4, v3

    .line 11
    if-ge v2, v4, :cond_4

    .line 12
    .line 13
    aget-object v4, v3, v2

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    new-instance v4, Landroid/util/LongSparseArray;

    .line 18
    .line 19
    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    .line 20
    .line 21
    .line 22
    aput-object v4, v3, v2

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    .line 26
    .line 27
    .line 28
    :goto_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 29
    .line 30
    aget-object v3, v3, v2

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    array-length v4, v3

    .line 39
    move v5, v1

    .line 40
    :goto_2
    const-string v6, "UsageStatsDatabase"

    .line 41
    .line 42
    if-ge v5, v4, :cond_1

    .line 43
    .line 44
    aget-object v7, v3, v5

    .line 45
    .line 46
    new-instance v8, Landroid/util/AtomicFile;

    .line 47
    .line 48
    invoke-direct {v8, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    :try_start_0
    iget-object v9, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 52
    .line 53
    aget-object v9, v9, v2

    .line 54
    .line 55
    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    invoke-static {v10}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v10

    .line 63
    invoke-virtual {v9, v10, v11, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :catch_0
    move-exception v8

    .line 68
    new-instance v9, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v10, "failed to index file: "

    .line 71
    .line 72
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v6, v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 89
    .line 90
    aget-object v3, v3, v2

    .line 91
    .line 92
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    sget-object v4, Lcom/android/server/usage/UsageStatsDatabase;->MAX_FILES_PER_INTERVAL_TYPE:[I

    .line 97
    .line 98
    aget v4, v4, v2

    .line 99
    .line 100
    sub-int/2addr v3, v4

    .line 101
    if-lez v3, :cond_3

    .line 102
    .line 103
    move v4, v1

    .line 104
    :goto_4
    if-ge v4, v3, :cond_2

    .line 105
    .line 106
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 107
    .line 108
    aget-object v5, v5, v2

    .line 109
    .line 110
    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Landroid/util/AtomicFile;

    .line 115
    .line 116
    invoke-virtual {v5}, Landroid/util/AtomicFile;->delete()V

    .line 117
    .line 118
    .line 119
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 120
    .line 121
    aget-object v5, v5, v2

    .line 122
    .line 123
    invoke-virtual {v5, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 124
    .line 125
    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_2
    const-string v4, "Deleted "

    .line 130
    .line 131
    const-string v5, " stat files for interval "

    .line 132
    .line 133
    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/asks/ASKSManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_4
    return-void
.end method

.method public final prune(JZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 5
    .line 6
    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 7
    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    const/4 v2, -0x2

    .line 11
    int-to-long v2, v2

    .line 12
    const-wide v4, 0x757b12c00L

    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    mul-long/2addr v2, v4

    .line 18
    add-long/2addr v2, p1

    .line 19
    iput-wide v2, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 20
    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 22
    .line 23
    const/4 v3, 0x3

    .line 24
    aget-object v2, v2, v3

    .line 25
    .line 26
    iget-wide v3, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 27
    .line 28
    invoke-static {v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 32
    .line 33
    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 34
    .line 35
    if-nez p3, :cond_1

    .line 36
    .line 37
    const/4 v2, -0x6

    .line 38
    int-to-long v2, v2

    .line 39
    const-wide v4, 0x9a7ec800L

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    mul-long/2addr v2, v4

    .line 45
    add-long/2addr v2, p1

    .line 46
    iput-wide v2, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 47
    .line 48
    :cond_1
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 49
    .line 50
    const/4 v3, 0x2

    .line 51
    aget-object v2, v2, v3

    .line 52
    .line 53
    iget-wide v3, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 54
    .line 55
    invoke-static {v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 59
    .line 60
    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 61
    .line 62
    if-nez p3, :cond_2

    .line 63
    .line 64
    const/4 v2, -0x4

    .line 65
    int-to-long v2, v2

    .line 66
    const-wide/32 v4, 0x240c8400

    .line 67
    .line 68
    .line 69
    mul-long/2addr v2, v4

    .line 70
    add-long/2addr v2, p1

    .line 71
    iput-wide v2, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 72
    .line 73
    :cond_2
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    aget-object v2, v2, v3

    .line 77
    .line 78
    iget-wide v3, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 79
    .line 80
    invoke-static {v2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 84
    .line 85
    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 86
    .line 87
    const-wide/32 v2, 0x5265c00

    .line 88
    .line 89
    .line 90
    if-nez p3, :cond_3

    .line 91
    .line 92
    const/16 v4, -0xa

    .line 93
    .line 94
    int-to-long v4, v4

    .line 95
    mul-long/2addr v4, v2

    .line 96
    add-long/2addr v4, p1

    .line 97
    iput-wide v4, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 98
    .line 99
    :cond_3
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 100
    .line 101
    const/4 v5, 0x0

    .line 102
    aget-object v4, v4, v5

    .line 103
    .line 104
    iget-wide v6, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 105
    .line 106
    invoke-static {v4, v6, v7}, Lcom/android/server/usage/UsageStatsDatabase;->pruneFilesOlderThan(Ljava/io/File;J)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 110
    .line 111
    iput-wide p1, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 112
    .line 113
    if-nez p3, :cond_4

    .line 114
    .line 115
    sget p3, Lcom/android/server/usage/UsageStatsDatabase;->SELECTION_LOG_RETENTION_LEN:I

    .line 116
    .line 117
    neg-int p3, p3

    .line 118
    int-to-long v6, p3

    .line 119
    mul-long/2addr v6, v2

    .line 120
    add-long/2addr v6, p1

    .line 121
    iput-wide v6, v1, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_1

    .line 126
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 127
    .line 128
    array-length p2, p1

    .line 129
    if-ge v5, p2, :cond_5

    .line 130
    .line 131
    aget-object p1, p1, v5

    .line 132
    .line 133
    iget-object p2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCal:Lcom/android/server/usage/UnixCalendar;

    .line 134
    .line 135
    iget-wide p2, p2, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 136
    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->pruneChooserCountsOlderThan(Ljava/io/File;J)V

    .line 138
    .line 139
    .line 140
    add-int/lit8 v5, v5, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V

    .line 144
    .line 145
    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 148
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    throw p0
.end method

.method public final pruneChooserCountsOlderThan(Ljava/io/File;J)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_3

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    const/4 v1, 0x0

    .line 9
    move v2, v1

    .line 10
    :goto_0
    if-ge v2, v0, :cond_3

    .line 11
    .line 12
    aget-object v3, p1, v2

    .line 13
    .line 14
    :try_start_0
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsDatabase;->parseBeginTime(Ljava/io/File;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_1

    .line 19
    :catch_0
    const-wide/16 v4, 0x0

    .line 20
    .line 21
    :goto_1
    cmp-long v4, v4, p2

    .line 22
    .line 23
    if-gez v4, :cond_2

    .line 24
    .line 25
    :try_start_1
    new-instance v4, Landroid/util/AtomicFile;

    .line 26
    .line 27
    invoke-direct {v4, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lcom/android/server/usage/IntervalStats;

    .line 31
    .line 32
    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V

    .line 36
    .line 37
    .line 38
    iget-object v5, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    move v6, v1

    .line 45
    :goto_2
    if-ge v6, v5, :cond_1

    .line 46
    .line 47
    iget-object v7, v3, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    check-cast v7, Landroid/app/usage/UsageStats;

    .line 54
    .line 55
    iget-object v7, v7, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    .line 56
    .line 57
    if-eqz v7, :cond_0

    .line 58
    .line 59
    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :catch_1
    move-exception v3

    .line 64
    goto :goto_4

    .line 65
    :cond_0
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_1
    invoke-virtual {p0, v4, v3}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    goto :goto_5

    .line 72
    :goto_4
    const-string v4, "UsageStatsDatabase"

    .line 73
    .line 74
    const-string v5, "Failed to delete chooser counts from usage stats file"

    .line 75
    .line 76
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    return-void
.end method

.method public final prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 14
    .line 15
    array-length v4, v3

    .line 16
    if-ge v2, v4, :cond_4

    .line 17
    .line 18
    aget-object v3, v3, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_1
    move v4, v1

    .line 28
    :goto_1
    array-length v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    if-ge v4, v5, :cond_3

    .line 30
    .line 31
    :try_start_1
    new-instance v5, Lcom/android/server/usage/IntervalStats;

    .line 32
    .line 33
    invoke-direct {v5}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v6, Landroid/util/AtomicFile;

    .line 37
    .line 38
    aget-object v7, v3, v4

    .line 39
    .line 40
    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 44
    .line 45
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 46
    .line 47
    invoke-static {v6, v5, v7, v8, v1}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v5}, Lcom/android/server/usage/UsageStatsDatabase;->pruneStats(Ljava/util/HashMap;Lcom/android/server/usage/IntervalStats;)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_2

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget v7, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    .line 58
    .line 59
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 60
    .line 61
    invoke-static {v6, v5, v7, v8}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_4

    .line 67
    :catch_0
    :try_start_2
    const-string v5, "UsageStatsDatabase"

    .line 68
    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v7, "Failed to prune data from: "

    .line 75
    .line 76
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    aget-object v7, v3, v4

    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_4
    monitor-exit v0

    .line 102
    return-void

    .line 103
    :goto_4
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    throw p0
.end method

.method public final putUsageStats(ILcom/android/server/usage/IntervalStats;)V
    .locals 6

    .line 1
    const-string v0, "Bad interval type "

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    if-ltz p1, :cond_2

    .line 10
    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 12
    .line 13
    array-length v2, v2

    .line 14
    if-ge p1, v2, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 17
    .line 18
    aget-object v0, v0, p1

    .line 19
    .line 20
    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/util/AtomicFile;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    new-instance v0, Landroid/util/AtomicFile;

    .line 31
    .line 32
    new-instance v2, Ljava/io/File;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mIntervalDirs:[Ljava/io/File;

    .line 35
    .line 36
    aget-object v3, v3, p1

    .line 37
    .line 38
    iget-wide v4, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 39
    .line 40
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 51
    .line 52
    aget-object p1, v2, p1

    .line 53
    .line 54
    iget-wide v2, p2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 55
    .line 56
    invoke-virtual {p1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getLastModifiedTime()J

    .line 66
    .line 67
    .line 68
    move-result-wide p0

    .line 69
    iput-wide p0, p2, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 70
    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p0

    .line 91
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    .line 5
    .line 6
    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    .line 11
    .line 12
    aget-object p1, v3, p1

    .line 13
    .line 14
    invoke-virtual {p1, p2, p3, v2}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/util/AtomicFile;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_2
    monitor-exit v0

    .line 25
    return-object v1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    monitor-exit v0

    .line 29
    return-object v2

    .line 30
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p0
.end method

.method public final readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reading UsageStats as XML; current database version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsDatabase"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, p0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;Z)Z

    return-void
.end method

.method public final readMappingsLocked()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :try_start_1
    invoke-static {p0, v0}, Lcom/android/server/usage/UsageStatsProtoV2;->readObfuscatedData(Ljava/io/InputStream;Lcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    goto :goto_4

    .line 34
    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/android/server/usage/PackagesTokenData;->tokensToPackagesMap:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/4 v2, 0x0

    .line 41
    move v3, v2

    .line 42
    :goto_1
    if-ge v3, v1, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    invoke-virtual {p0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    check-cast v5, Ljava/util/ArrayList;

    .line 53
    .line 54
    new-instance v6, Landroid/util/ArrayMap;

    .line 55
    .line 56
    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result v7

    .line 63
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    check-cast v8, Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v6, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const/4 v4, 0x1

    .line 77
    :goto_2
    if-ge v4, v7, :cond_2

    .line 78
    .line 79
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    check-cast v8, Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    invoke-virtual {v6, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    add-int/lit8 v4, v4, 0x1

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    iget-object v4, v0, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    .line 96
    .line 97
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_3
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 122
    :goto_4
    const-string v0, "UsageStatsDatabase"

    .line 123
    .line 124
    const-string v1, "Failed to read the obfuscated packages mapping file."

    .line 125
    .line 126
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public final writeIntervalStatsToStream(Ljava/io/DataOutputStream;Landroid/util/AtomicFile;I)V
    .locals 5

    .line 1
    const-string v0, "UsageStatsDatabase"

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/usage/IntervalStats;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/android/server/usage/IntervalStats;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->readLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    iput-object p2, v1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 14
    .line 15
    iget-object p2, v1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object p2, v1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/app/usage/EventList;->clear()V

    .line 23
    .line 24
    .line 25
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v2, Ljava/io/DataOutputStream;

    .line 31
    .line 32
    invoke-direct {v2, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 33
    .line 34
    .line 35
    :try_start_1
    iget-wide v3, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 41
    .line 42
    invoke-static {v2, v1, p3, p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Ljava/io/OutputStream;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    const-string p3, "Serializing IntervalStats Failed"

    .line 48
    .line 49
    invoke-static {v0, p3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    array-length p2, p0

    .line 60
    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catch_1
    move-exception p0

    .line 68
    const-string p2, "Failed to read usage stats file"

    .line 69
    .line 70
    invoke-static {v0, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Attempting to write UsageStats as XML with version "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mCurrentVersion:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsDatabase"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeLocked(Landroid/util/AtomicFile;Lcom/android/server/usage/IntervalStats;ILcom/android/server/usage/PackagesTokenData;)V

    return-void
.end method

.method public final writeMappingsLocked()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/AtomicFile;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackageMappingsFile:Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    .line 13
    .line 14
    invoke-static {v1, p0}, Lcom/android/server/usage/UsageStatsProtoV2;->writeObfuscatedData(Ljava/io/OutputStream;Lcom/android/server/usage/PackagesTokenData;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    invoke-virtual {v0, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception p0

    .line 28
    :try_start_1
    const-string v2, "UsageStatsDatabase"

    .line 29
    .line 30
    const-string v3, "Unable to write obfuscated data to proto."

    .line 31
    .line 32
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :goto_1
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 40
    .line 41
    .line 42
    throw p0
.end method
