.class public final Lcom/android/server/job/controllers/FlexibilityController$FcHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 3
    const/high16 v0, 0x200000

    .line 5
    if-eqz p1, :cond_7

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p1, v1, :cond_2

    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_0

    .line 13
    goto/16 :goto_9

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 17
    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter p1

    .line 20
    :try_start_0
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 28
    move-result-wide v0

    .line 29
    new-instance v2, Landroid/util/ArraySet;

    .line 31
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 34
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 36
    iget-object v3, v3, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 38
    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 40
    new-instance v4, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda0;

    .line 42
    invoke-direct {v4, p0}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/FlexibilityController$FcHandler;)V

    .line 45
    new-instance v5, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;

    .line 47
    invoke-direct {v5, p0, v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/FlexibilityController$FcHandler;JLandroid/util/ArraySet;)V

    .line 50
    invoke-virtual {v3, v4, v5}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 53
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 55
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    .line 57
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 60
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 63
    move-result v0

    .line 64
    if-lez v0, :cond_1

    .line 66
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 68
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 70
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    monitor-exit p1

    .line 77
    goto/16 :goto_9

    .line 79
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 83
    iget-object p1, p1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 85
    monitor-enter p1

    .line 86
    :try_start_1
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 94
    move-result-wide v2

    .line 95
    new-instance v4, Landroid/util/ArraySet;

    .line 97
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 100
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 102
    iget-object v5, v5, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 104
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    .line 107
    move-result v5

    .line 108
    sub-int/2addr v5, v1

    .line 109
    :goto_2
    if-ltz v5, :cond_5

    .line 111
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 113
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 115
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 121
    sget-boolean v6, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    .line 123
    if-eqz v6, :cond_3

    .line 125
    const-string v6, "JobScheduler.Flex"

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const-string v8, "Checking on "

    .line 134
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 140
    move-result-object v8

    .line 141
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v7

    .line 148
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    goto :goto_3

    .line 152
    :catchall_1
    move-exception p0

    .line 153
    goto :goto_4

    .line 154
    :cond_3
    :goto_3
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 156
    invoke-virtual {v6, v1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 159
    move-result v6

    .line 160
    invoke-virtual {v1, v0, v2, v3, v6}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 163
    move-result v6

    .line 164
    if-eqz v6, :cond_4

    .line 166
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_4
    add-int/lit8 v5, v5, -0x1

    .line 171
    goto :goto_2

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 174
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 176
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 179
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 182
    move-result v0

    .line 183
    if-lez v0, :cond_6

    .line 185
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 187
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 189
    invoke-virtual {p0, v4}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 192
    :cond_6
    monitor-exit p1

    .line 193
    goto/16 :goto_9

    .line 195
    :goto_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    throw p0

    .line 197
    :cond_7
    const/4 p1, 0x0

    .line 198
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 203
    iget-object v1, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 205
    monitor-enter v1

    .line 206
    :try_start_2
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 208
    iget-object v2, v2, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 210
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 213
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 215
    iget-object v2, v2, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    .line 217
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 220
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 222
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 228
    move-result-wide v2

    .line 229
    new-instance v4, Landroid/util/ArraySet;

    .line 231
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 234
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 236
    iget v5, v5, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    .line 238
    and-int/lit8 v5, v5, 0x7

    .line 240
    invoke-static {v5}, Ljava/lang/Integer;->bitCount(I)I

    .line 243
    move-result v5

    .line 244
    move v6, p1

    .line 245
    :goto_5
    if-gt v6, v5, :cond_b

    .line 247
    iget-object v7, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 249
    iget-object v7, v7, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 251
    iget-object v8, v7, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 253
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 256
    move-result v8

    .line 257
    if-le v6, v8, :cond_8

    .line 259
    const-string v7, "JobScheduler.Flex"

    .line 261
    const-string v8, "Asked for a larger number of constraints than exists."

    .line 263
    invoke-static {v7, v8}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v7, 0x0

    .line 267
    goto :goto_6

    .line 268
    :cond_8
    iget-object v7, v7, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 270
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 273
    move-result-object v7

    .line 274
    check-cast v7, Landroid/util/ArraySet;

    .line 276
    :goto_6
    if-eqz v7, :cond_a

    .line 278
    move v8, p1

    .line 279
    :goto_7
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 282
    move-result v9

    .line 283
    if-ge v8, v9, :cond_a

    .line 285
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 288
    move-result-object v9

    .line 289
    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 291
    iget-object v10, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 293
    invoke-virtual {v10, v9}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 296
    move-result v10

    .line 297
    invoke-virtual {v9, v0, v2, v3, v10}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 300
    move-result v10

    .line 301
    if-eqz v10, :cond_9

    .line 303
    invoke-virtual {v4, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 306
    goto :goto_8

    .line 307
    :catchall_2
    move-exception p0

    .line 308
    goto :goto_a

    .line 309
    :cond_9
    :goto_8
    add-int/lit8 v8, v8, 0x1

    .line 311
    goto :goto_7

    .line 312
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 314
    goto :goto_5

    .line 315
    :cond_b
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    .line 318
    move-result p1

    .line 319
    if-lez p1, :cond_c

    .line 321
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 323
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 325
    invoke-virtual {p0, v4}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 328
    :cond_c
    monitor-exit v1

    .line 329
    :goto_9
    return-void

    .line 330
    :goto_a
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 331
    throw p0
.end method
