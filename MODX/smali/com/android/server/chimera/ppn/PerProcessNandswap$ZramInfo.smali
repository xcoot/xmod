.class public abstract Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mWritebackEnabled:I

.field public static mWritebackLimitEnabled:I


# direct methods
.method public static -$$Nest$smreadZramBdstat()[J
    .locals 9

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 6
    new-instance v3, Ljava/io/FileReader;

    .line 8
    const-string v4, "/sys/block/zram0/bd_stat"

    .line 10
    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    const-string v4, "\\s+"

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo$$ExternalSyntheticLambda0;

    .line 36
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/stream/LongStream;->toArray()[J

    .line 46
    move-result-object v3

    .line 47
    array-length v4, v3

    .line 48
    const/16 v5, 0xa

    .line 50
    if-le v4, v5, :cond_2

    .line 52
    const/16 v4, 0x8

    .line 54
    new-array v5, v4, [J

    .line 56
    const/4 v6, 0x0

    .line 57
    :goto_0
    if-ge v6, v4, :cond_1

    .line 59
    const/4 v7, 0x5

    .line 60
    if-ge v6, v7, :cond_0

    .line 62
    aget-wide v7, v3, v6

    .line 64
    aput-wide v7, v5, v6

    .line 66
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v3

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    add-int/lit8 v7, v6, 0x4

    .line 71
    aget-wide v7, v3, v7

    .line 73
    aput-wide v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 81
    goto :goto_5

    .line 82
    :cond_2
    :try_start_3
    array-length v4, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 83
    const/4 v5, 0x7

    .line 84
    if-gt v4, v5, :cond_3

    .line 86
    move-object v3, v1

    .line 87
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    move-object v1, v3

    .line 91
    goto :goto_4

    .line 92
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 95
    goto :goto_3

    .line 96
    :catchall_1
    move-exception v2

    .line 97
    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 100
    :goto_3
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 101
    :catch_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 107
    const-string/jumbo v2, "failed to read /sys/block/zram0/bd_stat"

    .line 110
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    :goto_4
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_5

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 121
    const-string v3, "bdstats : "

    .line 123
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 137
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_5
    move-object v5, v1

    .line 141
    :goto_5
    return-object v5
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->FAST_MADVISE_ENABLED:Z

    .line 3
    const-string v0, "PerProcessNandswap"

    .line 5
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    .line 7
    const/4 v0, -0x1

    .line 8
    sput v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 10
    sput v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 12
    return-void
.end method

.method public static isWritebackEnabled()Z
    .locals 5

    .line 1
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 8
    const-string v0, "/sys/block/zram0/writeback_limit"

    .line 10
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    const-string v0, "/data/per_boot/zram_swap"

    .line 20
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    sput v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "/data/per_boot/zram_swap not exist"

    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "/sys/block/zram0/writeback_limit not exist"

    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 44
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v4, "isWritebackEnabled: "

    .line 49
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    sget v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 54
    invoke-static {v0, v4, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 57
    :cond_2
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 59
    if-ne v0, v3, :cond_3

    .line 61
    move v2, v3

    .line 62
    :cond_3
    return v2
.end method

.method public static isWritebackLimitEnabled()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    .line 3
    sget v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 11
    new-instance v2, Ljava/io/FileReader;

    .line 13
    const-string v4, "/sys/block/zram0/writeback_limit_enable"

    .line 15
    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    move-result v2

    .line 29
    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception v2

    .line 36
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    :catch_0
    sput v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 47
    const-string/jumbo v1, "failed to read /sys/block/zram0/writeback_limit_enable"

    .line 50
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    const-string/jumbo v2, "isWritebackLimitEnabled: "

    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    sget v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 63
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 66
    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 68
    const/4 v1, 0x1

    .line 69
    if-ne v0, v1, :cond_1

    .line 71
    move v3, v1

    .line 72
    :cond_1
    return v3
.end method

.method public static isWritebackQuotaAvailable()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackLimitEnabled()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    cmp-long v0, v0, v2

    .line 21
    if-gtz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 27
    :goto_1
    return v0
.end method

.method public static readZramWritebackLimit()J
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 5
    new-instance v3, Ljava/io/FileReader;

    .line 7
    const-string v4, "/sys/block/zram0/writeback_limit"

    .line 9
    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 22
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception v3

    .line 28
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception v2

    .line 33
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    :catch_0
    sget-object v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    .line 39
    const-string/jumbo v3, "failed to read /sys/block/zram0/writeback_limit"

    .line 42
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_1
    return-wide v0
.end method
