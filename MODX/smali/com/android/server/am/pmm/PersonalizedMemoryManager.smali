.class public final Lcom/android/server/am/pmm/PersonalizedMemoryManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mChangeObserver:Lcom/android/server/am/pmm/PersonalizedMemoryManager$OnDeviceAIChangeObserver;

.field public mContext:Landroid/content/Context;

.field public mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;


# virtual methods
.method public final onMemoryEvent(Landroid/content/Context;Lcom/android/server/am/pmm/PersonalizedMemoryManager$MemoryEventType;)V
    .locals 9

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_0

    .line 10
    goto/16 :goto_6

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/pmm/PersonalizedMemoryManager;->mDmaBufLeakDetector:Lcom/android/server/am/pmm/DmaBufLeakDetector;

    .line 14
    const-string/jumbo p2, "getDmaBufSizeKb()="

    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mContext:Landroid/content/Context;

    .line 20
    if-nez v0, :cond_1

    .line 22
    iput-object p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isListenerAppInstalled(Landroid/content/Context;)Z

    .line 27
    move-result v0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto/16 :goto_7

    .line 34
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsReporting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v0, :cond_2

    .line 38
    monitor-exit p0

    .line 39
    goto/16 :goto_6

    .line 41
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    move-result-wide v0

    .line 45
    iget-boolean v2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsTestMode:Z

    .line 47
    if-eqz v2, :cond_3

    .line 49
    const-string p1, "DmaBufLeakDetector"

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    const-string p2, ", getLargestDmaBufProcess()="

    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getLargestDmaBufProcess()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string p2, ", isCameraRunning()="

    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    .line 83
    move-result p2

    .line 84
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    const-string p2, ", mLeakThreshold="

    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLeakThreshold:F

    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 97
    const-string p2, ", mIsListenerAppInstalled="

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    .line 104
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 111
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    goto/16 :goto_5

    .line 116
    :cond_3
    iget-boolean p2, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mIsListenerAppInstalled:Z

    .line 118
    const/4 v2, 0x1

    .line 119
    const-wide/16 v3, 0x1

    .line 121
    if-eqz p2, :cond_6

    .line 123
    iget-wide v5, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastLeakTime:J

    .line 125
    const-wide/32 v7, 0x927c0

    .line 128
    add-long/2addr v5, v7

    .line 129
    cmp-long p2, v0, v5

    .line 131
    if-lez p2, :cond_9

    .line 133
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    .line 136
    move-result p2

    .line 137
    if-nez p2, :cond_5

    .line 139
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    .line 142
    move-result-wide v5

    .line 143
    long-to-float p2, v5

    .line 144
    invoke-virtual {p0, p2}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->hasLeak(F)Z

    .line 147
    move-result p2

    .line 148
    if-nez p2, :cond_4

    .line 150
    goto :goto_2

    .line 151
    :cond_4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 154
    move-result-object p2

    .line 155
    new-instance v5, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;

    .line 157
    invoke-direct {v5, p0, v0, v1, p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;JLandroid/content/Context;)V

    .line 160
    invoke-interface {p2, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 163
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :try_start_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 166
    invoke-interface {p1, v3, v4, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    goto :goto_1

    .line 170
    :catch_0
    :try_start_3
    invoke-interface {p1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 173
    :goto_1
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    goto :goto_5

    .line 177
    :cond_5
    :goto_2
    monitor-exit p0

    .line 178
    goto :goto_6

    .line 179
    :cond_6
    :try_start_4
    iget-wide p1, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastCheckTime:J

    .line 181
    const-wide/32 v5, 0xea60

    .line 184
    add-long/2addr p1, v5

    .line 185
    cmp-long p1, v0, p1

    .line 187
    if-lez p1, :cond_9

    .line 189
    iput-wide v0, p0, Lcom/android/server/am/pmm/DmaBufLeakDetector;->mLastCheckTime:J

    .line 191
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->isCameraRunning()Z

    .line 194
    move-result p1

    .line 195
    if-nez p1, :cond_8

    .line 197
    invoke-static {}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->getDmaBufSizeKb()J

    .line 200
    move-result-wide p1

    .line 201
    long-to-float p1, p1

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/am/pmm/DmaBufLeakDetector;->hasLeak(F)Z

    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_7

    .line 208
    goto :goto_4

    .line 209
    :cond_7
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 212
    move-result-object p1

    .line 213
    new-instance p2, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;

    .line 215
    invoke-direct {p2, p0}, Lcom/android/server/am/pmm/DmaBufLeakDetector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/pmm/DmaBufLeakDetector;)V

    .line 218
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 221
    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    :try_start_5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 224
    invoke-interface {p2, v3, v4, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 227
    goto :goto_3

    .line 228
    :catch_1
    :try_start_6
    invoke-interface {p2, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 231
    :goto_3
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    goto :goto_5

    .line 235
    :cond_8
    :goto_4
    monitor-exit p0

    .line 236
    goto :goto_6

    .line 237
    :cond_9
    :goto_5
    monitor-exit p0

    .line 238
    :goto_6
    return-void

    .line 239
    :goto_7
    monitor-exit p0

    .line 240
    throw p1
.end method
