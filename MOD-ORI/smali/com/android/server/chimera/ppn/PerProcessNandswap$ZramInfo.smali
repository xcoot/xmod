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

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 5
    .line 6
    new-instance v3, Ljava/io/FileReader;

    .line 7
    .line 8
    const-string v4, "/sys/block/zram0/bd_stat"

    .line 9
    .line 10
    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "\\s+"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/stream/LongStream;->toArray()[J

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    array-length v4, v3

    .line 48
    const/16 v5, 0xa

    .line 49
    .line 50
    if-le v4, v5, :cond_2

    .line 51
    .line 52
    const/16 v4, 0x8

    .line 53
    .line 54
    new-array v5, v4, [J

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    :goto_0
    if-ge v6, v4, :cond_1

    .line 58
    .line 59
    const/4 v7, 0x5

    .line 60
    if-ge v6, v7, :cond_0

    .line 61
    .line 62
    aget-wide v7, v3, v6

    .line 63
    .line 64
    aput-wide v7, v5, v6

    .line 65
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

    .line 70
    .line 71
    aget-wide v7, v3, v7

    .line 72
    .line 73
    aput-wide v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    .line 80
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

    .line 85
    .line 86
    move-object v3, v1

    .line 87
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 88
    .line 89
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

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :catchall_1
    move-exception v2

    .line 97
    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :goto_3
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 101
    :catch_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_4

    .line 106
    .line 107
    const-string/jumbo v2, "failed to read /sys/block/zram0/bd_stat"

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_4
    :goto_4
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v3, "bdstats : "

    .line 122
    .line 123
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
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

    .line 2
    .line 3
    const-string v0, "PerProcessNandswap"

    .line 4
    .line 5
    sput-object v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    sput v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 9
    .line 10
    sput v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 11
    .line 12
    return-void
.end method

.method public static isWritebackEnabled()Z
    .locals 5

    .line 1
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    const-string v0, "/sys/block/zram0/writeback_limit"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sget-object v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "/data/per_boot/zram_swap"

    .line 19
    .line 20
    invoke-static {v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    sput v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "/data/per_boot/zram_swap not exist"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "/sys/block/zram0/writeback_limit not exist"

    .line 38
    .line 39
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 43
    .line 44
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v4, "isWritebackEnabled: "

    .line 47
    .line 48
    .line 49
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 53
    .line 54
    invoke-static {v0, v4, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackEnabled:I

    .line 58
    .line 59
    if-ne v0, v3, :cond_3

    .line 60
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

    .line 2
    .line 3
    sget v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 10
    .line 11
    new-instance v2, Ljava/io/FileReader;

    .line 12
    .line 13
    const-string v4, "/sys/block/zram0/writeback_limit_enable"

    .line 14
    .line 15
    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sput v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    .line 33
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

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_1
    move-exception v1

    .line 41
    :try_start_4
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 45
    :catch_0
    sput v3, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 46
    .line 47
    const-string/jumbo v1, "failed to read /sys/block/zram0/writeback_limit_enable"

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string/jumbo v2, "isWritebackLimitEnabled: "

    .line 56
    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 62
    .line 63
    invoke-static {v1, v2, v0}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    sget v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->mWritebackLimitEnabled:I

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    if-ne v0, v1, :cond_1

    .line 70
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

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackLimitEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-gtz v0, :cond_0

    .line 22
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

    .line 2
    .line 3
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    .line 4
    .line 5
    new-instance v3, Ljava/io/FileReader;

    .line 6
    .line 7
    const-string v4, "/sys/block/zram0/writeback_limit"

    .line 8
    .line 9
    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 24
    .line 25
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

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_1
    move-exception v2

    .line 33
    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    :catch_0
    sget-object v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string/jumbo v3, "failed to read /sys/block/zram0/writeback_limit"

    .line 40
    .line 41
    .line 42
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :goto_1
    return-wide v0
.end method
