.class public final synthetic Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/ppn/QuickSwap;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/ppn/QuickSwap;ILcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 6
    iput p2, p0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 10
    iput-wide p4, p0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;->f$3:J

    .line 12
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;

    .line 5
    iget-wide v2, v0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;->f$3:J

    .line 7
    sget-object v4, Lcom/android/server/chimera/ppn/QuickSwap;->QUICKSWAP_BLOCKLIST:Ljava/util/List;

    .line 9
    iget-object v4, v0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/ppn/QuickSwap;

    .line 11
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string v5, "QuickSwap PO end for "

    .line 16
    const-string v6, "QuickSwap PO start for "

    .line 18
    const-string v7, "QuickSwap PO : "

    .line 20
    const-string v8, "QuickSwap skip: app launch (in sub-thread) "

    .line 22
    const/4 v9, 0x0

    .line 23
    const-wide/16 v10, 0x40

    .line 25
    :try_start_0
    iget-object v4, v4, Lcom/android/server/chimera/ppn/QuickSwap;->mPPN:Lcom/android/server/chimera/ppn/PerProcessNandswap;

    .line 27
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    invoke-static {}, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->isInAppLaunch()Z

    .line 33
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget v0, v0, Lcom/android/server/chimera/ppn/QuickSwap$$ExternalSyntheticLambda0;->f$1:I

    .line 36
    const-string v12, "QuickSwap"

    .line 38
    if-eqz v4, :cond_1

    .line 40
    :try_start_1
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_4

    .line 65
    :catch_0
    move-exception v0

    .line 66
    goto/16 :goto_2

    .line 68
    :cond_0
    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 75
    goto/16 :goto_3

    .line 77
    :cond_1
    :try_start_2
    iget-object v4, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->processName:Ljava/lang/String;

    .line 79
    iget v8, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->procState:I

    .line 81
    iget v1, v1, Lcom/android/server/chimera/ppn/PerProcessNandswap$NandswapRecord;->adj:I

    .line 83
    new-instance v13, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v13, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v7

    .line 95
    invoke-static {v10, v11, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 98
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 101
    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    const-string v13, "(pid "

    .line 104
    if-eqz v7, :cond_2

    .line 106
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    const-string v6, ") adj:"

    .line 122
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    const-string v6, " pss:"

    .line 130
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v2

    .line 140
    invoke-static {v12, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 146
    move-result-wide v2

    .line 147
    const/4 v6, 0x1

    .line 148
    invoke-static {v0, v6}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->compactProcessForWriteback(II)J

    .line 151
    move-result-wide v14

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 155
    move-result-wide v16

    .line 156
    sub-long v2, v16, v2

    .line 158
    invoke-static {}, Lcom/android/server/chimera/ppn/PerProcessNandswap;->isDebugEnabled()Z

    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_3

    .line 164
    new-instance v7, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v0, ") ret: "

    .line 180
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    const-string v0, ", adj:"

    .line 188
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v0, ", state:"

    .line 196
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    const-string v0, ", "

    .line 204
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 210
    const-string v0, " ms"

    .line 212
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 226
    goto/16 :goto_1

    .line 228
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    goto/16 :goto_1

    .line 237
    :goto_3
    return-object v0

    .line 238
    :goto_4
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 241
    throw v0
.end method
