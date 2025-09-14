.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Z

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;JJZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    iput-wide p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$1:J

    .line 8
    iput-wide p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$2:J

    .line 10
    iput-boolean p6, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$3:Z

    .line 12
    iput-boolean p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$4:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    iget-wide v1, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$1:J

    .line 7
    iget-wide v12, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$2:J

    .line 9
    iget-boolean v14, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$3:Z

    .line 11
    iget-boolean v10, v0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$4:Z

    .line 13
    move-object/from16 v15, p1

    .line 15
    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 17
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 22
    if-nez v0, :cond_0

    .line 24
    goto/16 :goto_a

    .line 26
    :cond_0
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 28
    iget v3, v0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 30
    const/16 v4, 0xe

    .line 32
    if-lt v3, v4, :cond_a

    .line 34
    iget-wide v5, v0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    .line 36
    sub-long v16, v1, v5

    .line 38
    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 40
    iget-wide v1, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 42
    cmp-long v5, v16, v1

    .line 44
    if-gtz v5, :cond_1

    .line 46
    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    .line 48
    :goto_0
    move/from16 v18, v0

    .line 50
    goto :goto_2

    .line 51
    :cond_1
    const-wide/16 v5, 0x2

    .line 53
    mul-long/2addr v5, v1

    .line 54
    cmp-long v5, v16, v5

    .line 56
    if-lez v5, :cond_4

    .line 58
    if-gt v3, v4, :cond_2

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const-wide/16 v3, 0x3

    .line 63
    mul-long/2addr v1, v3

    .line 64
    cmp-long v1, v16, v1

    .line 66
    if-gtz v1, :cond_3

    .line 68
    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    .line 73
    goto :goto_0

    .line 74
    :cond_4
    :goto_1
    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    .line 76
    goto :goto_0

    .line 77
    :goto_2
    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 79
    iget-object v9, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    .line 81
    monitor-enter v9

    .line 82
    :try_start_0
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 84
    iget-object v0, v8, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 86
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 89
    move-result-wide v6

    .line 90
    iget-object v0, v8, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 95
    move-result-wide v0

    .line 96
    const-wide/16 v19, 0x0

    .line 98
    cmp-long v2, v0, v19

    .line 100
    if-lez v2, :cond_6

    .line 102
    sub-long v21, v6, v0

    .line 104
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 106
    invoke-virtual {v15}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    .line 109
    move-object v0, v11

    .line 110
    move-wide v1, v12

    .line 111
    move v3, v14

    .line 112
    move-object/from16 v23, v4

    .line 114
    move-wide/from16 v4, v21

    .line 116
    move-wide/from16 v24, v6

    .line 118
    move-object/from16 v6, v23

    .line 120
    move/from16 v7, v18

    .line 122
    move-object/from16 p0, v8

    .line 124
    move-object v8, v15

    .line 125
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLPr(JZJLjava/lang/String;ILcom/android/server/am/ProcessRecord;)Z

    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_5

    .line 131
    iget-object v7, v11, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 133
    new-instance v8, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 135
    move-object v0, v8

    .line 136
    move-object v1, v11

    .line 137
    move-object v2, v15

    .line 138
    move-wide/from16 v3, v21

    .line 140
    move-wide v5, v12

    .line 141
    move-wide/from16 v22, v12

    .line 143
    move/from16 v21, v14

    .line 145
    move-object v14, v7

    .line 146
    move-object v12, v8

    .line 147
    move-wide/from16 v7, v16

    .line 149
    move-object v13, v9

    .line 150
    move/from16 v9, v18

    .line 152
    :try_start_1
    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;JJJI)V

    .line 155
    invoke-virtual {v14, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessProfileRecord;->reportExcessiveCpu()V

    .line 161
    :goto_3
    move-object/from16 v0, p0

    .line 163
    goto :goto_4

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    goto/16 :goto_9

    .line 167
    :catchall_1
    move-exception v0

    .line 168
    move-object v13, v9

    .line 169
    goto/16 :goto_9

    .line 171
    :cond_5
    move-wide/from16 v22, v12

    .line 173
    move/from16 v21, v14

    .line 175
    move-object v13, v9

    .line 176
    goto :goto_3

    .line 177
    :cond_6
    move-wide/from16 v24, v6

    .line 179
    move-wide/from16 v22, v12

    .line 181
    move/from16 v21, v14

    .line 183
    move-object v13, v9

    .line 184
    move-object v0, v8

    .line 185
    :goto_4
    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 187
    move-wide/from16 v1, v24

    .line 189
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 192
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    if-eqz v10, :cond_a

    .line 195
    iget-object v0, v11, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    .line 197
    iget-object v12, v0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    .line 199
    monitor-enter v12

    .line 200
    :try_start_2
    iget-object v1, v0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 202
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 204
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 207
    move-result v1

    .line 208
    if-ltz v1, :cond_9

    .line 210
    iget-object v0, v0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 212
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 215
    move-result-object v0

    .line 216
    move-object v13, v0

    .line 217
    check-cast v13, Landroid/util/SparseArray;

    .line 219
    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    .line 222
    move-result v0

    .line 223
    add-int/lit8 v0, v0, -0x1

    .line 225
    move v14, v0

    .line 226
    :goto_5
    if-ltz v14, :cond_9

    .line 228
    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 231
    move-result-object v0

    .line 232
    move-object v9, v0

    .line 233
    check-cast v9, Lcom/android/server/am/PhantomProcessRecord;

    .line 235
    iget-wide v0, v9, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    .line 237
    cmp-long v2, v0, v19

    .line 239
    if-lez v2, :cond_7

    .line 241
    iget-wide v2, v9, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    .line 243
    sub-long v24, v2, v0

    .line 245
    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 247
    invoke-virtual {v9}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    .line 250
    move-object v0, v11

    .line 251
    move-wide/from16 v1, v22

    .line 253
    move/from16 v3, v21

    .line 255
    move-wide/from16 v4, v24

    .line 257
    move/from16 v7, v18

    .line 259
    move-object v8, v15

    .line 260
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLPr(JZJLjava/lang/String;ILcom/android/server/am/ProcessRecord;)Z

    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_7

    .line 266
    iget-object v10, v11, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 268
    new-instance v8, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;

    .line 270
    move-object v0, v8

    .line 271
    move-object v1, v11

    .line 272
    move-object v2, v15

    .line 273
    move-object v3, v9

    .line 274
    move-wide/from16 v4, v24

    .line 276
    move-wide/from16 v6, v22

    .line 278
    move-object/from16 v24, v11

    .line 280
    move-object v11, v8

    .line 281
    move-wide/from16 v8, v16

    .line 283
    move-object/from16 p0, v13

    .line 285
    move-object v13, v10

    .line 286
    move/from16 v10, v18

    .line 288
    invoke-direct/range {v0 .. v10}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda41;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;JJJI)V

    .line 291
    invoke-virtual {v13, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 296
    goto :goto_6

    .line 297
    :cond_7
    move-object/from16 v24, v11

    .line 299
    move-object/from16 p0, v13

    .line 301
    iget-wide v0, v9, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    .line 303
    iput-wide v0, v9, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    .line 305
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 307
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 310
    move-result v0

    .line 311
    if-nez v0, :cond_8

    .line 313
    goto :goto_7

    .line 314
    :cond_8
    add-int/lit8 v14, v14, -0x1

    .line 316
    move-object/from16 v13, p0

    .line 318
    move-object/from16 v11, v24

    .line 320
    goto :goto_5

    .line 321
    :catchall_2
    move-exception v0

    .line 322
    goto :goto_8

    .line 323
    :cond_9
    :goto_7
    monitor-exit v12

    .line 324
    goto :goto_a

    .line 325
    :goto_8
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 326
    throw v0

    .line 327
    :goto_9
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    throw v0

    .line 329
    :cond_a
    :goto_a
    return-void
.end method
