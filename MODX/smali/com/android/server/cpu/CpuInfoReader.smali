.class public final Lcom/android/server/cpu/CpuInfoReader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MILLIS_PER_CLOCK_TICK:J

.field public static final PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

.field public static final TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public mCpuFreqDir:Ljava/io/File;

.field public final mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

.field public final mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

.field public final mCpusetDir:Ljava/io/File;

.field public mCumulativeCpuUsageStats:Landroid/util/SparseArray;

.field public mHasTimeInStateFile:Z

.field public mIsEnabled:Z

.field public mLastReadCpuInfos:Landroid/util/SparseArray;

.field public mLastReadUptimeMillis:J

.field public final mMinReadIntervalMillis:J

.field public mProcStatFile:Ljava/io/File;

.field public final mStaticPolicyInfoById:Landroid/util/SparseArray;

.field public final mTimeInStateByPolicyId:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "cpu(?<core>[0-9]+)\\s(?<userClockTicks>[0-9]+)\\s(?<niceClockTicks>[0-9]+)\\s(?<sysClockTicks>[0-9]+)\\s(?<idleClockTicks>[0-9]+)\\s(?<iowaitClockTicks>[0-9]+)\\s(?<irqClockTicks>[0-9]+)\\s(?<softirqClockTicks>[0-9]+)\\s(?<stealClockTicks>[0-9]+)\\s(?<guestClockTicks>[0-9]+)\\s(?<guestNiceClockTicks>[0-9]+)"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/cpu/CpuInfoReader;->PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

    .line 10
    const-string v0, "(?<freqKHz>[0-9]+)\\s(?<time>[0-9]+)"

    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/cpu/CpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    .line 18
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    .line 20
    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x3e8

    .line 26
    div-long/2addr v2, v0

    .line 27
    sput-wide v2, Lcom/android/server/cpu/CpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 39
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    .line 41
    iput-object p2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 43
    iput-object p3, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 45
    iput-wide p4, p0, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    .line 47
    return-void
.end method

.method public static calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v4, v0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    .line 9
    move-result v6

    .line 10
    if-ge v3, v6, :cond_0

    .line 12
    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    .line 15
    move-result-wide v6

    .line 16
    long-to-double v6, v6

    .line 17
    add-double/2addr v4, v6

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    cmpl-double v3, v4, v0

    .line 23
    if-nez v3, :cond_1

    .line 25
    const-wide/16 v0, 0x0

    .line 27
    return-wide v0

    .line 28
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_2

    .line 34
    invoke-virtual {p0, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    .line 37
    move-result-wide v6

    .line 38
    invoke-virtual {p0, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    .line 41
    move-result-wide v8

    .line 42
    mul-long/2addr v8, v6

    .line 43
    long-to-double v6, v8

    .line 44
    div-double/2addr v6, v4

    .line 45
    add-double/2addr v0, v6

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    double-to-long v0, v0

    .line 50
    return-wide v0
.end method

.method public static clockTickStrToMillis(Ljava/lang/String;)J
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/android/server/cpu/CpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    .line 7
    mul-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public static readCpuCores(Ljava/io/File;)Landroid/util/IntArray;
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, ","

    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "CpuMonitorService"

    .line 11
    if-nez v2, :cond_0

    .line 13
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 19
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 22
    move-result-object p0

    .line 23
    const-string v0, "Failed to read CPU cores as the file \'%s\' doesn\'t exist"

    .line 25
    invoke-static {v4, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return-object v3

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    .line 36
    move-result-object v2

    .line 37
    new-instance v5, Landroid/util/IntArray;

    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-direct {v5, v6}, Landroid/util/IntArray;-><init>(I)V

    .line 43
    move v7, v6

    .line 44
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 47
    move-result v8

    .line 48
    if-ge v7, v8, :cond_8

    .line 50
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Ljava/lang/String;

    .line 56
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_1

    .line 66
    goto :goto_5

    .line 67
    :cond_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_2

    .line 73
    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    move-result-object v8

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    goto :goto_6

    .line 80
    :catch_1
    move-exception v0

    .line 81
    goto :goto_7

    .line 82
    :cond_2
    const-string v9, " "

    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 87
    move-result-object v8

    .line 88
    :goto_1
    move v9, v6

    .line 89
    :goto_2
    array-length v10, v8

    .line 90
    if-ge v9, v10, :cond_7

    .line 92
    aget-object v10, v8, v9

    .line 94
    const-string v11, "-"

    .line 96
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 99
    move-result-object v10

    .line 100
    array-length v11, v10

    .line 101
    const/4 v12, 0x2

    .line 102
    if-lt v11, v12, :cond_4

    .line 104
    aget-object v11, v10, v6

    .line 106
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 109
    move-result v11

    .line 110
    aget-object v10, v10, v0

    .line 112
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 115
    move-result v10

    .line 116
    if-le v11, v10, :cond_3

    .line 118
    goto :goto_4

    .line 119
    :cond_3
    :goto_3
    if-gt v11, v10, :cond_6

    .line 121
    invoke-virtual {v5, v11}, Landroid/util/IntArray;->add(I)V

    .line 124
    add-int/2addr v11, v0

    .line 125
    goto :goto_3

    .line 126
    :cond_4
    array-length v11, v10

    .line 127
    if-ne v11, v0, :cond_5

    .line 129
    aget-object v10, v10, v6

    .line 131
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 134
    move-result v10

    .line 135
    invoke-virtual {v5, v10}, Landroid/util/IntArray;->add(I)V

    .line 138
    goto :goto_4

    .line 139
    :cond_5
    sget-boolean v10, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 141
    const-string v10, "Invalid CPU core range format %s"

    .line 143
    aget-object v11, v8, v9

    .line 145
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 148
    move-result-object v11

    .line 149
    invoke-static {v4, v10, v11}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_6
    :goto_4
    add-int/2addr v9, v0

    .line 153
    goto :goto_2

    .line 154
    :cond_7
    :goto_5
    add-int/2addr v7, v0

    .line 155
    goto :goto_0

    .line 156
    :cond_8
    return-object v5

    .line 157
    :goto_6
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 159
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 162
    move-result-object p0

    .line 163
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 166
    move-result-object p0

    .line 167
    const-string v1, "Failed to read CPU cores from %s"

    .line 169
    invoke-static {v4, v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    goto :goto_8

    .line 173
    :goto_7
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 175
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 178
    move-result-object p0

    .line 179
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 182
    move-result-object p0

    .line 183
    const-string v1, "Failed to read CPU cores from %s due to incorrect file format"

    .line 185
    invoke-static {v4, v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :goto_8
    return-object v3
.end method

.method public static readCpuFreqKHz(Ljava/io/File;)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "CpuMonitorService"

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 11
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 17
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    const-string v0, "CPU frequency file %s doesn\'t exist"

    .line 23
    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return-wide v2

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_2

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 55
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    cmp-long p0, v0, v2

    .line 58
    if-lez p0, :cond_1

    .line 60
    move-wide v2, v0

    .line 61
    :cond_1
    return-wide v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sget-boolean v4, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 65
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 73
    const-string v4, "Failed to read integer content from file: %s"

    .line 75
    invoke-static {v1, v0, v4, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_2
    return-wide v2
.end method

.method public static toCpusetCategoriesStr(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    and-int/lit8 v1, p0, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    const-string v1, "FLAG_CPUSET_CATEGORY_TOP_APP"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_0
    and-int/lit8 p0, p0, 0x2

    .line 17
    if-eqz p0, :cond_2

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 22
    move-result p0

    .line 23
    if-lez p0, :cond_1

    .line 25
    const/16 p0, 0x7c

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    :cond_1
    const-string p0, "FLAG_CPUSET_CATEGORY_BACKGROUND"

    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method


# virtual methods
.method public final populateCpuFreqPolicyDirsById([Ljava/io/File;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p1

    .line 8
    if-ge v0, v1, :cond_2

    .line 10
    aget-object v1, p1, v0

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x6

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 37
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 39
    if-eqz v3, :cond_1

    .line 41
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 45
    const-string v2, "CpuMonitorService"

    .line 47
    const-string v3, "Cached policy directory %s for policy id %s"

    .line 49
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return-void
.end method

.method public final readCpuInfos()Landroid/util/SparseArray;
    .locals 35

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-boolean v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v2

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    move-result-wide v3

    .line 13
    iget-wide v5, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    .line 15
    const-wide/16 v7, 0x0

    .line 17
    cmp-long v0, v5, v7

    .line 19
    const-string v9, "CpuMonitorService"

    .line 21
    if-lez v0, :cond_1

    .line 23
    sub-long v10, v3, v5

    .line 25
    iget-wide v12, v1, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    .line 27
    cmp-long v0, v10, v12

    .line 29
    if-gez v0, :cond_1

    .line 31
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 33
    sub-long/2addr v3, v5

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    move-result-object v0

    .line 38
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 41
    move-result-object v2

    .line 42
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 46
    const-string v2, "Skipping reading from device and returning the last read CpuInfos. Last read was %d ms ago, min read interval is %d ms"

    .line 48
    invoke-static {v9, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 53
    return-object v0

    .line 54
    :cond_1
    iput-wide v3, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    .line 56
    iput-object v2, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 58
    new-instance v3, Landroid/util/SparseArray;

    .line 60
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 63
    :try_start_0
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    .line 72
    move-result-object v0

    .line 73
    const/4 v5, 0x0

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 77
    move-result v6

    .line 78
    if-ge v5, v6, :cond_3

    .line 80
    sget-object v6, Lcom/android/server/cpu/CpuInfoReader;->PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

    .line 82
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v10

    .line 86
    check-cast v10, Ljava/lang/String;

    .line 88
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 99
    move-result v10

    .line 100
    if-nez v10, :cond_2

    .line 102
    goto/16 :goto_1

    .line 104
    :cond_2
    const-string/jumbo v10, "core"

    .line 107
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v10

    .line 111
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 114
    move-result v10

    .line 115
    new-instance v14, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 117
    const-string/jumbo v11, "userClockTicks"

    .line 120
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v11

    .line 124
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 127
    move-result-wide v12

    .line 128
    const-string/jumbo v11, "niceClockTicks"

    .line 131
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    move-result-object v11

    .line 135
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 138
    move-result-wide v15

    .line 139
    const-string/jumbo v11, "sysClockTicks"

    .line 142
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v11

    .line 146
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 149
    move-result-wide v17

    .line 150
    const-string/jumbo v11, "idleClockTicks"

    .line 153
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v11

    .line 157
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 160
    move-result-wide v19

    .line 161
    const-string/jumbo v11, "iowaitClockTicks"

    .line 164
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    move-result-object v11

    .line 168
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 171
    move-result-wide v21

    .line 172
    const-string/jumbo v11, "irqClockTicks"

    .line 175
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v11

    .line 179
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 182
    move-result-wide v23

    .line 183
    const-string/jumbo v11, "softirqClockTicks"

    .line 186
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 189
    move-result-object v11

    .line 190
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 193
    move-result-wide v25

    .line 194
    const-string/jumbo v11, "stealClockTicks"

    .line 197
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 200
    move-result-object v11

    .line 201
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 204
    move-result-wide v27

    .line 205
    const-string/jumbo v11, "guestClockTicks"

    .line 208
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object v11

    .line 212
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 215
    move-result-wide v29

    .line 216
    const-string/jumbo v11, "guestNiceClockTicks"

    .line 219
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v6

    .line 223
    invoke-static {v6}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 226
    move-result-wide v31

    .line 227
    move-object v11, v14

    .line 228
    move-object v6, v14

    .line 229
    move-wide v14, v15

    .line 230
    move-wide/from16 v16, v17

    .line 232
    move-wide/from16 v18, v19

    .line 234
    move-wide/from16 v20, v21

    .line 236
    move-wide/from16 v22, v23

    .line 238
    move-wide/from16 v24, v25

    .line 240
    move-wide/from16 v26, v27

    .line 242
    move-wide/from16 v28, v29

    .line 244
    move-wide/from16 v30, v31

    .line 246
    invoke-direct/range {v11 .. v31}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;-><init>(JJJJJJJJJJ)V

    .line 249
    invoke-virtual {v3, v10, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 254
    goto/16 :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    sget-boolean v5, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 259
    iget-object v5, v1, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 261
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 264
    move-result-object v5

    .line 265
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 268
    move-result-object v5

    .line 269
    const-string v6, "Failed to read cpu usage stats from %s"

    .line 271
    invoke-static {v9, v0, v6, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    :cond_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 277
    move-result v0

    .line 278
    if-nez v0, :cond_4

    .line 280
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 282
    const-string v0, "Failed to read cumulative CPU usage stats"

    .line 284
    invoke-static {v9, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    goto/16 :goto_4

    .line 289
    :cond_4
    new-instance v0, Landroid/util/SparseArray;

    .line 291
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 294
    const/4 v5, 0x0

    .line 295
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 298
    move-result v6

    .line 299
    if-ge v5, v6, :cond_6

    .line 301
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 304
    move-result v6

    .line 305
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 308
    move-result-object v10

    .line 309
    check-cast v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 311
    iget-object v11, v1, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 313
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 316
    move-result-object v11

    .line 317
    check-cast v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 319
    if-nez v11, :cond_5

    .line 321
    move-object/from16 v34, v3

    .line 323
    goto :goto_3

    .line 324
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 327
    new-instance v33, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 329
    move-object/from16 v12, v33

    .line 331
    iget-wide v13, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 333
    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 335
    invoke-static {v7, v8, v13, v14}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 338
    move-result-wide v13

    .line 339
    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 341
    move-object/from16 v34, v3

    .line 343
    iget-wide v2, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 345
    invoke-static {v7, v8, v2, v3}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 348
    move-result-wide v15

    .line 349
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 351
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 353
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 356
    move-result-wide v17

    .line 357
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 359
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 361
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 364
    move-result-wide v19

    .line 365
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 367
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 369
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 372
    move-result-wide v21

    .line 373
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 375
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 377
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 380
    move-result-wide v23

    .line 381
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 383
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 385
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 388
    move-result-wide v25

    .line 389
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 391
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 393
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 396
    move-result-wide v27

    .line 397
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 399
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 401
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 404
    move-result-wide v29

    .line 405
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 407
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 409
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 412
    move-result-wide v31

    .line 413
    invoke-direct/range {v12 .. v32}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;-><init>(JJJJJJJJJJ)V

    .line 416
    move-object/from16 v10, v33

    .line 418
    :goto_3
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 421
    add-int/lit8 v5, v5, 0x1

    .line 423
    move-object/from16 v3, v34

    .line 425
    const/4 v2, 0x0

    .line 426
    const-wide/16 v7, 0x0

    .line 428
    goto/16 :goto_2

    .line 430
    :cond_6
    move-object v2, v3

    .line 431
    iput-object v2, v1, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 433
    move-object v2, v0

    .line 434
    :goto_4
    if-eqz v2, :cond_25

    .line 436
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 439
    move-result v0

    .line 440
    if-nez v0, :cond_7

    .line 442
    goto/16 :goto_1a

    .line 444
    :cond_7
    new-instance v3, Landroid/util/SparseArray;

    .line 446
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 449
    const/4 v5, 0x0

    .line 450
    :goto_5
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 452
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 455
    move-result v0

    .line 456
    if-ge v5, v0, :cond_18

    .line 458
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 460
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 463
    move-result v6

    .line 464
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 466
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 469
    move-result-object v0

    .line 470
    move-object v7, v0

    .line 471
    check-cast v7, Ljava/io/File;

    .line 473
    new-instance v0, Ljava/io/File;

    .line 475
    const-string/jumbo v8, "scaling_cur_freq"

    .line 478
    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 481
    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    .line 484
    move-result-wide v11

    .line 485
    const-wide/16 v13, 0x0

    .line 487
    cmp-long v0, v11, v13

    .line 489
    if-nez v0, :cond_8

    .line 491
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 493
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 496
    move-result-object v0

    .line 497
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 500
    move-result-object v0

    .line 501
    const-string v6, "Missing current frequency information at %s"

    .line 503
    invoke-static {v9, v6, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    move-object/from16 v20, v2

    .line 508
    move-object v2, v3

    .line 509
    move/from16 v19, v5

    .line 511
    goto/16 :goto_10

    .line 513
    :cond_8
    iget-boolean v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    .line 515
    if-nez v0, :cond_9

    .line 517
    :goto_6
    move/from16 v19, v5

    .line 519
    :goto_7
    const/4 v10, 0x0

    .line 520
    goto/16 :goto_b

    .line 522
    :cond_9
    new-instance v8, Ljava/io/File;

    .line 524
    const-string/jumbo v0, "stats/time_in_state"

    .line 527
    invoke-direct {v8, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 530
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 533
    move-result-object v0

    .line 534
    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    .line 537
    move-result-object v0

    .line 538
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 541
    move-result v10

    .line 542
    if-eqz v10, :cond_a

    .line 544
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 546
    const-string v0, "Empty time in state file at %s"

    .line 548
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 551
    move-result-object v10

    .line 552
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 555
    move-result-object v10

    .line 556
    invoke-static {v9, v0, v10}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 559
    goto :goto_6

    .line 560
    :catch_1
    move-exception v0

    .line 561
    move/from16 v19, v5

    .line 563
    goto :goto_a

    .line 564
    :cond_a
    new-instance v10, Landroid/util/LongSparseLongArray;

    .line 566
    invoke-direct {v10}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 569
    const/4 v13, 0x0

    .line 570
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 573
    move-result v14

    .line 574
    if-ge v13, v14, :cond_c

    .line 576
    sget-object v14, Lcom/android/server/cpu/CpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    .line 578
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 581
    move-result-object v15

    .line 582
    check-cast v15, Ljava/lang/String;

    .line 584
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 587
    move-result-object v15

    .line 588
    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 591
    move-result-object v14

    .line 592
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    .line 595
    move-result v15

    .line 596
    if-nez v15, :cond_b

    .line 598
    move/from16 v19, v5

    .line 600
    goto :goto_9

    .line 601
    :cond_b
    const-string/jumbo v15, "freqKHz"

    .line 604
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 608
    move/from16 v19, v5

    .line 610
    :try_start_2
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 613
    move-result-wide v4

    .line 614
    const-string/jumbo v15, "time"

    .line 617
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 620
    move-result-object v14

    .line 621
    invoke-static {v14}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 624
    move-result-wide v14

    .line 625
    invoke-virtual {v10, v4, v5, v14, v15}, Landroid/util/LongSparseLongArray;->put(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 628
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 630
    move/from16 v5, v19

    .line 632
    goto :goto_8

    .line 633
    :catch_2
    move-exception v0

    .line 634
    goto :goto_a

    .line 635
    :cond_c
    move/from16 v19, v5

    .line 637
    goto :goto_b

    .line 638
    :goto_a
    sget-boolean v4, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 640
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 643
    move-result-object v4

    .line 644
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 647
    move-result-object v4

    .line 648
    const-string v5, "Failed to read CPU time in state from file: %s"

    .line 650
    invoke-static {v9, v0, v5, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 653
    goto/16 :goto_7

    .line 655
    :goto_b
    if-eqz v10, :cond_d

    .line 657
    invoke-virtual {v10}, Landroid/util/LongSparseLongArray;->size()I

    .line 660
    move-result v0

    .line 661
    if-nez v0, :cond_e

    .line 663
    :cond_d
    move-object/from16 v20, v2

    .line 665
    move-object/from16 v21, v3

    .line 667
    goto/16 :goto_d

    .line 669
    :cond_e
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 671
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 674
    move-result-object v0

    .line 675
    check-cast v0, Landroid/util/LongSparseLongArray;

    .line 677
    if-nez v0, :cond_10

    .line 679
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 681
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 684
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 686
    if-eqz v0, :cond_f

    .line 688
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 691
    move-result-object v0

    .line 692
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 695
    move-result-object v0

    .line 696
    const-string v4, "Added aggregated time in state info for policy id %d"

    .line 698
    invoke-static {v9, v4, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    :cond_f
    invoke-static {v10}, Lcom/android/server/cpu/CpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    .line 704
    move-result-wide v4

    .line 705
    move-object/from16 v20, v2

    .line 707
    move-object/from16 v21, v3

    .line 709
    move-wide v15, v4

    .line 710
    goto :goto_e

    .line 711
    :cond_10
    invoke-virtual {v10}, Landroid/util/LongSparseLongArray;->size()I

    .line 714
    move-result v4

    .line 715
    new-instance v5, Landroid/util/LongSparseLongArray;

    .line 717
    invoke-direct {v5, v4}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 720
    const/4 v8, 0x0

    .line 721
    :goto_c
    if-ge v8, v4, :cond_12

    .line 723
    invoke-virtual {v10, v8}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    .line 726
    move-result-wide v13

    .line 727
    invoke-virtual {v10, v8}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    .line 730
    move-result-wide v15

    .line 731
    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseLongArray;->get(J)J

    .line 734
    move-result-wide v20

    .line 735
    cmp-long v17, v15, v20

    .line 737
    if-lez v17, :cond_11

    .line 739
    sub-long v15, v15, v20

    .line 741
    :cond_11
    move-object/from16 v20, v2

    .line 743
    move-object/from16 v21, v3

    .line 745
    move-wide v2, v15

    .line 746
    invoke-virtual {v5, v13, v14, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 749
    add-int/lit8 v8, v8, 0x1

    .line 751
    move-object/from16 v2, v20

    .line 753
    move-object/from16 v3, v21

    .line 755
    goto :goto_c

    .line 756
    :cond_12
    move-object/from16 v20, v2

    .line 758
    move-object/from16 v21, v3

    .line 760
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 762
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 765
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 767
    if-eqz v0, :cond_13

    .line 769
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 772
    move-result-object v0

    .line 773
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 776
    move-result-object v0

    .line 777
    const-string v2, "Added latest delta time in state info for policy id %d"

    .line 779
    invoke-static {v9, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 782
    :cond_13
    invoke-static {v5}, Lcom/android/server/cpu/CpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    .line 785
    move-result-wide v2

    .line 786
    move-wide v15, v2

    .line 787
    goto :goto_e

    .line 788
    :goto_d
    const-wide/16 v15, 0x0

    .line 790
    :goto_e
    new-instance v0, Ljava/io/File;

    .line 792
    const-string v2, "affected_cpus"

    .line 794
    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 797
    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    .line 800
    move-result-object v17

    .line 801
    if-eqz v17, :cond_14

    .line 803
    invoke-virtual/range {v17 .. v17}, Landroid/util/IntArray;->size()I

    .line 806
    move-result v2

    .line 807
    if-nez v2, :cond_15

    .line 809
    :cond_14
    move-object/from16 v2, v21

    .line 811
    goto :goto_f

    .line 812
    :cond_15
    new-instance v0, Ljava/io/File;

    .line 814
    const-string/jumbo v2, "scaling_max_freq"

    .line 817
    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 820
    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    .line 823
    move-result-wide v13

    .line 824
    const-wide/16 v2, 0x0

    .line 826
    cmp-long v0, v13, v2

    .line 828
    if-nez v0, :cond_16

    .line 830
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 832
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 835
    move-result-object v0

    .line 836
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 839
    move-result-object v0

    .line 840
    const-string v2, "Missing max CPU frequency information at %s"

    .line 842
    invoke-static {v9, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    move-object/from16 v2, v21

    .line 847
    goto :goto_10

    .line 848
    :cond_16
    new-instance v0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;

    .line 850
    move-object v10, v0

    .line 851
    invoke-direct/range {v10 .. v17}, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;-><init>(JJJLandroid/util/IntArray;)V

    .line 854
    move-object/from16 v2, v21

    .line 856
    invoke-virtual {v2, v6, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 859
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 861
    if-eqz v3, :cond_17

    .line 863
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 866
    move-result-object v3

    .line 867
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 870
    move-result-object v0

    .line 871
    const-string v3, "Read dynamic policy info %s for policy id %d"

    .line 873
    invoke-static {v9, v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    goto :goto_10

    .line 877
    :goto_f
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 879
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 882
    move-result-object v0

    .line 883
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 886
    move-result-object v0

    .line 887
    const-string v3, "Failed to read CPU cores from %s"

    .line 889
    invoke-static {v9, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 892
    :cond_17
    :goto_10
    add-int/lit8 v5, v19, 0x1

    .line 894
    move-object v3, v2

    .line 895
    move-object/from16 v2, v20

    .line 897
    goto/16 :goto_5

    .line 899
    :cond_18
    move-object/from16 v20, v2

    .line 901
    move-object v2, v3

    .line 902
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 905
    move-result v0

    .line 906
    if-nez v0, :cond_19

    .line 908
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 910
    const-string v0, "Failed to read dynamic policy infos"

    .line 912
    invoke-static {v9, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :goto_11
    const/4 v1, 0x0

    .line 916
    return-object v1

    .line 917
    :cond_19
    new-instance v0, Landroid/util/SparseArray;

    .line 919
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 922
    const/4 v3, 0x0

    .line 923
    :goto_12
    iget-object v4, v1, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 925
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 928
    move-result v4

    .line 929
    if-ge v3, v4, :cond_24

    .line 931
    iget-object v4, v1, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 933
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 936
    move-result v4

    .line 937
    iget-object v5, v1, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 939
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 942
    move-result-object v5

    .line 943
    check-cast v5, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;

    .line 945
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 948
    move-result-object v6

    .line 949
    check-cast v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;

    .line 951
    if-nez v6, :cond_1b

    .line 953
    sget-boolean v5, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 955
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 958
    move-result-object v4

    .line 959
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 962
    move-result-object v4

    .line 963
    const-string v5, "Missing dynamic policy info for policy ID %d"

    .line 965
    invoke-static {v9, v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 968
    :cond_1a
    :goto_13
    move-object v15, v2

    .line 969
    move-object/from16 v8, v20

    .line 971
    goto/16 :goto_19

    .line 973
    :cond_1b
    iget-wide v7, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    .line 975
    const-wide/16 v10, 0x0

    .line 977
    cmp-long v12, v7, v10

    .line 979
    if-eqz v12, :cond_1c

    .line 981
    iget-wide v12, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    .line 983
    cmp-long v14, v12, v10

    .line 985
    if-nez v14, :cond_1d

    .line 987
    :cond_1c
    move-object v15, v2

    .line 988
    move-object/from16 v8, v20

    .line 990
    goto/16 :goto_18

    .line 992
    :cond_1d
    cmp-long v14, v7, v12

    .line 994
    if-lez v14, :cond_1e

    .line 996
    sget-boolean v5, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 998
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1001
    move-result-object v5

    .line 1002
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1005
    move-result-object v6

    .line 1006
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1009
    move-result-object v4

    .line 1010
    filled-new-array {v5, v6, v4}, [Ljava/lang/Object;

    .line 1013
    move-result-object v4

    .line 1014
    const-string v5, "Current CPU frequency (%d) is greater than maximum CPU frequency (%d) for policy ID (%d). Skipping CPU frequency policy"

    .line 1016
    invoke-static {v9, v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1019
    goto :goto_13

    .line 1020
    :cond_1e
    const/4 v4, 0x0

    .line 1021
    :goto_14
    iget-object v7, v5, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    .line 1023
    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    .line 1026
    move-result v7

    .line 1027
    if-ge v4, v7, :cond_1a

    .line 1029
    iget-object v7, v5, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    .line 1031
    invoke-virtual {v7, v4}, Landroid/util/IntArray;->get(I)I

    .line 1034
    move-result v7

    .line 1035
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1038
    move-result-object v8

    .line 1039
    check-cast v8, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 1041
    if-eqz v8, :cond_1f

    .line 1043
    sget-boolean v12, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1045
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1048
    move-result-object v12

    .line 1049
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 1052
    move-result-object v12

    .line 1053
    const-string v13, "CPU info already available for the CPU core %d"

    .line 1055
    invoke-static {v9, v13, v12}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1058
    iget-boolean v8, v8, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    .line 1060
    if-eqz v8, :cond_1f

    .line 1062
    :goto_15
    move-object v15, v2

    .line 1063
    move-object/from16 v8, v20

    .line 1065
    goto/16 :goto_17

    .line 1067
    :cond_1f
    iget-object v8, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 1069
    const/4 v12, -0x1

    .line 1070
    invoke-virtual {v8, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    .line 1073
    move-result v23

    .line 1074
    if-gez v23, :cond_20

    .line 1076
    sget-boolean v8, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1078
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1081
    move-result-object v7

    .line 1082
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1085
    move-result-object v7

    .line 1086
    const-string v8, "Missing cpuset information for the CPU core %d"

    .line 1088
    invoke-static {v9, v8, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1091
    goto :goto_15

    .line 1092
    :cond_20
    move-object/from16 v8, v20

    .line 1094
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1097
    move-result-object v12

    .line 1098
    move-object/from16 v31, v12

    .line 1100
    check-cast v31, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 1102
    iget-object v12, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    .line 1104
    invoke-virtual {v12, v7}, Landroid/util/IntArray;->indexOf(I)I

    .line 1107
    move-result v12

    .line 1108
    if-gez v12, :cond_21

    .line 1110
    new-instance v12, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 1112
    iget-wide v13, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    .line 1114
    const-wide/16 v29, 0x0

    .line 1116
    const/16 v24, 0x0

    .line 1118
    const-wide/16 v25, 0x0

    .line 1120
    move-object/from16 v21, v12

    .line 1122
    move/from16 v22, v7

    .line 1124
    move-wide/from16 v27, v13

    .line 1126
    invoke-direct/range {v21 .. v31}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    .line 1129
    invoke-virtual {v0, v7, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1132
    :goto_16
    move-object v15, v2

    .line 1133
    goto :goto_17

    .line 1134
    :cond_21
    if-nez v31, :cond_22

    .line 1136
    sget-boolean v12, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1141
    move-result-object v7

    .line 1142
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1145
    move-result-object v7

    .line 1146
    const-string v12, "Missing CPU usage information for online CPU core %d"

    .line 1148
    invoke-static {v9, v12, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    goto :goto_16

    .line 1152
    :cond_22
    new-instance v12, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 1154
    iget-wide v13, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    .line 1156
    iget-wide v10, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    .line 1158
    const/16 v24, 0x1

    .line 1160
    move-object v15, v2

    .line 1161
    iget-wide v1, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    .line 1163
    move-object/from16 v21, v12

    .line 1165
    move/from16 v22, v7

    .line 1167
    move-wide/from16 v25, v1

    .line 1169
    move-wide/from16 v27, v13

    .line 1171
    move-wide/from16 v29, v10

    .line 1173
    invoke-direct/range {v21 .. v31}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    .line 1176
    invoke-virtual {v0, v7, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1179
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1181
    if-eqz v1, :cond_23

    .line 1183
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1186
    move-result-object v1

    .line 1187
    filled-new-array {v12, v1}, [Ljava/lang/Object;

    .line 1190
    move-result-object v1

    .line 1191
    const-string v2, "Added %s for CPU core %d"

    .line 1193
    invoke-static {v9, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    :cond_23
    :goto_17
    add-int/lit8 v4, v4, 0x1

    .line 1198
    const-wide/16 v10, 0x0

    .line 1200
    move-object/from16 v1, p0

    .line 1202
    move-object/from16 v20, v8

    .line 1204
    move-object v2, v15

    .line 1205
    goto/16 :goto_14

    .line 1207
    :goto_18
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1212
    move-result-object v1

    .line 1213
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1216
    move-result-object v1

    .line 1217
    const-string v2, "Current and maximum CPU frequency information mismatch/missing for policy ID %d"

    .line 1219
    invoke-static {v9, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    :goto_19
    add-int/lit8 v3, v3, 0x1

    .line 1224
    move-object/from16 v1, p0

    .line 1226
    move-object/from16 v20, v8

    .line 1228
    move-object v2, v15

    .line 1229
    goto/16 :goto_12

    .line 1231
    :cond_24
    iput-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 1233
    return-object v0

    .line 1234
    :cond_25
    :goto_1a
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1236
    const-string v0, "Failed to read latest CPU usage stats"

    .line 1238
    invoke-static {v9, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    goto/16 :goto_11
.end method

.method public setCpuFreqDir(Ljava/io/File;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {v1, v0}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    .line 7
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "CpuMonitorService"

    .line 13
    if-eqz v1, :cond_3

    .line 15
    array-length v3, v1

    .line 16
    if-nez v3, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/cpu/CpuInfoReader;->populateCpuFreqPolicyDirsById([Ljava/io/File;)V

    .line 22
    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 27
    move-result v1

    .line 28
    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 30
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 33
    move-result v3

    .line 34
    if-eqz v1, :cond_2

    .line 36
    if-eq v1, v3, :cond_1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_2
    :goto_0
    sget-boolean v4, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v3

    .line 57
    filled-new-array {p1, v1, v3}, [Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 61
    const-string v1, "Failed to set CPU frequency directory to %s. Total CPU frequency policies (%d) under new path is either 0 or not equal to initial total CPU frequency policies. Clearing CPU frequency policy directories"

    .line 63
    invoke-static {v2, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 68
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 71
    return v0

    .line 72
    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 77
    move-result-object p0

    .line 78
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 81
    move-result-object p0

    .line 82
    const-string p1, "Failed to set CPU frequency directory. Missing policy directories at %s"

    .line 84
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return v0
.end method

.method public setProcStatFile(Ljava/io/File;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    sget-boolean p0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    const-string p1, "CpuMonitorService"

    .line 19
    const-string v0, "Missing proc stat file at %s"

    .line 21
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 28
    const/4 p0, 0x1

    .line 29
    return p0
.end method
