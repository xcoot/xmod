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

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapThread:Lcom/android/server/ServiceThread;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo p1, "vendor.samsung.hardware.camera.provider"

    .line 13
    .line 14
    .line 15
    const-string/jumbo v0, "vendor.samsung.hardware.camera.provider-service_64"

    .line 16
    .line 17
    .line 18
    const-string/jumbo v1, "cameraserver"

    .line 19
    .line 20
    .line 21
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->nativePackageNameFilter:[Ljava/lang/String;

    .line 26
    .line 27
    const-class p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    return-void
.end method

.method public static quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    move-object v2, p7

    .line 6
    check-cast v2, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    const/16 v4, 0x1e

    .line 13
    .line 14
    if-le v3, v4, :cond_0

    .line 15
    .line 16
    const/4 p7, 0x0

    .line 17
    invoke-virtual {v2, p7, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p7

    .line 21
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    sub-long/2addr v0, p2

    .line 31
    const-string/jumbo p2, "ms"

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0, v1, p2}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-interface {p7}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    move-object v3, p1

    .line 51
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const p1, 0x13d6e9

    .line 56
    .line 57
    .line 58
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 59
    .line 60
    .line 61
    return-void
.end method


# virtual methods
.method public final canDoNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 4
    .line 5
    iget v2, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aget v3, v1, v2

    .line 13
    .line 14
    iput v3, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    aget v1, v1, v3

    .line 18
    .line 19
    iput v1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 20
    .line 21
    iget v4, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 22
    .line 23
    if-ne v4, v3, :cond_2

    .line 24
    .line 25
    const/16 v4, 0x352

    .line 26
    .line 27
    if-ge v1, v4, :cond_1

    .line 28
    .line 29
    iget v4, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->uid:I

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/16 v0, 0x10

    .line 35
    .line 36
    if-eq p2, v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 p2, 0x64

    .line 40
    .line 41
    if-lt v1, p2, :cond_2

    .line 42
    .line 43
    sget-boolean p2, Lcom/android/server/am/FreecessController;->IS_MINIMIZE_OLAF_LOCK:Z

    .line 44
    .line 45
    sget-object p2, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;

    .line 46
    .line 47
    invoke-virtual {p2, v4}, Lcom/android/server/am/FreecessController;->isFreezedPackage(I)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    :cond_1
    move v2, v3

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string/jumbo v0, "canDoNandswapProcess fail: "

    .line 58
    .line 59
    .line 60
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, " pid:"

    .line 69
    .line 70
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, " state:"

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v0, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->ppnState:I

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v0, " adj:"

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget p1, p1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 94
    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object p0, p0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    :goto_1
    return v2
.end method

.method public final doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J
    .locals 49

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v12, p2

    .line 6
    .line 7
    move/from16 v13, p3

    .line 8
    .line 9
    const-string v2, " adj:"

    .line 10
    .line 11
    const-string v14, ") action:"

    .line 12
    .line 13
    const-string v3, " "

    .line 14
    .line 15
    const-string v15, "(pid "

    .line 16
    .line 17
    iget-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string v11, ", "

    .line 20
    .line 21
    const-string/jumbo v8, "nandswap "

    .line 22
    .line 23
    .line 24
    const-string/jumbo v4, "nandswap end for "

    .line 25
    .line 26
    .line 27
    const-string/jumbo v5, "nandswap start for "

    .line 28
    .line 29
    .line 30
    const-string/jumbo v6, "nandswap"

    .line 31
    .line 32
    .line 33
    iget v9, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 34
    .line 35
    iget-object v7, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 36
    .line 37
    move-object/from16 v16, v8

    .line 38
    .line 39
    iget v8, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 40
    .line 41
    move/from16 v17, v8

    .line 42
    .line 43
    iget v8, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 44
    .line 45
    if-eqz p4, :cond_0

    .line 46
    .line 47
    const-string v18, "activity"

    .line 48
    .line 49
    :goto_0
    move-object/from16 v1, v18

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    const-string/jumbo v18, "non-activity"

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    const/4 v0, 0x1

    .line 57
    if-ne v13, v0, :cond_1

    .line 58
    .line 59
    const-string/jumbo v19, "swaponly"

    .line 60
    .line 61
    .line 62
    :goto_2
    move-object/from16 v0, v19

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_1
    const/4 v0, 0x2

    .line 66
    if-ne v13, v0, :cond_2

    .line 67
    .line 68
    const-string/jumbo v19, "writebackonly"

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    const-string v19, "all"

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_3
    const-wide/16 v21, -0x1

    .line 76
    .line 77
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v6, " : "

    .line 86
    .line 87
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 103
    const-wide/16 v12, 0x40

    .line 104
    .line 105
    :try_start_1
    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 113
    .line 114
    .line 115
    move-result-wide v23

    .line 116
    invoke-static {v9}, Landroid/os/Process;->getRss(I)[J

    .line 117
    .line 118
    .line 119
    move-result-object v19

    .line 120
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    .line 121
    .line 122
    .line 123
    move-result-wide v25

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 145
    .line 146
    .line 147
    move-wide/from16 v30, v12

    .line 148
    .line 149
    move/from16 v12, p2

    .line 150
    .line 151
    :try_start_2
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v5, " type:"

    .line 161
    .line 162
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move/from16 v13, p3

    .line 166
    .line 167
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 178
    .line 179
    .line 180
    move-result-wide v5

    .line 181
    move-object/from16 v27, v11

    .line 182
    .line 183
    invoke-static {v9, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->compactProcessForWriteback(II)J

    .line 184
    .line 185
    .line 186
    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 187
    move-object/from16 v28, v14

    .line 188
    .line 189
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 190
    .line 191
    .line 192
    move-result-wide v13

    .line 193
    move-object/from16 v29, v0

    .line 194
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v3, ") ret:"

    .line 216
    .line 217
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    sub-long v5, v13, v5

    .line 237
    .line 238
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->-$$Nest$smreadZramBdstat()[J

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 243
    .line 244
    .line 245
    move-result-wide v21

    .line 246
    invoke-static {v9}, Landroid/os/Process;->getRss(I)[J

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    .line 251
    .line 252
    .line 253
    move-result-wide v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 254
    move-wide/from16 v32, v13

    .line 255
    .line 256
    sub-long v13, v2, v25

    .line 257
    .line 258
    sub-long v34, v21, v23

    .line 259
    .line 260
    const-wide/16 v36, 0x4

    .line 261
    .line 262
    move-object/from16 v39, v0

    .line 263
    .line 264
    move-object/from16 v38, v1

    .line 265
    .line 266
    mul-long v0, v34, v36

    .line 267
    .line 268
    const-wide/16 v34, 0x0

    .line 269
    .line 270
    cmp-long v34, v11, v34

    .line 271
    .line 272
    const/16 v18, 0x2

    .line 273
    .line 274
    move-wide/from16 v35, v2

    .line 275
    .line 276
    move-object/from16 v2, p0

    .line 277
    .line 278
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 279
    .line 280
    if-lez v34, :cond_4

    .line 281
    .line 282
    move-wide/from16 v40, v35

    .line 283
    .line 284
    move-object v2, v7

    .line 285
    move-object/from16 p0, v3

    .line 286
    .line 287
    move v3, v9

    .line 288
    move-wide/from16 v34, v11

    .line 289
    .line 290
    move-object v12, v4

    .line 291
    move/from16 v4, p2

    .line 292
    .line 293
    move-wide/from16 v36, v5

    .line 294
    .line 295
    move/from16 v5, p3

    .line 296
    .line 297
    move-object v11, v7

    .line 298
    move-wide/from16 v6, v36

    .line 299
    .line 300
    move/from16 v45, v8

    .line 301
    .line 302
    move/from16 v43, v9

    .line 303
    .line 304
    move-object/from16 v42, v12

    .line 305
    .line 306
    move-object/from16 v12, v16

    .line 307
    .line 308
    move/from16 v44, v17

    .line 309
    .line 310
    move-wide v8, v13

    .line 311
    move-object/from16 v46, v10

    .line 312
    .line 313
    move-wide/from16 v16, v13

    .line 314
    .line 315
    move-object/from16 v13, v27

    .line 316
    .line 317
    move-object v14, v11

    .line 318
    move-wide v10, v0

    .line 319
    :try_start_4
    invoke-static/range {v2 .. v11}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapLogger;->saveSwapOutLog(Ljava/lang/String;IIIJJJ)V

    .line 320
    .line 321
    .line 322
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isKeyAppEnable()Z

    .line 323
    .line 324
    .line 325
    move-result v2

    .line 326
    if-eqz v2, :cond_3

    .line 327
    .line 328
    move-object/from16 v2, p0

    .line 329
    .line 330
    iget-object v3, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mKeyApps:Ljava/util/Map;

    .line 331
    .line 332
    sget-object v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->STATUS_ALREADY_PPN:Ljava/lang/Integer;

    .line 333
    .line 334
    check-cast v3, Ljava/util/HashMap;

    .line 335
    .line 336
    invoke-virtual {v3, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    goto :goto_6

    .line 340
    :catchall_0
    :goto_4
    move-wide/from16 v21, v34

    .line 341
    .line 342
    goto/16 :goto_8

    .line 343
    .line 344
    :catch_0
    :goto_5
    move-wide/from16 v21, v34

    .line 345
    .line 346
    goto/16 :goto_9

    .line 347
    .line 348
    :cond_3
    move-object/from16 v2, p0

    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_4
    move-object v2, v3

    .line 352
    move-object/from16 v42, v4

    .line 353
    .line 354
    move/from16 v45, v8

    .line 355
    .line 356
    move/from16 v43, v9

    .line 357
    .line 358
    move-object/from16 v46, v10

    .line 359
    .line 360
    move/from16 v44, v17

    .line 361
    .line 362
    move-wide/from16 v40, v35

    .line 363
    .line 364
    move-wide/from16 v36, v5

    .line 365
    .line 366
    move-wide/from16 v34, v11

    .line 367
    .line 368
    move-object/from16 v12, v16

    .line 369
    .line 370
    move-wide/from16 v16, v13

    .line 371
    .line 372
    move-object/from16 v13, v27

    .line 373
    .line 374
    move-object v14, v7

    .line 375
    :goto_6
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    if-eqz v3, :cond_5

    .line 380
    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    move-object/from16 v4, v38

    .line 387
    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    const-string v4, " for "

    .line 392
    .line 393
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    move/from16 v4, v43

    .line 403
    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    move-object/from16 v5, v28

    .line 408
    .line 409
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    move/from16 v5, p2

    .line 413
    .line 414
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    const-string v6, ", adj:"

    .line 418
    .line 419
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    move/from16 v6, v45

    .line 423
    .line 424
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    const-string v7, ", state:"

    .line 428
    .line 429
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    move/from16 v7, v44

    .line 433
    .line 434
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const/4 v8, 0x1

    .line 441
    aget-wide v9, v42, v8

    .line 442
    .line 443
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    aget-wide v8, v42, v18

    .line 450
    .line 451
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const/4 v8, 0x3

    .line 458
    aget-wide v9, v42, v8

    .line 459
    .line 460
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    move-wide/from16 v9, v40

    .line 467
    .line 468
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    move-wide/from16 v11, v36

    .line 475
    .line 476
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    const-string v15, " ms, "

    .line 480
    .line 481
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    move/from16 v15, p3

    .line 485
    .line 486
    move-wide/from16 v47, v32

    .line 487
    .line 488
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    const/16 v20, 0x1

    .line 495
    .line 496
    aget-wide v27, v42, v20

    .line 497
    .line 498
    aget-wide v32, v19, v20

    .line 499
    .line 500
    move-wide/from16 v40, v9

    .line 501
    .line 502
    sub-long v8, v27, v32

    .line 503
    .line 504
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    aget-wide v8, v42, v18

    .line 511
    .line 512
    aget-wide v27, v19, v18

    .line 513
    .line 514
    sub-long v8, v8, v27

    .line 515
    .line 516
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    const/4 v8, 0x3

    .line 523
    aget-wide v9, v42, v8

    .line 524
    .line 525
    aget-wide v18, v19, v8

    .line 526
    .line 527
    sub-long v9, v9, v18

    .line 528
    .line 529
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    move-wide/from16 v8, v16

    .line 536
    .line 537
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    move-object/from16 v1, v46

    .line 551
    .line 552
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    .line 554
    .line 555
    goto :goto_7

    .line 556
    :cond_5
    move/from16 v5, p2

    .line 557
    .line 558
    move/from16 v15, p3

    .line 559
    .line 560
    move-wide/from16 v47, v32

    .line 561
    .line 562
    move-wide/from16 v11, v36

    .line 563
    .line 564
    move/from16 v4, v43

    .line 565
    .line 566
    move/from16 v7, v44

    .line 567
    .line 568
    move/from16 v6, v45

    .line 569
    .line 570
    :goto_7
    if-eqz v29, :cond_6

    .line 571
    .line 572
    if-eqz v39, :cond_6

    .line 573
    .line 574
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 575
    .line 576
    .line 577
    move-result-object v16

    .line 578
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 579
    .line 580
    .line 581
    move-result-object v18

    .line 582
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 583
    .line 584
    .line 585
    move-result-object v19

    .line 586
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 587
    .line 588
    .line 589
    move-result-object v20

    .line 590
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    const-string/jumbo v3, "ms"

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v1

    .line 616
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 617
    .line 618
    .line 619
    move-result-object v3

    .line 620
    invoke-static/range {v29 .. v29}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v6

    .line 624
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 629
    .line 630
    .line 631
    move-result-object v26

    .line 632
    invoke-static/range {v39 .. v39}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v27

    .line 636
    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 637
    .line 638
    .line 639
    move-result-object v28

    .line 640
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 641
    .line 642
    .line 643
    move-result-object v29

    .line 644
    move-object/from16 v17, v14

    .line 645
    .line 646
    move-object/from16 v21, v0

    .line 647
    .line 648
    move-object/from16 v22, v1

    .line 649
    .line 650
    move-object/from16 v23, v3

    .line 651
    .line 652
    move-object/from16 v24, v6

    .line 653
    .line 654
    move-object/from16 v25, v7

    .line 655
    .line 656
    filled-new-array/range {v16 .. v29}, [Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    move-result-object v0

    .line 660
    const v1, 0x13d6e8

    .line 661
    .line 662
    .line 663
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 664
    .line 665
    .line 666
    :cond_6
    const/16 v0, 0xf

    .line 667
    .line 668
    if-eq v5, v0, :cond_7

    .line 669
    .line 670
    move-object/from16 v0, p1

    .line 671
    .line 672
    move-wide/from16 v5, v47

    .line 673
    .line 674
    iput-wide v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 675
    .line 676
    :cond_7
    if-nez p4, :cond_8

    .line 677
    .line 678
    move-object/from16 v0, v42

    .line 679
    .line 680
    invoke-static {v2, v4, v14, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$mupdateLastNandswapStats(Lcom/android/server/chimera/ppn/PerProcessNandswap;ILjava/lang/String;[J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 681
    .line 682
    .line 683
    :cond_8
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 684
    .line 685
    .line 686
    return-wide v34

    .line 687
    :catchall_1
    move-wide/from16 v34, v11

    .line 688
    .line 689
    goto/16 :goto_4

    .line 690
    .line 691
    :catch_1
    move-wide/from16 v34, v11

    .line 692
    .line 693
    goto/16 :goto_5

    .line 694
    .line 695
    :catchall_2
    move-wide/from16 v30, v12

    .line 696
    .line 697
    goto :goto_8

    .line 698
    :catch_2
    move-wide/from16 v30, v12

    .line 699
    .line 700
    goto :goto_9

    .line 701
    :catchall_3
    const-wide/16 v30, 0x40

    .line 702
    .line 703
    goto :goto_8

    .line 704
    :catch_3
    const-wide/16 v30, 0x40

    .line 705
    .line 706
    goto :goto_9

    .line 707
    :catchall_4
    :goto_8
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 708
    .line 709
    .line 710
    return-wide v21

    .line 711
    :catch_4
    :goto_9
    invoke-static/range {v30 .. v31}, Landroid/os/Trace;->traceEnd(J)V

    .line 712
    .line 713
    .line 714
    return-wide v21
.end method

.method public final doSwapAfterBootFull()J
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    new-instance v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v1, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v0, v1, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->getReclaimSetForNandswap(Ljava/util/function/Function;Z)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    invoke-static {v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smgetMemoryInfoIfDebugEnabled(Z)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    check-cast v1, Ljava/util/TreeSet;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-wide/16 v5, 0x0

    .line 33
    .line 34
    move v9, v4

    .line 35
    move-wide v10, v5

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v12

    .line 40
    iget-object v13, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v12, :cond_5

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v12

    .line 48
    check-cast v12, Landroid/util/Pair;

    .line 49
    .line 50
    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v12, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v14

    .line 58
    iget-object v15, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 59
    .line 60
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 64
    .line 65
    .line 66
    move-result v16

    .line 67
    if-eqz v16, :cond_2

    .line 68
    .line 69
    if-eqz v7, :cond_1

    .line 70
    .line 71
    const-string v1, "Swap After boot(Full) skip: app launch "

    .line 72
    .line 73
    invoke-static {v14, v1, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    const-string v1, "Swap After boot(Full) skip by AppLaunch"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v15, v15, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    .line 81
    invoke-virtual {v15, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 86
    .line 87
    if-nez v12, :cond_3

    .line 88
    .line 89
    if-eqz v7, :cond_0

    .line 90
    .line 91
    const-string v12, "Swap After boot(Full) skip: no nandswap record "

    .line 92
    .line 93
    invoke-static {v14, v12, v13}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    invoke-static {v14}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    const/16 v15, 0xf

    .line 102
    .line 103
    move-object/from16 v16, v1

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v12, v15, v1, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 107
    .line 108
    .line 109
    move-result-wide v17

    .line 110
    cmp-long v1, v17, v5

    .line 111
    .line 112
    if-lez v1, :cond_4

    .line 113
    .line 114
    add-int/lit8 v9, v9, 0x1

    .line 115
    .line 116
    invoke-static {v14}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    aget-wide v12, v13, v4

    .line 121
    .line 122
    aget-wide v14, v1, v4

    .line 123
    .line 124
    sub-long/2addr v12, v14

    .line 125
    add-long/2addr v12, v10

    .line 126
    move-wide v10, v12

    .line 127
    :cond_4
    move-object/from16 v1, v16

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    const-string v1, "Swap After boot(Full) successfully"

    .line 131
    .line 132
    :goto_1
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 133
    .line 134
    move-wide v4, v10

    .line 135
    move v6, v9

    .line 136
    invoke-static/range {v0 .. v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$mappendLogMessage(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;JJIZLjava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    return-wide v10
.end method

.method public final doSwapAfterBootSome()J
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v2

    .line 7
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v7

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v4, Ljava/util/HashSet;

    .line 17
    .line 18
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 19
    .line 20
    .line 21
    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 22
    .line 23
    iget-object v6, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 24
    .line 25
    invoke-virtual {v6}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    check-cast v6, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/4 v9, -0x1

    .line 40
    const-string v10, "Swap After boot(Some) skip: not enough anonPages "

    .line 41
    .line 42
    iget-object v11, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v8, :cond_5

    .line 45
    .line 46
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    check-cast v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 51
    .line 52
    iget v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 53
    .line 54
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget-object v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v5, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v12

    .line 67
    if-nez v12, :cond_0

    .line 68
    .line 69
    const-string/jumbo v12, "system"

    .line 70
    .line 71
    .line 72
    iget-object v13, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    if-eqz v12, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object v12, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    .line 83
    iget v13, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 84
    .line 85
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v13

    .line 89
    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v12

    .line 93
    check-cast v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 94
    .line 95
    if-eqz v12, :cond_2

    .line 96
    .line 97
    iget v9, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 98
    .line 99
    invoke-static {v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smisAnonPageNotEnough(I)Z

    .line 100
    .line 101
    .line 102
    move-result v9

    .line 103
    if-eqz v9, :cond_4

    .line 104
    .line 105
    if-eqz v7, :cond_0

    .line 106
    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget v8, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 113
    .line 114
    invoke-static {v9, v8, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-wide v12, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 119
    .line 120
    sub-long v12, v2, v12

    .line 121
    .line 122
    const-wide/16 v14, 0xbb8

    .line 123
    .line 124
    cmp-long v10, v12, v14

    .line 125
    .line 126
    if-gez v10, :cond_3

    .line 127
    .line 128
    if-eqz v7, :cond_0

    .line 129
    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v10, "Swap After boot(Some) skip: newly start "

    .line 133
    .line 134
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget v8, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 138
    .line 139
    invoke-static {v9, v8, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_3
    new-instance v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 144
    .line 145
    iget-object v10, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 146
    .line 147
    iget v8, v8, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 148
    .line 149
    const/16 v11, -0x2710

    .line 150
    .line 151
    invoke-direct {v12, v10, v8, v11, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 152
    .line 153
    .line 154
    :cond_4
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    const/4 v8, 0x0

    .line 163
    if-eqz v6, :cond_6

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    new-instance v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$$ExternalSyntheticLambda0;

    .line 171
    .line 172
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-interface {v6, v12}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    .line 180
    .line 181
    .line 182
    move-result-object v6

    .line 183
    iget-object v12, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 184
    .line 185
    invoke-virtual {v12, v6}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    if-eqz v6, :cond_7

    .line 190
    .line 191
    move v12, v8

    .line 192
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 193
    .line 194
    .line 195
    move-result v13

    .line 196
    if-ge v12, v13, :cond_7

    .line 197
    .line 198
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v13

    .line 202
    check-cast v13, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 203
    .line 204
    iget-object v14, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 205
    .line 206
    check-cast v14, [I

    .line 207
    .line 208
    aget v14, v14, v12

    .line 209
    .line 210
    iput v14, v13, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 211
    .line 212
    iget-object v14, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v14, [I

    .line 215
    .line 216
    aget v14, v14, v12

    .line 217
    .line 218
    iput v14, v13, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 219
    .line 220
    add-int/lit8 v12, v12, 0x1

    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_7
    :goto_2
    iget-object v6, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 224
    .line 225
    invoke-virtual {v6, v4}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    check-cast v4, Ljava/util/ArrayList;

    .line 230
    .line 231
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_b

    .line 240
    .line 241
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    check-cast v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 246
    .line 247
    iget-object v12, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 248
    .line 249
    iget v13, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 250
    .line 251
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    .line 253
    .line 254
    move-result-object v13

    .line 255
    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    check-cast v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 260
    .line 261
    if-eqz v12, :cond_9

    .line 262
    .line 263
    iget v13, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 264
    .line 265
    invoke-static {v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smisAnonPageNotEnough(I)Z

    .line 266
    .line 267
    .line 268
    move-result v13

    .line 269
    if-eqz v13, :cond_a

    .line 270
    .line 271
    if-eqz v7, :cond_8

    .line 272
    .line 273
    new-instance v12, Ljava/lang/StringBuilder;

    .line 274
    .line 275
    invoke-direct {v12, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    iget v6, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 279
    .line 280
    invoke-static {v12, v6, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    goto :goto_3

    .line 284
    :cond_9
    new-instance v12, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 285
    .line 286
    iget-object v13, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 287
    .line 288
    iget v6, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 289
    .line 290
    const/16 v14, -0x3e8

    .line 291
    .line 292
    invoke-direct {v12, v13, v6, v14, v9}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 293
    .line 294
    .line 295
    :cond_a
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    goto :goto_3

    .line 299
    :cond_b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    const-wide/16 v9, 0x0

    .line 304
    .line 305
    if-eqz v4, :cond_c

    .line 306
    .line 307
    iget-object v0, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSwapAfterBootLog:Lcom/android/internal/util/RingBuffer;

    .line 308
    .line 309
    const-string v1, "Swap After boot(Some) no reclaim target!"

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 312
    .line 313
    .line 314
    invoke-static {v11, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    return-wide v9

    .line 318
    :cond_c
    invoke-static {v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$smgetMemoryInfoIfDebugEnabled(Z)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v12

    .line 322
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object v1

    .line 326
    move v6, v8

    .line 327
    move-wide v13, v9

    .line 328
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    if-eqz v4, :cond_11

    .line 333
    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    check-cast v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 339
    .line 340
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 341
    .line 342
    .line 343
    move-result v15

    .line 344
    if-eqz v15, :cond_e

    .line 345
    .line 346
    if-eqz v7, :cond_d

    .line 347
    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    .line 349
    .line 350
    const-string v5, "Swap After boot(Some) skip: app launch "

    .line 351
    .line 352
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iget v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 356
    .line 357
    invoke-static {v1, v4, v11}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 358
    .line 359
    .line 360
    :cond_d
    const-string v1, "Swap After boot(Some) skip by AppLaunch"

    .line 361
    .line 362
    goto :goto_6

    .line 363
    :cond_e
    iget-object v15, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 364
    .line 365
    iget v9, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 366
    .line 367
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    invoke-virtual {v15, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    check-cast v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 376
    .line 377
    if-nez v9, :cond_f

    .line 378
    .line 379
    iget-object v9, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 380
    .line 381
    iget v10, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 382
    .line 383
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 384
    .line 385
    .line 386
    move-result-object v10

    .line 387
    invoke-virtual {v9, v10, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_f
    iget v10, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 392
    .line 393
    iput v10, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 394
    .line 395
    iget v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 396
    .line 397
    iput v4, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 398
    .line 399
    move-object v4, v9

    .line 400
    :goto_5
    iget v9, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 401
    .line 402
    invoke-static {v9}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 403
    .line 404
    .line 405
    move-result-object v9

    .line 406
    const/16 v10, 0xf

    .line 407
    .line 408
    const/4 v15, 0x1

    .line 409
    invoke-virtual {v0, v4, v10, v15, v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 410
    .line 411
    .line 412
    move-result-wide v18

    .line 413
    const-wide/16 v15, 0x0

    .line 414
    .line 415
    cmp-long v10, v18, v15

    .line 416
    .line 417
    if-lez v10, :cond_10

    .line 418
    .line 419
    add-int/lit8 v6, v6, 0x1

    .line 420
    .line 421
    iget v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 422
    .line 423
    invoke-static {v4}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    aget-wide v9, v9, v8

    .line 428
    .line 429
    aget-wide v17, v4, v8

    .line 430
    .line 431
    sub-long v9, v9, v17

    .line 432
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

    .line 437
    .line 438
    :goto_6
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 439
    .line 440
    move-wide v4, v13

    .line 441
    move-object v8, v12

    .line 442
    invoke-static/range {v0 .. v8}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$mappendLogMessage(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;JJIZLjava/lang/String;)Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .line 448
    .line 449
    return-wide v13
.end method

.method public final getNandswapNonActivityAppType(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;II)I
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget v3, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    return v4

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    iget-object v6, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    if-ne v5, v3, :cond_2

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v0, "Skipping nandswap as process "

    .line 30
    .line 31
    const-string v2, " is system_server."

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return v4

    .line 37
    :cond_2
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_3

    .line 44
    .line 45
    return v4

    .line 46
    :cond_3
    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 47
    .line 48
    invoke-virtual {v5, v3}, Lcom/android/server/chimera/SystemRepository;->getProcStateAndOomScoreForPid(I)[I

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const/4 v7, 0x1

    .line 53
    aget v5, v5, v7

    .line 54
    .line 55
    move/from16 v8, p3

    .line 56
    .line 57
    if-eq v5, v8, :cond_5

    .line 58
    .line 59
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    const-string v0, "Skipping nandswap for process"

    .line 66
    .line 67
    const-string v2, " adj is changed"

    .line 68
    .line 69
    invoke-static {v0, v1, v2, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    return v4

    .line 73
    :cond_5
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v8, 0x3

    .line 78
    const/4 v9, 0x2

    .line 79
    if-lt v2, v8, :cond_7

    .line 80
    .line 81
    const/4 v10, 0x6

    .line 82
    if-gt v2, v10, :cond_7

    .line 83
    .line 84
    if-eqz v5, :cond_6

    .line 85
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

    .line 90
    .line 91
    move v2, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_7
    iget-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 94
    .line 95
    if-nez v10, :cond_8

    .line 96
    .line 97
    const-string/jumbo v10, "ro.sys.kernelmemory.nandswap.skip_nandswap_for_empty_ppn"

    .line 98
    .line 99
    .line 100
    invoke-static {v10, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 101
    .line 102
    .line 103
    move-result v10

    .line 104
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v10

    .line 108
    iput-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 109
    .line 110
    :cond_8
    iget-object v10, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->__SkipNandswapForEmptyPPN:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    if-eqz v10, :cond_9

    .line 117
    .line 118
    const/16 v10, 0xe

    .line 119
    .line 120
    if-ne v2, v10, :cond_9

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_9
    if-eqz v5, :cond_a

    .line 124
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

    .line 129
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

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    aget-wide v11, v10, v4

    .line 138
    .line 139
    const-wide/16 v13, 0x0

    .line 140
    .line 141
    cmp-long v11, v11, v13

    .line 142
    .line 143
    const-string v12, "Skipping nandswap for process "

    .line 144
    .line 145
    if-nez v11, :cond_e

    .line 146
    .line 147
    aget-wide v15, v10, v7

    .line 148
    .line 149
    cmp-long v11, v15, v13

    .line 150
    .line 151
    if-nez v11, :cond_e

    .line 152
    .line 153
    aget-wide v15, v10, v9

    .line 154
    .line 155
    cmp-long v11, v15, v13

    .line 156
    .line 157
    if-nez v11, :cond_e

    .line 158
    .line 159
    aget-wide v15, v10, v8

    .line 160
    .line 161
    cmp-long v11, v15, v13

    .line 162
    .line 163
    if-nez v11, :cond_e

    .line 164
    .line 165
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    if-eqz v0, :cond_d

    .line 170
    .line 171
    const-string v0, " with no memory usage. Dead?"

    .line 172
    .line 173
    invoke-static {v12, v1, v0, v6}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_d
    return v4

    .line 177
    :cond_e
    if-eqz v5, :cond_f

    .line 178
    .line 179
    aget-wide v13, v10, v8

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_f
    aget-wide v13, v10, v9

    .line 183
    .line 184
    :goto_4
    const-wide/16 v15, 0x1388

    .line 185
    .line 186
    if-eqz v5, :cond_10

    .line 187
    .line 188
    const-wide/16 v17, 0x2710

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_10
    move-wide/from16 v17, v15

    .line 192
    .line 193
    :goto_5
    cmp-long v5, v13, v17

    .line 194
    .line 195
    const-string v11, "KB."

    .line 196
    .line 197
    if-gez v5, :cond_12

    .line 198
    .line 199
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-eqz v0, :cond_11

    .line 204
    .line 205
    const-string v0, "; anon RSS is too small: "

    .line 206
    .line 207
    invoke-static {v12, v1, v0}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    aget-wide v1, v10, v9

    .line 212
    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    :cond_11
    return v4

    .line 227
    :cond_12
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    .line 228
    .line 229
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;

    .line 238
    .line 239
    if-eqz v0, :cond_14

    .line 240
    .line 241
    iget-object v3, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;->mName:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v5

    .line 247
    if-nez v5, :cond_14

    .line 248
    .line 249
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_13

    .line 254
    .line 255
    const-string/jumbo v0, "ignore lastNandswapStats because it is old stats for name: "

    .line 256
    .line 257
    .line 258
    const-string v5, " stats.name: "

    .line 259
    .line 260
    invoke-static {v0, v1, v5, v3, v6}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    :cond_13
    const/4 v0, 0x0

    .line 264
    :cond_14
    if-eqz v0, :cond_18

    .line 265
    .line 266
    aget-wide v13, v10, v9

    .line 267
    .line 268
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$LastNandswapStats;->mRssAfterNandswap:[J

    .line 269
    .line 270
    aget-wide v17, v0, v9

    .line 271
    .line 272
    sub-long v13, v13, v17

    .line 273
    .line 274
    aget-wide v17, v10, v8

    .line 275
    .line 276
    aget-wide v19, v0, v8

    .line 277
    .line 278
    sub-long v4, v17, v19

    .line 279
    .line 280
    if-ne v2, v7, :cond_15

    .line 281
    .line 282
    move-wide v7, v13

    .line 283
    goto :goto_6

    .line 284
    :cond_15
    if-ne v2, v9, :cond_16

    .line 285
    .line 286
    move-wide v7, v4

    .line 287
    goto :goto_6

    .line 288
    :cond_16
    add-long v7, v13, v4

    .line 289
    .line 290
    :goto_6
    cmp-long v0, v7, v15

    .line 291
    .line 292
    if-gtz v0, :cond_18

    .line 293
    .line 294
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_17

    .line 299
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    const-string v1, "; "

    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    const-string v1, ","

    .line 317
    .line 318
    const-string v2, " diff is too small: "

    .line 319
    .line 320
    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
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

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda2;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v3, Ljava/util/TreeSet;

    .line 11
    .line 12
    invoke-direct {v3, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 16
    .line 17
    iget-object v4, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 18
    .line 19
    invoke-virtual {v4}, Lcom/android/server/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    check-cast v4, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    new-array v6, v5, [I

    .line 30
    .line 31
    new-instance v7, Ljava/util/HashSet;

    .line 32
    .line 33
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v9, 0x0

    .line 37
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    if-ge v9, v10, :cond_0

    .line 42
    .line 43
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    check-cast v10, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 48
    .line 49
    iget v10, v10, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 50
    .line 51
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    aput v10, v6, v9

    .line 59
    .line 60
    add-int/lit8 v9, v9, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v9, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 64
    .line 65
    invoke-virtual {v9, v6}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v9, [I

    .line 72
    .line 73
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v6, [I

    .line 76
    .line 77
    const/4 v10, 0x0

    .line 78
    :goto_1
    if-ge v10, v5, :cond_4

    .line 79
    .line 80
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v11

    .line 84
    check-cast v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;

    .line 85
    .line 86
    aget v12, v6, v10

    .line 87
    .line 88
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    invoke-interface {v1, v13}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v13

    .line 96
    check-cast v13, Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    if-eqz v13, :cond_3

    .line 103
    .line 104
    iget-object v13, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v2, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v13

    .line 110
    if-eqz v13, :cond_1

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_1
    new-instance v13, Landroid/util/Pair;

    .line 114
    .line 115
    iget v14, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 116
    .line 117
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v14

    .line 121
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v15

    .line 125
    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    iget-object v13, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 132
    .line 133
    iget v11, v11, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 134
    .line 135
    aget v14, v9, v10

    .line 136
    .line 137
    iget-object v15, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 138
    .line 139
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v15, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    check-cast v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 148
    .line 149
    if-nez v8, :cond_2

    .line 150
    .line 151
    new-instance v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 152
    .line 153
    invoke-direct {v8, v13, v11, v12, v14}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;-><init>(Ljava/lang/String;III)V

    .line 154
    .line 155
    .line 156
    iget-object v12, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 157
    .line 158
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    invoke-virtual {v12, v11, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_2
    iput v12, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 167
    .line 168
    iput v14, v8, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 169
    .line 170
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_4
    const/16 v4, -0x3e8

    .line 174
    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    invoke-interface {v1, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    check-cast v1, Ljava/lang/Boolean;

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_b

    .line 190
    .line 191
    iget-object v1, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 192
    .line 193
    invoke-virtual {v1, v7}, Lcom/android/server/chimera/SystemRepository;->getNativeProcesses(Ljava/util/Set;)Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_b

    .line 208
    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 214
    .line 215
    if-eqz p2, :cond_9

    .line 216
    .line 217
    iget-object v6, v2, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 218
    .line 219
    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 220
    .line 221
    iget-object v6, v6, Lcom/android/server/chimera/SystemRepository;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 222
    .line 223
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    if-eqz v6, :cond_5

    .line 228
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

    .line 234
    .line 235
    :goto_4
    array-length v8, v7

    .line 236
    const/4 v9, 0x1

    .line 237
    if-ge v8, v9, :cond_6

    .line 238
    .line 239
    new-array v7, v9, [Ljava/lang/String;

    .line 240
    .line 241
    iget-object v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 242
    .line 243
    aput-object v8, v7, v6

    .line 244
    .line 245
    :cond_6
    iget-object v8, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->nativePackageNameFilter:[Ljava/lang/String;

    .line 246
    .line 247
    array-length v9, v8

    .line 248
    move v10, v6

    .line 249
    :goto_5
    if-ge v10, v9, :cond_8

    .line 250
    .line 251
    aget-object v11, v8, v10

    .line 252
    .line 253
    aget-object v12, v7, v6

    .line 254
    .line 255
    invoke-virtual {v12, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    if-eqz v11, :cond_7

    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_8
    iget-object v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v2, v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->-$$Nest$misSamsungProtectApps(Lcom/android/server/chimera/ppn/PerProcessNandswap;Ljava/lang/String;)Z

    .line 268
    .line 269
    .line 270
    move-result v7

    .line 271
    if-eqz v7, :cond_a

    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_9
    const/4 v6, 0x0

    .line 275
    :cond_a
    new-instance v7, Landroid/util/Pair;

    .line 276
    .line 277
    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 278
    .line 279
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v9

    .line 287
    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v3, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    iget-object v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 294
    .line 295
    iget v5, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    .line 296
    .line 297
    invoke-virtual {v2, v5, v4, v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->checkProcessStatusForNandswap(IILjava/lang/String;)V

    .line 298
    .line 299
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

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string/jumbo v0, "default: "

    .line 6
    .line 7
    .line 8
    const-string/jumbo v3, "non_activity_app_msg: delayed:"

    .line 9
    .line 10
    .line 11
    const-string v4, "activity_app_msg: delayed:"

    .line 12
    .line 13
    const-string v5, "activity_app_msg: delayed:"

    .line 14
    .line 15
    :try_start_0
    iget-object v6, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 16
    .line 17
    iget-boolean v6, v6, Lcom/android/server/chimera/ppn/PerProcessNandswap;->WRITEBACK_ENABLED:Z

    .line 18
    .line 19
    if-nez v6, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget v6, v2, Landroid/os/Message;->what:I

    .line 23
    .line 24
    const-wide/16 v7, 0x0

    .line 25
    .line 26
    const-wide/16 v9, 0x1388

    .line 27
    .line 28
    const/4 v11, 0x2

    .line 29
    const/4 v12, 0x0

    .line 30
    const/4 v13, 0x1

    .line 31
    if-eqz v6, :cond_11

    .line 32
    .line 33
    if-eq v6, v13, :cond_11

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    if-eq v6, v11, :cond_5

    .line 37
    .line 38
    if-eq v6, v3, :cond_5

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    if-eq v6, v3, :cond_4

    .line 42
    .line 43
    const/4 v3, 0x5

    .line 44
    if-eq v6, v3, :cond_1

    .line 45
    .line 46
    iget-object v3, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget v0, v2, Landroid/os/Message;->what:I

    .line 54
    .line 55
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto/16 :goto_8

    .line 66
    .line 67
    :cond_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 68
    .line 69
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_2

    .line 74
    .line 75
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 80
    .line 81
    invoke-virtual {v1, v3, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 82
    .line 83
    .line 84
    goto/16 :goto_8

    .line 85
    .line 86
    :cond_2
    if-nez v0, :cond_3

    .line 87
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doSwapAfterBootFull()J

    .line 89
    .line 90
    .line 91
    move-result-wide v4

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doSwapAfterBootSome()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    :goto_0
    add-int/2addr v0, v13

    .line 98
    if-ge v0, v3, :cond_17

    .line 99
    .line 100
    const-wide/16 v6, 0x2800

    .line 101
    .line 102
    cmp-long v4, v4, v6

    .line 103
    .line 104
    if-lez v4, :cond_17

    .line 105
    .line 106
    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    iput v0, v3, Landroid/os/Message;->arg1:I

    .line 111
    .line 112
    const-wide/32 v4, 0xea60

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 116
    .line 117
    .line 118
    goto/16 :goto_8

    .line 119
    .line 120
    :cond_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 121
    .line 122
    check-cast v0, Ljava/lang/Long;

    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 125
    .line 126
    .line 127
    move-result-wide v3

    .line 128
    invoke-virtual {v1, v3, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->nandSwapAlwaysRunningProcess(J)V

    .line 129
    .line 130
    .line 131
    goto/16 :goto_8

    .line 132
    .line 133
    :cond_5
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iget v6, v2, Landroid/os/Message;->what:I

    .line 138
    .line 139
    if-ne v6, v3, :cond_6

    .line 140
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

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_7

    .line 149
    .line 150
    iget-object v9, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 151
    .line 152
    new-instance v10, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v5, " app launch:"

    .line 161
    .line 162
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    invoke-static {v9, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    :cond_7
    if-eqz v6, :cond_8

    .line 176
    .line 177
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 178
    .line 179
    iget-object v5, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 180
    .line 181
    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :try_start_1
    iget-object v9, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 183
    .line 184
    iget-object v9, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v9

    .line 190
    check-cast v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 191
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

    .line 198
    .line 199
    iget-object v5, v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 200
    .line 201
    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 202
    :try_start_3
    iget-object v9, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 203
    .line 204
    iget-object v9, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 205
    .line 206
    invoke-virtual {v9}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v9

    .line 210
    check-cast v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 211
    .line 212
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    :goto_2
    if-eqz v0, :cond_9

    .line 214
    .line 215
    :goto_3
    move v0, v13

    .line 216
    move v13, v12

    .line 217
    goto/16 :goto_5

    .line 218
    .line 219
    :cond_9
    :try_start_4
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 220
    .line 221
    invoke-virtual {v1, v9, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->canDoNandswapProcess(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_b

    .line 226
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

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_c

    .line 235
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

    .line 240
    .line 241
    invoke-virtual {v1, v9, v5, v0, v13}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 242
    .line 243
    .line 244
    move-result-wide v14

    .line 245
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    if-eqz v0, :cond_d

    .line 250
    .line 251
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 252
    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v4, " iter: "

    .line 262
    .line 263
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    iget-object v4, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v4, " pid:"

    .line 272
    .line 273
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    iget v4, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 277
    .line 278
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string v4, " ret:"

    .line 282
    .line 283
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    const-string v4, " pending apps:"

    .line 290
    .line 291
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget-object v4, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 295
    .line 296
    iget-object v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityApp:Ljava/util/PriorityQueue;

    .line 297
    .line 298
    invoke-virtual {v4}, Ljava/util/PriorityQueue;->size()I

    .line 299
    .line 300
    .line 301
    move-result v4

    .line 302
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    const-string v4, " delayed apps:"

    .line 306
    .line 307
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    iget-object v4, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 311
    .line 312
    iget-object v4, v4, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    :cond_d
    cmp-long v0, v14, v7

    .line 329
    .line 330
    if-lez v0, :cond_e

    .line 331
    .line 332
    move v0, v12

    .line 333
    goto :goto_5

    .line 334
    :cond_e
    if-gez v0, :cond_a

    .line 335
    .line 336
    goto :goto_3

    .line 337
    :goto_5
    if-eqz v13, :cond_f

    .line 338
    .line 339
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 340
    .line 341
    invoke-virtual {v0, v9, v11}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_8

    .line 345
    .line 346
    :cond_f
    if-eqz v0, :cond_10

    .line 347
    .line 348
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 349
    .line 350
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 351
    .line 352
    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapActivityAppDelayed:Ljava/util/ArrayList;

    .line 353
    .line 354
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    iget-object v5, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 358
    .line 359
    invoke-virtual {v5, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 364
    .line 365
    iget-object v0, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 366
    .line 367
    const-wide/16 v4, 0x3e8

    .line 368
    .line 369
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 370
    .line 371
    .line 372
    goto/16 :goto_8

    .line 373
    .line 374
    :cond_10
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 375
    .line 376
    invoke-virtual {v0, v9, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 377
    .line 378
    .line 379
    goto/16 :goto_8

    .line 380
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

    .line 385
    .line 386
    iget v4, v2, Landroid/os/Message;->arg2:I

    .line 387
    .line 388
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 389
    .line 390
    .line 391
    move-result-wide v5

    .line 392
    iget-object v14, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 393
    .line 394
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 395
    .line 396
    .line 397
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 398
    .line 399
    .line 400
    move-result v14

    .line 401
    iget v15, v2, Landroid/os/Message;->what:I

    .line 402
    .line 403
    if-ne v15, v13, :cond_12

    .line 404
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

    .line 409
    .line 410
    iget-object v11, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 411
    .line 412
    iget-object v11, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 415
    .line 416
    .line 417
    move-result-object v11

    .line 418
    check-cast v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 419
    .line 420
    goto :goto_7

    .line 421
    :cond_13
    iget-object v11, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 422
    .line 423
    iget-object v11, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityApp:Ljava/util/ArrayList;

    .line 424
    .line 425
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v11

    .line 429
    check-cast v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 430
    .line 431
    :goto_7
    iput-wide v5, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->lastNandswapTime:J

    .line 432
    .line 433
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    if-eqz v5, :cond_14

    .line 438
    .line 439
    iget-object v5, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 440
    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    const-string v3, " "

    .line 450
    .line 451
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    iget-object v3, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 455
    .line 456
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    const-string v3, "(pid "

    .line 460
    .line 461
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    iget v3, v11, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->pid:I

    .line 465
    .line 466
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    const-string v3, ") action:"

    .line 470
    .line 471
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    const-string v3, " app launch:"

    .line 478
    .line 479
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    :cond_14
    if-eqz v14, :cond_16

    .line 493
    .line 494
    if-nez v15, :cond_17

    .line 495
    .line 496
    iget-object v3, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 497
    .line 498
    iget-object v5, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    .line 499
    .line 500
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    int-to-long v5, v5

    .line 505
    const-wide/16 v7, 0x14

    .line 506
    .line 507
    cmp-long v5, v5, v7

    .line 508
    .line 509
    if-gez v5, :cond_15

    .line 510
    .line 511
    iget-object v5, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mPendingNandswapNonActivityAppDelayed:Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    iget-object v3, v3, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 517
    .line 518
    invoke-virtual {v3, v13, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    invoke-virtual {v3, v0, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 523
    .line 524
    .line 525
    goto :goto_8

    .line 526
    :cond_15
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 527
    .line 528
    .line 529
    move-result v0

    .line 530
    if-eqz v0, :cond_17

    .line 531
    .line 532
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 533
    .line 534
    const-string v3, "Skipping send NANDSWAP_NON_ACTIVITY_APP_DELAYED_MSG"

    .line 535
    .line 536
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    goto :goto_8

    .line 540
    :cond_16
    invoke-virtual {v1, v11, v4, v0}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->getNandswapNonActivityAppType(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;II)I

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    if-eqz v0, :cond_17

    .line 545
    .line 546
    invoke-virtual {v1, v11, v4, v0, v12}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 547
    .line 548
    .line 549
    move-result-wide v3

    .line 550
    cmp-long v0, v3, v7

    .line 551
    .line 552
    if-lez v0, :cond_17

    .line 553
    .line 554
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 555
    .line 556
    const/4 v3, 0x2

    .line 557
    invoke-virtual {v0, v11, v3}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 558
    .line 559
    .line 560
    goto :goto_8

    .line 561
    :catch_0
    iget-object v0, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 562
    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    .line 564
    .line 565
    const-string/jumbo v3, "failed to handleMessage "

    .line 566
    .line 567
    .line 568
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    iget v2, v2, Landroid/os/Message;->what:I

    .line 572
    .line 573
    invoke-static {v1, v2, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 574
    .line 575
    .line 576
    :cond_17
    :goto_8
    return-void
.end method

.method public final nandSwapAlwaysRunningProcess(J)V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v1, p1

    .line 4
    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    sget v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    add-int/2addr v5, v6

    .line 13
    sput v5, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNTriggerCnt:I

    .line 14
    .line 15
    new-instance v7, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    const-wide/16 v8, 0x0

    .line 21
    .line 22
    cmp-long v5, v1, v8

    .line 23
    .line 24
    if-lez v5, :cond_27

    .line 25
    .line 26
    const-wide/32 v10, 0x7d000

    .line 27
    .line 28
    .line 29
    cmp-long v5, v1, v10

    .line 30
    .line 31
    iget-object v12, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->TAG:Ljava/lang/String;

    .line 32
    .line 33
    const-string/jumbo v13, "sizeToReclaim is too big: "

    .line 34
    .line 35
    .line 36
    if-lez v5, :cond_1

    .line 37
    .line 38
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_0

    .line 43
    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ",reset to max value: 512000"

    .line 53
    .line 54
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v12, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_0
    move-wide v1, v10

    .line 65
    :cond_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->readZramWritebackLimit()J

    .line 66
    .line 67
    .line 68
    move-result-wide v10

    .line 69
    const-wide/16 v14, 0x4

    .line 70
    .line 71
    mul-long/2addr v10, v14

    .line 72
    cmp-long v5, v1, v10

    .line 73
    .line 74
    if-lez v5, :cond_2

    .line 75
    .line 76
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    const-string v5, ",reset to zramWriteBacklimitKb: "

    .line 83
    .line 84
    invoke-static {v13, v1, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1, v10, v11, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    move-wide v10, v1

    .line 93
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap$ZramInfo;->isWritebackQuotaAvailable()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    new-instance v2, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    invoke-direct {v2, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v2, v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->getReclaimSetForNandswap(Ljava/util/function/Function;Z)Ljava/util/Set;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Ljava/util/TreeSet;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    move-wide v14, v8

    .line 114
    const/4 v13, 0x0

    .line 115
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v16

    .line 119
    const-string v6, " KB"

    .line 120
    .line 121
    const-string v8, " process, reclaim "

    .line 122
    .line 123
    if-eqz v16, :cond_25

    .line 124
    .line 125
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    check-cast v9, Landroid/util/Pair;

    .line 130
    .line 131
    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v5, Ljava/lang/Integer;

    .line 134
    .line 135
    move-object/from16 p2, v2

    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v9, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v9

    .line 149
    move-object/from16 v16, v6

    .line 150
    .line 151
    const/16 v6, 0xc8

    .line 152
    .line 153
    move-object/from16 v21, v8

    .line 154
    .line 155
    if-lt v9, v6, :cond_5

    .line 156
    .line 157
    const/16 v8, 0x12c

    .line 158
    .line 159
    if-gt v9, v8, :cond_5

    .line 160
    .line 161
    if-eqz v1, :cond_4

    .line 162
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

    .line 167
    .line 168
    move/from16 v22, v8

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_5
    if-eqz v1, :cond_a

    .line 172
    .line 173
    const/16 v8, 0x64

    .line 174
    .line 175
    if-lt v9, v8, :cond_6

    .line 176
    .line 177
    if-ge v9, v6, :cond_6

    .line 178
    .line 179
    const/16 v6, 0xb

    .line 180
    .line 181
    :goto_3
    move/from16 v22, v6

    .line 182
    .line 183
    const/4 v6, 0x2

    .line 184
    goto :goto_6

    .line 185
    :cond_6
    const/16 v6, -0x2bc

    .line 186
    .line 187
    if-eq v9, v6, :cond_9

    .line 188
    .line 189
    const/16 v6, -0x320

    .line 190
    .line 191
    if-ne v9, v6, :cond_7

    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_7
    const/16 v6, -0x3e8

    .line 195
    .line 196
    if-ne v9, v6, :cond_8

    .line 197
    .line 198
    const/16 v6, 0xd

    .line 199
    .line 200
    goto :goto_3

    .line 201
    :cond_8
    const/4 v6, 0x2

    .line 202
    :goto_4
    const/16 v22, 0x0

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_9
    :goto_5
    const/16 v6, 0xc

    .line 206
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

    .line 211
    .line 212
    if-nez v6, :cond_c

    .line 213
    .line 214
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_b

    .line 219
    .line 220
    const-string v0, "Quota PPN skip: none_type "

    .line 221
    .line 222
    invoke-static {v2, v9, v0, v8, v8}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-static {v12, v0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 227
    .line 228
    .line 229
    :cond_b
    const/4 v0, -0x1

    .line 230
    const-string v1, "NANDSWAP_TYPE_NONE"

    .line 231
    .line 232
    move-wide v2, v3

    .line 233
    move v4, v13

    .line 234
    move-wide v5, v14

    .line 235
    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    .line 236
    .line 237
    .line 238
    return-void

    .line 239
    :cond_c
    iget-object v9, v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->this$0:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 240
    .line 241
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 245
    .line 246
    .line 247
    move-result v23

    .line 248
    move/from16 v24, v1

    .line 249
    .line 250
    const-wide/16 v0, 0x1388

    .line 251
    .line 252
    if-eqz v23, :cond_f

    .line 253
    .line 254
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-eqz v5, :cond_d

    .line 259
    .line 260
    const-string v5, "Quota PPN skip: app launch "

    .line 261
    .line 262
    invoke-static {v2, v5, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    :cond_d
    const/4 v2, -0x1

    .line 266
    const-string v5, "app launched"

    .line 267
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

    .line 274
    .line 275
    .line 276
    sub-long/2addr v10, v14

    .line 277
    const-wide/32 v0, 0xc800

    .line 278
    .line 279
    .line 280
    cmp-long v0, v10, v0

    .line 281
    .line 282
    if-lez v0, :cond_e

    .line 283
    .line 284
    iget-object v0, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 285
    .line 286
    const/4 v1, 0x4

    .line 287
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    .line 297
    iget-object v1, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapHandler:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;

    .line 298
    .line 299
    const-wide/16 v2, 0x1388

    .line 300
    .line 301
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 302
    .line 303
    .line 304
    :cond_e
    return-void

    .line 305
    :cond_f
    invoke-static {v2}, Landroid/os/Process;->getRss(I)[J

    .line 306
    .line 307
    .line 308
    move-result-object v23

    .line 309
    const/16 v25, 0x0

    .line 310
    .line 311
    aget-wide v26, v23, v25

    .line 312
    .line 313
    const-wide/16 v18, 0x0

    .line 314
    .line 315
    cmp-long v25, v26, v18

    .line 316
    .line 317
    const-string v0, "Quota PPN skip: reclaim throttle quick "

    .line 318
    .line 319
    if-nez v25, :cond_10

    .line 320
    .line 321
    const/4 v1, 0x1

    .line 322
    aget-wide v28, v23, v1

    .line 323
    .line 324
    cmp-long v1, v28, v18

    .line 325
    .line 326
    if-nez v1, :cond_10

    .line 327
    .line 328
    const/4 v1, 0x2

    .line 329
    aget-wide v28, v23, v1

    .line 330
    .line 331
    cmp-long v1, v28, v18

    .line 332
    .line 333
    if-nez v1, :cond_10

    .line 334
    .line 335
    const/4 v1, 0x3

    .line 336
    aget-wide v28, v23, v1

    .line 337
    .line 338
    cmp-long v20, v28, v18

    .line 339
    .line 340
    if-nez v20, :cond_11

    .line 341
    .line 342
    move-object/from16 v20, v0

    .line 343
    .line 344
    move-wide/from16 v30, v3

    .line 345
    .line 346
    move-wide/from16 v34, v10

    .line 347
    .line 348
    move-wide/from16 v25, v14

    .line 349
    .line 350
    const-wide/16 v0, 0x0

    .line 351
    .line 352
    const/4 v4, 0x0

    .line 353
    const/4 v5, 0x1

    .line 354
    move-object/from16 v3, p0

    .line 355
    .line 356
    goto/16 :goto_13

    .line 357
    .line 358
    :cond_10
    const/4 v1, 0x3

    .line 359
    :cond_11
    if-ne v6, v1, :cond_12

    .line 360
    .line 361
    const/16 v20, 0x2

    .line 362
    .line 363
    aget-wide v28, v23, v20

    .line 364
    .line 365
    aget-wide v30, v23, v1

    .line 366
    .line 367
    add-long v28, v28, v30

    .line 368
    .line 369
    :goto_7
    move-wide/from16 v30, v3

    .line 370
    .line 371
    move-wide/from16 v3, v28

    .line 372
    .line 373
    goto :goto_8

    .line 374
    :cond_12
    const/4 v1, 0x1

    .line 375
    const/16 v20, 0x2

    .line 376
    .line 377
    if-ne v6, v1, :cond_13

    .line 378
    .line 379
    aget-wide v28, v23, v20

    .line 380
    .line 381
    goto :goto_7

    .line 382
    :cond_13
    const/4 v1, 0x3

    .line 383
    aget-wide v28, v23, v1

    .line 384
    .line 385
    goto :goto_7

    .line 386
    :goto_8
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 387
    .line 388
    .line 389
    move-result v1

    .line 390
    if-eqz v1, :cond_15

    .line 391
    .line 392
    const-wide/16 v25, 0x1388

    .line 393
    .line 394
    cmp-long v1, v3, v25

    .line 395
    .line 396
    if-gtz v1, :cond_14

    .line 397
    .line 398
    invoke-static {v2, v0, v3, v4, v8}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    move-object/from16 v20, v0

    .line 403
    .line 404
    const-string v0, " 5000"

    .line 405
    .line 406
    invoke-static {v1, v0, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    goto :goto_9

    .line 410
    :cond_14
    move-object/from16 v20, v0

    .line 411
    .line 412
    goto :goto_9

    .line 413
    :cond_15
    move-object/from16 v20, v0

    .line 414
    .line 415
    const-wide/16 v25, 0x1388

    .line 416
    .line 417
    :goto_9
    cmp-long v0, v3, v25

    .line 418
    .line 419
    if-lez v0, :cond_23

    .line 420
    .line 421
    iget-object v0, v9, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mNandswapMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 422
    .line 423
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    check-cast v0, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 428
    .line 429
    if-nez v0, :cond_17

    .line 430
    .line 431
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_16

    .line 436
    .line 437
    const-string v0, "Quota PPN skip: no nandswap record"

    .line 438
    .line 439
    invoke-static {v2, v0, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    :cond_16
    move-object/from16 v3, p0

    .line 443
    .line 444
    move-wide/from16 v34, v10

    .line 445
    .line 446
    move-wide/from16 v25, v14

    .line 447
    .line 448
    const-wide/16 v0, 0x0

    .line 449
    .line 450
    const/4 v4, 0x0

    .line 451
    const/4 v5, 0x1

    .line 452
    goto/16 :goto_14

    .line 453
    .line 454
    :cond_17
    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    int-to-long v3, v6

    .line 459
    const/16 v20, 0x0

    .line 460
    .line 461
    aget-wide v27, v1, v20

    .line 462
    .line 463
    const/16 v17, 0x1

    .line 464
    .line 465
    aget-wide v32, v1, v17

    .line 466
    .line 467
    const-wide/16 v18, 0x0

    .line 468
    .line 469
    cmp-long v20, v27, v18

    .line 470
    .line 471
    move-wide/from16 v34, v10

    .line 472
    .line 473
    const-string v10, "Quota PPN skip: reclaim throttle slow "

    .line 474
    .line 475
    if-nez v20, :cond_18

    .line 476
    .line 477
    cmp-long v11, v32, v18

    .line 478
    .line 479
    if-nez v11, :cond_18

    .line 480
    .line 481
    move-object/from16 v3, p0

    .line 482
    .line 483
    move-wide/from16 v25, v14

    .line 484
    .line 485
    :goto_a
    const-wide/16 v0, 0x0

    .line 486
    .line 487
    const/4 v4, 0x0

    .line 488
    const/4 v5, 0x1

    .line 489
    goto/16 :goto_12

    .line 490
    .line 491
    :cond_18
    const-wide/16 v36, 0x3

    .line 492
    .line 493
    cmp-long v11, v3, v36

    .line 494
    .line 495
    if-nez v11, :cond_19

    .line 496
    .line 497
    add-long v27, v27, v32

    .line 498
    .line 499
    :goto_b
    move-wide/from16 v3, v25

    .line 500
    .line 501
    move-wide/from16 v25, v14

    .line 502
    .line 503
    move-wide/from16 v14, v27

    .line 504
    .line 505
    goto :goto_c

    .line 506
    :cond_19
    const-wide/16 v36, 0x1

    .line 507
    .line 508
    cmp-long v3, v3, v36

    .line 509
    .line 510
    if-nez v3, :cond_1a

    .line 511
    .line 512
    goto :goto_b

    .line 513
    :cond_1a
    const-wide/16 v3, 0x672

    .line 514
    .line 515
    move-wide/from16 v25, v14

    .line 516
    .line 517
    move-wide/from16 v14, v32

    .line 518
    .line 519
    :goto_c
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 520
    .line 521
    .line 522
    move-result v11

    .line 523
    if-eqz v11, :cond_1b

    .line 524
    .line 525
    cmp-long v11, v14, v3

    .line 526
    .line 527
    if-gtz v11, :cond_1b

    .line 528
    .line 529
    invoke-static {v2, v10, v14, v15, v8}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    move-result-object v11

    .line 533
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    invoke-virtual {v11, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    :cond_1b
    cmp-long v3, v14, v3

    .line 547
    .line 548
    if-lez v3, :cond_22

    .line 549
    .line 550
    move-object/from16 v3, p0

    .line 551
    .line 552
    move/from16 v11, v22

    .line 553
    .line 554
    const/4 v4, 0x0

    .line 555
    invoke-virtual {v3, v0, v11, v6, v4}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->doNandswapApp(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;IIZ)J

    .line 556
    .line 557
    .line 558
    move-result-wide v14

    .line 559
    const-wide/16 v18, 0x0

    .line 560
    .line 561
    cmp-long v10, v14, v18

    .line 562
    .line 563
    if-lez v10, :cond_20

    .line 564
    .line 565
    add-int/lit8 v6, v13, 0x1

    .line 566
    .line 567
    sget v10, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    .line 568
    .line 569
    const/4 v11, 0x1

    .line 570
    add-int/2addr v10, v11

    .line 571
    sput v10, Lcom/android/server/chimera/ppn/PerProcessNandswap;->mAlwaysRunningQuotaPPNCnt:I

    .line 572
    .line 573
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    .line 575
    .line 576
    const/4 v5, 0x2

    .line 577
    invoke-virtual {v9, v0, v5}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->requestChangePPRState(Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;I)V

    .line 578
    .line 579
    .line 580
    invoke-static {v2}, Lcom/android/server/chimera/ChimeraCommonUtil;->getAnonSizeAndZramSize(I)[J

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    aget-wide v9, v1, v4

    .line 585
    .line 586
    aget-wide v13, v1, v11

    .line 587
    .line 588
    add-long/2addr v9, v13

    .line 589
    aget-wide v13, v0, v4

    .line 590
    .line 591
    sub-long/2addr v9, v13

    .line 592
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 593
    .line 594
    .line 595
    move-result v5

    .line 596
    if-eqz v5, :cond_1c

    .line 597
    .line 598
    const-string v5, "Quota PPN reclaimed: "

    .line 599
    .line 600
    invoke-static {v2, v5, v9, v10, v8}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    aget-wide v13, v1, v4

    .line 608
    .line 609
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    const/4 v5, 0x1

    .line 616
    aget-wide v13, v1, v5

    .line 617
    .line 618
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    aget-wide v13, v0, v4

    .line 625
    .line 626
    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    aget-wide v0, v0, v5

    .line 633
    .line 634
    invoke-static {v2, v0, v1, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 635
    .line 636
    .line 637
    :goto_d
    const-wide/16 v0, 0x0

    .line 638
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

    .line 643
    .line 644
    if-lez v2, :cond_1f

    .line 645
    .line 646
    add-long v8, v25, v9

    .line 647
    .line 648
    cmp-long v2, v8, v34

    .line 649
    .line 650
    if-ltz v2, :cond_1e

    .line 651
    .line 652
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 653
    .line 654
    .line 655
    move-result v0

    .line 656
    if-eqz v0, :cond_1d

    .line 657
    .line 658
    const-string v0, "Quota PPN complete: nandswap "

    .line 659
    .line 660
    move-object/from16 v2, v21

    .line 661
    .line 662
    invoke-static {v6, v0, v8, v9, v2}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    move-object/from16 v10, v16

    .line 667
    .line 668
    invoke-static {v0, v10, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    :cond_1d
    const/4 v0, 0x1

    .line 672
    const-string/jumbo v1, "complete"

    .line 673
    .line 674
    .line 675
    move-wide/from16 v2, v30

    .line 676
    .line 677
    move v4, v6

    .line 678
    move-wide v5, v8

    .line 679
    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    .line 680
    .line 681
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

    .line 686
    .line 687
    :goto_f
    move v13, v6

    .line 688
    goto :goto_10

    .line 689
    :cond_20
    const-wide/16 v0, 0x0

    .line 690
    .line 691
    const/4 v5, 0x1

    .line 692
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 693
    .line 694
    .line 695
    move-result v8

    .line 696
    if-eqz v8, :cond_21

    .line 697
    .line 698
    const-string v8, "Quota PPN failed: ret "

    .line 699
    .line 700
    const-string/jumbo v9, "pid "

    .line 701
    .line 702
    .line 703
    invoke-static {v2, v8, v14, v15, v9}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    const-string v8, " nandswapAction "

    .line 708
    .line 709
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .line 711
    .line 712
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    const-string v8, " nandswapType "

    .line 716
    .line 717
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 721
    .line 722
    .line 723
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 724
    .line 725
    .line 726
    move-result-object v2

    .line 727
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    .line 729
    .line 730
    :cond_21
    move-wide/from16 v14, v25

    .line 731
    .line 732
    :goto_10
    move-object/from16 v2, p2

    .line 733
    .line 734
    move-wide v8, v0

    .line 735
    move-object v0, v3

    .line 736
    move v6, v5

    .line 737
    move/from16 v1, v24

    .line 738
    .line 739
    :goto_11
    move-wide/from16 v3, v30

    .line 740
    .line 741
    move-wide/from16 v10, v34

    .line 742
    .line 743
    goto/16 :goto_1

    .line 744
    .line 745
    :cond_22
    move-object/from16 v3, p0

    .line 746
    .line 747
    goto/16 :goto_a

    .line 748
    .line 749
    :goto_12
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 750
    .line 751
    .line 752
    move-result v6

    .line 753
    if-eqz v6, :cond_24

    .line 754
    .line 755
    invoke-static {v2, v10, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    goto :goto_14

    .line 759
    :cond_23
    move-object/from16 v3, p0

    .line 760
    .line 761
    move-wide/from16 v34, v10

    .line 762
    .line 763
    move-wide/from16 v25, v14

    .line 764
    .line 765
    const-wide/16 v0, 0x0

    .line 766
    .line 767
    const/4 v4, 0x0

    .line 768
    const/4 v5, 0x1

    .line 769
    :goto_13
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 770
    .line 771
    .line 772
    move-result v6

    .line 773
    if-eqz v6, :cond_24

    .line 774
    .line 775
    move-object/from16 v6, v20

    .line 776
    .line 777
    invoke-static {v2, v6, v12}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 778
    .line 779
    .line 780
    :cond_24
    :goto_14
    move-object/from16 v2, p2

    .line 781
    .line 782
    move-wide v8, v0

    .line 783
    move-object v0, v3

    .line 784
    move v6, v5

    .line 785
    move/from16 v1, v24

    .line 786
    .line 787
    move-wide/from16 v14, v25

    .line 788
    .line 789
    goto :goto_11

    .line 790
    :cond_25
    move-wide/from16 v30, v3

    .line 791
    .line 792
    move-object v10, v6

    .line 793
    move-object v2, v8

    .line 794
    move-wide/from16 v25, v14

    .line 795
    .line 796
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    if-eqz v0, :cond_26

    .line 801
    .line 802
    const-string v0, "Quota PPN reclaim not enough: nandswap "

    .line 803
    .line 804
    move-wide/from16 v14, v25

    .line 805
    .line 806
    invoke-static {v13, v0, v14, v15, v2}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    move-result-object v0

    .line 810
    invoke-static {v0, v10, v12}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    .line 812
    .line 813
    goto :goto_15

    .line 814
    :cond_26
    move-wide/from16 v14, v25

    .line 815
    .line 816
    :goto_15
    const/4 v0, 0x0

    .line 817
    const-string/jumbo v1, "not enough"

    .line 818
    .line 819
    .line 820
    move-wide/from16 v2, v30

    .line 821
    .line 822
    move v4, v13

    .line 823
    move-wide v5, v14

    .line 824
    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    .line 825
    .line 826
    .line 827
    return-void

    .line 828
    :cond_27
    move-wide/from16 v30, v3

    .line 829
    .line 830
    const/4 v0, -0x1

    .line 831
    const-string v1, "Target < 0"

    .line 832
    .line 833
    const/4 v4, 0x0

    .line 834
    const-wide/16 v5, 0x0

    .line 835
    .line 836
    move-wide/from16 v2, v30

    .line 837
    .line 838
    invoke-static/range {v0 .. v7}, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapHandler;->quitNandSwapAlwaysRunningProcessWithWriteEventLog(ILjava/lang/String;JIJLjava/util/List;)V

    .line 839
    .line 840
    .line 841
    return-void
.end method
