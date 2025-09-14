.class public final Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final nativePackageNameFilter:[Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/ppn/PerProcessNandswap;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    const-string/jumbo p1, "vendor.samsung.hardware.camera.provider"

    .line 15
    const-string/jumbo v0, "vendor.samsung.hardware.camera.provider-service_64"

    .line 18
    const-string/jumbo v1, "cameraserver"

    .line 21
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->nativePackageNameFilter:[Ljava/lang/String;

    .line 27
    const-class p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 29
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    move-object v2, p7

    .line 6
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v3

    .line 12
    const/16 v4, 0x1e

    .line 14
    if-le v3, v4, :cond_0

    .line 16
    const/4 p7, 0x0

    .line 17
    invoke-virtual {v2, p7, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 20
    move-result-object p7

    .line 21
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    sub-long/2addr v0, p2

    .line 31
    const-string/jumbo p2, "ms"

    .line 34
    invoke-static {p0, v0, v1, p2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v5

    .line 42
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 45
    move-result-object v6

    .line 46
    invoke-interface {p7}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 49
    move-result-object v7

    .line 50
    move-object v3, p1

    .line 51
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 55
    const p1, 0x13d6e9

    .line 58
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 61
    return-void
.end method


# virtual methods
.method public final canDoNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 3
    iget-object v1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 5
    iget v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aget v3, v1, v2

    .line 14
    iput v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 16
    const/4 v3, 0x1

    .line 17
    aget v1, v1, v3

    .line 19
    iput v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 21
    iget v4, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 23
    if-ne v4, v3, :cond_2

    .line 25
    const/16 v4, 0x352

    .line 27
    if-ge v1, v4, :cond_1

    .line 29
    iget v4, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->uid:I

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    const/16 v0, 0x10

    .line 36
    if-eq p2, v0, :cond_0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 p2, 0x64

    .line 41
    if-lt v1, p2, :cond_2

    .line 43
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 45
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 47
    invoke-virtual {p2, v4}, Lcom/android/server/am/FreecessController;->isFreezedPackage(I)Z

    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 53
    :cond_1
    move v2, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    const-string/jumbo v0, "canDoNandswapProcess fail: "

    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, " pid:"

    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, " state:"

    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v0, " adj:"

    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 104
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_1
    return v2
.end method

.method public final doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v12, p2

    .line 7
    move/from16 v13, p3

    .line 9
    const-string v2, " adj:"

    .line 11
    const-string v14, ") action:"

    .line 13
    const-string v3, " "

    .line 15
    const-string v15, "(pid "

    .line 17
    iget-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 19
    const-string v11, ", "

    .line 21
    const-string/jumbo v8, "nandswap "

    .line 24
    const-string/jumbo v4, "nandswap end for "

    .line 27
    const-string/jumbo v5, "nandswap start for "

    .line 30
    const-string/jumbo v6, "nandswap"

    .line 33
    iget v9, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 35
    iget-object v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 37
    move-object/from16 v16, v8

    .line 39
    iget v8, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 41
    move/from16 v17, v8

    .line 43
    iget v8, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 45
    if-eqz p4, :cond_0

    .line 47
    const-string v18, "activity"

    .line 49
    :goto_0
    move-object/from16 v1, v18

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const-string/jumbo v18, "non-activity"

    .line 55
    goto :goto_0

    .line 56
    :goto_1
    const/4 v0, 0x1

    .line 57
    if-ne v13, v0, :cond_1

    .line 59
    const-string/jumbo v19, "swaponly"

    .line 62
    :goto_2
    move-object/from16 v0, v19

    .line 64
    goto :goto_3

    .line 65
    :cond_1
    const/4 v0, 0x2

    .line 66
    if-ne v13, v0, :cond_2

    .line 68
    const-string/jumbo v19, "writebackonly"

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    const-string v19, "all"

    .line 74
    goto :goto_2

    .line 75
    :goto_3
    const-wide/16 v21, -0x1

    .line 77
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v6, " : "

    .line 87
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 103
    const-wide/16 v12, 0x40

    .line 105
    :try_start_1
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    .line 111
    move-result-object v0

    .line 112
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 115
    move-result-wide v23

    .line 116
    invoke-static {v9}, Landroid/os/Process;->getRss(I)[J

    .line 119
    move-result-object v19

    .line 120
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    .line 123
    move-result-wide v25

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 147
    move-wide/from16 v30, v12

    .line 149
    move/from16 v12, p2

    .line 151
    :try_start_2
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    const-string v5, " type:"

    .line 162
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    move/from16 v13, p3

    .line 167
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v5

    .line 174
    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 180
    move-result-wide v5

    .line 181
    move-object/from16 v27, v11

    .line 183
    invoke-static {v9, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->compactProcessForWriteback(II)J

    .line 186
    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 187
    move-object/from16 v28, v14

    .line 189
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 192
    move-result-wide v13

    .line 193
    move-object/from16 v29, v0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    const-string v3, ") ret:"

    .line 217
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 233
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sub-long v5, v13, v5

    .line 238
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    .line 241
    move-result-object v0

    .line 242
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 245
    move-result-wide v21

    .line 246
    invoke-static {v9}, Landroid/os/Process;->getRss(I)[J

    .line 249
    move-result-object v4

    .line 250
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    .line 253
    move-result-wide v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 254
    move-wide/from16 v32, v13

    .line 256
    sub-long v13, v2, v25

    .line 258
    sub-long v34, v21, v23

    .line 260
    const-wide/16 v36, 0x4

    .line 262
    move-object/from16 v39, v0

    .line 264
    move-object/from16 v38, v1

    .line 266
    mul-long v0, v34, v36

    .line 268
    const-wide/16 v34, 0x0

    .line 270
    cmp-long v34, v11, v34

    .line 272
    const/16 v18, 0x2

    .line 274
    move-wide/from16 v35, v2

    .line 276
    move-object/from16 v2, p0

    .line 278
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 280
    if-lez v34, :cond_4

    .line 282
    move-wide/from16 v40, v35

    .line 284
    move-object v2, v7

    .line 285
    move-object/from16 p0, v3

    .line 287
    move v3, v9

    .line 288
    move-wide/from16 v34, v11

    .line 290
    move-object v12, v4

    .line 291
    move/from16 v4, p2

    .line 293
    move-wide/from16 v36, v5

    .line 295
    move/from16 v5, p3

    .line 297
    move-object v11, v7

    .line 298
    move-wide/from16 v6, v36

    .line 300
    move/from16 v45, v8

    .line 302
    move/from16 v43, v9

    .line 304
    move-object/from16 v42, v12

    .line 306
    move-object/from16 v12, v16

    .line 308
    move/from16 v44, v17

    .line 310
    move-wide v8, v13

    .line 311
    move-object/from16 v46, v10

    .line 313
    move-wide/from16 v16, v13

    .line 315
    move-object/from16 v13, v27

    .line 317
    move-object v14, v11

    .line 318
    move-wide v10, v0

    .line 319
    :try_start_4
    invoke-static/range {v2 .. v11}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapLogger;->saveSwapOutLog(Ljava/lang/String;IIIJJJ)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_3

    .line 328
    move-object/from16 v2, p0

    .line 330
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 332
    sget-object v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_ALREADY_PPN:Ljava/lang/Integer;

    .line 334
    check-cast v3, Ljava/util/HashMap;

    .line 336
    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    goto :goto_6

    .line 340
    :catchall_0
    :goto_4
    move-wide/from16 v21, v34

    .line 342
    goto/16 :goto_8

    .line 344
    :catch_0
    :goto_5
    move-wide/from16 v21, v34

    .line 346
    goto/16 :goto_9

    .line 348
    :cond_3
    move-object/from16 v2, p0

    .line 350
    goto :goto_6

    .line 351
    :cond_4
    move-object v2, v3

    .line 352
    move-object/from16 v42, v4

    .line 354
    move/from16 v45, v8

    .line 356
    move/from16 v43, v9

    .line 358
    move-object/from16 v46, v10

    .line 360
    move/from16 v44, v17

    .line 362
    move-wide/from16 v40, v35

    .line 364
    move-wide/from16 v36, v5

    .line 366
    move-wide/from16 v34, v11

    .line 368
    move-object/from16 v12, v16

    .line 370
    move-wide/from16 v16, v13

    .line 372
    move-object/from16 v13, v27

    .line 374
    move-object v14, v7

    .line 375
    :goto_6
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 378
    move-result v3

    .line 379
    if-eqz v3, :cond_5

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    .line 383
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 386
    move-object/from16 v4, v38

    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    const-string v4, " for "

    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    move/from16 v4, v43

    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    move-object/from16 v5, v28

    .line 409
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    move/from16 v5, p2

    .line 414
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const-string v6, ", adj:"

    .line 419
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    move/from16 v6, v45

    .line 424
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    const-string v7, ", state:"

    .line 429
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    move/from16 v7, v44

    .line 434
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const/4 v8, 0x1

    .line 441
    aget-wide v9, v42, v8

    .line 443
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    aget-wide v8, v42, v18

    .line 451
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 454
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const/4 v8, 0x3

    .line 458
    aget-wide v9, v42, v8

    .line 460
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    move-wide/from16 v9, v40

    .line 468
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 471
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    move-wide/from16 v11, v36

    .line 476
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 479
    const-string v15, " ms, "

    .line 481
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    move/from16 v15, p3

    .line 486
    move-wide/from16 v47, v32

    .line 488
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/16 v20, 0x1

    .line 496
    aget-wide v27, v42, v20

    .line 498
    aget-wide v32, v19, v20

    .line 500
    move-wide/from16 v40, v9

    .line 502
    sub-long v8, v27, v32

    .line 504
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    aget-wide v8, v42, v18

    .line 512
    aget-wide v27, v19, v18

    .line 514
    sub-long v8, v8, v27

    .line 516
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    const/4 v8, 0x3

    .line 523
    aget-wide v9, v42, v8

    .line 525
    aget-wide v18, v19, v8

    .line 527
    sub-long v9, v9, v18

    .line 529
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 532
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    move-wide/from16 v8, v16

    .line 537
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 549
    move-result-object v0

    .line 550
    move-object/from16 v1, v46

    .line 552
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    goto :goto_7

    .line 556
    :cond_5
    move/from16 v5, p2

    .line 558
    move/from16 v15, p3

    .line 560
    move-wide/from16 v47, v32

    .line 562
    move-wide/from16 v11, v36

    .line 564
    move/from16 v4, v43

    .line 566
    move/from16 v7, v44

    .line 568
    move/from16 v6, v45

    .line 570
    :goto_7
    if-eqz v29, :cond_6

    .line 572
    if-eqz v39, :cond_6

    .line 574
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 577
    move-result-object v16

    .line 578
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    move-result-object v18

    .line 582
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 585
    move-result-object v19

    .line 586
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 589
    move-result-object v20

    .line 590
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 593
    move-result-object v0

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    .line 596
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    const-string/jumbo v3, "ms"

    .line 609
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 615
    move-result-object v1

    .line 616
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 619
    move-result-object v3

    .line 620
    invoke-static/range {v29 .. v29}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 623
    move-result-object v6

    .line 624
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 627
    move-result-object v7

    .line 628
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 631
    move-result-object v26

    .line 632
    invoke-static/range {v39 .. v39}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 635
    move-result-object v27

    .line 636
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 639
    move-result-object v28

    .line 640
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 643
    move-result-object v29

    .line 644
    move-object/from16 v17, v14

    .line 646
    move-object/from16 v21, v0

    .line 648
    move-object/from16 v22, v1

    .line 650
    move-object/from16 v23, v3

    .line 652
    move-object/from16 v24, v6

    .line 654
    move-object/from16 v25, v7

    .line 656
    filled-new-array/range {v16 .. v29}, [Ljava/lang/Object;

    .line 659
    move-result-object v0

    .line 660
    const v1, 0x13d6e8

    .line 663
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 666
    :cond_6
    const/16 v0, 0xf

    .line 668
    if-eq v5, v0, :cond_7

    .line 670
    move-object/from16 v0, p1

    .line 672
    move-wide/from16 v5, v47

    .line 674
    iput-wide v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 676
    :cond_7
    if-nez p4, :cond_8

    .line 678
    move-object/from16 v0, v42

    .line 680
    invoke-static {v2, v4, v14, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$mupdateLastNandswapStats(Lcom/android/server/chimera/ppn/PerProcessNandswap;ILjava/lang/String;[J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 683
    :cond_8
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 686
    return-wide v34

    .line 687
    :catchall_1
    move-wide/from16 v34, v11

    .line 689
    goto/16 :goto_4

    .line 691
    :catch_1
    move-wide/from16 v34, v11

    .line 693
    goto/16 :goto_5

    .line 695
    :catchall_2
    move-wide/from16 v30, v12

    .line 697
    goto :goto_8

    .line 698
    :catch_2
    move-wide/from16 v30, v12

    .line 700
    goto :goto_9

    .line 701
    :catchall_3
    const-wide/16 v30, 0x40

    .line 703
    goto :goto_8

    .line 704
    :catch_3
    const-wide/16 v30, 0x40

    .line 706
    goto :goto_9

    .line 707
    :catchall_4
    :goto_8
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 710
    return-wide v21

    .line 711
    :catch_4
    :goto_9
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 714
    return-wide v21
.end method

.method public final doSwapAfterBootFull()J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    move-result-wide v2

    .line 7
    new-instance v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;

    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v1, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v0, v1, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->getReclaimSetForNandswap(Ljava/util/function/Function;Z)Ljava/util/Set;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 21
    move-result v7

    .line 22
    invoke-static {v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smgetMemoryInfoIfDebugEnabled(Z)Ljava/lang/String;

    .line 25
    move-result-object v8

    .line 26
    check-cast v1, Ljava/util/TreeSet;

    .line 28
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v1

    .line 32
    const-wide/16 v5, 0x0

    .line 34
    move v9, v4

    .line 35
    move-wide v10, v5

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v12

    .line 40
    iget-object v13, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 42
    if-eqz v12, :cond_5

    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v12

    .line 48
    check-cast v12, Landroid/util/Pair;

    .line 50
    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    check-cast v12, Ljava/lang/Integer;

    .line 54
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v14

    .line 58
    iget-object v15, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 60
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 66
    move-result v16

    .line 67
    if-eqz v16, :cond_2

    .line 69
    if-eqz v7, :cond_1

    .line 71
    const-string v1, "Swap After boot(Full) skip: app launch "

    .line 73
    invoke-static {v14, v1, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_1
    const-string v1, "Swap After boot(Full) skip by AppLaunch"

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v15, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    invoke-virtual {v15, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 87
    if-nez v12, :cond_3

    .line 89
    if-eqz v7, :cond_0

    .line 91
    const-string v12, "Swap After boot(Full) skip: no nandswap record "

    .line 93
    invoke-static {v14, v12, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-static {v14}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 100
    move-result-object v13

    .line 101
    const/16 v15, 0xf

    .line 103
    move-object/from16 v16, v1

    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v12, v15, v1, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 109
    move-result-wide v17

    .line 110
    cmp-long v1, v17, v5

    .line 112
    if-lez v1, :cond_4

    .line 114
    add-int/lit8 v9, v9, 0x1

    .line 116
    invoke-static {v14}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 119
    move-result-object v1

    .line 120
    aget-wide v12, v13, v4

    .line 122
    aget-wide v14, v1, v4

    .line 124
    sub-long/2addr v12, v14

    .line 125
    add-long/2addr v12, v10

    .line 126
    move-wide v10, v12

    .line 127
    :cond_4
    move-object/from16 v1, v16

    .line 129
    goto :goto_0

    .line 130
    :cond_5
    const-string v1, "Swap After boot(Full) successfully"

    .line 132
    :goto_1
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 134
    move-wide v4, v10

    .line 135
    move v6, v9

    .line 136
    invoke-static/range {v0 .. v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$mappendLogMessage(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;JJIZLjava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-wide v10
.end method

.method public final doSwapAfterBootSome()J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    move-result-wide v2

    .line 7
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 10
    move-result v7

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v4, Ljava/util/HashSet;

    .line 18
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 21
    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 23
    iget-object v6, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 25
    invoke-virtual {v6}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 28
    move-result-object v6

    .line 29
    check-cast v6, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object v6

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v8

    .line 39
    const/4 v9, -0x1

    .line 40
    const-string v10, "Swap After boot(Some) skip: not enough anonPages "

    .line 42
    iget-object v11, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 44
    if-eqz v8, :cond_5

    .line 46
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 52
    iget v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 54
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v12

    .line 58
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 63
    invoke-static {v5, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 66
    move-result v12

    .line 67
    if-nez v12, :cond_0

    .line 69
    const-string/jumbo v12, "system"

    .line 72
    iget-object v13, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 74
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v12

    .line 78
    if-eqz v12, :cond_1

    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v12, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    iget v13, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 85
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v13

    .line 89
    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    move-result-object v12

    .line 93
    check-cast v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 95
    if-eqz v12, :cond_2

    .line 97
    iget v9, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 99
    invoke-static {v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smisAnonPageNotEnough(I)Z

    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_4

    .line 105
    if-eqz v7, :cond_0

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget v8, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 114
    invoke-static {v9, v8, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-wide v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 120
    sub-long v12, v2, v12

    .line 122
    const-wide/16 v14, 0xbb8

    .line 124
    cmp-long v10, v12, v14

    .line 126
    if-gez v10, :cond_3

    .line 128
    if-eqz v7, :cond_0

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    .line 132
    const-string v10, "Swap After boot(Some) skip: newly start "

    .line 134
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    iget v8, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 139
    invoke-static {v9, v8, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 142
    goto :goto_0

    .line 143
    :cond_3
    new-instance v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 145
    iget-object v10, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 147
    iget v8, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 149
    const/16 v11, -0x2710

    .line 151
    invoke-direct {v12, v10, v8, v11, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 154
    :cond_4
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 161
    move-result v6

    .line 162
    const/4 v8, 0x0

    .line 163
    if-eqz v6, :cond_6

    .line 165
    goto :goto_2

    .line 166
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 169
    move-result-object v6

    .line 170
    new-instance v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$$ExternalSyntheticLambda0;

    .line 172
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-interface {v6, v12}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 178
    move-result-object v6

    .line 179
    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    .line 182
    move-result-object v6

    .line 183
    iget-object v12, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 185
    invoke-virtual {v12, v6}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 188
    move-result-object v6

    .line 189
    if-eqz v6, :cond_7

    .line 191
    move v12, v8

    .line 192
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 195
    move-result v13

    .line 196
    if-ge v12, v13, :cond_7

    .line 198
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v13

    .line 202
    check-cast v13, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 204
    iget-object v14, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 206
    check-cast v14, [I

    .line 208
    aget v14, v14, v12

    .line 210
    iput v14, v13, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 212
    iget-object v14, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 214
    check-cast v14, [I

    .line 216
    aget v14, v14, v12

    .line 218
    iput v14, v13, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 220
    add-int/lit8 v12, v12, 0x1

    .line 222
    goto :goto_1

    .line 223
    :cond_7
    :goto_2
    iget-object v6, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 225
    invoke-virtual {v6, v4}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 234
    move-result-object v4

    .line 235
    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_b

    .line 241
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v6

    .line 245
    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 247
    iget-object v12, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 249
    iget v13, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 251
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 254
    move-result-object v13

    .line 255
    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    move-result-object v12

    .line 259
    check-cast v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 261
    if-eqz v12, :cond_9

    .line 263
    iget v13, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 265
    invoke-static {v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smisAnonPageNotEnough(I)Z

    .line 268
    move-result v13

    .line 269
    if-eqz v13, :cond_a

    .line 271
    if-eqz v7, :cond_8

    .line 273
    new-instance v12, Ljava/lang/StringBuilder;

    .line 275
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 278
    iget v6, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 280
    invoke-static {v12, v6, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 283
    goto :goto_3

    .line 284
    :cond_9
    new-instance v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 286
    iget-object v13, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 288
    iget v6, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 290
    const/16 v14, -0x3e8

    .line 292
    invoke-direct {v12, v13, v6, v14, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 295
    :cond_a
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    goto :goto_3

    .line 299
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 302
    move-result v4

    .line 303
    const-wide/16 v9, 0x0

    .line 305
    if-eqz v4, :cond_c

    .line 307
    iget-object v0, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

    .line 309
    const-string v1, "Swap After boot(Some) no reclaim target!"

    .line 311
    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 314
    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-wide v9

    .line 318
    :cond_c
    invoke-static {v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smgetMemoryInfoIfDebugEnabled(Z)Ljava/lang/String;

    .line 321
    move-result-object v12

    .line 322
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 325
    move-result-object v1

    .line 326
    move v6, v8

    .line 327
    move-wide v13, v9

    .line 328
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_11

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 337
    move-result-object v4

    .line 338
    check-cast v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 340
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 343
    move-result v15

    .line 344
    if-eqz v15, :cond_e

    .line 346
    if-eqz v7, :cond_d

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    .line 350
    const-string v5, "Swap After boot(Some) skip: app launch "

    .line 352
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    iget v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 357
    invoke-static {v1, v4, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 360
    :cond_d
    const-string v1, "Swap After boot(Some) skip by AppLaunch"

    .line 362
    goto :goto_6

    .line 363
    :cond_e
    iget-object v15, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 365
    iget v9, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 367
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 370
    move-result-object v9

    .line 371
    invoke-virtual {v15, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    move-result-object v9

    .line 375
    check-cast v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 377
    if-nez v9, :cond_f

    .line 379
    iget-object v9, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 381
    iget v10, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 383
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 386
    move-result-object v10

    .line 387
    invoke-virtual {v9, v10, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    goto :goto_5

    .line 391
    :cond_f
    iget v10, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 393
    iput v10, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 395
    iget v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 397
    iput v4, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 399
    move-object v4, v9

    .line 400
    :goto_5
    iget v9, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 402
    invoke-static {v9}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 405
    move-result-object v9

    .line 406
    const/16 v10, 0xf

    .line 408
    const/4 v15, 0x1

    .line 409
    invoke-virtual {v0, v4, v10, v15, v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 412
    move-result-wide v18

    .line 413
    const-wide/16 v15, 0x0

    .line 415
    cmp-long v10, v18, v15

    .line 417
    if-lez v10, :cond_10

    .line 419
    add-int/lit8 v6, v6, 0x1

    .line 421
    iget v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 423
    invoke-static {v4}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 426
    move-result-object v4

    .line 427
    aget-wide v9, v9, v8

    .line 429
    aget-wide v17, v4, v8

    .line 431
    sub-long v9, v9, v17

    .line 433
    add-long/2addr v13, v9

    .line 434
    :cond_10
    move-wide v9, v15

    .line 435
    goto :goto_4

    .line 436
    :cond_11
    const-string v1, "Swap After boot(Some) successfully"

    .line 438
    :goto_6
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 440
    move-wide v4, v13

    .line 441
    move-object v8, v12

    .line 442
    invoke-static/range {v0 .. v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$mappendLogMessage(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;JJIZLjava/lang/String;)Ljava/lang/String;

    .line 445
    move-result-object v0

    .line 446
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-wide v13
.end method

.method public final getNandswapNonActivityAppType(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;II)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    iget v3, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 9
    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 14
    return v4

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    move-result v5

    .line 19
    iget-object v6, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 21
    if-ne v5, v3, :cond_2

    .line 23
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    const-string v0, "Skipping nandswap as process "

    .line 31
    const-string v2, " is system_server."

    .line 33
    invoke-static {v0, v1, v2, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :cond_1
    return v4

    .line 37
    :cond_2
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 39
    invoke-static {v0, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_3

    .line 45
    return v4

    .line 46
    :cond_3
    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 48
    invoke-virtual {v5, v3}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    .line 51
    move-result-object v5

    .line 52
    const/4 v7, 0x1

    .line 53
    aget v5, v5, v7

    .line 55
    move/from16 v8, p3

    .line 57
    if-eq v5, v8, :cond_5

    .line 59
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 65
    const-string v0, "Skipping nandswap for process"

    .line 67
    const-string v2, " adj is changed"

    .line 69
    invoke-static {v0, v1, v2, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_4
    return v4

    .line 73
    :cond_5
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    .line 76
    move-result v5

    .line 77
    const/4 v8, 0x3

    .line 78
    const/4 v9, 0x2

    .line 79
    if-lt v2, v8, :cond_7

    .line 81
    const/4 v10, 0x6

    .line 82
    if-gt v2, v10, :cond_7

    .line 84
    if-eqz v5, :cond_6

    .line 86
    move v2, v9

    .line 87
    goto :goto_0

    .line 88
    :cond_6
    move v2, v4

    .line 89
    :goto_0
    if-nez v2, :cond_b

    .line 91
    move v2, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_7
    iget-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 95
    if-nez v10, :cond_8

    .line 97
    const-string/jumbo v10, "ro.sys.kernelmemory.nandswap.skip_nandswap_for_empty_ppn"

    .line 100
    invoke-static {v10, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 103
    move-result v10

    .line 104
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 107
    move-result-object v10

    .line 108
    iput-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 110
    :cond_8
    iget-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 112
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    move-result v10

    .line 116
    if-eqz v10, :cond_9

    .line 118
    const/16 v10, 0xe

    .line 120
    if-ne v2, v10, :cond_9

    .line 122
    goto :goto_1

    .line 123
    :cond_9
    if-eqz v5, :cond_a

    .line 125
    move v2, v8

    .line 126
    goto :goto_2

    .line 127
    :cond_a
    :goto_1
    move v2, v7

    .line 128
    :cond_b
    :goto_2
    if-ne v2, v9, :cond_c

    .line 130
    move v5, v7

    .line 131
    goto :goto_3

    .line 132
    :cond_c
    move v5, v4

    .line 133
    :goto_3
    invoke-static {v3}, Landroid/os/Process;->getRss(I)[J

    .line 136
    move-result-object v10

    .line 137
    aget-wide v11, v10, v4

    .line 139
    const-wide/16 v13, 0x0

    .line 141
    cmp-long v11, v11, v13

    .line 143
    const-string v12, "Skipping nandswap for process "

    .line 145
    if-nez v11, :cond_e

    .line 147
    aget-wide v15, v10, v7

    .line 149
    cmp-long v11, v15, v13

    .line 151
    if-nez v11, :cond_e

    .line 153
    aget-wide v15, v10, v9

    .line 155
    cmp-long v11, v15, v13

    .line 157
    if-nez v11, :cond_e

    .line 159
    aget-wide v15, v10, v8

    .line 161
    cmp-long v11, v15, v13

    .line 163
    if-nez v11, :cond_e

    .line 165
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_d

    .line 171
    const-string v0, " with no memory usage. Dead?"

    .line 173
    invoke-static {v12, v1, v0, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_d
    return v4

    .line 177
    :cond_e
    if-eqz v5, :cond_f

    .line 179
    aget-wide v13, v10, v8

    .line 181
    goto :goto_4

    .line 182
    :cond_f
    aget-wide v13, v10, v9

    .line 184
    :goto_4
    const-wide/16 v15, 0x1388

    .line 186
    if-eqz v5, :cond_10

    .line 188
    const-wide/16 v17, 0x2710

    .line 190
    goto :goto_5

    .line 191
    :cond_10
    move-wide/from16 v17, v15

    .line 193
    :goto_5
    cmp-long v5, v13, v17

    .line 195
    const-string v11, "KB."

    .line 197
    if-gez v5, :cond_12

    .line 199
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_11

    .line 205
    const-string v0, "; anon RSS is too small: "

    .line 207
    invoke-static {v12, v1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    move-result-object v0

    .line 211
    aget-wide v1, v10, v9

    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    move-result-object v0

    .line 223
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_11
    return v4

    .line 227
    :cond_12
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;

    .line 239
    if-eqz v0, :cond_14

    .line 241
    iget-object v3, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;->mName:Ljava/lang/String;

    .line 243
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    move-result v5

    .line 247
    if-nez v5, :cond_14

    .line 249
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_13

    .line 255
    const-string/jumbo v0, "ignore lastNandswapStats because it is old stats for name: "

    .line 258
    const-string v5, " stats.name: "

    .line 260
    invoke-static {v0, v1, v5, v3, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_13
    const/4 v0, 0x0

    .line 264
    :cond_14
    if-eqz v0, :cond_18

    .line 266
    aget-wide v13, v10, v9

    .line 268
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;->mRssAfterNandswap:[J

    .line 270
    aget-wide v17, v0, v9

    .line 272
    sub-long v13, v13, v17

    .line 274
    aget-wide v17, v10, v8

    .line 276
    aget-wide v19, v0, v8

    .line 278
    sub-long v4, v17, v19

    .line 280
    if-ne v2, v7, :cond_15

    .line 282
    move-wide v7, v13

    .line 283
    goto :goto_6

    .line 284
    :cond_15
    if-ne v2, v9, :cond_16

    .line 286
    move-wide v7, v4

    .line 287
    goto :goto_6

    .line 288
    :cond_16
    add-long v7, v13, v4

    .line 290
    :goto_6
    cmp-long v0, v7, v15

    .line 292
    if-gtz v0, :cond_18

    .line 294
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_17

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    .line 302
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v1, "; "

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, ","

    .line 318
    const-string v2, " diff is too small: "

    .line 320
    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 323
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    move-result-object v0

    .line 333
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_17
    const/4 v0, 0x0

    .line 337
    return v0

    .line 338
    :cond_18
    return v2
.end method

.method public final getReclaimSetForNandswap(Ljava/util/function/Function;Z)Ljava/util/Set;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    new-instance v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda2;

    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v3, Ljava/util/TreeSet;

    .line 12
    invoke-direct {v3, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 15
    iget-object v2, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 17
    iget-object v4, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 19
    invoke-virtual {v4}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ljava/util/ArrayList;

    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 28
    move-result v5

    .line 29
    new-array v6, v5, [I

    .line 31
    new-instance v7, Ljava/util/HashSet;

    .line 33
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v10

    .line 41
    if-ge v9, v10, :cond_0

    .line 43
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    move-result-object v10

    .line 47
    check-cast v10, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 49
    iget v10, v10, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 51
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v11

    .line 55
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    aput v10, v6, v9

    .line 60
    add-int/lit8 v9, v9, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v9, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 65
    invoke-virtual {v9, v6}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 68
    move-result-object v6

    .line 69
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 71
    check-cast v9, [I

    .line 73
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 75
    check-cast v6, [I

    .line 77
    const/4 v10, 0x0

    .line 78
    :goto_1
    if-ge v10, v5, :cond_4

    .line 80
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    move-result-object v11

    .line 84
    check-cast v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 86
    aget v12, v6, v10

    .line 88
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v13

    .line 92
    invoke-interface {v1, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    move-result-object v13

    .line 96
    check-cast v13, Ljava/lang/Boolean;

    .line 98
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    move-result v13

    .line 102
    if-eqz v13, :cond_3

    .line 104
    iget-object v13, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 106
    invoke-static {v2, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 109
    move-result v13

    .line 110
    if-eqz v13, :cond_1

    .line 112
    goto :goto_2

    .line 113
    :cond_1
    new-instance v13, Landroid/util/Pair;

    .line 115
    iget v14, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 117
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v14

    .line 121
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    move-result-object v15

    .line 125
    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v3, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v13, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 133
    iget v11, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 135
    aget v14, v9, v10

    .line 137
    iget-object v15, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v15, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 149
    if-nez v8, :cond_2

    .line 151
    new-instance v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 153
    invoke-direct {v8, v13, v11, v12, v14}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 156
    iget-object v12, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object v11

    .line 162
    invoke-virtual {v12, v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    goto :goto_2

    .line 166
    :cond_2
    iput v12, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 168
    iput v14, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 170
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 172
    goto :goto_1

    .line 173
    :cond_4
    const/16 v4, -0x3e8

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    move-result-object v5

    .line 179
    invoke-interface {v1, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/Boolean;

    .line 185
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_b

    .line 191
    iget-object v1, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 193
    invoke-virtual {v1, v7}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 202
    move-result-object v1

    .line 203
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_b

    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 215
    if-eqz p2, :cond_9

    .line 217
    iget-object v6, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 219
    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 221
    iget-object v6, v6, Lcom/android/server/chimera/SystemRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 223
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 226
    move-result-object v6

    .line 227
    if-eqz v6, :cond_5

    .line 229
    move-object v7, v6

    .line 230
    const/4 v6, 0x0

    .line 231
    goto :goto_4

    .line 232
    :cond_5
    const/4 v6, 0x0

    .line 233
    new-array v7, v6, [Ljava/lang/String;

    .line 235
    :goto_4
    array-length v8, v7

    .line 236
    const/4 v9, 0x1

    .line 237
    if-ge v8, v9, :cond_6

    .line 239
    new-array v7, v9, [Ljava/lang/String;

    .line 241
    iget-object v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 243
    aput-object v8, v7, v6

    .line 245
    :cond_6
    iget-object v8, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->nativePackageNameFilter:[Ljava/lang/String;

    .line 247
    array-length v9, v8

    .line 248
    move v10, v6

    .line 249
    :goto_5
    if-ge v10, v9, :cond_8

    .line 251
    aget-object v11, v8, v10

    .line 253
    aget-object v12, v7, v6

    .line 255
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 258
    move-result v11

    .line 259
    if-eqz v11, :cond_7

    .line 261
    goto :goto_3

    .line 262
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 264
    goto :goto_5

    .line 265
    :cond_8
    iget-object v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 267
    invoke-static {v2, v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 270
    move-result v7

    .line 271
    if-eqz v7, :cond_a

    .line 273
    goto :goto_3

    .line 274
    :cond_9
    const/4 v6, 0x0

    .line 275
    :cond_a
    new-instance v7, Landroid/util/Pair;

    .line 277
    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 279
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 282
    move-result-object v8

    .line 283
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    move-result-object v9

    .line 287
    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 295
    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 297
    invoke-virtual {v2, v5, v4, v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->checkProcessStatusForNandswap(IILjava/lang/String;)V

    .line 300
    goto :goto_3

    .line 301
    :cond_b
    return-object v3
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const-string/jumbo v0, "default: "

    .line 8
    const-string/jumbo v3, "non_activity_app_msg: delayed:"

    .line 11
    const-string v4, "activity_app_msg: delayed:"

    .line 13
    const-string v5, "activity_app_msg: delayed:"

    .line 15
    :try_start_0
    iget-object v6, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 17
    iget-boolean v6, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 19
    if-nez v6, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    iget v6, v2, Landroid/os/Message;->what:I

    .line 24
    const-wide/16 v7, 0x0

    .line 26
    const-wide/16 v9, 0x1388

    .line 28
    const/4 v11, 0x2

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x1

    .line 31
    if-eqz v6, :cond_11

    .line 33
    if-eq v6, v13, :cond_11

    .line 35
    const/4 v3, 0x3

    .line 36
    if-eq v6, v11, :cond_5

    .line 38
    if-eq v6, v3, :cond_5

    .line 40
    const/4 v3, 0x4

    .line 41
    if-eq v6, v3, :cond_4

    .line 43
    const/4 v3, 0x5

    .line 44
    if-eq v6, v3, :cond_1

    .line 46
    iget-object v3, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    iget v0, v2, Landroid/os/Message;->what:I

    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    goto/16 :goto_8

    .line 67
    :cond_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 69
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 75
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 78
    move-result-object v3

    .line 79
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 81
    invoke-virtual {v1, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 84
    goto/16 :goto_8

    .line 86
    :cond_2
    if-nez v0, :cond_3

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doSwapAfterBootFull()J

    .line 91
    move-result-wide v4

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doSwapAfterBootSome()J

    .line 96
    move-result-wide v4

    .line 97
    :goto_0
    add-int/2addr v0, v13

    .line 98
    if-ge v0, v3, :cond_17

    .line 100
    const-wide/16 v6, 0x2800

    .line 102
    cmp-long v4, v4, v6

    .line 104
    if-lez v4, :cond_17

    .line 106
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 109
    move-result-object v3

    .line 110
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 112
    const-wide/32 v4, 0xea60

    .line 115
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    goto/16 :goto_8

    .line 120
    :cond_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    check-cast v0, Ljava/lang/Long;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 127
    move-result-wide v3

    .line 128
    invoke-virtual {v1, v3, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->nandSwapAlwaysRunningProcess(J)V

    .line 131
    goto/16 :goto_8

    .line 133
    :cond_5
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 136
    move-result v0

    .line 137
    iget v6, v2, Landroid/os/Message;->what:I

    .line 139
    if-ne v6, v3, :cond_6

    .line 141
    move v6, v13

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    move v6, v12

    .line 144
    :goto_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_7

    .line 150
    iget-object v9, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 160
    const-string v5, " app launch:"

    .line 162
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v5

    .line 172
    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_7
    if-eqz v6, :cond_8

    .line 177
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 179
    iget-object v5, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 181
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    iget-object v9, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 184
    iget-object v9, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 189
    move-result-object v9

    .line 190
    check-cast v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 192
    monitor-exit v5

    .line 193
    goto :goto_2

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :try_start_2
    throw v0

    .line 197
    :cond_8
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 199
    iget-object v5, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 201
    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    :try_start_3
    iget-object v9, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 204
    iget-object v9, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 206
    invoke-virtual {v9}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 209
    move-result-object v9

    .line 210
    check-cast v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 212
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    :goto_2
    if-eqz v0, :cond_9

    .line 215
    :goto_3
    move v0, v13

    .line 216
    move v13, v12

    .line 217
    goto/16 :goto_5

    .line 219
    :cond_9
    :try_start_4
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 221
    invoke-virtual {v1, v9, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->canDoNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)Z

    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_b

    .line 227
    :cond_a
    move v0, v12

    .line 228
    move v13, v0

    .line 229
    goto :goto_5

    .line 230
    :cond_b
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_c

    .line 236
    move v0, v3

    .line 237
    goto :goto_4

    .line 238
    :cond_c
    move v0, v13

    .line 239
    :goto_4
    iget v5, v2, Landroid/os/Message;->arg1:I

    .line 241
    invoke-virtual {v1, v9, v5, v0, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 244
    move-result-wide v14

    .line 245
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_d

    .line 251
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 261
    const-string v4, " iter: "

    .line 263
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v4, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 268
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const-string v4, " pid:"

    .line 273
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget v4, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 278
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    const-string v4, " ret:"

    .line 283
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 289
    const-string v4, " pending apps:"

    .line 291
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v4, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 296
    iget-object v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 298
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    .line 301
    move-result v4

    .line 302
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    const-string v4, " delayed apps:"

    .line 307
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v4, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 312
    iget-object v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 314
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 317
    move-result v4

    .line 318
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v4

    .line 325
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_d
    cmp-long v0, v14, v7

    .line 330
    if-lez v0, :cond_e

    .line 332
    move v0, v12

    .line 333
    goto :goto_5

    .line 334
    :cond_e
    if-gez v0, :cond_a

    .line 336
    goto :goto_3

    .line 337
    :goto_5
    if-eqz v13, :cond_f

    .line 339
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 341
    invoke-virtual {v0, v9, v11}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 344
    goto/16 :goto_8

    .line 346
    :cond_f
    if-eqz v0, :cond_10

    .line 348
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 350
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 352
    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 354
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 359
    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 362
    move-result-object v3

    .line 363
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 365
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 367
    const-wide/16 v4, 0x3e8

    .line 369
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 372
    goto/16 :goto_8

    .line 374
    :cond_10
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 376
    invoke-virtual {v0, v9, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 379
    goto/16 :goto_8

    .line 381
    :catchall_1
    move-exception v0

    .line 382
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 383
    :try_start_6
    throw v0

    .line 384
    :cond_11
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 386
    iget v4, v2, Landroid/os/Message;->arg2:I

    .line 388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 391
    move-result-wide v5

    .line 392
    iget-object v14, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 394
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 397
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 400
    move-result v14

    .line 401
    iget v15, v2, Landroid/os/Message;->what:I

    .line 403
    if-ne v15, v13, :cond_12

    .line 405
    move v15, v13

    .line 406
    goto :goto_6

    .line 407
    :cond_12
    move v15, v12

    .line 408
    :goto_6
    if-eqz v15, :cond_13

    .line 410
    iget-object v11, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 412
    iget-object v11, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    .line 414
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 417
    move-result-object v11

    .line 418
    check-cast v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 420
    goto :goto_7

    .line 421
    :cond_13
    iget-object v11, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 423
    iget-object v11, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    .line 425
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 428
    move-result-object v11

    .line 429
    check-cast v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 431
    :goto_7
    iput-wide v5, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 433
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 436
    move-result v5

    .line 437
    if-eqz v5, :cond_14

    .line 439
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    .line 443
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 449
    const-string v3, " "

    .line 451
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-object v3, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 456
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    const-string v3, "(pid "

    .line 461
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget v3, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 466
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    const-string v3, ") action:"

    .line 471
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    const-string v3, " app launch:"

    .line 479
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    move-result-object v3

    .line 489
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_14
    if-eqz v14, :cond_16

    .line 494
    if-nez v15, :cond_17

    .line 496
    iget-object v3, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 498
    iget-object v5, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    .line 500
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 503
    move-result v5

    .line 504
    int-to-long v5, v5

    .line 505
    const-wide/16 v7, 0x14

    .line 507
    cmp-long v5, v5, v7

    .line 509
    if-gez v5, :cond_15

    .line 511
    iget-object v5, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    .line 513
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v3, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 518
    invoke-virtual {v3, v13, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v3, v0, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 525
    goto :goto_8

    .line 526
    :cond_15
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_17

    .line 532
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 534
    const-string v3, "Skipping send NANDSWAP_NON_ACTIVITY_APP_DELAYED_MSG"

    .line 536
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    goto :goto_8

    .line 540
    :cond_16
    invoke-virtual {v1, v11, v4, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->getNandswapNonActivityAppType(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;II)I

    .line 543
    move-result v0

    .line 544
    if-eqz v0, :cond_17

    .line 546
    invoke-virtual {v1, v11, v4, v0, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 549
    move-result-wide v3

    .line 550
    cmp-long v0, v3, v7

    .line 552
    if-lez v0, :cond_17

    .line 554
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 556
    const/4 v3, 0x2

    .line 557
    invoke-virtual {v0, v11, v3}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 560
    goto :goto_8

    .line 561
    :catch_0
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    .line 565
    const-string/jumbo v3, "failed to handleMessage "

    .line 568
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    iget v2, v2, Landroid/os/Message;->what:I

    .line 573
    invoke-static {v1, v2, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 576
    :cond_17
    :goto_8
    return-void
.end method

.method public final nandSwapAlwaysRunningProcess(J)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-wide/from16 v1, p1

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v3

    .line 9
    sget v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    .line 11
    const/4 v6, 0x1

    .line 12
    add-int/2addr v5, v6

    .line 13
    sput v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    .line 15
    new-instance v7, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 20
    const-wide/16 v8, 0x0

    .line 22
    cmp-long v5, v1, v8

    .line 24
    if-lez v5, :cond_27

    .line 26
    const-wide/32 v10, 0x7d000

    .line 29
    cmp-long v5, v1, v10

    .line 31
    iget-object v12, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 33
    const-string/jumbo v13, "sizeToReclaim is too big: "

    .line 36
    if-lez v5, :cond_1

    .line 38
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, ",reset to max value: 512000"

    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    move-wide v1, v10

    .line 65
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 68
    move-result-wide v10

    .line 69
    const-wide/16 v14, 0x4

    .line 71
    mul-long/2addr v10, v14

    .line 72
    cmp-long v5, v1, v10

    .line 74
    if-lez v5, :cond_2

    .line 76
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 82
    const-string v5, ",reset to zramWriteBacklimitKb: "

    .line 84
    invoke-static {v13, v1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1, v10, v11, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move-wide v10, v1

    .line 93
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    .line 96
    move-result v1

    .line 97
    new-instance v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;

    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-direct {v2, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 103
    invoke-virtual {v0, v2, v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->getReclaimSetForNandswap(Ljava/util/function/Function;Z)Ljava/util/Set;

    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Ljava/util/TreeSet;

    .line 109
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v2

    .line 113
    move-wide v14, v8

    .line 114
    const/4 v13, 0x0

    .line 115
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 118
    move-result v16

    .line 119
    const-string v6, " KB"

    .line 121
    const-string v8, " process, reclaim "

    .line 123
    if-eqz v16, :cond_25

    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    move-result-object v9

    .line 129
    check-cast v9, Landroid/util/Pair;

    .line 131
    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 133
    check-cast v5, Ljava/lang/Integer;

    .line 135
    move-object/from16 p2, v2

    .line 137
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 140
    move-result v2

    .line 141
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 143
    check-cast v9, Ljava/lang/Integer;

    .line 145
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 148
    move-result v9

    .line 149
    move-object/from16 v16, v6

    .line 151
    const/16 v6, 0xc8

    .line 153
    move-object/from16 v21, v8

    .line 155
    if-lt v9, v6, :cond_5

    .line 157
    const/16 v8, 0x12c

    .line 159
    if-gt v9, v8, :cond_5

    .line 161
    if-eqz v1, :cond_4

    .line 163
    const/4 v6, 0x3

    .line 164
    goto :goto_2

    .line 165
    :cond_4
    const/4 v6, 0x1

    .line 166
    :goto_2
    const/16 v8, 0xa

    .line 168
    move/from16 v22, v8

    .line 170
    goto :goto_6

    .line 171
    :cond_5
    if-eqz v1, :cond_a

    .line 173
    const/16 v8, 0x64

    .line 175
    if-lt v9, v8, :cond_6

    .line 177
    if-ge v9, v6, :cond_6

    .line 179
    const/16 v6, 0xb

    .line 181
    :goto_3
    move/from16 v22, v6

    .line 183
    const/4 v6, 0x2

    .line 184
    goto :goto_6

    .line 185
    :cond_6
    const/16 v6, -0x2bc

    .line 187
    if-eq v9, v6, :cond_9

    .line 189
    const/16 v6, -0x320

    .line 191
    if-ne v9, v6, :cond_7

    .line 193
    goto :goto_5

    .line 194
    :cond_7
    const/16 v6, -0x3e8

    .line 196
    if-ne v9, v6, :cond_8

    .line 198
    const/16 v6, 0xd

    .line 200
    goto :goto_3

    .line 201
    :cond_8
    const/4 v6, 0x2

    .line 202
    :goto_4
    const/16 v22, 0x0

    .line 204
    goto :goto_6

    .line 205
    :cond_9
    :goto_5
    const/16 v6, 0xc

    .line 207
    goto :goto_3

    .line 208
    :cond_a
    const/4 v6, 0x0

    .line 209
    goto :goto_4

    .line 210
    :goto_6
    const-string v8, " "

    .line 212
    if-nez v6, :cond_c

    .line 214
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_b

    .line 220
    const-string v0, "Quota PPN skip: none_type "

    .line 222
    invoke-static {v2, v9, v0, v8, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    move-result-object v0

    .line 226
    invoke-static {v12, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 229
    :cond_b
    const/4 v0, -0x1

    .line 230
    const-string v1, "NANDSWAP_TYPE_NONE"

    .line 232
    move-wide v2, v3

    .line 233
    move v4, v13

    .line 234
    move-wide v5, v14

    .line 235
    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    .line 238
    return-void

    .line 239
    :cond_c
    iget-object v9, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 241
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 244
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 247
    move-result v23

    .line 248
    move/from16 v24, v1

    .line 250
    const-wide/16 v0, 0x1388

    .line 252
    if-eqz v23, :cond_f

    .line 254
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_d

    .line 260
    const-string v5, "Quota PPN skip: app launch "

    .line 262
    invoke-static {v2, v5, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_d
    const/4 v2, -0x1

    .line 266
    const-string v5, "app launched"

    .line 268
    move v0, v2

    .line 269
    move-object v1, v5

    .line 270
    move-wide v2, v3

    .line 271
    move v4, v13

    .line 272
    move-wide v5, v14

    .line 273
    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    .line 276
    sub-long/2addr v10, v14

    .line 277
    const-wide/32 v0, 0xc800

    .line 280
    cmp-long v0, v10, v0

    .line 282
    if-lez v0, :cond_e

    .line 284
    iget-object v0, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 286
    const/4 v1, 0x4

    .line 287
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 290
    move-result-object v0

    .line 291
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 294
    move-result-object v1

    .line 295
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iget-object v1, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 299
    const-wide/16 v2, 0x1388

    .line 301
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 304
    :cond_e
    return-void

    .line 305
    :cond_f
    invoke-static {v2}, Landroid/os/Process;->getRss(I)[J

    .line 308
    move-result-object v23

    .line 309
    const/16 v25, 0x0

    .line 311
    aget-wide v26, v23, v25

    .line 313
    const-wide/16 v18, 0x0

    .line 315
    cmp-long v25, v26, v18

    .line 317
    const-string v0, "Quota PPN skip: reclaim throttle quick "

    .line 319
    if-nez v25, :cond_10

    .line 321
    const/4 v1, 0x1

    .line 322
    aget-wide v28, v23, v1

    .line 324
    cmp-long v1, v28, v18

    .line 326
    if-nez v1, :cond_10

    .line 328
    const/4 v1, 0x2

    .line 329
    aget-wide v28, v23, v1

    .line 331
    cmp-long v1, v28, v18

    .line 333
    if-nez v1, :cond_10

    .line 335
    const/4 v1, 0x3

    .line 336
    aget-wide v28, v23, v1

    .line 338
    cmp-long v20, v28, v18

    .line 340
    if-nez v20, :cond_11

    .line 342
    move-object/from16 v20, v0

    .line 344
    move-wide/from16 v30, v3

    .line 346
    move-wide/from16 v34, v10

    .line 348
    move-wide/from16 v25, v14

    .line 350
    const-wide/16 v0, 0x0

    .line 352
    const/4 v4, 0x0

    .line 353
    const/4 v5, 0x1

    .line 354
    move-object/from16 v3, p0

    .line 356
    goto/16 :goto_13

    .line 358
    :cond_10
    const/4 v1, 0x3

    .line 359
    :cond_11
    if-ne v6, v1, :cond_12

    .line 361
    const/16 v20, 0x2

    .line 363
    aget-wide v28, v23, v20

    .line 365
    aget-wide v30, v23, v1

    .line 367
    add-long v28, v28, v30

    .line 369
    :goto_7
    move-wide/from16 v30, v3

    .line 371
    move-wide/from16 v3, v28

    .line 373
    goto :goto_8

    .line 374
    :cond_12
    const/4 v1, 0x1

    .line 375
    const/16 v20, 0x2

    .line 377
    if-ne v6, v1, :cond_13

    .line 379
    aget-wide v28, v23, v20

    .line 381
    goto :goto_7

    .line 382
    :cond_13
    const/4 v1, 0x3

    .line 383
    aget-wide v28, v23, v1

    .line 385
    goto :goto_7

    .line 386
    :goto_8
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_15

    .line 392
    const-wide/16 v25, 0x1388

    .line 394
    cmp-long v1, v3, v25

    .line 396
    if-gtz v1, :cond_14

    .line 398
    invoke-static {v2, v0, v3, v4, v8}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    move-result-object v1

    .line 402
    move-object/from16 v20, v0

    .line 404
    const-string v0, " 5000"

    .line 406
    invoke-static {v1, v0, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    goto :goto_9

    .line 410
    :cond_14
    move-object/from16 v20, v0

    .line 412
    goto :goto_9

    .line 413
    :cond_15
    move-object/from16 v20, v0

    .line 415
    const-wide/16 v25, 0x1388

    .line 417
    :goto_9
    cmp-long v0, v3, v25

    .line 419
    if-lez v0, :cond_23

    .line 421
    iget-object v0, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 423
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    move-result-object v0

    .line 427
    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 429
    if-nez v0, :cond_17

    .line 431
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_16

    .line 437
    const-string v0, "Quota PPN skip: no nandswap record"

    .line 439
    invoke-static {v2, v0, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_16
    move-object/from16 v3, p0

    .line 444
    move-wide/from16 v34, v10

    .line 446
    move-wide/from16 v25, v14

    .line 448
    const-wide/16 v0, 0x0

    .line 450
    const/4 v4, 0x0

    .line 451
    const/4 v5, 0x1

    .line 452
    goto/16 :goto_14

    .line 454
    :cond_17
    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 457
    move-result-object v1

    .line 458
    int-to-long v3, v6

    .line 459
    const/16 v20, 0x0

    .line 461
    aget-wide v27, v1, v20

    .line 463
    const/16 v17, 0x1

    .line 465
    aget-wide v32, v1, v17

    .line 467
    const-wide/16 v18, 0x0

    .line 469
    cmp-long v20, v27, v18

    .line 471
    move-wide/from16 v34, v10

    .line 473
    const-string v10, "Quota PPN skip: reclaim throttle slow "

    .line 475
    if-nez v20, :cond_18

    .line 477
    cmp-long v11, v32, v18

    .line 479
    if-nez v11, :cond_18

    .line 481
    move-object/from16 v3, p0

    .line 483
    move-wide/from16 v25, v14

    .line 485
    :goto_a
    const-wide/16 v0, 0x0

    .line 487
    const/4 v4, 0x0

    .line 488
    const/4 v5, 0x1

    .line 489
    goto/16 :goto_12

    .line 491
    :cond_18
    const-wide/16 v36, 0x3

    .line 493
    cmp-long v11, v3, v36

    .line 495
    if-nez v11, :cond_19

    .line 497
    add-long v27, v27, v32

    .line 499
    :goto_b
    move-wide/from16 v3, v25

    .line 501
    move-wide/from16 v25, v14

    .line 503
    move-wide/from16 v14, v27

    .line 505
    goto :goto_c

    .line 506
    :cond_19
    const-wide/16 v36, 0x1

    .line 508
    cmp-long v3, v3, v36

    .line 510
    if-nez v3, :cond_1a

    .line 512
    goto :goto_b

    .line 513
    :cond_1a
    const-wide/16 v3, 0x672

    .line 515
    move-wide/from16 v25, v14

    .line 517
    move-wide/from16 v14, v32

    .line 519
    :goto_c
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 522
    move-result v11

    .line 523
    if-eqz v11, :cond_1b

    .line 525
    cmp-long v11, v14, v3

    .line 527
    if-gtz v11, :cond_1b

    .line 529
    invoke-static {v2, v10, v14, v15, v8}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    move-result-object v11

    .line 533
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    move-result-object v11

    .line 543
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_1b
    cmp-long v3, v14, v3

    .line 548
    if-lez v3, :cond_22

    .line 550
    move-object/from16 v3, p0

    .line 552
    move/from16 v11, v22

    .line 554
    const/4 v4, 0x0

    .line 555
    invoke-virtual {v3, v0, v11, v6, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 558
    move-result-wide v14

    .line 559
    const-wide/16 v18, 0x0

    .line 561
    cmp-long v10, v14, v18

    .line 563
    if-lez v10, :cond_20

    .line 565
    add-int/lit8 v6, v13, 0x1

    .line 567
    sget v10, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    .line 569
    const/4 v11, 0x1

    .line 570
    add-int/2addr v10, v11

    .line 571
    sput v10, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    .line 573
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    const/4 v5, 0x2

    .line 577
    invoke-virtual {v9, v0, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 580
    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 583
    move-result-object v0

    .line 584
    aget-wide v9, v1, v4

    .line 586
    aget-wide v13, v1, v11

    .line 588
    add-long/2addr v9, v13

    .line 589
    aget-wide v13, v0, v4

    .line 591
    sub-long/2addr v9, v13

    .line 592
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 595
    move-result v5

    .line 596
    if-eqz v5, :cond_1c

    .line 598
    const-string v5, "Quota PPN reclaimed: "

    .line 600
    invoke-static {v2, v5, v9, v10, v8}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    aget-wide v13, v1, v4

    .line 609
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 612
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const/4 v5, 0x1

    .line 616
    aget-wide v13, v1, v5

    .line 618
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    aget-wide v13, v0, v4

    .line 626
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 629
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    aget-wide v0, v0, v5

    .line 634
    invoke-static {v2, v0, v1, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 637
    :goto_d
    const-wide/16 v0, 0x0

    .line 639
    goto :goto_e

    .line 640
    :cond_1c
    const/4 v5, 0x1

    .line 641
    goto :goto_d

    .line 642
    :goto_e
    cmp-long v2, v9, v0

    .line 644
    if-lez v2, :cond_1f

    .line 646
    add-long v8, v25, v9

    .line 648
    cmp-long v2, v8, v34

    .line 650
    if-ltz v2, :cond_1e

    .line 652
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 655
    move-result v0

    .line 656
    if-eqz v0, :cond_1d

    .line 658
    const-string v0, "Quota PPN complete: nandswap "

    .line 660
    move-object/from16 v2, v21

    .line 662
    invoke-static {v6, v0, v8, v9, v2}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    move-result-object v0

    .line 666
    move-object/from16 v10, v16

    .line 668
    invoke-static {v0, v10, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_1d
    const/4 v0, 0x1

    .line 672
    const-string/jumbo v1, "complete"

    .line 675
    move-wide/from16 v2, v30

    .line 677
    move v4, v6

    .line 678
    move-wide v5, v8

    .line 679
    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    .line 682
    return-void

    .line 683
    :cond_1e
    move-wide v14, v8

    .line 684
    goto :goto_f

    .line 685
    :cond_1f
    move-wide/from16 v14, v25

    .line 687
    :goto_f
    move v13, v6

    .line 688
    goto :goto_10

    .line 689
    :cond_20
    const-wide/16 v0, 0x0

    .line 691
    const/4 v5, 0x1

    .line 692
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 695
    move-result v8

    .line 696
    if-eqz v8, :cond_21

    .line 698
    const-string v8, "Quota PPN failed: ret "

    .line 700
    const-string/jumbo v9, "pid "

    .line 703
    invoke-static {v2, v8, v14, v15, v9}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    move-result-object v2

    .line 707
    const-string v8, " nandswapAction "

    .line 709
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 715
    const-string v8, " nandswapType "

    .line 717
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 723
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 726
    move-result-object v2

    .line 727
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_21
    move-wide/from16 v14, v25

    .line 732
    :goto_10
    move-object/from16 v2, p2

    .line 734
    move-wide v8, v0

    .line 735
    move-object v0, v3

    .line 736
    move v6, v5

    .line 737
    move/from16 v1, v24

    .line 739
    :goto_11
    move-wide/from16 v3, v30

    .line 741
    move-wide/from16 v10, v34

    .line 743
    goto/16 :goto_1

    .line 745
    :cond_22
    move-object/from16 v3, p0

    .line 747
    goto/16 :goto_a

    .line 749
    :goto_12
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 752
    move-result v6

    .line 753
    if-eqz v6, :cond_24

    .line 755
    invoke-static {v2, v10, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 758
    goto :goto_14

    .line 759
    :cond_23
    move-object/from16 v3, p0

    .line 761
    move-wide/from16 v34, v10

    .line 763
    move-wide/from16 v25, v14

    .line 765
    const-wide/16 v0, 0x0

    .line 767
    const/4 v4, 0x0

    .line 768
    const/4 v5, 0x1

    .line 769
    :goto_13
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 772
    move-result v6

    .line 773
    if-eqz v6, :cond_24

    .line 775
    move-object/from16 v6, v20

    .line 777
    invoke-static {v2, v6, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_24
    :goto_14
    move-object/from16 v2, p2

    .line 782
    move-wide v8, v0

    .line 783
    move-object v0, v3

    .line 784
    move v6, v5

    .line 785
    move/from16 v1, v24

    .line 787
    move-wide/from16 v14, v25

    .line 789
    goto :goto_11

    .line 790
    :cond_25
    move-wide/from16 v30, v3

    .line 792
    move-object v10, v6

    .line 793
    move-object v2, v8

    .line 794
    move-wide/from16 v25, v14

    .line 796
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 799
    move-result v0

    .line 800
    if-eqz v0, :cond_26

    .line 802
    const-string v0, "Quota PPN reclaim not enough: nandswap "

    .line 804
    move-wide/from16 v14, v25

    .line 806
    invoke-static {v13, v0, v14, v15, v2}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    move-result-object v0

    .line 810
    invoke-static {v0, v10, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    goto :goto_15

    .line 814
    :cond_26
    move-wide/from16 v14, v25

    .line 816
    :goto_15
    const/4 v0, 0x0

    .line 817
    const-string/jumbo v1, "not enough"

    .line 820
    move-wide/from16 v2, v30

    .line 822
    move v4, v13

    .line 823
    move-wide v5, v14

    .line 824
    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    .line 827
    return-void

    .line 828
    :cond_27
    move-wide/from16 v30, v3

    .line 830
    const/4 v0, -0x1

    .line 831
    const-string v1, "Target < 0"

    .line 833
    const/4 v4, 0x0

    .line 834
    const-wide/16 v5, 0x0

    .line 836
    move-wide/from16 v2, v30

    .line 838
    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    .line 841
    return-void
.end method
