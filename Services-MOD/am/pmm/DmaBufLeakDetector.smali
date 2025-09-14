.class public final Lcom/android/server/am/pmm/DmaBufLeakDetector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final AI_PACKAGES:[Ljava/lang/String;

.field public static final ISSUE_TRACKER_INTENT_LISTENERS_LIST:[Ljava/lang/String;

.field public static final LEAK_THRESHOLD_STRATEGY:[[F

.field public static final MEMINFO_CATEGORY:[[Ljava/lang/String;

.field public static final MEMINFO_FILEPATH:[Ljava/lang/String;

.field public static final sAiVersion:I


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public mContext:Landroid/content/Context;

.field public mIsListenerAppInstalled:Z

.field public mIsReporting:Z

.field public mIsTestMode:Z

.field public mLastCheckTime:J

.field public mLastLeakTime:J

.field public mLeakThreshold:F

.field public mMemTotal:J

.field public mReportCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string/jumbo v0, "com.salab.issuetracker"

    .line 4
    const-string/jumbo v1, "com.sec.salab.voyager"

    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->ISSUE_TRACKER_INTENT_LISTENERS_LIST:[Ljava/lang/String;

    .line 13
    const/4 v0, 0x2

    .line 14
    new-array v1, v0, [F

    .line 16
    fill-array-data v1, :array_0

    .line 19
    new-array v2, v0, [F

    .line 21
    fill-array-data v2, :array_1

    .line 24
    new-array v3, v0, [F

    .line 26
    fill-array-data v3, :array_2

    .line 29
    new-array v4, v0, [F

    .line 31
    fill-array-data v4, :array_3

    .line 34
    new-array v5, v0, [F

    .line 36
    fill-array-data v5, :array_4

    .line 39
    new-array v6, v0, [F

    .line 41
    fill-array-data v6, :array_5

    .line 44
    filled-new-array/range {v1 .. v6}, [[F

    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->LEAK_THRESHOLD_STRATEGY:[[F

    .line 50
    const-string/jumbo v0, "com.samsung.android.aicore"

    .line 53
    const-string/jumbo v1, "com.google.android.aicore"

    .line 56
    const-string/jumbo v2, "com.samsung.android.offline.languagemodel"

    .line 59
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->AI_PACKAGES:[Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 68
    move-result-object v0

    .line 69
    const-string v1, "SEC_FLOATING_FEATURE_COMMON_CONFIG_AI_VERSION"

    .line 71
    const/4 v2, -0x1

    .line 72
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    .line 75
    move-result v0

    .line 76
    sput v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->sAiVersion:I

    .line 78
    const-string v0, "/proc/meminfo"

    .line 80
    const-string v1, "/proc/meminfo_extra"

    .line 82
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->MEMINFO_FILEPATH:[Ljava/lang/String;

    .line 88
    const-string/jumbo v0, "mtk_mm"

    .line 91
    const-string/jumbo v1, "mtk_mm-uncached"

    .line 94
    const-string/jumbo v2, "system"

    .line 97
    const-string/jumbo v3, "system-uncached"

    .line 100
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    const-string v1, "SystemHeap"

    .line 106
    const-string v2, "Not-Used"

    .line 108
    filled-new-array {v1, v2, v2, v2}, [Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    filled-new-array {v0, v1}, [[Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->MEMINFO_CATEGORY:[[Ljava/lang/String;

    .line 118
    return-void

    .line 119
    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    .line 127
    :array_1
    .array-data 4
        0x40400000    # 3.0f
        0x3f99999a    # 1.2f
    .end array-data

    .line 135
    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0x3fcccccd    # 1.6f
    .end array-data

    .line 143
    :array_3
    .array-data 4
        0x40c00000    # 6.0f
        0x3fe66666    # 1.8f
    .end array-data

    .line 151
    :array_4
    .array-data 4
        0x41000000    # 8.0f
        0x4019999a    # 2.4f
    .end array-data

    .line 159
    :array_5
    .array-data 4
        0x41400000    # 12.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public static getDmaBufSizeKb()J
    .locals 17

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 4
    move-result-object v1

    .line 5
    sget-object v2, Lcom/android/server/am/pmm/DmaBufLeakDetector;->MEMINFO_FILEPATH:[Ljava/lang/String;

    .line 7
    array-length v3, v2

    .line 8
    const-wide/16 v4, 0x0

    .line 10
    const/4 v7, 0x0

    .line 11
    const/4 v8, 0x0

    .line 12
    :goto_0
    const-string v0, "DmaBufLeakDetector"

    .line 14
    if-ge v7, v3, :cond_3

    .line 16
    aget-object v9, v2, v7

    .line 18
    :try_start_0
    new-instance v10, Ljava/io/FileReader;

    .line 20
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 22
    invoke-direct {v10, v9, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    .line 27
    const/16 v11, 0x800

    .line 29
    invoke-direct {v9, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 32
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 35
    move-result-object v11

    .line 36
    :goto_1
    if-eqz v11, :cond_2

    .line 38
    sget-object v12, Lcom/android/server/am/pmm/DmaBufLeakDetector;->MEMINFO_CATEGORY:[[Ljava/lang/String;

    .line 40
    aget-object v12, v12, v8

    .line 42
    array-length v13, v12

    .line 43
    const/4 v14, 0x0

    .line 44
    :goto_2
    if-ge v14, v13, :cond_1

    .line 46
    aget-object v15, v12, v14

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v15, ":"

    .line 58
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v11, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_0

    .line 71
    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v6, "\\D+"

    .line 76
    const-string v15, ""

    .line 78
    invoke-virtual {v11, v6, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    move-object v15, v2

    .line 87
    move/from16 v16, v3

    .line 89
    int-to-long v2, v6

    .line 90
    add-long/2addr v4, v2

    .line 91
    goto :goto_4

    .line 92
    :catchall_0
    move-exception v0

    .line 93
    move-object v15, v2

    .line 94
    move/from16 v16, v3

    .line 96
    :goto_3
    move-object v2, v0

    .line 97
    goto :goto_6

    .line 98
    :cond_0
    move-object v15, v2

    .line 99
    move/from16 v16, v3

    .line 101
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 103
    move-object v2, v15

    .line 104
    move/from16 v3, v16

    .line 106
    goto :goto_2

    .line 107
    :cond_1
    move-object v15, v2

    .line 108
    move/from16 v16, v3

    .line 110
    :try_start_3
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 113
    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    move-object v2, v15

    .line 115
    move/from16 v3, v16

    .line 117
    goto :goto_1

    .line 118
    :catchall_1
    move-exception v0

    .line 119
    goto :goto_3

    .line 120
    :cond_2
    move-object v15, v2

    .line 121
    move/from16 v16, v3

    .line 123
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 126
    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 129
    goto :goto_a

    .line 130
    :catchall_2
    move-exception v0

    .line 131
    :goto_5
    move-object v2, v0

    .line 132
    goto :goto_8

    .line 133
    :goto_6
    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 136
    goto :goto_7

    .line 137
    :catchall_3
    move-exception v0

    .line 138
    move-object v3, v0

    .line 139
    :try_start_7
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 142
    :goto_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 143
    :catchall_4
    move-exception v0

    .line 144
    move-object v15, v2

    .line 145
    move/from16 v16, v3

    .line 147
    goto :goto_5

    .line 148
    :goto_8
    :try_start_8
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 151
    goto :goto_9

    .line 152
    :catchall_5
    move-exception v0

    .line 153
    move-object v3, v0

    .line 154
    :try_start_9
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 157
    :goto_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 158
    :catch_0
    move-object v15, v2

    .line 159
    move/from16 v16, v3

    .line 161
    :catch_1
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 165
    move-object v2, v15

    .line 166
    move/from16 v3, v16

    .line 168
    goto/16 :goto_0

    .line 170
    :cond_3
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    const-string v2, "DmaBuf : "

    .line 177
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 183
    const-string v2, " KB"

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-wide v4
.end method

.method public static getLargestDmaBufProcess()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    array-length v1, v0

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto/16 :goto_1

    .line 12
    :cond_0
    new-instance v1, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda2;

    .line 14
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    const-string v3, "\nheaviest process="

    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v3, 0x0

    .line 37
    aget-object v4, v0, v3

    .line 39
    iget-object v4, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    .line 41
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v4, ", dmabuf_rss="

    .line 46
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    aget-object v4, v0, v3

    .line 51
    iget v4, v4, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v4, "KB"

    .line 58
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v2, "\n\nName, UID, TotalRss(KB), Count, SFShareRss(KB), SFCount, ADJ"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    array-length v2, v0

    .line 74
    move v4, v3

    .line 75
    :goto_0
    if-ge v4, v2, :cond_1

    .line 77
    aget-object v5, v0, v4

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    const-string v7, "\n"

    .line 83
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v7, v5, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v7, ", "

    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v8, v5, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->uid:I

    .line 98
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v8, v5, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    .line 106
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v8, v5, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedBuffersCount:I

    .line 114
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v8, v5, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerSizeKb:I

    .line 122
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget v8, v5, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->surfaceFlingerCount:I

    .line 130
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v5, v5, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->oomScore:I

    .line 138
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v4, v4, 0x1

    .line 150
    goto :goto_0

    .line 151
    :cond_1
    const-string v2, "DmaBufLeakDetector"

    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 157
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    aget-object v0, v0, v3

    .line 162
    iget-object v0, v0, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    .line 164
    return-object v0

    .line 165
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 166
    return-object v0
.end method

.method public static isCameraRunning()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "service.camera.running"

    .line 4
    const-string v1, "0"

    .line 6
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v0

    .line 14
    xor-int/lit8 v0, v0, 0x1

    .line 16
    return v0
.end method

.method public static isListenerAppInstalled(Landroid/content/Context;)Z
    .locals 6

    .line 1
    const-string v0, "DmaBufLeakDetector"

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    const/4 v3, 0x2

    .line 6
    if-ge v2, v3, :cond_2

    .line 8
    sget-object v3, Lcom/android/server/am/pmm/DmaBufLeakDetector;->ISSUE_TRACKER_INTENT_LISTENERS_LIST:[Ljava/lang/String;

    .line 10
    aget-object v3, v3, v2

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v4, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 19
    move-result-object v5

    .line 20
    if-nez v5, :cond_0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const-string v5, "android"

    .line 25
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_1

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string/jumbo v4, "matched: "

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string/jumbo v4, "signature not matched: "

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    const-string/jumbo v3, "not found app #"

    .line 79
    invoke-static {v2, v3, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    :goto_2
    return v1
.end method


# virtual methods
.method public final hasLeak(F)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    .line 3
    cmpl-float v0, p1, v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_4

    .line 8
    sget v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->sAiVersion:I

    .line 10
    const/16 v2, 0x4f11

    .line 12
    const/4 v3, 0x1

    .line 13
    if-lt v0, v2, :cond_3

    .line 15
    iget-object p0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 17
    sget-object v0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->AI_PACKAGES:[Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    move v2, v1

    .line 23
    :goto_0
    const/4 v4, 0x3

    .line 24
    if-ge v2, v4, :cond_3

    .line 26
    aget-object v4, v0, v2

    .line 28
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 37
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    if-nez v5, :cond_0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 44
    monitor-enter p0

    .line 45
    :try_start_1
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 49
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 51
    invoke-virtual {v6, v5, v4}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(ILjava/lang/String;)Lcom/android/server/am/ProcessRecord;

    .line 54
    move-result-object v4

    .line 55
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 59
    if-eqz v4, :cond_2

    .line 61
    const/high16 p0, 0x4ae00000    # 7340032.0f

    .line 63
    cmpl-float p0, p1, p0

    .line 65
    if-lez p0, :cond_1

    .line 67
    move v1, v3

    .line 68
    :cond_1
    return v1

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 74
    throw p1

    .line 75
    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    return v3

    .line 79
    :cond_4
    return v1
.end method
