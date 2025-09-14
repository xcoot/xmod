.class Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;
.super Lcom/android/server/utils/AlarmQueue;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 2
    .line 3
    iget-wide v6, p1, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    .line 4
    .line 5
    const/4 v5, 0x1

    .line 6
    const-string v3, "*job.flexibility_check*"

    .line 7
    .line 8
    const-string v4, "Flexible Constraint Check"

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p2

    .line 12
    move-object v2, p3

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/android/server/utils/AlarmQueue;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;ZJ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final isForUser(ILjava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/android/server/job/controllers/JobStatus;

    .line 2
    .line 3
    iget p0, p2, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final processExpiredAlarms(Landroid/util/ArraySet;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const/4 v4, 0x0

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-ge v4, v5, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 32
    .line 33
    sget-boolean v6, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    .line 34
    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    const-string v6, "JobScheduler.Flex"

    .line 38
    .line 39
    new-instance v7, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v8, "Alarm fired for "

    .line 45
    .line 46
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 67
    .line 68
    iget-object v6, v6, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 69
    .line 70
    invoke-virtual {v6, v5, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->calculateNumDroppedConstraints(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 74
    .line 75
    .line 76
    move-result v6

    .line 77
    if-lez v6, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0, v5, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 83
    .line 84
    invoke-virtual {v6, v5}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    const/high16 v7, 0x200000

    .line 89
    .line 90
    invoke-virtual {v5, v7, v2, v3, v6}, Lcom/android/server/job/controllers/JobStatus;->setConstraintSatisfied(IJZ)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_3
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 103
    .line 104
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/JobSchedulerService;

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged(Landroid/util/ArraySet;)V

    .line 107
    .line 108
    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 111
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    throw p0
.end method

.method public final scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-wide/from16 v8, p2

    .line 6
    .line 7
    const-string/jumbo v10, "last alarm set: "

    .line 8
    .line 9
    .line 10
    const-string/jumbo v11, "deadline proximity met: "

    .line 11
    .line 12
    .line 13
    const-string/jumbo v12, "scheduleDropNumConstraintsAlarm: "

    .line 14
    .line 15
    .line 16
    const-string v13, "Got invalid latest when scheduling alarm. prefetch="

    .line 17
    .line 18
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 19
    .line 20
    iget-object v14, v1, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v14

    .line 23
    :try_start_0
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 24
    .line 25
    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 30
    .line 31
    move-object/from16 v2, p1

    .line 32
    .line 33
    move-wide/from16 v3, p2

    .line 34
    .line 35
    move-wide v15, v5

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v5

    .line 40
    move-wide v3, v15

    .line 41
    cmp-long v1, v5, v3

    .line 42
    .line 43
    const/4 v15, 0x0

    .line 44
    const/4 v2, 0x1

    .line 45
    if-gtz v1, :cond_1

    .line 46
    .line 47
    const-string v1, "JobScheduler.Flex"

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object v4, v7, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 55
    .line 56
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPrefetch()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v4, " periodic="

    .line 64
    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v4, v7, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v1, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 87
    .line 88
    iget v3, v7, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    iget v4, v7, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 94
    .line 95
    if-eq v3, v4, :cond_0

    .line 96
    .line 97
    iget-object v4, v1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    check-cast v4, Landroid/util/ArraySet;

    .line 108
    .line 109
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    iget v4, v7, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 113
    .line 114
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    iput v3, v7, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 123
    .line 124
    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 125
    .line 126
    .line 127
    :cond_0
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 128
    .line 129
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 130
    .line 131
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    .line 140
    .line 141
    monitor-exit v14

    .line 142
    return-void

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    move-object v6, v14

    .line 145
    goto/16 :goto_1

    .line 146
    .line 147
    :cond_1
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 148
    .line 149
    move v13, v2

    .line 150
    move-object/from16 v2, p1

    .line 151
    .line 152
    move-wide/from16 v16, v3

    .line 153
    .line 154
    move-wide/from16 v18, v5

    .line 155
    .line 156
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/controllers/FlexibilityController;->getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    .line 157
    .line 158
    .line 159
    move-result-wide v1

    .line 160
    sget-boolean v3, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    .line 161
    .line 162
    if-eqz v3, :cond_2

    .line 163
    .line 164
    const-string v4, "JobScheduler.Flex"

    .line 165
    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string v6, " numApplied: "

    .line 179
    .line 180
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget v6, v7, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string v6, " numRequired: "

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v6, " numSatisfied: "

    .line 201
    .line 202
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v6, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 206
    .line 207
    iget v12, v6, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    .line 208
    .line 209
    invoke-virtual {v6, v7}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    and-int/2addr v6, v12

    .line 214
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    .line 215
    .line 216
    .line 217
    move-result v6

    .line 218
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v6, " curTime: "

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v6, " earliest: "

    .line 230
    .line 231
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .line 233
    .line 234
    move-object v6, v14

    .line 235
    move-wide/from16 v13, v16

    .line 236
    .line 237
    :try_start_1
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v13, " latest: "

    .line 241
    .line 242
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    move-wide/from16 v13, v18

    .line 246
    .line 247
    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v12, " nextTime: "

    .line 251
    .line 252
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .line 264
    .line 265
    goto :goto_0

    .line 266
    :catchall_1
    move-exception v0

    .line 267
    goto/16 :goto_1

    .line 268
    .line 269
    :cond_2
    move-object v6, v14

    .line 270
    move-wide/from16 v13, v18

    .line 271
    .line 272
    :goto_0
    sub-long v4, v13, v8

    .line 273
    .line 274
    iget-object v8, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 275
    .line 276
    iget-wide v8, v8, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    .line 277
    .line 278
    cmp-long v4, v4, v8

    .line 279
    .line 280
    if-gez v4, :cond_5

    .line 281
    .line 282
    if-eqz v3, :cond_3

    .line 283
    .line 284
    const-string v1, "JobScheduler.Flex"

    .line 285
    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    :cond_3
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 302
    .line 303
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 304
    .line 305
    iget v2, v7, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 306
    .line 307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 308
    .line 309
    .line 310
    iget v3, v7, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 311
    .line 312
    if-eq v2, v3, :cond_4

    .line 313
    .line 314
    iget-object v3, v1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->mTrackedJobs:Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    check-cast v3, Landroid/util/ArraySet;

    .line 325
    .line 326
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    iget v3, v7, Lcom/android/server/job/controllers/JobStatus;->mNumAppliedFlexibleConstraints:I

    .line 330
    .line 331
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    invoke-static {v15, v2}, Ljava/lang/Math;->max(II)I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    iput v2, v7, Lcom/android/server/job/controllers/JobStatus;->mNumDroppedFlexibleConstraints:I

    .line 340
    .line 341
    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    .line 342
    .line 343
    .line 344
    :cond_4
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 345
    .line 346
    iget-object v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 347
    .line 348
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 352
    .line 353
    iget-object v0, v0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 354
    .line 355
    const/4 v1, 0x1

    .line 356
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    .line 358
    .line 359
    monitor-exit v6

    .line 360
    return-void

    .line 361
    :cond_5
    const-wide v4, 0x7fffffffffffffffL

    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    cmp-long v4, v1, v4

    .line 367
    .line 368
    if-nez v4, :cond_6

    .line 369
    .line 370
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    monitor-exit v6

    .line 374
    return-void

    .line 375
    :cond_6
    sub-long v4, v13, v1

    .line 376
    .line 377
    cmp-long v4, v4, v8

    .line 378
    .line 379
    if-gtz v4, :cond_8

    .line 380
    .line 381
    if-eqz v3, :cond_7

    .line 382
    .line 383
    const-string v1, "JobScheduler.Flex"

    .line 384
    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    :cond_7
    iget-object v1, v0, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    .line 401
    .line 402
    iget-wide v1, v1, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    .line 403
    .line 404
    sub-long v1, v13, v1

    .line 405
    .line 406
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    monitor-exit v6

    .line 410
    return-void

    .line 411
    :cond_8
    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/utils/AlarmQueue;->addAlarm(JLjava/lang/Object;)V

    .line 412
    .line 413
    .line 414
    monitor-exit v6

    .line 415
    return-void

    .line 416
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 417
    throw v0
.end method
