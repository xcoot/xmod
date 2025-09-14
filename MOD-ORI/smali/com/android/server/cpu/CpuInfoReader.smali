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

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/android/server/cpu/CpuInfoReader;->PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "(?<freqKHz>[0-9]+)\\s(?<time>[0-9]+)"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/cpu/CpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    .line 19
    .line 20
    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    const-wide/16 v2, 0x3e8

    .line 25
    .line 26
    div-long/2addr v2, v0

    .line 27
    sput-wide v2, Lcom/android/server/cpu/CpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 38
    .line 39
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpusetDir:Ljava/io/File;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 44
    .line 45
    iput-wide p4, p0, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    .line 46
    .line 47
    return-void
.end method

.method public static calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    move-wide v4, v0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v6

    .line 10
    if-ge v3, v6, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, v3}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    .line 13
    .line 14
    .line 15
    move-result-wide v6

    .line 16
    long-to-double v6, v6

    .line 17
    add-double/2addr v4, v6

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    cmpl-double v3, v4, v0

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    const-wide/16 v0, 0x0

    .line 26
    .line 27
    return-wide v0

    .line 28
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ge v2, v3, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    invoke-virtual {p0, v2}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    .line 39
    .line 40
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

    .line 47
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

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lcom/android/server/cpu/CpuInfoReader;->MILLIS_PER_CLOCK_TICK:J

    .line 6
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

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    const-string v4, "CpuMonitorService"

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    const-string v0, "Failed to read CPU cores as the file \'%s\' doesn\'t exist"

    .line 24
    .line 25
    invoke-static {v4, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-object v3

    .line 29
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    new-instance v5, Landroid/util/IntArray;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    invoke-direct {v5, v6}, Landroid/util/IntArray;-><init>(I)V

    .line 41
    .line 42
    .line 43
    move v7, v6

    .line 44
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    if-ge v7, v8, :cond_8

    .line 49
    .line 50
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    check-cast v8, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    if-eqz v9, :cond_1

    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v9

    .line 71
    if-eqz v9, :cond_2

    .line 72
    .line 73
    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    .line 75
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

    .line 83
    .line 84
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 85
    .line 86
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

    .line 91
    .line 92
    aget-object v10, v8, v9

    .line 93
    .line 94
    const-string v11, "-"

    .line 95
    .line 96
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    array-length v11, v10

    .line 101
    const/4 v12, 0x2

    .line 102
    if-lt v11, v12, :cond_4

    .line 103
    .line 104
    aget-object v11, v10, v6

    .line 105
    .line 106
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    aget-object v10, v10, v0

    .line 111
    .line 112
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-le v11, v10, :cond_3

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :cond_3
    :goto_3
    if-gt v11, v10, :cond_6

    .line 120
    .line 121
    invoke-virtual {v5, v11}, Landroid/util/IntArray;->add(I)V

    .line 122
    .line 123
    .line 124
    add-int/2addr v11, v0

    .line 125
    goto :goto_3

    .line 126
    :cond_4
    array-length v11, v10

    .line 127
    if-ne v11, v0, :cond_5

    .line 128
    .line 129
    aget-object v10, v10, v6

    .line 130
    .line 131
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    invoke-virtual {v5, v10}, Landroid/util/IntArray;->add(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_5
    sget-boolean v10, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 140
    .line 141
    const-string v10, "Invalid CPU core range format %s"

    .line 142
    .line 143
    aget-object v11, v8, v9

    .line 144
    .line 145
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    invoke-static {v4, v10, v11}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .line 151
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

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    const-string v1, "Failed to read CPU cores from %s"

    .line 168
    .line 169
    invoke-static {v4, v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    goto :goto_8

    .line 173
    :goto_7
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 174
    .line 175
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p0

    .line 179
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    const-string v1, "Failed to read CPU cores from %s due to incorrect file format"

    .line 184
    .line 185
    invoke-static {v4, v0, v1, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    :goto_8
    return-object v3
.end method

.method public static readCpuFreqKHz(Ljava/io/File;)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "CpuMonitorService"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const-string v0, "CPU frequency file %s doesn\'t exist"

    .line 22
    .line 23
    invoke-static {v1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-wide v2

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_2

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    cmp-long p0, v0, v2

    .line 57
    .line 58
    if-lez p0, :cond_1

    .line 59
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

    .line 64
    .line 65
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string v4, "Failed to read integer content from file: %s"

    .line 74
    .line 75
    invoke-static {v1, v0, v4, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-wide v2
.end method

.method public static toCpusetCategoriesStr(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, 0x1

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "FLAG_CPUSET_CATEGORY_TOP_APP"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    :cond_0
    and-int/lit8 p0, p0, 0x2

    .line 16
    .line 17
    if-eqz p0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-lez p0, :cond_1

    .line 24
    .line 25
    const/16 p0, 0x7c

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string p0, "FLAG_CPUSET_CATEGORY_BACKGROUND"

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
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

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    array-length v1, p1

    .line 8
    if-ge v0, v1, :cond_2

    .line 9
    .line 10
    aget-object v1, p1, v0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x6

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "CpuMonitorService"

    .line 46
    .line 47
    const-string v3, "Cached policy directory %s for policy id %s"

    .line 48
    .line 49
    invoke-static {v2, v3, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 53
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

    .line 2
    .line 3
    iget-boolean v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mIsEnabled:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v2

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    iget-wide v5, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    .line 14
    .line 15
    const-wide/16 v7, 0x0

    .line 16
    .line 17
    cmp-long v0, v5, v7

    .line 18
    .line 19
    const-string v9, "CpuMonitorService"

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    sub-long v10, v3, v5

    .line 24
    .line 25
    iget-wide v12, v1, Lcom/android/server/cpu/CpuInfoReader;->mMinReadIntervalMillis:J

    .line 26
    .line 27
    cmp-long v0, v10, v12

    .line 28
    .line 29
    if-gez v0, :cond_1

    .line 30
    .line 31
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 32
    .line 33
    sub-long/2addr v3, v5

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v2, "Skipping reading from device and returning the last read CpuInfos. Last read was %d ms ago, min read interval is %d ms"

    .line 47
    .line 48
    invoke-static {v9, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_1
    iput-wide v3, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadUptimeMillis:J

    .line 55
    .line 56
    iput-object v2, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 57
    .line 58
    new-instance v3, Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 61
    .line 62
    .line 63
    :try_start_0
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v5, 0x0

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-ge v5, v6, :cond_3

    .line 79
    .line 80
    sget-object v6, Lcom/android/server/cpu/CpuInfoReader;->PROC_STAT_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    .line 82
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    check-cast v10, Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v6, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    if-nez v10, :cond_2

    .line 101
    .line 102
    goto/16 :goto_1

    .line 103
    .line 104
    :cond_2
    const-string/jumbo v10, "core"

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v10}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    new-instance v14, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 116
    .line 117
    const-string/jumbo v11, "userClockTicks"

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v11

    .line 124
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 125
    .line 126
    .line 127
    move-result-wide v12

    .line 128
    const-string/jumbo v11, "niceClockTicks"

    .line 129
    .line 130
    .line 131
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 136
    .line 137
    .line 138
    move-result-wide v15

    .line 139
    const-string/jumbo v11, "sysClockTicks"

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 147
    .line 148
    .line 149
    move-result-wide v17

    .line 150
    const-string/jumbo v11, "idleClockTicks"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v19

    .line 161
    const-string/jumbo v11, "iowaitClockTicks"

    .line 162
    .line 163
    .line 164
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 169
    .line 170
    .line 171
    move-result-wide v21

    .line 172
    const-string/jumbo v11, "irqClockTicks"

    .line 173
    .line 174
    .line 175
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v11

    .line 179
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 180
    .line 181
    .line 182
    move-result-wide v23

    .line 183
    const-string/jumbo v11, "softirqClockTicks"

    .line 184
    .line 185
    .line 186
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 191
    .line 192
    .line 193
    move-result-wide v25

    .line 194
    const-string/jumbo v11, "stealClockTicks"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v11

    .line 201
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v27

    .line 205
    const-string/jumbo v11, "guestClockTicks"

    .line 206
    .line 207
    .line 208
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    invoke-static {v11}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 213
    .line 214
    .line 215
    move-result-wide v29

    .line 216
    const-string/jumbo v11, "guestNiceClockTicks"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-static {v6}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 224
    .line 225
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

    .line 231
    .line 232
    move-wide/from16 v18, v19

    .line 233
    .line 234
    move-wide/from16 v20, v21

    .line 235
    .line 236
    move-wide/from16 v22, v23

    .line 237
    .line 238
    move-wide/from16 v24, v25

    .line 239
    .line 240
    move-wide/from16 v26, v27

    .line 241
    .line 242
    move-wide/from16 v28, v29

    .line 243
    .line 244
    move-wide/from16 v30, v31

    .line 245
    .line 246
    invoke-direct/range {v11 .. v31}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;-><init>(JJJJJJJJJJ)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v10, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .line 251
    .line 252
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :catch_0
    move-exception v0

    .line 257
    sget-boolean v5, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 258
    .line 259
    iget-object v5, v1, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    const-string v6, "Failed to read cpu usage stats from %s"

    .line 270
    .line 271
    invoke-static {v9, v0, v6, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    :cond_3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 275
    .line 276
    .line 277
    move-result v0

    .line 278
    if-nez v0, :cond_4

    .line 279
    .line 280
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 281
    .line 282
    const-string v0, "Failed to read cumulative CPU usage stats"

    .line 283
    .line 284
    invoke-static {v9, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    goto/16 :goto_4

    .line 288
    .line 289
    :cond_4
    new-instance v0, Landroid/util/SparseArray;

    .line 290
    .line 291
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 292
    .line 293
    .line 294
    const/4 v5, 0x0

    .line 295
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 296
    .line 297
    .line 298
    move-result v6

    .line 299
    if-ge v5, v6, :cond_6

    .line 300
    .line 301
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v10

    .line 309
    check-cast v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 310
    .line 311
    iget-object v11, v1, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 312
    .line 313
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v11

    .line 317
    check-cast v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 318
    .line 319
    if-nez v11, :cond_5

    .line 320
    .line 321
    move-object/from16 v34, v3

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_5
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 325
    .line 326
    .line 327
    new-instance v33, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 328
    .line 329
    move-object/from16 v12, v33

    .line 330
    .line 331
    iget-wide v13, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 332
    .line 333
    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 334
    .line 335
    invoke-static {v7, v8, v13, v14}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 336
    .line 337
    .line 338
    move-result-wide v13

    .line 339
    iget-wide v7, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 340
    .line 341
    move-object/from16 v34, v3

    .line 342
    .line 343
    iget-wide v2, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 344
    .line 345
    invoke-static {v7, v8, v2, v3}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 346
    .line 347
    .line 348
    move-result-wide v15

    .line 349
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 350
    .line 351
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 352
    .line 353
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 354
    .line 355
    .line 356
    move-result-wide v17

    .line 357
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 358
    .line 359
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 360
    .line 361
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 362
    .line 363
    .line 364
    move-result-wide v19

    .line 365
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 366
    .line 367
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 368
    .line 369
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 370
    .line 371
    .line 372
    move-result-wide v21

    .line 373
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 374
    .line 375
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 376
    .line 377
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 378
    .line 379
    .line 380
    move-result-wide v23

    .line 381
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 382
    .line 383
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 384
    .line 385
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 386
    .line 387
    .line 388
    move-result-wide v25

    .line 389
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 390
    .line 391
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 392
    .line 393
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 394
    .line 395
    .line 396
    move-result-wide v27

    .line 397
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 398
    .line 399
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 400
    .line 401
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 402
    .line 403
    .line 404
    move-result-wide v29

    .line 405
    iget-wide v2, v10, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 406
    .line 407
    iget-wide v7, v11, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 408
    .line 409
    invoke-static {v2, v3, v7, v8}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->diff(JJ)J

    .line 410
    .line 411
    .line 412
    move-result-wide v31

    .line 413
    invoke-direct/range {v12 .. v32}, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;-><init>(JJJJJJJJJJ)V

    .line 414
    .line 415
    .line 416
    move-object/from16 v10, v33

    .line 417
    .line 418
    :goto_3
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 419
    .line 420
    .line 421
    add-int/lit8 v5, v5, 0x1

    .line 422
    .line 423
    move-object/from16 v3, v34

    .line 424
    .line 425
    const/4 v2, 0x0

    .line 426
    const-wide/16 v7, 0x0

    .line 427
    .line 428
    goto/16 :goto_2

    .line 429
    .line 430
    :cond_6
    move-object v2, v3

    .line 431
    iput-object v2, v1, Lcom/android/server/cpu/CpuInfoReader;->mCumulativeCpuUsageStats:Landroid/util/SparseArray;

    .line 432
    .line 433
    move-object v2, v0

    .line 434
    :goto_4
    if-eqz v2, :cond_25

    .line 435
    .line 436
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 437
    .line 438
    .line 439
    move-result v0

    .line 440
    if-nez v0, :cond_7

    .line 441
    .line 442
    goto/16 :goto_1a

    .line 443
    .line 444
    :cond_7
    new-instance v3, Landroid/util/SparseArray;

    .line 445
    .line 446
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 447
    .line 448
    .line 449
    const/4 v5, 0x0

    .line 450
    :goto_5
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 451
    .line 452
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-ge v5, v0, :cond_18

    .line 457
    .line 458
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 459
    .line 460
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 461
    .line 462
    .line 463
    move-result v6

    .line 464
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 465
    .line 466
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    move-object v7, v0

    .line 471
    check-cast v7, Ljava/io/File;

    .line 472
    .line 473
    new-instance v0, Ljava/io/File;

    .line 474
    .line 475
    const-string/jumbo v8, "scaling_cur_freq"

    .line 476
    .line 477
    .line 478
    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    .line 482
    .line 483
    .line 484
    move-result-wide v11

    .line 485
    const-wide/16 v13, 0x0

    .line 486
    .line 487
    cmp-long v0, v11, v13

    .line 488
    .line 489
    if-nez v0, :cond_8

    .line 490
    .line 491
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 492
    .line 493
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    const-string v6, "Missing current frequency information at %s"

    .line 502
    .line 503
    invoke-static {v9, v6, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    move-object/from16 v20, v2

    .line 507
    .line 508
    move-object v2, v3

    .line 509
    move/from16 v19, v5

    .line 510
    .line 511
    goto/16 :goto_10

    .line 512
    .line 513
    :cond_8
    iget-boolean v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mHasTimeInStateFile:Z

    .line 514
    .line 515
    if-nez v0, :cond_9

    .line 516
    .line 517
    :goto_6
    move/from16 v19, v5

    .line 518
    .line 519
    :goto_7
    const/4 v10, 0x0

    .line 520
    goto/16 :goto_b

    .line 521
    .line 522
    :cond_9
    new-instance v8, Ljava/io/File;

    .line 523
    .line 524
    const-string/jumbo v0, "stats/time_in_state"

    .line 525
    .line 526
    .line 527
    invoke-direct {v8, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    invoke-static {v0}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;)Ljava/util/List;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 539
    .line 540
    .line 541
    move-result v10

    .line 542
    if-eqz v10, :cond_a

    .line 543
    .line 544
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 545
    .line 546
    const-string v0, "Empty time in state file at %s"

    .line 547
    .line 548
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v10

    .line 552
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v10

    .line 556
    invoke-static {v9, v0, v10}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    .line 558
    .line 559
    goto :goto_6

    .line 560
    :catch_1
    move-exception v0

    .line 561
    move/from16 v19, v5

    .line 562
    .line 563
    goto :goto_a

    .line 564
    :cond_a
    new-instance v10, Landroid/util/LongSparseLongArray;

    .line 565
    .line 566
    invoke-direct {v10}, Landroid/util/LongSparseLongArray;-><init>()V

    .line 567
    .line 568
    .line 569
    const/4 v13, 0x0

    .line 570
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 571
    .line 572
    .line 573
    move-result v14

    .line 574
    if-ge v13, v14, :cond_c

    .line 575
    .line 576
    sget-object v14, Lcom/android/server/cpu/CpuInfoReader;->TIME_IN_STATE_PATTERN:Ljava/util/regex/Pattern;

    .line 577
    .line 578
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v15

    .line 582
    check-cast v15, Ljava/lang/String;

    .line 583
    .line 584
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v15

    .line 588
    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 589
    .line 590
    .line 591
    move-result-object v14

    .line 592
    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    .line 593
    .line 594
    .line 595
    move-result v15

    .line 596
    if-nez v15, :cond_b

    .line 597
    .line 598
    move/from16 v19, v5

    .line 599
    .line 600
    goto :goto_9

    .line 601
    :cond_b
    const-string/jumbo v15, "freqKHz"

    .line 602
    .line 603
    .line 604
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 608
    move/from16 v19, v5

    .line 609
    .line 610
    :try_start_2
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 611
    .line 612
    .line 613
    move-result-wide v4

    .line 614
    const-string/jumbo v15, "time"

    .line 615
    .line 616
    .line 617
    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->group(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v14

    .line 621
    invoke-static {v14}, Lcom/android/server/cpu/CpuInfoReader;->clockTickStrToMillis(Ljava/lang/String;)J

    .line 622
    .line 623
    .line 624
    move-result-wide v14

    .line 625
    invoke-virtual {v10, v4, v5, v14, v15}, Landroid/util/LongSparseLongArray;->put(JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 626
    .line 627
    .line 628
    :goto_9
    add-int/lit8 v13, v13, 0x1

    .line 629
    .line 630
    move/from16 v5, v19

    .line 631
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

    .line 636
    .line 637
    goto :goto_b

    .line 638
    :goto_a
    sget-boolean v4, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 639
    .line 640
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v4

    .line 644
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object v4

    .line 648
    const-string v5, "Failed to read CPU time in state from file: %s"

    .line 649
    .line 650
    invoke-static {v9, v0, v5, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    .line 652
    .line 653
    goto/16 :goto_7

    .line 654
    .line 655
    :goto_b
    if-eqz v10, :cond_d

    .line 656
    .line 657
    invoke-virtual {v10}, Landroid/util/LongSparseLongArray;->size()I

    .line 658
    .line 659
    .line 660
    move-result v0

    .line 661
    if-nez v0, :cond_e

    .line 662
    .line 663
    :cond_d
    move-object/from16 v20, v2

    .line 664
    .line 665
    move-object/from16 v21, v3

    .line 666
    .line 667
    goto/16 :goto_d

    .line 668
    .line 669
    :cond_e
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 670
    .line 671
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    check-cast v0, Landroid/util/LongSparseLongArray;

    .line 676
    .line 677
    if-nez v0, :cond_10

    .line 678
    .line 679
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 680
    .line 681
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 682
    .line 683
    .line 684
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 685
    .line 686
    if-eqz v0, :cond_f

    .line 687
    .line 688
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v0

    .line 696
    const-string v4, "Added aggregated time in state info for policy id %d"

    .line 697
    .line 698
    invoke-static {v9, v4, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 699
    .line 700
    .line 701
    :cond_f
    invoke-static {v10}, Lcom/android/server/cpu/CpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    .line 702
    .line 703
    .line 704
    move-result-wide v4

    .line 705
    move-object/from16 v20, v2

    .line 706
    .line 707
    move-object/from16 v21, v3

    .line 708
    .line 709
    move-wide v15, v4

    .line 710
    goto :goto_e

    .line 711
    :cond_10
    invoke-virtual {v10}, Landroid/util/LongSparseLongArray;->size()I

    .line 712
    .line 713
    .line 714
    move-result v4

    .line 715
    new-instance v5, Landroid/util/LongSparseLongArray;

    .line 716
    .line 717
    invoke-direct {v5, v4}, Landroid/util/LongSparseLongArray;-><init>(I)V

    .line 718
    .line 719
    .line 720
    const/4 v8, 0x0

    .line 721
    :goto_c
    if-ge v8, v4, :cond_12

    .line 722
    .line 723
    invoke-virtual {v10, v8}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    .line 724
    .line 725
    .line 726
    move-result-wide v13

    .line 727
    invoke-virtual {v10, v8}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    .line 728
    .line 729
    .line 730
    move-result-wide v15

    .line 731
    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseLongArray;->get(J)J

    .line 732
    .line 733
    .line 734
    move-result-wide v20

    .line 735
    cmp-long v17, v15, v20

    .line 736
    .line 737
    if-lez v17, :cond_11

    .line 738
    .line 739
    sub-long v15, v15, v20

    .line 740
    .line 741
    :cond_11
    move-object/from16 v20, v2

    .line 742
    .line 743
    move-object/from16 v21, v3

    .line 744
    .line 745
    move-wide v2, v15

    .line 746
    invoke-virtual {v5, v13, v14, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    .line 747
    .line 748
    .line 749
    add-int/lit8 v8, v8, 0x1

    .line 750
    .line 751
    move-object/from16 v2, v20

    .line 752
    .line 753
    move-object/from16 v3, v21

    .line 754
    .line 755
    goto :goto_c

    .line 756
    :cond_12
    move-object/from16 v20, v2

    .line 757
    .line 758
    move-object/from16 v21, v3

    .line 759
    .line 760
    iget-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mTimeInStateByPolicyId:Landroid/util/SparseArray;

    .line 761
    .line 762
    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 763
    .line 764
    .line 765
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 766
    .line 767
    if-eqz v0, :cond_13

    .line 768
    .line 769
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 770
    .line 771
    .line 772
    move-result-object v0

    .line 773
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v0

    .line 777
    const-string v2, "Added latest delta time in state info for policy id %d"

    .line 778
    .line 779
    invoke-static {v9, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 780
    .line 781
    .line 782
    :cond_13
    invoke-static {v5}, Lcom/android/server/cpu/CpuInfoReader;->calculateAvgCpuFreq(Landroid/util/LongSparseLongArray;)J

    .line 783
    .line 784
    .line 785
    move-result-wide v2

    .line 786
    move-wide v15, v2

    .line 787
    goto :goto_e

    .line 788
    :goto_d
    const-wide/16 v15, 0x0

    .line 789
    .line 790
    :goto_e
    new-instance v0, Ljava/io/File;

    .line 791
    .line 792
    const-string v2, "affected_cpus"

    .line 793
    .line 794
    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 795
    .line 796
    .line 797
    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuCores(Ljava/io/File;)Landroid/util/IntArray;

    .line 798
    .line 799
    .line 800
    move-result-object v17

    .line 801
    if-eqz v17, :cond_14

    .line 802
    .line 803
    invoke-virtual/range {v17 .. v17}, Landroid/util/IntArray;->size()I

    .line 804
    .line 805
    .line 806
    move-result v2

    .line 807
    if-nez v2, :cond_15

    .line 808
    .line 809
    :cond_14
    move-object/from16 v2, v21

    .line 810
    .line 811
    goto :goto_f

    .line 812
    :cond_15
    new-instance v0, Ljava/io/File;

    .line 813
    .line 814
    const-string/jumbo v2, "scaling_max_freq"

    .line 815
    .line 816
    .line 817
    invoke-direct {v0, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 818
    .line 819
    .line 820
    invoke-static {v0}, Lcom/android/server/cpu/CpuInfoReader;->readCpuFreqKHz(Ljava/io/File;)J

    .line 821
    .line 822
    .line 823
    move-result-wide v13

    .line 824
    const-wide/16 v2, 0x0

    .line 825
    .line 826
    cmp-long v0, v13, v2

    .line 827
    .line 828
    if-nez v0, :cond_16

    .line 829
    .line 830
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 831
    .line 832
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v0

    .line 840
    const-string v2, "Missing max CPU frequency information at %s"

    .line 841
    .line 842
    invoke-static {v9, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    .line 844
    .line 845
    move-object/from16 v2, v21

    .line 846
    .line 847
    goto :goto_10

    .line 848
    :cond_16
    new-instance v0, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;

    .line 849
    .line 850
    move-object v10, v0

    .line 851
    invoke-direct/range {v10 .. v17}, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;-><init>(JJJLandroid/util/IntArray;)V

    .line 852
    .line 853
    .line 854
    move-object/from16 v2, v21

    .line 855
    .line 856
    invoke-virtual {v2, v6, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 857
    .line 858
    .line 859
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 860
    .line 861
    if-eqz v3, :cond_17

    .line 862
    .line 863
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    filled-new-array {v0, v3}, [Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v0

    .line 871
    const-string v3, "Read dynamic policy info %s for policy id %d"

    .line 872
    .line 873
    invoke-static {v9, v3, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    goto :goto_10

    .line 877
    :goto_f
    sget-boolean v3, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 878
    .line 879
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    const-string v3, "Failed to read CPU cores from %s"

    .line 888
    .line 889
    invoke-static {v9, v3, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 890
    .line 891
    .line 892
    :cond_17
    :goto_10
    add-int/lit8 v5, v19, 0x1

    .line 893
    .line 894
    move-object v3, v2

    .line 895
    move-object/from16 v2, v20

    .line 896
    .line 897
    goto/16 :goto_5

    .line 898
    .line 899
    :cond_18
    move-object/from16 v20, v2

    .line 900
    .line 901
    move-object v2, v3

    .line 902
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    if-nez v0, :cond_19

    .line 907
    .line 908
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 909
    .line 910
    const-string v0, "Failed to read dynamic policy infos"

    .line 911
    .line 912
    invoke-static {v9, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .line 914
    .line 915
    :goto_11
    const/4 v1, 0x0

    .line 916
    return-object v1

    .line 917
    :cond_19
    new-instance v0, Landroid/util/SparseArray;

    .line 918
    .line 919
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 920
    .line 921
    .line 922
    const/4 v3, 0x0

    .line 923
    :goto_12
    iget-object v4, v1, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 924
    .line 925
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 926
    .line 927
    .line 928
    move-result v4

    .line 929
    if-ge v3, v4, :cond_24

    .line 930
    .line 931
    iget-object v4, v1, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 932
    .line 933
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 934
    .line 935
    .line 936
    move-result v4

    .line 937
    iget-object v5, v1, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 938
    .line 939
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 940
    .line 941
    .line 942
    move-result-object v5

    .line 943
    check-cast v5, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;

    .line 944
    .line 945
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 946
    .line 947
    .line 948
    move-result-object v6

    .line 949
    check-cast v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;

    .line 950
    .line 951
    if-nez v6, :cond_1b

    .line 952
    .line 953
    sget-boolean v5, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 954
    .line 955
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 956
    .line 957
    .line 958
    move-result-object v4

    .line 959
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v4

    .line 963
    const-string v5, "Missing dynamic policy info for policy ID %d"

    .line 964
    .line 965
    invoke-static {v9, v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 966
    .line 967
    .line 968
    :cond_1a
    :goto_13
    move-object v15, v2

    .line 969
    move-object/from16 v8, v20

    .line 970
    .line 971
    goto/16 :goto_19

    .line 972
    .line 973
    :cond_1b
    iget-wide v7, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    .line 974
    .line 975
    const-wide/16 v10, 0x0

    .line 976
    .line 977
    cmp-long v12, v7, v10

    .line 978
    .line 979
    if-eqz v12, :cond_1c

    .line 980
    .line 981
    iget-wide v12, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    .line 982
    .line 983
    cmp-long v14, v12, v10

    .line 984
    .line 985
    if-nez v14, :cond_1d

    .line 986
    .line 987
    :cond_1c
    move-object v15, v2

    .line 988
    move-object/from16 v8, v20

    .line 989
    .line 990
    goto/16 :goto_18

    .line 991
    .line 992
    :cond_1d
    cmp-long v14, v7, v12

    .line 993
    .line 994
    if-lez v14, :cond_1e

    .line 995
    .line 996
    sget-boolean v5, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 997
    .line 998
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 999
    .line 1000
    .line 1001
    move-result-object v5

    .line 1002
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v6

    .line 1006
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v4

    .line 1010
    filled-new-array {v5, v6, v4}, [Ljava/lang/Object;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v4

    .line 1014
    const-string v5, "Current CPU frequency (%d) is greater than maximum CPU frequency (%d) for policy ID (%d). Skipping CPU frequency policy"

    .line 1015
    .line 1016
    invoke-static {v9, v5, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1017
    .line 1018
    .line 1019
    goto :goto_13

    .line 1020
    :cond_1e
    const/4 v4, 0x0

    .line 1021
    :goto_14
    iget-object v7, v5, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    .line 1022
    .line 1023
    invoke-virtual {v7}, Landroid/util/IntArray;->size()I

    .line 1024
    .line 1025
    .line 1026
    move-result v7

    .line 1027
    if-ge v4, v7, :cond_1a

    .line 1028
    .line 1029
    iget-object v7, v5, Lcom/android/server/cpu/CpuInfoReader$StaticPolicyInfo;->relatedCpuCores:Landroid/util/IntArray;

    .line 1030
    .line 1031
    invoke-virtual {v7, v4}, Landroid/util/IntArray;->get(I)I

    .line 1032
    .line 1033
    .line 1034
    move-result v7

    .line 1035
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v8

    .line 1039
    check-cast v8, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 1040
    .line 1041
    if-eqz v8, :cond_1f

    .line 1042
    .line 1043
    sget-boolean v12, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1044
    .line 1045
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v12

    .line 1049
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v12

    .line 1053
    const-string v13, "CPU info already available for the CPU core %d"

    .line 1054
    .line 1055
    invoke-static {v9, v13, v12}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    .line 1057
    .line 1058
    iget-boolean v8, v8, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;->isOnline:Z

    .line 1059
    .line 1060
    if-eqz v8, :cond_1f

    .line 1061
    .line 1062
    :goto_15
    move-object v15, v2

    .line 1063
    move-object/from16 v8, v20

    .line 1064
    .line 1065
    goto/16 :goto_17

    .line 1066
    .line 1067
    :cond_1f
    iget-object v8, v1, Lcom/android/server/cpu/CpuInfoReader;->mCpusetCategoriesByCpus:Landroid/util/SparseIntArray;

    .line 1068
    .line 1069
    const/4 v12, -0x1

    .line 1070
    invoke-virtual {v8, v7, v12}, Landroid/util/SparseIntArray;->get(II)I

    .line 1071
    .line 1072
    .line 1073
    move-result v23

    .line 1074
    if-gez v23, :cond_20

    .line 1075
    .line 1076
    sget-boolean v8, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1077
    .line 1078
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1079
    .line 1080
    .line 1081
    move-result-object v7

    .line 1082
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1083
    .line 1084
    .line 1085
    move-result-object v7

    .line 1086
    const-string v8, "Missing cpuset information for the CPU core %d"

    .line 1087
    .line 1088
    invoke-static {v9, v8, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    .line 1090
    .line 1091
    goto :goto_15

    .line 1092
    :cond_20
    move-object/from16 v8, v20

    .line 1093
    .line 1094
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1095
    .line 1096
    .line 1097
    move-result-object v12

    .line 1098
    move-object/from16 v31, v12

    .line 1099
    .line 1100
    check-cast v31, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 1101
    .line 1102
    iget-object v12, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->affectedCpuCores:Landroid/util/IntArray;

    .line 1103
    .line 1104
    invoke-virtual {v12, v7}, Landroid/util/IntArray;->indexOf(I)I

    .line 1105
    .line 1106
    .line 1107
    move-result v12

    .line 1108
    if-gez v12, :cond_21

    .line 1109
    .line 1110
    new-instance v12, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 1111
    .line 1112
    iget-wide v13, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    .line 1113
    .line 1114
    const-wide/16 v29, 0x0

    .line 1115
    .line 1116
    const/16 v24, 0x0

    .line 1117
    .line 1118
    const-wide/16 v25, 0x0

    .line 1119
    .line 1120
    move-object/from16 v21, v12

    .line 1121
    .line 1122
    move/from16 v22, v7

    .line 1123
    .line 1124
    move-wide/from16 v27, v13

    .line 1125
    .line 1126
    invoke-direct/range {v21 .. v31}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    .line 1127
    .line 1128
    .line 1129
    invoke-virtual {v0, v7, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1130
    .line 1131
    .line 1132
    :goto_16
    move-object v15, v2

    .line 1133
    goto :goto_17

    .line 1134
    :cond_21
    if-nez v31, :cond_22

    .line 1135
    .line 1136
    sget-boolean v12, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1137
    .line 1138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v7

    .line 1142
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v7

    .line 1146
    const-string v12, "Missing CPU usage information for online CPU core %d"

    .line 1147
    .line 1148
    invoke-static {v9, v12, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1149
    .line 1150
    .line 1151
    goto :goto_16

    .line 1152
    :cond_22
    new-instance v12, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;

    .line 1153
    .line 1154
    iget-wide v13, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->maxCpuFreqKHz:J

    .line 1155
    .line 1156
    iget-wide v10, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->avgTimeInStateCpuFreqKHz:J

    .line 1157
    .line 1158
    const/16 v24, 0x1

    .line 1159
    .line 1160
    move-object v15, v2

    .line 1161
    iget-wide v1, v6, Lcom/android/server/cpu/CpuInfoReader$DynamicPolicyInfo;->curCpuFreqKHz:J

    .line 1162
    .line 1163
    move-object/from16 v21, v12

    .line 1164
    .line 1165
    move/from16 v22, v7

    .line 1166
    .line 1167
    move-wide/from16 v25, v1

    .line 1168
    .line 1169
    move-wide/from16 v27, v13

    .line 1170
    .line 1171
    move-wide/from16 v29, v10

    .line 1172
    .line 1173
    invoke-direct/range {v21 .. v31}, Lcom/android/server/cpu/CpuInfoReader$CpuInfo;-><init>(IIZJJJLcom/android/server/cpu/CpuInfoReader$CpuUsageStats;)V

    .line 1174
    .line 1175
    .line 1176
    invoke-virtual {v0, v7, v12}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1177
    .line 1178
    .line 1179
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1180
    .line 1181
    if-eqz v1, :cond_23

    .line 1182
    .line 1183
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v1

    .line 1187
    filled-new-array {v12, v1}, [Ljava/lang/Object;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v1

    .line 1191
    const-string v2, "Added %s for CPU core %d"

    .line 1192
    .line 1193
    invoke-static {v9, v2, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1194
    .line 1195
    .line 1196
    :cond_23
    :goto_17
    add-int/lit8 v4, v4, 0x1

    .line 1197
    .line 1198
    const-wide/16 v10, 0x0

    .line 1199
    .line 1200
    move-object/from16 v1, p0

    .line 1201
    .line 1202
    move-object/from16 v20, v8

    .line 1203
    .line 1204
    move-object v2, v15

    .line 1205
    goto/16 :goto_14

    .line 1206
    .line 1207
    :goto_18
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1208
    .line 1209
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1210
    .line 1211
    .line 1212
    move-result-object v1

    .line 1213
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v1

    .line 1217
    const-string v2, "Current and maximum CPU frequency information mismatch/missing for policy ID %d"

    .line 1218
    .line 1219
    invoke-static {v9, v2, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1220
    .line 1221
    .line 1222
    :goto_19
    add-int/lit8 v3, v3, 0x1

    .line 1223
    .line 1224
    move-object/from16 v1, p0

    .line 1225
    .line 1226
    move-object/from16 v20, v8

    .line 1227
    .line 1228
    move-object v2, v15

    .line 1229
    goto/16 :goto_12

    .line 1230
    .line 1231
    :cond_24
    iput-object v0, v1, Lcom/android/server/cpu/CpuInfoReader;->mLastReadCpuInfos:Landroid/util/SparseArray;

    .line 1232
    .line 1233
    return-object v0

    .line 1234
    :cond_25
    :goto_1a
    sget-boolean v0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 1235
    .line 1236
    const-string v0, "Failed to read latest CPU usage stats"

    .line 1237
    .line 1238
    invoke-static {v9, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    .line 1240
    .line 1241
    goto/16 :goto_11
.end method

.method public setCpuFreqDir(Ljava/io/File;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;

    .line 3
    .line 4
    invoke-direct {v1, v0}, Lcom/android/server/cpu/CpuInfoReader$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "CpuMonitorService"

    .line 12
    .line 13
    if-eqz v1, :cond_3

    .line 14
    .line 15
    array-length v3, v1

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/cpu/CpuInfoReader;->populateCpuFreqPolicyDirsById([Ljava/io/File;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iget-object v3, p0, Lcom/android/server/cpu/CpuInfoReader;->mStaticPolicyInfoById:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    if-eq v1, v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqDir:Ljava/io/File;

    .line 40
    .line 41
    const/4 p0, 0x1

    .line 42
    return p0

    .line 43
    :cond_2
    :goto_0
    sget-boolean v4, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    filled-new-array {p1, v1, v3}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v1, "Failed to set CPU frequency directory to %s. Total CPU frequency policies (%d) under new path is either 0 or not equal to initial total CPU frequency policies. Clearing CPU frequency policy directories"

    .line 62
    .line 63
    invoke-static {v2, v1, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/cpu/CpuInfoReader;->mCpuFreqPolicyDirsById:Landroid/util/SparseArray;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 69
    .line 70
    .line 71
    return v0

    .line 72
    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    const-string p1, "Failed to set CPU frequency directory. Missing policy directories at %s"

    .line 83
    .line 84
    invoke-static {v2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return v0
.end method

.method public setProcStatFile(Ljava/io/File;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-boolean p0, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string p1, "CpuMonitorService"

    .line 18
    .line 19
    const-string v0, "Missing proc stat file at %s"

    .line 20
    .line 21
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/android/server/cpu/CpuInfoReader;->mProcStatFile:Ljava/io/File;

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0
.end method
