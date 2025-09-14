.class public final Lcom/android/server/chimera/heimdall/HeimdallReportManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sRandomSampleRate:I = 0xa


# instance fields
.field public final mBigdataManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mReportHandler:Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;

.field public final mReportHistory:Lcom/android/internal/util/RingBuffer;

.field public final mReportedAlwaysRunningProcesses:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mContext:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 8
    new-instance p3, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;

    .line 10
    invoke-direct {p3, p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;-><init>(Lcom/android/server/chimera/heimdall/HeimdallReportManager;Landroid/os/Looper;)V

    .line 13
    iput-object p3, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportHandler:Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;

    .line 15
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 21
    new-instance p1, Lcom/android/internal/util/RingBuffer;

    .line 23
    const-class p3, Ljava/lang/String;

    .line 25
    const/16 v0, 0x14

    .line 27
    invoke-direct {p1, p3, v0}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 30
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportHistory:Lcom/android/internal/util/RingBuffer;

    .line 32
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 34
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportedAlwaysRunningProcesses:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 39
    new-instance p1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BroadcastManager;

    .line 41
    invoke-direct {p1, p0}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BroadcastManager;-><init>(Lcom/android/server/chimera/heimdall/HeimdallReportManager;)V

    .line 44
    new-instance p3, Landroid/content/IntentFilter;

    .line 46
    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 51
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v0, "android.intent.action.REBOOT"

    .line 56
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 62
    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    new-instance p1, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;

    .line 70
    invoke-direct {p1, p0}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;-><init>(Lcom/android/server/chimera/heimdall/HeimdallReportManager;)V

    .line 73
    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mBigdataManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager$BigdataManager;

    .line 75
    return-void
.end method


# virtual methods
.method public final dumpReportHistory(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportHistory:Lcom/android/internal/util/RingBuffer;

    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 9
    const-string v1, "\nReport history:"

    .line 11
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, [Ljava/lang/String;

    .line 20
    array-length v1, v0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_0

    .line 24
    aget-object v3, v0, v2

    .line 26
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportHandler:Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;

    .line 34
    sget v0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->$r8$clinit:I

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    const-string v0, "  In-progress report List (length="

    .line 41
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 44
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->lock:Ljava/lang/Object;

    .line 46
    monitor-enter v1

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mReportData:Ljava/util/Queue;

    .line 49
    check-cast v2, Ljava/util/LinkedList;

    .line 51
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 54
    move-result v2

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v0, ")"

    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    if-eqz v2, :cond_1

    .line 77
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mReportData:Ljava/util/Queue;

    .line 79
    invoke-interface {p0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    .line 82
    move-result-object p0

    .line 83
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_1

    .line 89
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v3, "    "

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 107
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    goto :goto_1

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    goto :goto_2

    .line 120
    :cond_1
    monitor-exit v1

    .line 121
    return-void

    .line 122
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    throw p0
.end method

.method public final reportDumpFile(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 30

    .line 1
    move-object/from16 v1, p1

    .line 3
    const-string v2, "\n"

    .line 5
    const-string v3, "/data/log/heimdalld_log/"

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_15

    .line 19
    :cond_0
    const/16 v0, 0x1fd

    .line 21
    const/16 v4, 0x3ef

    .line 23
    const/16 v5, 0x3e8

    .line 25
    :try_start_0
    invoke-static {v3, v0}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 28
    invoke-static {v3, v5, v4}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 40
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string/jumbo v6, "heimdall_dumpsys_meminfo_"

    .line 45
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object v6, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    const-string v6, "\n** MEMINFO in pid "

    .line 63
    new-instance v8, Landroid/os/Debug$MemoryInfo;

    .line 65
    invoke-direct {v8}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 68
    iget v7, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 70
    invoke-static {v7, v8}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)Z

    .line 73
    move-result v7

    .line 74
    const/4 v14, 0x1

    .line 75
    const-string v13, ")"

    .line 77
    const-string v10, "Create new file. "

    .line 79
    const-string v9, "Failed to create new file. "

    .line 81
    if-nez v7, :cond_1

    .line 83
    const-string v0, "Failed to dumpsys meminfo"

    .line 85
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 88
    move-object v4, v9

    .line 89
    move-object v5, v10

    .line 90
    move-object v8, v13

    .line 91
    move v6, v14

    .line 92
    goto/16 :goto_7

    .line 94
    :cond_1
    new-instance v7, Ljava/io/File;

    .line 96
    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    :try_start_1
    invoke-virtual {v7, v14}, Ljava/io/File;->setWritable(Z)Z

    .line 102
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 105
    move-result v11

    .line 106
    if-eqz v11, :cond_2

    .line 108
    new-instance v11, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v11

    .line 120
    invoke-static {v11}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 123
    goto :goto_1

    .line 124
    :catch_1
    move-exception v0

    .line 125
    move-object v4, v9

    .line 126
    move-object v5, v10

    .line 127
    move-object v8, v13

    .line 128
    move v6, v14

    .line 129
    goto/16 :goto_6

    .line 131
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    .line 133
    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object v11

    .line 143
    invoke-static {v11}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :goto_1
    :try_start_2
    new-instance v15, Ljava/io/PrintWriter;

    .line 148
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 150
    invoke-direct {v15, v7, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    .line 153
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 155
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    iget v6, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 160
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v6, " ["

    .line 165
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v6, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 170
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v6, "] **"

    .line 175
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v15, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    iget v6, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 187
    iget-object v7, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    const/4 v11, 0x1

    .line 190
    const/4 v12, 0x0

    .line 191
    const-wide/16 v16, 0x0

    .line 193
    move-object/from16 v27, v15

    .line 195
    move-wide/from16 v15, v16

    .line 197
    const-wide/16 v17, 0x0

    .line 199
    const-wide/16 v19, 0x0

    .line 201
    const-wide/16 v21, 0x0

    .line 203
    const-wide/16 v23, 0x0

    .line 205
    const-wide/16 v25, 0x0

    .line 207
    const/16 v28, 0x0

    .line 209
    move-object v4, v9

    .line 210
    move/from16 v9, v28

    .line 212
    const/16 v28, 0x1

    .line 214
    move-object v5, v10

    .line 215
    move/from16 v10, v28

    .line 217
    move-object/from16 v28, v7

    .line 219
    move-object/from16 v7, v27

    .line 221
    move-object/from16 v29, v13

    .line 223
    move v13, v6

    .line 224
    move v6, v14

    .line 225
    move-object/from16 v14, v28

    .line 227
    :try_start_4
    invoke-static/range {v7 .. v26}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 230
    :try_start_5
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    .line 235
    const-string v8, "Dumpsys Meminfo Done(path="

    .line 237
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    move-object/from16 v8, v29

    .line 245
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 255
    goto :goto_7

    .line 256
    :catch_2
    move-exception v0

    .line 257
    move-object/from16 v8, v29

    .line 259
    goto :goto_5

    .line 260
    :catchall_0
    move-exception v0

    .line 261
    move-object/from16 v8, v29

    .line 263
    :goto_2
    move-object v7, v0

    .line 264
    goto :goto_3

    .line 265
    :catchall_1
    move-exception v0

    .line 266
    move-object v4, v9

    .line 267
    move-object v5, v10

    .line 268
    move-object v8, v13

    .line 269
    move v6, v14

    .line 270
    move-object/from16 v27, v15

    .line 272
    goto :goto_2

    .line 273
    :goto_3
    :try_start_6
    invoke-virtual/range {v27 .. v27}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 276
    goto :goto_4

    .line 277
    :catchall_2
    move-exception v0

    .line 278
    move-object v9, v0

    .line 279
    :try_start_7
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 282
    :goto_4
    throw v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3

    .line 283
    :catch_3
    move-exception v0

    .line 284
    goto :goto_5

    .line 285
    :catch_4
    move-exception v0

    .line 286
    move-object v4, v9

    .line 287
    move-object v5, v10

    .line 288
    move-object v8, v13

    .line 289
    move v6, v14

    .line 290
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 293
    move-result-object v0

    .line 294
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 297
    goto :goto_7

    .line 298
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 301
    move-result-object v0

    .line 302
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 305
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v7, "heimdall_proc_status_"

    .line 310
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    iget-object v7, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 315
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    move-result-object v0

    .line 322
    invoke-static {v3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    move-result-object v0

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v9, "cat /proc/"

    .line 331
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    iget v9, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 336
    const-string v10, "/status"

    .line 338
    invoke-static {v9, v7, v10}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    move-result-object v7

    .line 342
    new-instance v9, Ljava/io/File;

    .line 344
    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    const-wide/16 v10, 0x5

    .line 349
    :try_start_8
    invoke-virtual {v9, v6}, Ljava/io/File;->setWritable(Z)Z

    .line 352
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 355
    move-result v12

    .line 356
    if-eqz v12, :cond_3

    .line 358
    new-instance v12, Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object v12

    .line 370
    invoke-static {v12}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 373
    goto :goto_8

    .line 374
    :catch_5
    move-exception v0

    .line 375
    goto/16 :goto_16

    .line 377
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    .line 379
    invoke-direct {v12, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object v12

    .line 389
    invoke-static {v12}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_5

    .line 392
    :goto_8
    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 395
    move-result-object v12

    .line 396
    invoke-virtual {v12, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 399
    move-result-object v12
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 400
    :try_start_a
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 402
    invoke-virtual {v12, v10, v11, v13}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    .line 405
    move-result v13
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 406
    if-eqz v13, :cond_5

    .line 408
    :try_start_b
    new-instance v13, Ljava/io/InputStreamReader;

    .line 410
    invoke-virtual {v12}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 413
    move-result-object v14

    .line 414
    sget-object v15, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 416
    invoke-direct {v13, v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 419
    :try_start_c
    new-instance v14, Ljava/io/BufferedReader;

    .line 421
    invoke-direct {v14, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 424
    :try_start_d
    new-instance v10, Ljava/io/FileWriter;

    .line 426
    invoke-direct {v10, v9, v15}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 429
    :try_start_e
    new-instance v9, Ljava/io/BufferedWriter;

    .line 431
    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 434
    :goto_9
    :try_start_f
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 437
    move-result-object v11

    .line 438
    if-eqz v11, :cond_4

    .line 440
    new-instance v15, Ljava/lang/StringBuilder;

    .line 442
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    move-result-object v11

    .line 455
    invoke-virtual {v9, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 458
    goto :goto_9

    .line 459
    :catchall_3
    move-exception v0

    .line 460
    move-object v7, v0

    .line 461
    goto :goto_a

    .line 462
    :cond_4
    :try_start_10
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 465
    :try_start_11
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 468
    :try_start_12
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 471
    :try_start_13
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 474
    :try_start_14
    new-instance v9, Ljava/lang/StringBuilder;

    .line 476
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    const-string v10, "Command Done(path="

    .line 481
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const-string v0, "): "

    .line 489
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    move-result-object v0

    .line 499
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 502
    goto :goto_13

    .line 503
    :catchall_4
    move-exception v0

    .line 504
    goto :goto_15

    .line 505
    :catch_6
    move-exception v0

    .line 506
    goto :goto_14

    .line 507
    :catch_7
    move-exception v0

    .line 508
    goto :goto_12

    .line 509
    :catchall_5
    move-exception v0

    .line 510
    move-object v7, v0

    .line 511
    goto :goto_10

    .line 512
    :catchall_6
    move-exception v0

    .line 513
    move-object v7, v0

    .line 514
    goto :goto_e

    .line 515
    :catchall_7
    move-exception v0

    .line 516
    move-object v7, v0

    .line 517
    goto :goto_c

    .line 518
    :goto_a
    :try_start_15
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 521
    goto :goto_b

    .line 522
    :catchall_8
    move-exception v0

    .line 523
    move-object v9, v0

    .line 524
    :try_start_16
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 527
    :goto_b
    throw v7
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 528
    :goto_c
    :try_start_17
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    .line 531
    goto :goto_d

    .line 532
    :catchall_9
    move-exception v0

    .line 533
    move-object v9, v0

    .line 534
    :try_start_18
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 537
    :goto_d
    throw v7
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 538
    :goto_e
    :try_start_19
    invoke-virtual {v14}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 541
    goto :goto_f

    .line 542
    :catchall_a
    move-exception v0

    .line 543
    move-object v9, v0

    .line 544
    :try_start_1a
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 547
    :goto_f
    throw v7
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 548
    :goto_10
    :try_start_1b
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 551
    goto :goto_11

    .line 552
    :catchall_b
    move-exception v0

    .line 553
    move-object v9, v0

    .line 554
    :try_start_1c
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 557
    :goto_11
    throw v7
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_6
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .line 558
    :goto_12
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 561
    move-result-object v0

    .line 562
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_6
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 565
    :cond_5
    :goto_13
    invoke-virtual {v12}, Ljava/lang/Process;->destroy()V

    .line 568
    goto :goto_17

    .line 569
    :goto_14
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 572
    move-result-object v0

    .line 573
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    .line 576
    goto :goto_13

    .line 577
    :goto_15
    invoke-virtual {v12}, Ljava/lang/Process;->destroy()V

    .line 580
    throw v0

    .line 581
    :catch_8
    move-exception v0

    .line 582
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 585
    move-result-object v0

    .line 586
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 589
    goto :goto_17

    .line 590
    :goto_16
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 593
    move-result-object v0

    .line 594
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 597
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 599
    const-string/jumbo v7, "heimdall_dma_buf_"

    .line 602
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 605
    iget-object v7, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 607
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    move-result-object v0

    .line 614
    invoke-static {v3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 617
    move-result-object v7

    .line 618
    invoke-static {}, Lcom/android/internal/os/KernelAllocationStats;->getDmabufAllocations()[Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;

    .line 621
    move-result-object v0

    .line 622
    if-nez v0, :cond_6

    .line 624
    const-string v0, "DmaBuf cannot be read."

    .line 626
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 629
    goto/16 :goto_21

    .line 631
    :cond_6
    new-instance v9, Ljava/io/File;

    .line 633
    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    :try_start_1f
    invoke-virtual {v9, v6}, Ljava/io/File;->setWritable(Z)Z

    .line 639
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 642
    move-result v10

    .line 643
    if-eqz v10, :cond_7

    .line 645
    new-instance v10, Ljava/lang/StringBuilder;

    .line 647
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 656
    move-result-object v10

    .line 657
    invoke-static {v10}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 660
    goto :goto_18

    .line 661
    :catch_9
    move-exception v0

    .line 662
    goto/16 :goto_20

    .line 664
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    .line 666
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 675
    move-result-object v10

    .line 676
    invoke-static {v10}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_1f} :catch_9

    .line 679
    :goto_18
    :try_start_20
    new-instance v10, Ljava/io/FileWriter;

    .line 681
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 683
    invoke-direct {v10, v9, v11}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_a

    .line 686
    :try_start_21
    new-instance v9, Ljava/io/BufferedWriter;

    .line 688
    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_d

    .line 691
    :try_start_22
    array-length v11, v0

    .line 692
    const/4 v12, 0x0

    .line 693
    :goto_19
    if-ge v12, v11, :cond_8

    .line 695
    aget-object v13, v0, v12

    .line 697
    new-instance v14, Ljava/lang/StringBuilder;

    .line 699
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    const-string v15, "ProcessName="

    .line 704
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    iget-object v15, v13, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->processName:Ljava/lang/String;

    .line 709
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    const-string v15, " retainedSizeKb="

    .line 714
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    iget v13, v13, Lcom/android/internal/os/KernelAllocationStats$ProcessDmabuf;->retainedSizeKb:I

    .line 719
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    move-result-object v13

    .line 729
    invoke-virtual {v9, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_c

    .line 732
    add-int/lit8 v12, v12, 0x1

    .line 734
    goto :goto_19

    .line 735
    :catchall_c
    move-exception v0

    .line 736
    move-object v2, v0

    .line 737
    goto :goto_1a

    .line 738
    :cond_8
    :try_start_23
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 741
    :try_start_24
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_a

    .line 744
    goto :goto_1f

    .line 745
    :catch_a
    move-exception v0

    .line 746
    goto :goto_1e

    .line 747
    :catchall_d
    move-exception v0

    .line 748
    move-object v2, v0

    .line 749
    goto :goto_1c

    .line 750
    :goto_1a
    :try_start_25
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_e

    .line 753
    goto :goto_1b

    .line 754
    :catchall_e
    move-exception v0

    .line 755
    move-object v9, v0

    .line 756
    :try_start_26
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 759
    :goto_1b
    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    .line 760
    :goto_1c
    :try_start_27
    invoke-virtual {v10}, Ljava/io/FileWriter;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_f

    .line 763
    goto :goto_1d

    .line 764
    :catchall_f
    move-exception v0

    .line 765
    move-object v9, v0

    .line 766
    :try_start_28
    invoke-virtual {v2, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 769
    :goto_1d
    throw v2
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_a

    .line 770
    :goto_1e
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 773
    move-result-object v0

    .line 774
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 777
    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 779
    const-string v2, "DmaBuf Done(path="

    .line 781
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 793
    move-result-object v0

    .line 794
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 797
    goto :goto_21

    .line 798
    :goto_20
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 801
    move-result-object v0

    .line 802
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 805
    :goto_21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 807
    const-string/jumbo v2, "heimdall_gfxinfo_"

    .line 810
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 815
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    move-result-object v0

    .line 822
    invoke-static {v3, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 825
    move-result-object v2

    .line 826
    const-string v0, "-p"

    .line 828
    new-instance v7, Ljava/io/File;

    .line 830
    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 833
    const/high16 v9, 0x20000000

    .line 835
    :try_start_29
    invoke-virtual {v7, v6}, Ljava/io/File;->setWritable(Z)Z

    .line 838
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 841
    move-result v10

    .line 842
    if-eqz v10, :cond_9

    .line 844
    new-instance v10, Ljava/lang/StringBuilder;

    .line 846
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    move-result-object v10

    .line 856
    invoke-static {v10}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 859
    goto :goto_22

    .line 860
    :catch_b
    move-exception v0

    .line 861
    goto :goto_28

    .line 862
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    .line 864
    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 867
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 873
    move-result-object v10

    .line 874
    invoke-static {v10}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_29} :catch_b

    .line 877
    :goto_22
    :try_start_2a
    invoke-static {v7, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 880
    move-result-object v7
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_d

    .line 881
    :try_start_2b
    iget-object v10, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    .line 883
    filled-new-array {v10, v0}, [Ljava/lang/String;

    .line 886
    move-result-object v0

    .line 887
    const-string/jumbo v10, "gfxinfo"

    .line 890
    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 893
    move-result-object v10
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_10

    .line 894
    if-eqz v10, :cond_a

    .line 896
    :try_start_2c
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 899
    move-result-object v11

    .line 900
    invoke-interface {v10, v11, v0}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2c} :catch_c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    .line 903
    goto :goto_23

    .line 904
    :catchall_10
    move-exception v0

    .line 905
    move-object v10, v0

    .line 906
    goto :goto_24

    .line 907
    :catch_c
    move-exception v0

    .line 908
    :try_start_2d
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 911
    move-result-object v0

    .line 912
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    .line 915
    :cond_a
    :goto_23
    if-eqz v7, :cond_c

    .line 917
    :try_start_2e
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_d

    .line 920
    goto :goto_27

    .line 921
    :catch_d
    move-exception v0

    .line 922
    goto :goto_26

    .line 923
    :goto_24
    if-eqz v7, :cond_b

    .line 925
    :try_start_2f
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    .line 928
    goto :goto_25

    .line 929
    :catchall_11
    move-exception v0

    .line 930
    move-object v7, v0

    .line 931
    :try_start_30
    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 934
    :cond_b
    :goto_25
    throw v10
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_d

    .line 935
    :goto_26
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 938
    move-result-object v0

    .line 939
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 942
    :cond_c
    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 944
    const-string v7, "GfxInfo Done(path="

    .line 946
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 955
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 958
    move-result-object v0

    .line 959
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 962
    goto :goto_29

    .line 963
    :goto_28
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 966
    move-result-object v0

    .line 967
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 970
    :goto_29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 972
    const-string/jumbo v2, "tar -cvf /data/log/heimdalld_log_"

    .line 975
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 978
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 980
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const-string v2, ".tar /data/log/heimdalld_log/heimdall_dumpsys_meminfo_"

    .line 985
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 990
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    const-string v2, " /data/log/heimdalld_log/heimdall_proc_status_"

    .line 995
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    iget-object v7, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1000
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    const-string v7, " /data/log/heimdalld_log/heimdall_dma_buf_"

    .line 1005
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    iget-object v10, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1010
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    const-string v10, " /data/log/heimdalld_log/heimdall_gfxinfo_"

    .line 1015
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    iget-object v11, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1020
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1026
    move-result-object v0

    .line 1027
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1029
    const-string v12, "Execute Command: "

    .line 1031
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1034
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1040
    move-result-object v11

    .line 1041
    invoke-static {v11}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1044
    :try_start_31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 1047
    move-result-object v11

    .line 1048
    invoke-virtual {v11, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1051
    move-result-object v11
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_31 .. :try_end_31} :catch_14
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_14

    .line 1052
    :try_start_32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1054
    const-wide/16 v13, 0x5

    .line 1056
    invoke-virtual {v11, v13, v14, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    .line 1059
    move-result v15
    :try_end_32
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_32} :catch_13
    .catchall {:try_start_32 .. :try_end_32} :catchall_14

    .line 1060
    if-nez v15, :cond_d

    .line 1062
    :goto_2a
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    .line 1065
    goto/16 :goto_30

    .line 1067
    :cond_d
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    .line 1070
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1072
    const-string/jumbo v13, "gzip -1 -f /data/log/heimdalld_log_"

    .line 1075
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1078
    iget-object v13, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1080
    const-string v14, ".tar"

    .line 1082
    invoke-static {v11, v13, v14}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1085
    move-result-object v11

    .line 1086
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1088
    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1097
    move-result-object v13

    .line 1098
    invoke-static {v13}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1101
    :try_start_33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 1104
    move-result-object v13

    .line 1105
    invoke-virtual {v13, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1108
    move-result-object v11
    :try_end_33
    .catch Ljava/lang/SecurityException; {:try_start_33 .. :try_end_33} :catch_12
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_12

    .line 1109
    const-wide/16 v13, 0x5

    .line 1111
    :try_start_34
    invoke-virtual {v11, v13, v14, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    .line 1114
    move-result v15
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_34} :catch_11
    .catchall {:try_start_34 .. :try_end_34} :catchall_13

    .line 1115
    if-nez v15, :cond_e

    .line 1117
    :goto_2b
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    .line 1120
    goto/16 :goto_30

    .line 1122
    :cond_e
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    .line 1125
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1127
    const-string/jumbo v13, "rm -rf /data/log/heimdalld_log/heimdall_dumpsys_meminfo_"

    .line 1130
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1133
    iget-object v13, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1135
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1143
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1151
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1157
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1159
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1165
    move-result-object v2

    .line 1166
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1168
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1177
    move-result-object v7

    .line 1178
    invoke-static {v7}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1181
    :try_start_35
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 1184
    move-result-object v7

    .line 1185
    invoke-virtual {v7, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1188
    move-result-object v2
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_35} :catch_10
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_10

    .line 1189
    const-wide/16 v10, 0x5

    .line 1191
    :try_start_36
    invoke-virtual {v2, v10, v11, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    .line 1194
    move-result v0
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_36} :catch_f
    .catchall {:try_start_36 .. :try_end_36} :catchall_12

    .line 1195
    if-nez v0, :cond_f

    .line 1197
    :goto_2c
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 1200
    goto/16 :goto_30

    .line 1202
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1207
    const-string v2, "/data/log/heimdalld_log_"

    .line 1209
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1212
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1214
    const-string v7, ".tar.gz"

    .line 1216
    invoke-static {v0, v2, v7}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1219
    move-result-object v0

    .line 1220
    const/16 v2, 0x1a0

    .line 1222
    :try_start_37
    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1225
    const/16 v2, 0x3ef

    .line 1227
    const/16 v7, 0x3e8

    .line 1229
    invoke-static {v0, v7, v2}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_37 .. :try_end_37} :catch_e

    .line 1232
    const-string v0, "Compress Finished."

    .line 1234
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1237
    goto :goto_30

    .line 1238
    :catch_e
    move-exception v0

    .line 1239
    invoke-virtual {v0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    .line 1242
    move-result-object v0

    .line 1243
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1246
    goto :goto_30

    .line 1247
    :catchall_12
    move-exception v0

    .line 1248
    goto :goto_2d

    .line 1249
    :catch_f
    move-exception v0

    .line 1250
    move-object v7, v0

    .line 1251
    :try_start_38
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 1254
    move-result-object v0

    .line 1255
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_12

    .line 1258
    goto :goto_2c

    .line 1259
    :goto_2d
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 1262
    throw v0

    .line 1263
    :catch_10
    move-exception v0

    .line 1264
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1267
    move-result-object v0

    .line 1268
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1271
    goto :goto_30

    .line 1272
    :catchall_13
    move-exception v0

    .line 1273
    goto :goto_2e

    .line 1274
    :catch_11
    move-exception v0

    .line 1275
    move-object v2, v0

    .line 1276
    :try_start_39
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 1279
    move-result-object v0

    .line 1280
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_13

    .line 1283
    goto/16 :goto_2b

    .line 1285
    :goto_2e
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    .line 1288
    throw v0

    .line 1289
    :catch_12
    move-exception v0

    .line 1290
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1293
    move-result-object v0

    .line 1294
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1297
    goto :goto_30

    .line 1298
    :catchall_14
    move-exception v0

    .line 1299
    goto :goto_2f

    .line 1300
    :catch_13
    move-exception v0

    .line 1301
    :try_start_3a
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 1304
    move-result-object v0

    .line 1305
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_14

    .line 1308
    goto/16 :goto_2a

    .line 1310
    :goto_2f
    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    .line 1313
    throw v0

    .line 1314
    :catch_14
    move-exception v0

    .line 1315
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1318
    move-result-object v0

    .line 1319
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1322
    :goto_30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1324
    const-string/jumbo v2, "heimdall_heapdump_"

    .line 1327
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1330
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    .line 1332
    const-string v7, ".prof"

    .line 1334
    invoke-static {v0, v2, v7}, Landroid/hardware/audio/common/V2_0/AudioOffloadInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1337
    move-result-object v0

    .line 1338
    const-string v2, "/data/log/core/"

    .line 1340
    invoke-static {v2, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1343
    move-result-object v2

    .line 1344
    const-string/jumbo v16, "png"

    .line 1347
    const-string/jumbo v7, "failed getting heapdump "

    .line 1350
    const-string/jumbo v0, "can\'t open pfd "

    .line 1353
    new-instance v15, Ljava/io/File;

    .line 1355
    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1358
    :try_start_3b
    invoke-virtual {v15, v6}, Ljava/io/File;->setWritable(Z)Z

    .line 1361
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 1364
    move-result v10

    .line 1365
    if-eqz v10, :cond_10

    .line 1367
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1369
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1372
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1378
    move-result-object v4

    .line 1379
    invoke-static {v4}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1382
    goto :goto_31

    .line 1383
    :catch_15
    move-exception v0

    .line 1384
    goto/16 :goto_39

    .line 1386
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1388
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1394
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1397
    move-result-object v4

    .line 1398
    invoke-static {v4}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_3b} :catch_15

    .line 1401
    :goto_31
    :try_start_3c
    invoke-static {v15, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 1404
    move-result-object v4
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_17

    .line 1405
    if-nez v4, :cond_11

    .line 1407
    :try_start_3d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1409
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1418
    move-result-object v0

    .line 1419
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_15

    .line 1422
    if-eqz v4, :cond_14

    .line 1424
    :catch_16
    :goto_32
    :try_start_3e
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_17

    .line 1427
    goto/16 :goto_3a

    .line 1429
    :catch_17
    move-exception v0

    .line 1430
    goto/16 :goto_37

    .line 1432
    :catchall_15
    move-exception v0

    .line 1433
    move-object v1, v0

    .line 1434
    goto/16 :goto_35

    .line 1436
    :cond_11
    :try_start_3f
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 1438
    invoke-direct {v0, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1441
    new-instance v5, Landroid/os/RemoteCallback;

    .line 1443
    new-instance v6, Lcom/android/server/chimera/heimdall/HeimdallReportManager$1;

    .line 1445
    invoke-direct {v6, v0}, Lcom/android/server/chimera/heimdall/HeimdallReportManager$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 1448
    const/4 v9, 0x0

    .line 1449
    invoke-direct {v5, v6, v9}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_15

    .line 1452
    move-object/from16 v6, p0

    .line 1454
    :try_start_40
    iget-object v10, v6, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1456
    iget-object v11, v1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_40} :catch_1a
    .catchall {:try_start_40 .. :try_end_40} :catchall_15

    .line 1458
    const/4 v12, -0x2

    .line 1459
    const/4 v1, 0x0

    .line 1460
    const/4 v13, 0x1

    .line 1461
    const/4 v14, 0x0

    .line 1462
    move-object v6, v15

    .line 1463
    move v15, v1

    .line 1464
    move-object/from16 v17, v2

    .line 1466
    move-object/from16 v18, v4

    .line 1468
    move-object/from16 v19, v5

    .line 1470
    :try_start_41
    invoke-virtual/range {v10 .. v19}, Lcom/android/server/am/ActivityManagerService;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_41} :catch_19
    .catchall {:try_start_41 .. :try_end_41} :catchall_15

    .line 1473
    :try_start_42
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1475
    const-wide/16 v5, 0x1e

    .line 1477
    invoke-virtual {v0, v5, v6, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_42} :catch_18
    .catchall {:try_start_42 .. :try_end_42} :catchall_15

    .line 1480
    goto :goto_33

    .line 1481
    :catch_18
    move-exception v0

    .line 1482
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    .line 1485
    move-result-object v0

    .line 1486
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_15

    .line 1489
    :goto_33
    :try_start_44
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_17

    .line 1492
    goto :goto_38

    .line 1493
    :catch_19
    move-exception v0

    .line 1494
    goto :goto_34

    .line 1495
    :catch_1a
    move-exception v0

    .line 1496
    move-object v6, v15

    .line 1497
    :goto_34
    :try_start_45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1499
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    const-string v5, ". Error: "

    .line 1507
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1510
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1513
    move-result-object v0

    .line 1514
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1517
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1520
    move-result-object v0

    .line 1521
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_15

    .line 1524
    :try_start_46
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1527
    move-result v0

    .line 1528
    if-eqz v0, :cond_12

    .line 1530
    const-string/jumbo v0, "heapdump file is deleted."

    .line 1533
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1536
    goto :goto_32

    .line 1537
    :cond_12
    const-string/jumbo v0, "heapdump file is NOT deleted."

    .line 1540
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_46} :catch_16
    .catchall {:try_start_46 .. :try_end_46} :catchall_15

    .line 1543
    goto :goto_32

    .line 1544
    :goto_35
    if-eqz v4, :cond_13

    .line 1546
    :try_start_47
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_16

    .line 1549
    goto :goto_36

    .line 1550
    :catchall_16
    move-exception v0

    .line 1551
    move-object v4, v0

    .line 1552
    :try_start_48
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1555
    :cond_13
    :goto_36
    throw v1
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_48} :catch_17

    .line 1556
    :goto_37
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1559
    move-result-object v0

    .line 1560
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1563
    :goto_38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1565
    const-string v1, "JavaHeap dump Done(path="

    .line 1567
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1570
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1579
    move-result-object v0

    .line 1580
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1583
    goto :goto_3a

    .line 1584
    :goto_39
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 1587
    move-result-object v0

    .line 1588
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1591
    :cond_14
    :goto_3a
    :try_start_49
    invoke-static {v3}, Landroid/system/Os;->remove(Ljava/lang/String;)V
    :try_end_49
    .catch Landroid/system/ErrnoException; {:try_start_49 .. :try_end_49} :catch_1b

    .line 1594
    goto :goto_3b

    .line 1595
    :catch_1b
    move-exception v0

    .line 1596
    move-object v1, v0

    .line 1597
    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    .line 1600
    move-result-object v0

    .line 1601
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 1604
    :cond_15
    :goto_3b
    return-void
.end method

.method public final sendBroadcast2Bartender(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 10
    invoke-direct {v0, p1}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;-><init>(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V

    .line 13
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportHandler:Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    const-string/jumbo p1, "requestSendBroadcast2Bartender first call in 5min "

    .line 21
    const-string/jumbo v1, "requestSendBroadcast2Bartender over 5min "

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo v3, "enter requestSendBroadcast2Bartender "

    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->toDumpString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->lock:Ljava/lang/Object;

    .line 48
    monitor-enter v2

    .line 49
    :try_start_0
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mReportData:Ljava/util/Queue;

    .line 51
    check-cast v3, Ljava/util/LinkedList;

    .line 53
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 59
    move-result-wide v3

    .line 60
    iget-wide v5, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mLastSendTime:J

    .line 62
    sub-long v5, v3, v5

    .line 64
    const-wide/32 v7, 0x493e0

    .line 67
    cmp-long v5, v5, v7

    .line 69
    const/4 v6, 0x1

    .line 70
    if-ltz v5, :cond_1

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->toDumpString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_1

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mReportData:Ljava/util/Queue;

    .line 103
    check-cast v1, Ljava/util/LinkedList;

    .line 105
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 108
    move-result v1

    .line 109
    if-ne v1, v6, :cond_2

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->toDumpString()Ljava/lang/String;

    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p1

    .line 127
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 133
    move-result-object p1

    .line 134
    iget-wide v0, p0, Lcom/android/server/chimera/heimdall/HeimdallReportManager$ReportHandler;->mLastSendTime:J

    .line 136
    sub-long/2addr v3, v0

    .line 137
    sub-long/2addr v7, v3

    .line 138
    invoke-virtual {p0, p1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 141
    :cond_2
    :goto_0
    monitor-exit v2

    .line 142
    return-void

    .line 143
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    throw p0
.end method
