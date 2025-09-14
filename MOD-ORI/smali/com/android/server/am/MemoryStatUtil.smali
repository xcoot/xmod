.class public abstract Lcom/android/server/am/MemoryStatUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CACHE_IN_BYTES:Ljava/util/regex/Pattern;

.field public static final DEVICE_HAS_PER_APP_MEMCG:Z

.field public static final PAGE_SIZE:I

.field public static final PGFAULT:Ljava/util/regex/Pattern;

.field public static final PGMAJFAULT:Ljava/util/regex/Pattern;

.field public static final RSS_IN_BYTES:Ljava/util/regex/Pattern;

.field public static final SWAP_IN_BYTES:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    long-to-int v0, v0

    .line 8
    sput v0, Lcom/android/server/am/MemoryStatUtil;->PAGE_SIZE:I

    .line 9
    .line 10
    const-string/jumbo v0, "ro.config.per_app_memcg"

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput-boolean v0, Lcom/android/server/am/MemoryStatUtil;->DEVICE_HAS_PER_APP_MEMCG:Z

    .line 19
    .line 20
    const-string/jumbo v0, "total_pgfault (\\d+)"

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    .line 28
    .line 29
    const-string/jumbo v0, "total_pgmajfault (\\d+)"

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    .line 37
    .line 38
    const-string/jumbo v0, "total_rss (\\d+)"

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    .line 46
    .line 47
    const-string/jumbo v0, "total_cache (\\d+)"

    .line 48
    .line 49
    .line 50
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 55
    .line 56
    const-string/jumbo v0, "total_swap (\\d+)"

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    .line 64
    .line 65
    return-void
.end method

.method public static parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->PGFAULT:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 22
    .line 23
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->PGMAJFAULT:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 30
    .line 31
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->RSS_IN_BYTES:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    .line 38
    .line 39
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->CACHE_IN_BYTES:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    .line 46
    .line 47
    sget-object v1, Lcom/android/server/am/MemoryStatUtil;->SWAP_IN_BYTES:Ljava/util/regex/Pattern;

    .line 48
    .line 49
    invoke-static {v1, p0}, Lcom/android/server/am/MemoryStatUtil;->tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    iput-wide v1, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public static parseMemoryStatFromProcfs(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v1, " "

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    array-length v1, p0

    .line 18
    const/16 v2, 0x18

    .line 19
    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    :try_start_0
    new-instance v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    aget-object v2, p0, v2

    .line 31
    .line 32
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iput-wide v2, v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    .line 37
    .line 38
    const/16 v2, 0xb

    .line 39
    .line 40
    aget-object v2, p0, v2

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    iput-wide v2, v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    .line 47
    .line 48
    const/16 v2, 0x17

    .line 49
    .line 50
    aget-object p0, p0, v2

    .line 51
    .line 52
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    sget p0, Lcom/android/server/am/MemoryStatUtil;->PAGE_SIZE:I

    .line 57
    .line 58
    int-to-long v4, p0

    .line 59
    mul-long/2addr v2, v4

    .line 60
    iput-wide v2, v1, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    return-object v1

    .line 63
    :catch_0
    move-exception p0

    .line 64
    const-string v1, "ActivityManager"

    .line 65
    .line 66
    const-string v2, "Failed to parse value"

    .line 67
    .line 68
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    .line 70
    .line 71
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;
    .locals 7

    .line 1
    sget-boolean v0, Lcom/android/server/am/MemoryStatUtil;->DEVICE_HAS_PER_APP_MEMCG:Z

    .line 2
    .line 3
    const-string v1, "Failed to read file:"

    .line 4
    .line 5
    const-string v2, "ActivityManager"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 12
    .line 13
    const-string v0, "/dev/memcg/apps/uid_"

    .line 14
    .line 15
    const-string v5, "/pid_"

    .line 16
    .line 17
    const-string v6, "/memory.stat"

    .line 18
    .line 19
    invoke-static {p0, p1, v0, v5, v6}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance p1, Ljava/io/File;

    .line 24
    .line 25
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :try_start_0
    invoke-static {p1, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromMemcg(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    goto :goto_2

    .line 49
    :cond_1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 50
    .line 51
    const-string p0, "/proc/"

    .line 52
    .line 53
    const-string v0, "/stat"

    .line 54
    .line 55
    invoke-static {p1, p0, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    new-instance p1, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_2

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :try_start_1
    invoke-static {p1, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception p0

    .line 77
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .line 79
    .line 80
    :goto_1
    invoke-static {v4}, Lcom/android/server/am/MemoryStatUtil;->parseMemoryStatFromProcfs(Ljava/lang/String;)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    :goto_2
    return-object p0
.end method

.method public static tryParseLong(Ljava/util/regex/Pattern;Ljava/lang/String;)J
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    :try_start_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    return-wide v0

    .line 26
    :goto_1
    const-string p1, "ActivityManager"

    .line 27
    .line 28
    const-string v2, "Failed to parse value"

    .line 29
    .line 30
    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    .line 32
    .line 33
    return-wide v0
.end method
