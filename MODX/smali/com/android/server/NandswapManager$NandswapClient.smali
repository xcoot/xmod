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

    .line 3
    const-string v1, "NandswapManager"

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuota:I

    .line 11
    iput v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->dailyQuotaLimit:I

    .line 13
    const/4 v3, -0x1

    .line 14
    iput v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 16
    iput-boolean v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 18
    new-instance v3, Ljava/util/HashMap;

    .line 20
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 23
    iput-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 25
    new-instance v3, Ljava/util/HashMap;

    .line 27
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 30
    iput-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 32
    new-instance v3, Lcom/android/server/NandswapManager$ProcessingManager;

    .line 34
    invoke-direct {v3}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>()V

    .line 37
    iput-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 39
    new-instance v3, Lcom/android/server/NandswapManager$ProcessingManager;

    .line 41
    invoke-direct {v3}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>()V

    .line 44
    iput-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 46
    const/4 v3, 0x1

    .line 47
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 49
    const-string v5, "/sys/block/zram0/backing_dev"

    .line 51
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    const/16 v5, 0x80

    .line 56
    invoke-static {v4, v5, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    const-string/jumbo v6, "none"

    .line 63
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 73
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const-string v4, "Writeback device is not set"

    .line 82
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_1

    .line 86
    :cond_1
    :goto_0
    iput v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 88
    goto :goto_2

    .line 89
    :catch_0
    const-string v4, "Writeback is not enabled on /sys/block/zram0/backing_dev"

    .line 91
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_1
    iput v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 96
    :goto_2
    :try_start_1
    new-instance v4, Ljava/io/File;

    .line 98
    const-string v5, "/sys/block/zram0/bd_stat"

    .line 100
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    const/16 v5, 0x1000

    .line 105
    invoke-static {v4, v5, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    const-string v4, "\\s+"

    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    array-length v0, v0

    .line 120
    const/16 v4, 0xa

    .line 122
    if-lt v0, v4, :cond_2

    .line 124
    iput-boolean v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 126
    goto :goto_3

    .line 127
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    goto :goto_3

    .line 130
    :catch_1
    const-string v0, "Failed to read stats from /sys/block/zram0/bd_stat"

    .line 132
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    .line 138
    return-void
.end method

.method public static getQuotaSysNode()I
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/sys/block/zram0/writeback_limit"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    const-string v1, ""

    .line 10
    const/16 v2, 0x80

    .line 12
    invoke-static {v0, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return v0

    .line 25
    :catch_0
    const-string v0, "NandswapManager"

    .line 27
    const-string v1, "Failed to read quota from /sys/block/zram0/writeback_limit"

    .line 29
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 3
    const-string v1, "/sys/block/zram0/writeback_limit"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    invoke-static {v0, p0}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    const-string p0, "NandswapManager"

    .line 18
    const-string v0, "Failed to write new quota to /sys/block/zram0/writeback_limit"

    .line 20
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    return-void
.end method


# virtual methods
.method public final getBdStat()Ljava/util/HashMap;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string/jumbo v16, "objreads"

    .line 6
    const-string/jumbo v17, "objwrites"

    .line 9
    const-string/jumbo v1, "expire"

    .line 12
    const-string/jumbo v2, "count"

    .line 15
    const-string/jumbo v3, "reads"

    .line 18
    const-string/jumbo v4, "writes"

    .line 21
    const-string/jumbo v5, "objcnt"

    .line 24
    const-string/jumbo v6, "size"

    .line 27
    const-string/jumbo v7, "max_count"

    .line 30
    const-string/jumbo v8, "max_size"

    .line 33
    const-string/jumbo v9, "ppr_count"

    .line 36
    const-string/jumbo v10, "ppr_reads"

    .line 39
    const-string/jumbo v11, "ppr_writes"

    .line 42
    const-string/jumbo v12, "ppr_objcnt"

    .line 45
    const-string/jumbo v13, "ppr_size"

    .line 48
    const-string/jumbo v14, "ppr_max_count"

    .line 51
    const-string/jumbo v15, "ppr_max_size"

    .line 54
    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    iget-object v2, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 60
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 63
    :try_start_0
    new-instance v2, Ljava/io/File;

    .line 65
    const-string v3, "/sys/block/zram0/bd_stat"

    .line 67
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    const-string v3, ""

    .line 72
    const/16 v4, 0x1000

    .line 74
    invoke-static {v2, v4, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 82
    const-string v3, "\\s+"

    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    const/4 v3, 0x0

    .line 89
    :goto_0
    array-length v4, v2

    .line 90
    if-ge v3, v4, :cond_0

    .line 92
    iget-object v4, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 94
    aget-object v5, v1, v3

    .line 96
    aget-object v6, v2, v3

    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    move-result v6

    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    add-int/lit8 v3, v3, 0x1

    .line 111
    goto :goto_0

    .line 112
    :catch_0
    const-string v1, "NandswapManager"

    .line 114
    const-string v2, "Failed to read stats from /sys/block/zram0/bd_stat"

    .line 116
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, v0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 121
    return-object v0
.end method

.method public final getBigdataInfoProp()Ljava/util/HashMap;
    .locals 10

    .line 1
    const-string/jumbo v8, "objreads"

    .line 4
    const-string/jumbo v9, "objwrites"

    .line 7
    const-string/jumbo v0, "reads"

    .line 10
    const-string/jumbo v1, "writes"

    .line 13
    const-string/jumbo v2, "max_count"

    .line 16
    const-string/jumbo v3, "max_size"

    .line 19
    const-string/jumbo v4, "ppr_reads"

    .line 22
    const-string/jumbo v5, "ppr_writes"

    .line 25
    const-string/jumbo v6, "ppr_max_count"

    .line 28
    const-string/jumbo v7, "ppr_max_size"

    .line 31
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 37
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 40
    iget-boolean v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 42
    if-eqz v1, :cond_0

    .line 44
    const-string/jumbo v1, "persist.sys.zram0.bigdata_info"

    .line 47
    const-string v2, "None"

    .line 49
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 59
    const-string v2, ","

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    move v3, v2

    .line 67
    :goto_0
    const/16 v4, 0xa

    .line 69
    if-ge v3, v4, :cond_0

    .line 71
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 73
    aget-object v6, v0, v3

    .line 75
    aget-object v7, v1, v3

    .line 77
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    move-result v7

    .line 81
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v7

    .line 85
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 90
    goto :goto_0

    .line 91
    :catch_0
    move-exception v1

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v5, "getBigdataInfo parseInt err - "

    .line 97
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    const-string v3, "NandswapManager"

    .line 113
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 118
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 121
    move v1, v2

    .line 122
    :goto_1
    if-ge v1, v4, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 126
    aget-object v5, v0, v1

    .line 128
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v1, v1, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_0
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 140
    return-object p0
.end method

.method public final initBigdataInfoProp()V
    .locals 1

    .line 1
    iget-boolean p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 3
    if-eqz p0, :cond_0

    .line 5
    const-string p0, "0,0,0,0,0,0,0,0,0,0"

    .line 7
    :try_start_0
    const-string/jumbo v0, "persist.sys.zram0.bigdata_info"

    .line 10
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const-string p0, "NandswapManager"

    .line 16
    const-string v0, "Failed to init Bigdata Info..."

    .line 18
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method public final setPreviousInfo()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    .line 8
    move-result-object v0

    .line 9
    const-string/jumbo v1, "reads"

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result v1

    .line 22
    const-string/jumbo v2, "writes"

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/Integer;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v2

    .line 35
    const-string/jumbo v3, "objreads"

    .line 38
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Ljava/lang/Integer;

    .line 44
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 47
    move-result v4

    .line 48
    const-string/jumbo v5, "objwrites"

    .line 51
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object v6

    .line 55
    check-cast v6, Ljava/lang/Integer;

    .line 57
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 60
    move-result v6

    .line 61
    iget-object v7, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 63
    iput v1, v7, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 65
    iput v2, v7, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 67
    iput v4, v7, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 69
    iput v6, v7, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 71
    const-string/jumbo v1, "ppr_reads"

    .line 74
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result v1

    .line 84
    const-string/jumbo v2, "ppr_writes"

    .line 87
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/Integer;

    .line 93
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result v2

    .line 97
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    move-result-object v3

    .line 101
    check-cast v3, Ljava/lang/Integer;

    .line 103
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 106
    move-result v3

    .line 107
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Ljava/lang/Integer;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 116
    move-result v0

    .line 117
    iget-object p0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 119
    iput v1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    .line 121
    iput v2, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    .line 123
    iput v3, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    .line 125
    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    .line 127
    :cond_0
    return-void
.end method
