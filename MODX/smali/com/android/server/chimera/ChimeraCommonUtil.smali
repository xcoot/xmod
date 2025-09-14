.class public abstract Lcom/android/server/chimera/ChimeraCommonUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final ADJ_LEVELS:[I

.field public static final mAppLaunchInfoMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xd

    .line 3
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    .line 8
    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    .line 10
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 15
    sput-object v0, Lcom/android/server/chimera/ChimeraCommonUtil;->mAppLaunchInfoMap:Ljava/util/Map;

    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x3e7
        0x384
        0x352
        0x320
        0x2bc
        0x258
        0x1f4
        0x190
        0x12c
        0xfa
        0xc8
        0x64
        0x0
    .end array-data
.end method

.method public static getAnonSizeAndZramSize(I)[J
    .locals 11

    .line 1
    const-string v0, "SwapShared:"

    .line 3
    const-string v1, "Writeback:"

    .line 5
    const-string v2, "Pss_Anon:"

    .line 7
    const-string v3, "Swap:"

    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0}, Lcom/android/server/chimera/ChimeraCommonUtil;->getSmapsRollupParams(I[Ljava/lang/String;)[J

    .line 16
    move-result-object p0

    .line 17
    const/4 v0, 0x0

    .line 18
    aget-wide v1, p0, v0

    .line 20
    const-wide/16 v3, 0x0

    .line 22
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 25
    move-result-wide v1

    .line 26
    const/4 v5, 0x1

    .line 27
    aget-wide v6, p0, v5

    .line 29
    const/4 v8, 0x2

    .line 30
    aget-wide v9, p0, v8

    .line 32
    sub-long/2addr v6, v9

    .line 33
    const/4 v9, 0x3

    .line 34
    aget-wide v9, p0, v9

    .line 36
    sub-long/2addr v6, v9

    .line 37
    long-to-double v6, v6

    .line 38
    const-wide v9, 0x3fd51eb851eb851fL    # 0.33

    .line 43
    mul-double/2addr v6, v9

    .line 44
    double-to-long v6, v6

    .line 45
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 48
    move-result-wide v3

    .line 49
    new-array p0, v8, [J

    .line 51
    aput-wide v1, p0, v0

    .line 53
    aput-wide v3, p0, v5

    .line 55
    return-object p0
.end method

.method public static getAvailableMemoryKb(Lcom/android/server/chimera/SystemRepository;)J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/chimera/SystemRepository;->getAvailableMemory()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x400

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public static getDRAMUsed(IJ)J
    .locals 9

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p1, v0

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    if-gtz v2, :cond_0

    .line 10
    invoke-static {p0, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 13
    move-result-wide p1

    .line 14
    move v2, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v2, v5

    .line 17
    :goto_0
    const-string v6, "SwapPss:"

    .line 19
    const-string v7, "Writeback:"

    .line 21
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 24
    move-result-object v6

    .line 25
    invoke-static {p0, v6}, Lcom/android/server/chimera/ChimeraCommonUtil;->getSmapsRollupParams(I[Ljava/lang/String;)[J

    .line 28
    move-result-object v6

    .line 29
    if-nez v2, :cond_1

    .line 31
    aget-wide v7, v6, v5

    .line 33
    sub-long v7, p1, v7

    .line 35
    cmp-long v2, v7, v0

    .line 37
    if-gez v2, :cond_1

    .line 39
    invoke-static {p0, v4, v4}, Landroid/os/Debug;->getPss(I[J[J)J

    .line 42
    move-result-wide p1

    .line 43
    :cond_1
    aget-wide v4, v6, v5

    .line 45
    sub-long/2addr p1, v4

    .line 46
    long-to-double p0, p1

    .line 47
    aget-wide v2, v6, v3

    .line 49
    sub-long/2addr v4, v2

    .line 50
    long-to-double v2, v4

    .line 51
    const-wide v4, 0x3fd51eb851eb851fL    # 0.33

    .line 56
    mul-double/2addr v2, v4

    .line 57
    add-double/2addr v2, p0

    .line 58
    double-to-long p0, v2

    .line 59
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 62
    move-result-wide p0

    .line 63
    return-wide p0
.end method

.method public static getRamSizeGb()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/chimera/ChimeraCommonUtil;->getTotalMemorySizeKb()J

    .line 4
    move-result-wide v0

    .line 5
    long-to-float v0, v0

    .line 6
    const/high16 v1, 0x49800000    # 1048576.0f

    .line 8
    div-float/2addr v0, v1

    .line 9
    float-to-double v0, v0

    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 13
    move-result-wide v0

    .line 14
    double-to-int v0, v0

    .line 15
    return v0
.end method

.method public static getSmapsRollupParams(I[Ljava/lang/String;)[J
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const-string v1, "/proc/"

    .line 4
    const-string v2, "/smaps_rollup"

    .line 6
    invoke-static {p0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    new-array v1, v0, [J

    .line 12
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 14
    new-instance v3, Ljava/io/FileReader;

    .line 16
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    invoke-direct {v3, p0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 21
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const/4 p0, 0x0

    .line 25
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    if-eqz v3, :cond_3

    .line 31
    aget-object v4, p1, p0

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v4, "\\s+"

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 45
    move-result-object v3

    .line 46
    array-length v4, v3

    .line 47
    const/4 v5, 0x3

    .line 48
    if-ne v4, v5, :cond_2

    .line 50
    const/4 v4, 0x1

    .line 51
    aget-object v3, v3, v4

    .line 53
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 56
    move-result-wide v3

    .line 57
    aput-wide v3, v1, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 64
    if-ne p0, v0, :cond_0

    .line 66
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    return-object v1

    .line 70
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 73
    goto :goto_3

    .line 74
    :catchall_1
    move-exception p1

    .line 75
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 78
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 79
    :catch_0
    new-array p0, v0, [J

    .line 81
    return-object p0
.end method

.method public static getTotalMemorySizeKb()J
    .locals 5

    .line 1
    const-string v0, "/proc/meminfo"

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    .line 5
    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 10
    const/16 v2, 0x800

    .line 12
    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_0

    .line 21
    const-string v3, "MemTotal:"

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 26
    move-result v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const-string v3, "\\D+"

    .line 33
    const-string v4, ""

    .line 35
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    int-to-long v2, v2

    .line 44
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 50
    return-wide v2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    goto :goto_4

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    goto :goto_2

    .line 55
    :catchall_1
    move-exception v2

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 60
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 63
    goto :goto_5

    .line 64
    :goto_0
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 67
    goto :goto_1

    .line 68
    :catchall_2
    move-exception v0

    .line 69
    :try_start_8
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 72
    :goto_1
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 73
    :goto_2
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 76
    goto :goto_3

    .line 77
    :catchall_3
    move-exception v1

    .line 78
    :try_start_a
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 81
    :goto_3
    throw v0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 82
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    :goto_5
    const-wide/16 v0, 0x0

    .line 87
    return-wide v0
.end method
