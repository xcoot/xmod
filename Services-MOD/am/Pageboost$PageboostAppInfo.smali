.class public final Lcom/android/server/am/Pageboost$PageboostAppInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccExecTime:J

.field public mAnon:I

.field public mApkPath:Ljava/lang/String;

.field public mCaptured:I

.field public mExecCnt:I

.field public mGPU:I

.field public mHitCnt:I

.field public mION:I

.field public mInstalled:I

.field public final mIsGameApp:Z

.field public mMapCaptureSizeForPrefetch:J

.field public final mName:Ljava/lang/String;

.field public final mNameTrimmed:Ljava/lang/String;

.field public mPid:I

.field public final mPrefetchCnt:I

.field public mProcStatus:I

.field public mProcStatusPid:I

.field public final mScore:I

.field public mSizeForPrefetch:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    .line 1
    const-string v16, ""

    invoke-direct/range {v0 .. v16}, Lcom/android/server/am/Pageboost$PageboostAppInfo;-><init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    .line 2
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 3
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 4
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 5
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    .line 6
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 8
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    .line 9
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 10
    iput v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 11
    const-string v2, ""

    iput-object v2, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 14
    :catch_0
    :cond_0
    iput-boolean v0, v1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIJJIIJIILjava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, p14

    move/from16 v5, p15

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    .line 16
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 17
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 18
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 19
    iput v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 20
    iput-object v1, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 21
    const-string v7, "."

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    move v7, p2

    .line 22
    iput v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    move v7, p3

    .line 23
    iput v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    move v7, p4

    .line 24
    iput v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    move v7, p5

    .line 25
    iput v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    move-wide v7, p6

    .line 26
    iput-wide v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    move-wide/from16 v7, p8

    .line 27
    iput-wide v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    .line 28
    iput v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    .line 29
    iput v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    move-wide/from16 v7, p12

    .line 30
    iput-wide v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 31
    iput v4, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    .line 32
    iput v5, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    move-object/from16 v7, p16

    .line 33
    iput-object v7, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/samsung/android/game/SemGameManager;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 35
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/game/SemGameManager;->isGamePackage(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    .line 36
    :catch_0
    :cond_0
    iput-boolean v6, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    .line 37
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    const-string v0, "appinfo : "

    const-string v6, " "

    .line 38
    invoke-static {v2, v0, p1, v6, v6}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 39
    invoke-static {v3, v4, v6, v6, v0}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 40
    const-string v1, "Pageboost"

    .line 41
    invoke-static {v0, v5, v1}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final activeLaunch()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x100

    .line 9
    const-string v3, "Pageboost"

    .line 11
    const/4 v4, 0x0

    .line 12
    if-lt v1, v2, :cond_0

    .line 14
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 16
    const-string p0, "Abort alp due to long package name : "

    .line 18
    invoke-static {p0, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 24
    const/4 v2, 0x2

    .line 25
    const-string v5, " , "

    .line 27
    iget-object v6, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 29
    if-eq v1, v2, :cond_1

    .line 31
    const/4 v1, 0x4

    .line 32
    invoke-static {v1, v0}, Lcom/android/server/am/Pageboost$Vramdisk;->executeCmd(ILjava/lang/String;)V

    .line 35
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 37
    const-string v0, "alp for : "

    .line 39
    invoke-static {v0, v6, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    move-result-object v0

    .line 43
    iget p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 45
    invoke-static {v0, p0, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 52
    const-string v0, "alp skip : "

    .line 54
    invoke-static {v0, v6, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v0

    .line 58
    iget p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 60
    invoke-static {v0, p0, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 63
    :goto_0
    return v4
.end method

.method public final execute()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    move-result v1

    .line 7
    const/16 v2, 0x100

    .line 9
    const-string v3, "Pageboost"

    .line 11
    const/4 v4, 0x0

    .line 12
    if-lt v1, v2, :cond_0

    .line 14
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 16
    const-string p0, "Abort IoPrefetch due to long package name : "

    .line 18
    invoke-static {p0, v0, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget v1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    .line 24
    if-lez v1, :cond_1

    .line 26
    const/4 v4, 0x1

    .line 27
    invoke-static {v4, v0}, Lcom/android/server/am/Pageboost$Vramdisk;->executeCmd(ILjava/lang/String;)V

    .line 30
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "IO Prefetch for : "

    .line 36
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 41
    invoke-static {v0, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    :goto_0
    return v4
.end method

.method public final getIoinfo([J)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "Pageboost"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    const-string v3, "/proc/"

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget v4, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 13
    const-string v5, "/ioinfo"

    .line 15
    invoke-static {v4, v2, v5}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x0

    .line 20
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    .line 22
    new-instance v6, Ljava/io/FileReader;

    .line 24
    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    move v2, v4

    .line 31
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 34
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    if-eqz v6, :cond_1

    .line 37
    add-int/lit8 v7, v2, 0x1

    .line 39
    :try_start_2
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 42
    move-result-wide v8

    .line 43
    aput-wide v8, p1, v2

    .line 45
    array-length v2, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    if-ne v7, v2, :cond_0

    .line 48
    move v2, v7

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v2, v7

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 57
    goto :goto_5

    .line 58
    :catchall_1
    move-exception v6

    .line 59
    move v7, v2

    .line 60
    move-object v2, v6

    .line 61
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 64
    goto :goto_3

    .line 65
    :catchall_2
    move-exception v5

    .line 66
    :try_start_5
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 69
    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 70
    :catch_0
    move v2, v7

    .line 71
    goto :goto_4

    .line 72
    :catch_1
    move v2, v4

    .line 73
    :catch_2
    :goto_4
    sget-boolean v5, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 75
    const-string/jumbo v5, "ioinfo read failed"

    .line 78
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_5
    array-length v5, p1

    .line 82
    if-ne v2, v5, :cond_3

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 91
    const-string v5, "/cmdline"

    .line 93
    invoke-static {v3, v2, v5}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    :try_start_6
    new-instance v3, Ljava/io/BufferedReader;

    .line 99
    new-instance v5, Ljava/io/FileReader;

    .line 101
    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 107
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    if-eqz v2, :cond_2

    .line 113
    const-string v5, "[^\\p{Alnum}\\.]+"

    .line 115
    const/4 v6, 0x2

    .line 116
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 119
    move-result-object v2

    .line 120
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 122
    aget-object v2, v2, v4

    .line 124
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    move-result p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 128
    if-eqz p0, :cond_2

    .line 130
    goto :goto_6

    .line 131
    :catchall_3
    move-exception p0

    .line 132
    goto :goto_7

    .line 133
    :cond_2
    move v0, v4

    .line 134
    :goto_6
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 137
    goto :goto_9

    .line 138
    :goto_7
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 141
    goto :goto_8

    .line 142
    :catchall_4
    move-exception v0

    .line 143
    :try_start_a
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 146
    :goto_8
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 147
    :catch_3
    move v0, v4

    .line 148
    :catch_4
    sget-boolean p0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 150
    const-string/jumbo p0, "cmdline read failed"

    .line 153
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_9
    if-nez v0, :cond_4

    .line 158
    :cond_3
    const-wide/16 v0, -0x1

    .line 160
    aput-wide v0, p1, v4

    .line 162
    :cond_4
    return-void
.end method

.method public final initAalPrefetchList()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-string v1, "apkpath seems not correct : "

    .line 5
    sget-boolean v2, Lcom/android/server/am/Pageboost;->PAGEBOOST_ACTIVE_LAUNCH_ENABLED:Z

    .line 7
    if-nez v2, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v2, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 12
    iget-object v3, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 14
    invoke-static {v2, v3}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    if-nez v2, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 23
    new-instance v3, Ljava/io/File;

    .line 25
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 31
    move-result-object v3

    .line 32
    if-nez v3, :cond_2

    .line 34
    const-string v0, "Pageboost"

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, ", "

    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto/16 :goto_3

    .line 60
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 63
    move-result-object v1

    .line 64
    const/4 v3, 0x0

    .line 65
    if-eqz v1, :cond_7

    .line 67
    const-string v4, "/oat/arm64/"

    .line 69
    const-string v5, "/oat/arm/"

    .line 71
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    move v5, v3

    .line 76
    move v6, v5

    .line 77
    :goto_0
    const/4 v7, 0x2

    .line 78
    if-ge v5, v7, :cond_6

    .line 80
    new-instance v7, Ljava/io/File;

    .line 82
    new-instance v8, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    aget-object v9, v4, v5

    .line 92
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v8

    .line 99
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 105
    move-result v8

    .line 106
    if-eqz v8, :cond_5

    .line 108
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 111
    move-result-object v7

    .line 112
    if-eqz v7, :cond_5

    .line 114
    array-length v6, v7

    .line 115
    move v8, v3

    .line 116
    :goto_1
    if-ge v8, v6, :cond_4

    .line 118
    aget-object v9, v7, v8

    .line 120
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    .line 123
    move-result v10

    .line 124
    if-eqz v10, :cond_3

    .line 126
    sget-object v11, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 128
    iget-object v12, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 130
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 133
    move-result-object v13

    .line 134
    const/16 v16, 0x0

    .line 136
    const/16 v17, 0x2

    .line 138
    const/4 v14, -0x1

    .line 139
    const/4 v15, 0x0

    .line 140
    invoke-static/range {v11 .. v17}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V

    .line 143
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    const/4 v6, 0x1

    .line 147
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 149
    goto :goto_0

    .line 150
    :cond_6
    move v3, v6

    .line 151
    :cond_7
    if-nez v3, :cond_9

    .line 153
    const-string v1, "/system/"

    .line 155
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_8

    .line 161
    const-string v1, "/product/"

    .line 163
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_9

    .line 169
    :cond_8
    invoke-static {v2}, Lcom/android/server/am/Pageboost$Vramdisk;->getDalvikcacheFileList(Ljava/lang/String;)Ljava/util/LinkedList;

    .line 172
    move-result-object v1

    .line 173
    if-eqz v1, :cond_9

    .line 175
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 178
    move-result-object v1

    .line 179
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    move-result v2

    .line 183
    if-eqz v2, :cond_9

    .line 185
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Ljava/io/File;

    .line 191
    sget-object v3, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 193
    iget-object v4, v0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 195
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 198
    move-result-object v5

    .line 199
    const/4 v8, 0x0

    .line 200
    const/4 v9, 0x2

    .line 201
    const/4 v6, -0x1

    .line 202
    const/4 v7, 0x0

    .line 203
    invoke-static/range {v3 .. v9}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->insertTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_2

    .line 207
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    :cond_9
    return-void
.end method

.method public final isApkPathCorrect()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-string v2, "/data/"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 17
    const-string v2, "/system/"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 25
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 27
    const-string v0, "/product/"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_2

    .line 35
    :cond_1
    const/4 v1, 0x1

    .line 36
    :cond_2
    :goto_0
    return v1
.end method

.method public final setApkPath(Ljava/lang/String;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    move-result v0

    .line 10
    const-string v1, " "

    .line 12
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 14
    const-string v3, "Pageboost"

    .line 16
    if-eqz v0, :cond_1

    .line 18
    sget-boolean p1, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 20
    const-string p1, "Reuse the dbinfo for this app info : "

    .line 22
    invoke-static {p1, v2, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 28
    invoke-static {p1, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void

    .line 32
    :cond_1
    sget-boolean v0, Lcom/android/server/am/Pageboost;->PAGEBOOST_IO_PREFETCH_ENABLED:Z

    .line 34
    const-string v0, "Reset this app info : "

    .line 36
    invoke-static {v0, v2, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v0

    .line 40
    iget-object v4, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 42
    invoke-static {v0, v4, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 47
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 53
    const-string p1, "app not in internal storage : "

    .line 55
    invoke-static {p1, v2, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    move-result-object p1

    .line 59
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 61
    invoke-static {p1, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 65
    :cond_2
    sget-object p1, Lcom/android/server/am/Pageboost;->mFileDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 67
    iget-object v0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mNameTrimmed:Ljava/lang/String;

    .line 69
    invoke-static {p1, v0}, Lcom/android/server/am/Pageboost$PageboostAppDBHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->initAalPrefetchList()V

    .line 75
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, " "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPid:I

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    move-result-object v0

    .line 21
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatusPid:I

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object v0

    .line 34
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mProcStatus:I

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    move-result-object v0

    .line 47
    iget-object v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-result-object v0

    .line 60
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mCaptured:I

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    move-result-object v0

    .line 73
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAnon:I

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    move-result-object v0

    .line 86
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mION:I

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    move-result-object v0

    .line 99
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mGPU:I

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 108
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v0

    .line 112
    iget-wide v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mSizeForPrefetch:J

    .line 114
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    move-result-object v0

    .line 125
    iget-wide v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mMapCaptureSizeForPrefetch:J

    .line 127
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    const-string v2, " 0"

    .line 136
    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-static {v0, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    move-result-object v0

    .line 148
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mScore:I

    .line 150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    move-result-object v0

    .line 161
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    move-result-object v0

    .line 174
    iget-wide v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 176
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    move-result-object v0

    .line 187
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mExecCnt:I

    .line 189
    if-eqz v2, :cond_0

    .line 191
    iget-wide v3, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mAccExecTime:J

    .line 193
    int-to-long v5, v2

    .line 194
    div-long/2addr v3, v5

    .line 195
    goto :goto_0

    .line 196
    :cond_0
    const-wide/16 v3, 0x0

    .line 198
    :goto_0
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    move-result-object v0

    .line 209
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mPrefetchCnt:I

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v0

    .line 218
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    move-result-object v0

    .line 222
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mHitCnt:I

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    move-result-object v0

    .line 235
    iget v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mInstalled:I

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    move-result-object v0

    .line 248
    iget-boolean v2, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mIsGameApp:Z

    .line 250
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    move-result-object v0

    .line 261
    iget-object p0, p0, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    .line 263
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p0

    .line 270
    return-object p0
.end method
