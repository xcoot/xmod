.class public final Lcom/android/server/chimera/ppn/QuickSwap;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final QUICKSWAP_BLOCKLIST:Ljava/util/List;


# instance fields
.field public isDoingQuickSwap:Z

.field public final isDoingQuickSwapLock:Ljava/lang/Object;

.field public mGenieDump:Ljava/util/ArrayList;

.field public final mIsNandswapOn:Z

.field public mLatestAnonZramDiff:J

.field public mLatestLatency:J

.field public mLatestPageoutCnt:I

.field public mLatestQuickSwapType:I

.field public mLatestResult:Ljava/lang/String;

.field public mLatestTimestampMS:J

.field public mLatestWBTimestampMS:J

.field public mLatestWritebackCnt:I

.field public final mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

.field public mPageoutCnt:I

.field public final mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

.field public final mQuickSwapThread:Lcom/android/server/ServiceThread;

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field public mTriggeredCnt:I

.field public mWritebackCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-string/jumbo v4, "com.samsung.android.offline.languagemodel.chn"

    .line 4
    const-string/jumbo v5, "com.android.bluetooth"

    .line 7
    const-string/jumbo v0, "com.google.android.aicore"

    .line 10
    const-string/jumbo v1, "com.samsung.android.aicore"

    .line 13
    const-string/jumbo v2, "com.samsung.android.wallpaper.magician"

    .line 16
    const-string/jumbo v3, "com.samsung.android.offline.languagemodel"

    .line 19
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/android/server/chimera/ppn/QuickSwap;->QUICKSWAP_BLOCKLIST:Ljava/util/List;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;Lcom/android/server/chimera/SystemRepository;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    .line 7
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    .line 9
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    .line 11
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestQuickSwapType:I

    .line 13
    const-string v1, "N/A"

    .line 15
    iput-object v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    .line 17
    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    .line 21
    const-wide/32 v3, -0x668a0

    .line 24
    iput-wide v3, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWBTimestampMS:J

    .line 26
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestPageoutCnt:I

    .line 28
    iput v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWritebackCnt:I

    .line 30
    iput-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestAnonZramDiff:J

    .line 32
    iput-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestLatency:J

    .line 34
    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    .line 37
    iput-boolean v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    .line 46
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 48
    iput-object p2, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 50
    const-string/jumbo p1, "ro.sys.kernelmemory.nandswap.quickswap.nandswap"

    .line 53
    const/4 p2, 0x1

    .line 54
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 57
    move-result p1

    .line 58
    iput-boolean p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mIsNandswapOn:Z

    .line 60
    const/4 p1, 0x4

    .line 61
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 67
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 69
    const-string/jumbo p1, "thread pool created, size is 4"

    .line 72
    const-string v0, "QuickSwap"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance p1, Lcom/android/server/ServiceThread;

    .line 79
    const-string v0, "QuickSwapThread"

    .line 81
    const/16 v1, 0xa

    .line 83
    invoke-direct {p1, v1, v0, p2}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 86
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapThread:Lcom/android/server/ServiceThread;

    .line 88
    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_0

    .line 94
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 97
    :cond_0
    new-instance p1, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    .line 99
    invoke-direct {p1, p0}, Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;-><init>(Lcom/android/server/chimera/ppn/QuickSwap;)V

    .line 102
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mQuickSwapHandler:Lcom/android/server/chimera/ppn/QuickSwap$QuickSwapHandler;

    .line 104
    return-void
.end method

.method public static native __setRbinRefillModePath()Z
.end method

.method public static native __writeRbinRefillMode(I)Z
.end method

.method public static getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x18

    .line 7
    aget-wide v1, v0, v1

    .line 9
    const/16 v3, 0x19

    .line 11
    aget-wide v3, v0, v3

    .line 13
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    .line 16
    move-result-wide v5

    .line 17
    add-long v7, v1, v3

    .line 19
    add-long/2addr v7, v5

    .line 20
    const-string/jumbo p0, "du: "

    .line 23
    const-string v0, " = aa "

    .line 25
    invoke-static {p0, v7, v8, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    const-string v0, " + ia "

    .line 34
    const-string v1, " + zr "

    .line 36
    invoke-static {p0, v0, v3, v4, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 39
    const-string v0, "QuickSwap"

    .line 41
    invoke-static {p0, v5, v6, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 44
    return-wide v7
.end method

.method public static getTotalFileUsedKb(Lcom/android/internal/util/MemInfoReader;)J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    .line 4
    move-result-object p0

    .line 5
    const/16 v0, 0x1a

    .line 7
    aget-wide v0, p0, v0

    .line 9
    const/16 v2, 0x1b

    .line 11
    aget-wide v2, p0, v2

    .line 13
    add-long v4, v0, v2

    .line 15
    const-string p0, " af "

    .line 17
    const-string v6, " + if "

    .line 19
    invoke-static {p0, v0, v1, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    move-result-object p0

    .line 23
    const-string v0, "QuickSwap"

    .line 25
    invoke-static {p0, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 28
    return-wide v4
.end method


# virtual methods
.method public final doQuickSwap(IJ)V
    .locals 3

    .line 1
    const-string/jumbo v0, "do QuickSwap execute with exception!"

    const/4 v1, 0x0

    const/16 v2, -0x384

    filled-new-array {v1, v2}, [I

    move-result-object v2

    .line 2
    :try_start_0
    invoke-virtual {p0, p2, p3, v2, p1}, Lcom/android/server/chimera/ppn/QuickSwap;->doQuickSwap(J[II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    iget-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 5
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 6
    :try_start_2
    const-string p2, "QuickSwap"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    iget-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_3
    iput-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 9
    monitor-exit p1

    :goto_0
    return-void

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    .line 10
    :goto_1
    iget-object p2, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwapLock:Ljava/lang/Object;

    monitor-enter p2

    .line 11
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->isDoingQuickSwap:Z

    .line 12
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 13
    throw p1

    :catchall_3
    move-exception p0

    .line 14
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0
.end method

.method public final doQuickSwap(J[II)V
    .locals 46

    move-object/from16 v8, p0

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    move/from16 v9, p4

    .line 15
    const-string v3, " threshold: 0.1"

    const-string/jumbo v4, "storageFreeRatio: "

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 16
    iget-wide v5, v8, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    sub-long v5, v10, v5

    const-wide/32 v12, 0xea60

    cmp-long v5, v5, v12

    const-string v12, "QuickSwap"

    if-gtz v5, :cond_0

    .line 17
    const-string v0, "QuickSwap throttled!"

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_0
    new-instance v5, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v5}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 19
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    const/4 v13, 0x1

    .line 20
    :try_start_0
    new-instance v6, Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v6}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v14

    long-to-double v14, v14

    invoke-virtual {v6}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v6

    long-to-double v6, v6

    div-double/2addr v14, v6

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v6, v14, v6

    if-gez v6, :cond_1

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%.2f"

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v3, v13

    :goto_0
    move v14, v3

    goto :goto_1

    .line 23
    :catch_0
    const-string v3, "Read StatFs Failed!"

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v13

    :goto_1
    const-wide/32 v3, 0x200000

    cmp-long v3, v0, v3

    .line 24
    const-string v15, ", "

    const-wide/16 v17, 0x0

    if-nez v3, :cond_4

    .line 25
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v3

    .line 26
    aget-wide v6, v3, v13

    const/16 v4, 0x1d

    move/from16 v19, v14

    .line 27
    aget-wide v13, v3, v4

    const/4 v4, 0x6

    move-wide/from16 v20, v10

    .line 28
    aget-wide v9, v3, v4

    sub-long v22, v6, v13

    move-object v11, v5

    sub-long v4, v22, v9

    const/16 v22, 0x1a

    move-object/from16 v24, v11

    move-object/from16 v23, v12

    .line 29
    aget-wide v11, v3, v22

    const/16 v22, 0x1b

    .line 30
    aget-wide v2, v3, v22

    move-wide/from16 v25, v9

    add-long v8, v11, v2

    add-long v27, v4, v8

    cmp-long v10, v0, v27

    if-lez v10, :cond_2

    sub-long v27, v0, v27

    move-wide/from16 v44, v2

    move-wide/from16 v2, v27

    move-wide/from16 v27, v44

    goto :goto_2

    :cond_2
    move-wide/from16 v27, v2

    move-wide/from16 v2, v17

    .line 31
    :goto_2
    const-string v10, "QuickSwap : tr: "

    move-wide/from16 v29, v11

    const-string v11, " = ts "

    .line 32
    invoke-static {v10, v2, v3, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 33
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " - "

    const-string v1, " ("

    .line 34
    invoke-static {v10, v0, v4, v5, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 35
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {v10, v15, v13, v14, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v4, v25

    .line 37
    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")  - "

    .line 38
    invoke-static {v10, v0, v8, v9, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v0, v29

    .line 39
    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v27

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v23

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v2, v17

    if-gtz v0, :cond_3

    return-void

    :cond_3
    move-wide v0, v2

    goto :goto_3

    :cond_4
    move-object/from16 v24, v5

    move-wide/from16 v20, v10

    move-object v8, v12

    move/from16 v19, v14

    .line 40
    :goto_3
    invoke-static/range {v24 .. v24}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v9

    move-object/from16 v11, p0

    .line 41
    iget-boolean v12, v11, Lcom/android/server/chimera/ppn/QuickSwap;->mIsNandswapOn:Z

    if-eqz v19, :cond_5

    if-eqz v12, :cond_5

    .line 42
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-wide v2, v11, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWBTimestampMS:J

    sub-long v2, v20, v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    const/4 v13, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x0

    .line 43
    :goto_4
    invoke-static/range {v24 .. v24}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalFileUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v22

    .line 44
    const-string v2, "QuickSwap start"

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget v2, v11, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v11, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    .line 46
    new-instance v2, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 48
    new-instance v14, Ljava/util/TreeSet;

    invoke-direct {v14, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 49
    iget-object v2, v11, Lcom/android/server/chimera/ppn/QuickSwap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {v2}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 50
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 51
    invoke-virtual {v2, v5}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    move-result-object v5

    .line 52
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-object v7, v11, Lcom/android/server/chimera/ppn/QuickSwap;->mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    move-wide/from16 p1, v0

    const-string v1, ") error."

    const-string v0, "Process.getRss("

    move-wide/from16 v27, v9

    const-string v9, " expected_reclaimed: "

    const-string v10, " swaprss "

    move-object/from16 v29, v15

    const-string/jumbo v15, "reclaimCadidate: "

    const/16 v30, 0x3

    move/from16 v31, v12

    const-wide/16 v32, 0x6

    if-eqz v6, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 53
    sget-object v12, Lcom/android/server/chimera/ppn/QuickSwap;->QUICKSWAP_BLOCKLIST:Ljava/util/List;

    move-object/from16 v35, v4

    iget-object v4, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-interface {v12, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_6
    move-wide/from16 v0, p1

    move-wide/from16 v9, v27

    move-object/from16 v15, v29

    move/from16 v12, v31

    move-object/from16 v4, v35

    goto :goto_5

    .line 54
    :cond_6
    iget v4, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v2, v4}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    move-result-object v4

    const/4 v12, 0x1

    aget v4, v4, v12

    const/16 v12, -0x3e8

    if-lt v4, v12, :cond_f

    const/16 v12, 0xfa

    if-le v4, v12, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v12, p3

    move-object/from16 v36, v2

    .line 55
    array-length v2, v12

    move/from16 v37, v13

    const/4 v13, 0x0

    const/16 v26, 0x0

    :goto_7
    if-ge v13, v2, :cond_9

    move/from16 v38, v2

    aget v2, v12, v13

    if-ne v4, v2, :cond_8

    const/16 v26, 0x1

    :cond_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v38

    goto :goto_7

    :cond_9
    if-eqz v26, :cond_a

    move-wide/from16 v0, p1

    move-wide/from16 v9, v27

    move-object/from16 v15, v29

    move/from16 v12, v31

    move-object/from16 v4, v35

    move-object/from16 v2, v36

    move/from16 v13, v37

    goto :goto_5

    .line 56
    :cond_a
    iget v2, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v2}, Landroid/os/Process;->getRss(I)[J

    move-result-object v2

    if-eqz v2, :cond_b

    .line 57
    array-length v13, v2

    const/4 v12, 0x4

    if-ge v13, v12, :cond_c

    :cond_b
    move-object v2, v3

    move-object/from16 v40, v5

    move-object/from16 v39, v14

    goto/16 :goto_b

    :cond_c
    const/4 v12, 0x2

    .line 58
    aget-wide v0, v2, v12

    .line 59
    aget-wide v12, v2, v30

    .line 60
    div-long v25, v12, v32

    add-long v25, v25, v0

    move-object/from16 v38, v3

    div-long v2, v25, v32

    .line 61
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 62
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v15, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    move-object/from16 v39, v14

    const-string v14, " adj: "

    move-object/from16 v40, v5

    const-string v5, " anonrss: "

    .line 63
    invoke-static {v15, v4, v14, v5, v11}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 64
    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    invoke-static {v11, v10, v12, v13, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v11, v2, v3, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_8

    :cond_d
    move-object/from16 v40, v5

    move-object/from16 v39, v14

    .line 66
    :goto_8
    new-instance v0, Landroid/util/Pair;

    iget v1, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    cmp-long v5, v2, v17

    if-lez v5, :cond_e

    goto :goto_9

    :cond_e
    const-wide/16 v2, 0x1

    :goto_9
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, v38

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v1, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {v7, v1, v4, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->checkProcessStatusForNandswap(IILjava/lang/String;)V

    :goto_a
    move-object/from16 v11, p0

    move-wide/from16 v0, p1

    move-object v3, v2

    move-wide/from16 v9, v27

    move-object/from16 v15, v29

    move/from16 v12, v31

    move-object/from16 v4, v35

    move-object/from16 v2, v36

    move/from16 v13, v37

    move-object/from16 v14, v39

    move-object/from16 v5, v40

    goto/16 :goto_5

    .line 68
    :goto_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v6, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 69
    invoke-static {v3, v0, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    move-object/from16 v11, p0

    goto/16 :goto_6

    :cond_10
    move-object v2, v3

    move-object/from16 v40, v5

    move/from16 v37, v13

    move-object/from16 v39, v14

    .line 70
    move-object/from16 v5, v40

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 71
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "/proc/"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_12

    .line 72
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Skipped by dead process pid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 74
    invoke-static {v5, v4, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_c

    .line 75
    :cond_12
    iget v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v5}, Landroid/os/Process;->getRss(I)[J

    move-result-object v5

    if-eqz v5, :cond_13

    .line 76
    array-length v6, v5

    const/4 v11, 0x4

    if-ge v6, v11, :cond_14

    :cond_13
    move-object v5, v15

    const/16 v11, -0x3e8

    goto :goto_f

    :cond_14
    const/4 v6, 0x2

    .line 77
    aget-wide v12, v5, v6

    move-object v14, v7

    .line 78
    aget-wide v6, v5, v30

    .line 79
    div-long v34, v6, v32

    add-long v34, v34, v12

    move-wide/from16 v40, v12

    div-long v11, v34, v32

    .line 80
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 81
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " adj: -1000 anonrss: "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p3, v14

    move-object v5, v15

    move-wide/from16 v14, v40

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {v13, v10, v6, v7, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v13, v11, v12, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    goto :goto_d

    :cond_15
    move-object/from16 p3, v14

    move-object v5, v15

    .line 83
    :goto_d
    new-instance v6, Landroid/util/Pair;

    iget v7, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v6, v7, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v6, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v4, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object/from16 v7, p3

    const/16 v11, -0x3e8

    invoke-virtual {v7, v4, v11, v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->checkProcessStatusForNandswap(IILjava/lang/String;)V

    :goto_e
    move-object v15, v5

    goto/16 :goto_c

    .line 85
    :goto_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v4, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 86
    invoke-static {v6, v4, v1, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 87
    :cond_16
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v1, p1

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    move-object/from16 v9, v39

    .line 88
    invoke-virtual {v9, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v1, v4

    .line 90
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 91
    const-string/jumbo v4, "reclaimSet remaining: "

    const-string v5, " expected_reclaimed "

    .line 92
    invoke-static {v4, v1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 93
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    cmp-long v3, v1, v17

    if-gtz v3, :cond_18

    goto :goto_11

    :cond_18
    move-object/from16 v39, v9

    goto :goto_10

    :cond_19
    move-object/from16 v9, v39

    .line 94
    :goto_11
    invoke-virtual {v9}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 95
    const-string/jumbo v0, "reclaimSet size 0!!"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 96
    :cond_1a
    invoke-static/range {v24 .. v24}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v0

    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getMinSwapFreePercentage()I

    move-result v1

    const-string v10, "QuickSwap skip: no nandswap record"

    const-string v11, "QuickSwap skip: app launch "

    if-lt v0, v1, :cond_23

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_12
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 99
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 100
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 101
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 103
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 104
    invoke-static {v14, v11, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/4 v13, 0x1

    goto :goto_12

    .line 105
    :cond_1c
    iget-object v1, v7, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v4, :cond_1e

    .line 106
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 107
    invoke-static {v14, v10, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1d
    move-object/from16 p3, v7

    move-object/from16 p1, v12

    goto :goto_13

    :cond_1e
    move-object/from16 v15, p0

    .line 108
    :try_start_1
    iget-object v3, v15, Lcom/android/server/chimera/ppn/QuickSwap;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 p1, v12

    const/4 v12, 0x2

    move-object v1, v2

    move-object v12, v2

    move-object/from16 v2, p0

    move-object v15, v3

    move v3, v14

    move-object/from16 p3, v7

    move/from16 v7, v37

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/ppn/QuickSwap;ILcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;JZ)V

    invoke-virtual {v15, v12}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_13

    :catch_1
    move-object/from16 p3, v7

    move-object/from16 p1, v12

    .line 110
    :catch_2
    const-string v1, "QuickSwap Skip: rejected submit "

    .line 111
    invoke-static {v14, v1, v8}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :goto_13
    move-object/from16 v12, p1

    move-object/from16 v7, p3

    goto :goto_12

    :cond_1f
    move-object/from16 p3, v7

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 113
    :try_start_3
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3

    add-int/2addr v2, v0

    goto :goto_14

    :catch_3
    move-exception v0

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QuickSwap async task execute with exception! "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {v0, v3, v8}, Lcom/android/server/accessibility/magnification/MagnificationConnectionManager$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_14

    .line 116
    :cond_20
    invoke-virtual {v9}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 117
    const-string v0, "PO=comp"

    goto :goto_15

    :cond_21
    if-eqz v13, :cond_22

    .line 118
    const-string v0, "PO=laun"

    goto :goto_15

    .line 119
    :cond_22
    const-string v0, "PO=skip"

    :goto_15
    move-object v1, v0

    goto :goto_16

    :cond_23
    move-object/from16 p3, v7

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "QuickSwap Skip: swap is full (free is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->getSwapFreePercentage(Lcom/android/internal/util/MemInfoReader;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "PO=full"

    move-object v1, v0

    const/4 v2, 0x0

    :goto_16
    if-eqz v19, :cond_2e

    .line 122
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-eqz v31, :cond_2e

    .line 123
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 124
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 125
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 126
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 128
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 129
    invoke-static {v5, v11, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_24
    const/16 v16, 0x1

    goto :goto_17

    :cond_25
    move-object/from16 v12, p3

    .line 130
    iget-object v0, v12, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    if-nez v0, :cond_27

    .line 131
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 132
    invoke-static {v5, v10, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_26
    move-object/from16 p3, v12

    goto :goto_17

    :cond_27
    move-object/from16 p1, v3

    .line 133
    :try_start_4
    iget-object v13, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 134
    iget v15, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 135
    iget v3, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v19, v10

    :try_start_5
    const-string v10, "QuickSwap WB : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v24, v11

    const-wide/16 v10, 0x40

    :try_start_6
    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v10, "(pid "

    if-eqz v4, :cond_28

    .line 138
    :try_start_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "QuickSwap WB start for "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") adj:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " pss:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x40

    goto/16 :goto_20

    :catch_4
    move-exception v0

    move-object v11, v1

    move/from16 v25, v2

    :goto_18
    move-object/from16 v1, v29

    goto/16 :goto_1e

    .line 139
    :cond_28
    :goto_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v11, v1

    move/from16 v25, v2

    const/4 v4, 0x2

    .line 140
    :try_start_8
    invoke-static {v5, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->compactProcessForWriteback(II)J

    move-result-wide v1

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    sub-long v6, v30, v6

    cmp-long v26, v1, v17

    if-lez v26, :cond_29

    .line 142
    invoke-virtual {v12, v0, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    goto :goto_1a

    :catch_5
    move-exception v0

    goto :goto_18

    .line 143
    :cond_29
    :goto_1a
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickSwap WB end for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") ret: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adj:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v1, v29

    :try_start_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1b

    :catch_6
    move-exception v0

    goto :goto_1e

    :cond_2a
    move-object/from16 v1, v29

    :goto_1b
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v2, 0x40

    .line 145
    :goto_1c
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_1f

    :catch_7
    move-exception v0

    move/from16 v25, v2

    :goto_1d
    move-object/from16 v24, v11

    move-object v11, v1

    goto :goto_18

    :catch_8
    move-exception v0

    move/from16 v25, v2

    move-object/from16 v19, v10

    goto :goto_1d

    .line 146
    :goto_1e
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const-wide/16 v2, 0x40

    goto :goto_1c

    :goto_1f
    move-object/from16 v3, p1

    move-object/from16 v29, v1

    move-object v1, v11

    move-object/from16 p3, v12

    move-object/from16 v10, v19

    move-object/from16 v11, v24

    move/from16 v2, v25

    goto/16 :goto_17

    .line 147
    :goto_20
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 148
    throw v0

    :cond_2b
    move-object v11, v1

    move/from16 v25, v2

    move-object/from16 v1, v29

    .line 149
    invoke-virtual {v9}, Ljava/util/TreeSet;->size()I

    move-result v0

    if-ne v0, v14, :cond_2c

    .line 150
    const-string v0, " WB=comp"

    move-object v2, v11

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_2c
    move-object v2, v11

    if-eqz v16, :cond_2d

    .line 151
    const-string v0, " WB=laun"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 152
    :cond_2d
    const-string v0, " WB=skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_2e
    move/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v29

    .line 153
    const-string v0, "QuickSwap Skip: writeback_limit is over"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, " WB=over"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x0

    .line 155
    :goto_21
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 156
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 157
    invoke-static {v2}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalFileUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v3

    sub-long v22, v22, v3

    cmp-long v3, v22, v17

    if-gez v3, :cond_2f

    move-wide/from16 v3, v17

    goto :goto_22

    :cond_2f
    move-wide/from16 v3, v22

    .line 158
    :goto_22
    invoke-static {v2}, Lcom/android/server/chimera/ppn/QuickSwap;->getTotalAnonDRAMUsedKb(Lcom/android/internal/util/MemInfoReader;)J

    move-result-wide v5

    sub-long v9, v27, v5

    cmp-long v2, v9, v17

    if-gez v2, :cond_30

    move-wide/from16 v9, v17

    .line 159
    :cond_30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 160
    const-string v2, "QuickSwap done: "

    const-string v7, ", PO "

    move/from16 v11, p4

    .line 161
    invoke-static {v11, v2, v1, v0, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 162
    const-string v2, ", WB "

    const-string v7, ", anon"

    move/from16 v12, v25

    .line 163
    invoke-static {v12, v14, v2, v7, v1}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 164
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB and file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "KB in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v5, v20

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    .line 165
    iget-object v5, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v8, 0x5

    if-ge v5, v8, :cond_31

    .line 166
    iget-object v5, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mGenieDump:Ljava/util/ArrayList;

    const-string v8, "QuickSwap Time : "

    const-string v13, " ms Anon : "

    .line 167
    invoke-static {v8, v6, v7, v13}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 168
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " kB File : "

    const-string v15, " kB PO="

    .line 169
    invoke-static {v8, v13, v3, v4, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 170
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " WB="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_31
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 172
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v3, v3, v20

    .line 173
    invoke-static {v8, v3, v4, v2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object v2, v5

    move-object v3, v0

    move-object v5, v8

    move-wide v7, v6

    move-object v6, v13

    move-wide/from16 v42, v7

    move-object v7, v15

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x13d6ea

    .line 175
    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 176
    iget v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    add-int/2addr v2, v12

    iput v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    .line 177
    iget v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    add-int/2addr v2, v14

    iput v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    .line 178
    iput v11, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestQuickSwapType:I

    .line 179
    iput-object v0, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    if-eqz v37, :cond_32

    .line 181
    iput-wide v2, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWBTimestampMS:J

    .line 182
    :cond_32
    iput v12, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestPageoutCnt:I

    .line 183
    iput v14, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWritebackCnt:I

    .line 184
    iput-wide v9, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestAnonZramDiff:J

    move-wide/from16 v5, v42

    .line 185
    iput-wide v5, v1, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestLatency:J

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "    configs"

    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    const-string v0, "      threadpoolsize: 4"

    .line 8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "      NS: "

    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    iget-boolean v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mIsNandswapOn:Z

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30
    const-string v0, "    stats"

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "      triggerd_cnt: "

    .line 39
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mTriggeredCnt:I

    .line 44
    const-string v2, "      PO_cnt: "

    .line 46
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    move-result-object v0

    .line 50
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mPageoutCnt:I

    .line 52
    const-string v3, "      WB_cnt: "

    .line 54
    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v0

    .line 58
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mWritebackCnt:I

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    const-string v0, "    latest"

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "      type: "

    .line 79
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestQuickSwapType:I

    .line 84
    const-string v4, "      Result: "

    .line 86
    invoke-static {v0, v1, p1, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestResult:Ljava/lang/String;

    .line 92
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 95
    move-result-object v0

    .line 96
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestPageoutCnt:I

    .line 98
    invoke-static {v0, v1, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    move-result-object v0

    .line 102
    iget v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestWritebackCnt:I

    .line 104
    const-string v2, "      anonZramDiff: "

    .line 106
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    move-result-object v0

    .line 110
    iget-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestAnonZramDiff:J

    .line 112
    const-string v3, "      latency: "

    .line 114
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    move-result-object v0

    .line 118
    iget-wide v1, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestLatency:J

    .line 120
    const-string v3, "      time: "

    .line 122
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    move-result-object v0

    .line 126
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 129
    move-result-wide v1

    .line 130
    iget-wide v3, p0, Lcom/android/server/chimera/ppn/QuickSwap;->mLatestTimestampMS:J

    .line 132
    sub-long/2addr v1, v3

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    return-void
.end method
