.class public final Lcom/android/server/NandswapManager$NandswapClient;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final bdStatMap:Ljava/util/HashMap;

.field public final bigdataPersistPropMap:Ljava/util/HashMap;

.field public dailyQuota:I

.field public dailyQuotaLimit:I

.field public final normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

.field public final pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

.field public final state:I

.field public final supportBigdataState:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "NandswapManager"

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    .line 10
    .line 11
    iput v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    iput v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 17
    .line 18
    new-instance v3, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v3, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 31
    .line 32
    new-instance v3, Lcom/android/server/NandswapManager$ProcessingManager;

    .line 33
    .line 34
    invoke-direct {v3}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 38
    .line 39
    new-instance v3, Lcom/android/server/NandswapManager$ProcessingManager;

    .line 40
    .line 41
    invoke-direct {v3}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 48
    .line 49
    const-string v5, "/sys/block/zram0/backing_dev"

    .line 50
    .line 51
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/16 v5, 0x80

    .line 55
    .line 56
    invoke-static {v4, v5, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    const-string/jumbo v6, "none"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_0

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const-string v4, "Writeback device is not set"

    .line 81
    .line 82
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    iput v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_0
    const-string v4, "Writeback is not enabled on /sys/block/zram0/backing_dev"

    .line 90
    .line 91
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    :goto_1
    iput v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 95
    .line 96
    :goto_2
    :try_start_1
    new-instance v4, Ljava/io/File;

    .line 97
    .line 98
    const-string v5, "/sys/block/zram0/bd_stat"

    .line 99
    .line 100
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/16 v5, 0x1000

    .line 104
    .line 105
    invoke-static {v4, v5, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v4, "\\s+"

    .line 114
    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    array-length v0, v0

    .line 120
    const/16 v4, 0xa

    .line 121
    .line 122
    if-lt v0, v4, :cond_2

    .line 123
    .line 124
    iput-boolean v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :catch_1
    const-string v0, "Failed to read stats from /sys/block/zram0/bd_stat"

    .line 131
    .line 132
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public static getQuotaSysNode()I
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/sys/block/zram0/writeback_limit"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    const/16 v2, 0x80

    .line 11
    .line 12
    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return v0

    .line 25
    :catch_0
    const-string v0, "NandswapManager"

    .line 26
    .line 27
    const-string v1, "Failed to read quota from /sys/block/zram0/writeback_limit"

    .line 28
    .line 29
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public static setQuotaSysNode(I)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/sys/block/zram0/writeback_limit"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-static {v0, p0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string p0, "NandswapManager"

    .line 17
    .line 18
    const-string v0, "Failed to write new quota to /sys/block/zram0/writeback_limit"

    .line 19
    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method


# virtual methods
.method public final getBdStat()Ljava/util/HashMap;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string/jumbo v16, "objreads"

    .line 4
    .line 5
    .line 6
    const-string/jumbo v17, "objwrites"

    .line 7
    .line 8
    .line 9
    const-string/jumbo v1, "expire"

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "count"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v3, "reads"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v4, "writes"

    .line 19
    .line 20
    .line 21
    const-string/jumbo v5, "objcnt"

    .line 22
    .line 23
    .line 24
    const-string/jumbo v6, "size"

    .line 25
    .line 26
    .line 27
    const-string/jumbo v7, "max_count"

    .line 28
    .line 29
    .line 30
    const-string/jumbo v8, "max_size"

    .line 31
    .line 32
    .line 33
    const-string/jumbo v9, "ppr_count"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v10, "ppr_reads"

    .line 37
    .line 38
    .line 39
    const-string/jumbo v11, "ppr_writes"

    .line 40
    .line 41
    .line 42
    const-string/jumbo v12, "ppr_objcnt"

    .line 43
    .line 44
    .line 45
    const-string/jumbo v13, "ppr_size"

    .line 46
    .line 47
    .line 48
    const-string/jumbo v14, "ppr_max_count"

    .line 49
    .line 50
    .line 51
    const-string/jumbo v15, "ppr_max_size"

    .line 52
    .line 53
    .line 54
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iget-object v2, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 61
    .line 62
    .line 63
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 64
    .line 65
    const-string v3, "/sys/block/zram0/bd_stat"

    .line 66
    .line 67
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const-string v3, ""

    .line 71
    .line 72
    const/16 v4, 0x1000

    .line 73
    .line 74
    invoke-static {v2, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "\\s+"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    const/4 v3, 0x0

    .line 89
    :goto_0
    array-length v4, v2

    .line 90
    if-ge v3, v4, :cond_0

    .line 91
    .line 92
    iget-object v4, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 93
    .line 94
    aget-object v5, v1, v3

    .line 95
    .line 96
    aget-object v6, v2, v3

    .line 97
    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :catch_0
    const-string v1, "NandswapManager"

    .line 113
    .line 114
    const-string v2, "Failed to read stats from /sys/block/zram0/bd_stat"

    .line 115
    .line 116
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_0
    iget-object v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 120
    .line 121
    return-object v0
.end method

.method public final getBigdataInfoProp()Ljava/util/HashMap;
    .locals 10

    .line 1
    const-string/jumbo v8, "objreads"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v9, "objwrites"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "reads"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "writes"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "max_count"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "max_size"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v4, "ppr_reads"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v5, "ppr_writes"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v6, "ppr_max_count"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v7, "ppr_max_size"

    .line 29
    .line 30
    .line 31
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 38
    .line 39
    .line 40
    iget-boolean v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 41
    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    const-string/jumbo v1, "persist.sys.zram0.bigdata_info"

    .line 45
    .line 46
    .line 47
    const-string v2, "None"

    .line 48
    .line 49
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    const-string v2, ","

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    move v3, v2

    .line 67
    :goto_0
    const/16 v4, 0xa

    .line 68
    .line 69
    if-ge v3, v4, :cond_0

    .line 70
    .line 71
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 72
    .line 73
    aget-object v6, v0, v3

    .line 74
    .line 75
    aget-object v7, v1, v3

    .line 76
    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string/jumbo v5, "getBigdataInfo parseInt err - "

    .line 95
    .line 96
    .line 97
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const-string v3, "NandswapManager"

    .line 112
    .line 113
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 119
    .line 120
    .line 121
    move v1, v2

    .line 122
    :goto_1
    if-ge v1, v4, :cond_0

    .line 123
    .line 124
    iget-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 125
    .line 126
    aget-object v5, v0, v1

    .line 127
    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 139
    .line 140
    return-object p0
.end method

.method public final initBigdataInfoProp()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const-string p0, "0,0,0,0,0,0,0,0,0,0"

    .line 6
    .line 7
    :try_start_0
    const-string/jumbo v0, "persist.sys.zram0.bigdata_info"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "NandswapManager"

    .line 15
    .line 16
    const-string v0, "Failed to init Bigdata Info..."

    .line 17
    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method public final setPreviousInfo()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "reads"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const-string/jumbo v2, "writes"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string/jumbo v3, "objreads"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string/jumbo v5, "objwrites"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    iget-object v7, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 62
    .line 63
    iput v1, v7, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 64
    .line 65
    iput v2, v7, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 66
    .line 67
    iput v4, v7, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 68
    .line 69
    iput v6, v7, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 70
    .line 71
    const-string/jumbo v1, "ppr_reads"

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const-string/jumbo v2, "ppr_writes"

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 118
    .line 119
    iput v1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 120
    .line 121
    iput v2, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 122
    .line 123
    iput v3, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 124
    .line 125
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 126
    .line 127
    :cond_0
    return-void
.end method
