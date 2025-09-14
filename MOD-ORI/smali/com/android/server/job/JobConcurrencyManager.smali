.class public final Lcom/android/server/job/JobConcurrencyManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field public static final CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

.field public static final DEBUG:Z

.field public static final DEFAULT_CONCURRENCY_LIMIT:I

.field static final DEFAULT_MAX_WAIT_EJ_MS:J = 0x493e0L

.field static final DEFAULT_MAX_WAIT_REGULAR_MS:J = 0x1b7740L

.field static final DEFAULT_MAX_WAIT_UI_MS:J = 0x493e0L

.field public static final DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

.field static final KEY_ENABLE_MAX_WAIT_TIME_BYPASS:Ljava/lang/String; = "concurrency_enable_max_wait_time_bypass"

.field static final KEY_MAX_WAIT_UI_MS:Ljava/lang/String; = "concurrency_max_wait_ui_ms"

.field static final KEY_PKG_CONCURRENCY_LIMIT_EJ:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_ej"

.field static final KEY_PKG_CONCURRENCY_LIMIT_REGULAR:Ljava/lang/String; = "concurrency_pkg_concurrency_limit_regular"

.field static final MAX_CONCURRENCY_LIMIT:I = 0x40

.field static final NUM_WORK_TYPES:I = 0x7

.field public static final sConcurrencyHistogramLogger:Lcom/android/modules/expresslog/Histogram;

.field public static final sDeterminationComparator:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;


# instance fields
.field public final mActivePkgStats:Landroid/util/SparseArrayMap;

.field public final mActiveServices:Ljava/util/List;

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public final mContextAssignmentPool:Landroid/util/Pools$Pool;

.field public mCurrentInteractiveState:Z

.field public mEffectiveInteractiveState:Z

.field mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

.field public final mHandler:Landroid/os/Handler;

.field public final mIdleContexts:Landroid/util/ArraySet;

.field public final mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

.field public mLastMemoryTrimLevel:I

.field public mLastScreenOffRealtime:J

.field public mLastScreenOnRealtime:J

.field public final mLock:Ljava/lang/Object;

.field public mMaxWaitEjMs:J

.field public mMaxWaitRegularMs:J

.field public mMaxWaitTimeBypassEnabled:Z

.field public mMaxWaitUIMs:J

.field public mNextSystemStateRefreshTime:J

.field public final mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

.field public mNumDroppedContexts:I

.field public final mPackageStatsStagingCountClearer:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

.field public mPkgConcurrencyLimitEj:I

.field public mPkgConcurrencyLimitRegular:I

.field public final mPkgStatsPool:Landroid/util/Pools$Pool;

.field public mPowerManager:Landroid/os/PowerManager;

.field public final mRampUpForScreenOff:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

.field public final mReceiver:Lcom/android/server/job/JobConcurrencyManager$1;

.field public final mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

.field public final mRecycledChanged:Landroid/util/ArraySet;

.field public final mRecycledIdle:Landroid/util/ArraySet;

.field public final mRecycledPreferredUidOnly:Ljava/util/ArrayList;

.field public final mRecycledPrivilegedState:Landroid/util/SparseIntArray;

.field public final mRecycledStoppable:Ljava/util/ArrayList;

.field public final mRunningJobs:Landroid/util/ArraySet;

.field public mScreenOffAdjustmentDelayMs:J

.field public final mService:Lcom/android/server/job/JobSchedulerService;

.field mShouldRestrictBgUser:Z

.field public final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field public mSteadyStateConcurrencyLimit:I

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

.field public mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;


# direct methods
.method public static -$$Nest$mstopOvertimeJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 3
    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    const/4 v2, 0x4

    .line 33
    const/4 v3, 0x3

    .line 34
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 34

    .line 1
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 2
    .line 3
    sput-boolean v0, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 4
    .line 5
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/16 v3, 0x20

    .line 16
    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const/16 v5, 0x10

    .line 22
    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    sput v1, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    sget-object v7, Landroid/util/DataUnit;->GIGABYTES:Landroid/util/DataUnit;

    .line 42
    .line 43
    const-wide/16 v8, 0x6

    .line 44
    .line 45
    invoke-virtual {v7, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v8

    .line 49
    cmp-long v8, v0, v8

    .line 50
    .line 51
    if-gtz v8, :cond_1

    .line 52
    .line 53
    sput v5, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-wide/16 v8, 0x8

    .line 57
    .line 58
    invoke-virtual {v7, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    cmp-long v5, v0, v8

    .line 63
    .line 64
    if-gtz v5, :cond_2

    .line 65
    .line 66
    const/16 v0, 0x14

    .line 67
    .line 68
    sput v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-wide/16 v8, 0xc

    .line 72
    .line 73
    invoke-virtual {v7, v8, v9}, Landroid/util/DataUnit;->toBytes(J)J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    cmp-long v0, v0, v7

    .line 78
    .line 79
    if-gtz v0, :cond_3

    .line 80
    .line 81
    sput v3, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    const/16 v0, 0x28

    .line 85
    .line 86
    sput v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 87
    .line 88
    :goto_0
    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 89
    .line 90
    div-int/lit8 v1, v0, 0x2

    .line 91
    .line 92
    sput v1, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

    .line 93
    .line 94
    new-instance v3, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 95
    .line 96
    new-instance v5, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 97
    .line 98
    mul-int/lit8 v7, v0, 0x3

    .line 99
    .line 100
    const/4 v13, 0x4

    .line 101
    div-int/lit8 v10, v7, 0x4

    .line 102
    .line 103
    const/4 v14, 0x1

    .line 104
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    .line 106
    .line 107
    move-result-object v7

    .line 108
    const v15, 0x3ecccccd    # 0.4f

    .line 109
    .line 110
    .line 111
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 116
    .line 117
    .line 118
    move-result-object v16

    .line 119
    const/16 v22, 0x2

    .line 120
    .line 121
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    const v23, 0x3e4ccccd    # 0.2f

    .line 126
    .line 127
    .line 128
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 133
    .line 134
    .line 135
    move-result-object v17

    .line 136
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    const v24, 0x3dcccccd    # 0.1f

    .line 141
    .line 142
    .line 143
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 148
    .line 149
    .line 150
    move-result-object v18

    .line 151
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 156
    .line 157
    .line 158
    move-result-object v19

    .line 159
    const v25, 0x3d4ccccd    # 0.05f

    .line 160
    .line 161
    .line 162
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v20

    .line 170
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 175
    .line 176
    .line 177
    move-result-object v21

    .line 178
    invoke-static/range {v16 .. v21}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 179
    .line 180
    .line 181
    move-result-object v11

    .line 182
    const/high16 v16, 0x3f000000    # 0.5f

    .line 183
    .line 184
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 185
    .line 186
    .line 187
    move-result-object v7

    .line 188
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    const/high16 v17, 0x3e800000    # 0.25f

    .line 193
    .line 194
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 199
    .line 200
    .line 201
    move-result-object v8

    .line 202
    const/16 v18, 0x40

    .line 203
    .line 204
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    .line 206
    .line 207
    move-result-object v9

    .line 208
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 209
    .line 210
    .line 211
    move-result-object v12

    .line 212
    invoke-static {v9, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    invoke-static {v7, v8, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v12

    .line 220
    const-string/jumbo v8, "screen_on_normal"

    .line 221
    .line 222
    .line 223
    move-object v7, v5

    .line 224
    move v9, v0

    .line 225
    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    new-instance v12, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 229
    .line 230
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 231
    .line 232
    .line 233
    move-result-object v7

    .line 234
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 239
    .line 240
    .line 241
    move-result-object v26

    .line 242
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 247
    .line 248
    .line 249
    move-result-object v8

    .line 250
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 251
    .line 252
    .line 253
    move-result-object v27

    .line 254
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 263
    .line 264
    .line 265
    move-result-object v28

    .line 266
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 271
    .line 272
    .line 273
    move-result-object v29

    .line 274
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 279
    .line 280
    .line 281
    move-result-object v30

    .line 282
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 283
    .line 284
    .line 285
    move-result-object v7

    .line 286
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 287
    .line 288
    .line 289
    move-result-object v31

    .line 290
    invoke-static/range {v26 .. v31}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v11

    .line 294
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 295
    .line 296
    .line 297
    move-result-object v7

    .line 298
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v9

    .line 314
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 315
    .line 316
    .line 317
    move-result-object v10

    .line 318
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    invoke-static {v7, v8, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    const-string/jumbo v8, "screen_on_moderate"

    .line 327
    .line 328
    .line 329
    move-object v7, v12

    .line 330
    move v9, v0

    .line 331
    move v10, v1

    .line 332
    move-object v1, v12

    .line 333
    move-object v12, v15

    .line 334
    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    .line 335
    .line 336
    .line 337
    new-instance v15, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 338
    .line 339
    mul-int/lit8 v7, v0, 0x4

    .line 340
    .line 341
    div-int/lit8 v19, v7, 0xa

    .line 342
    .line 343
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v7

    .line 347
    const v20, 0x3f19999a    # 0.6f

    .line 348
    .line 349
    .line 350
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 351
    .line 352
    .line 353
    move-result-object v8

    .line 354
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 355
    .line 356
    .line 357
    move-result-object v7

    .line 358
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 359
    .line 360
    .line 361
    move-result-object v8

    .line 362
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 363
    .line 364
    .line 365
    move-result-object v9

    .line 366
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 371
    .line 372
    .line 373
    move-result-object v9

    .line 374
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 375
    .line 376
    .line 377
    move-result-object v10

    .line 378
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 379
    .line 380
    .line 381
    move-result-object v9

    .line 382
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 383
    .line 384
    .line 385
    move-result-object v10

    .line 386
    invoke-static {v2, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 387
    .line 388
    .line 389
    move-result-object v10

    .line 390
    invoke-static {v7, v8, v9, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 391
    .line 392
    .line 393
    move-result-object v11

    .line 394
    const v7, 0x3eaaaaab

    .line 395
    .line 396
    .line 397
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 398
    .line 399
    .line 400
    move-result-object v7

    .line 401
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 402
    .line 403
    .line 404
    move-result-object v7

    .line 405
    const v21, 0x3e2aaaab

    .line 406
    .line 407
    .line 408
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 409
    .line 410
    .line 411
    move-result-object v8

    .line 412
    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 413
    .line 414
    .line 415
    move-result-object v8

    .line 416
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v9

    .line 420
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 421
    .line 422
    .line 423
    move-result-object v10

    .line 424
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 425
    .line 426
    .line 427
    move-result-object v9

    .line 428
    invoke-static {v7, v8, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 429
    .line 430
    .line 431
    move-result-object v12

    .line 432
    const-string/jumbo v8, "screen_on_low"

    .line 433
    .line 434
    .line 435
    move-object v7, v15

    .line 436
    move v9, v0

    .line 437
    move/from16 v10, v19

    .line 438
    .line 439
    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    .line 440
    .line 441
    .line 442
    new-instance v12, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 443
    .line 444
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 445
    .line 446
    .line 447
    move-result-object v7

    .line 448
    const v8, 0x3f333333    # 0.7f

    .line 449
    .line 450
    .line 451
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 452
    .line 453
    .line 454
    move-result-object v8

    .line 455
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 464
    .line 465
    .line 466
    move-result-object v9

    .line 467
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 468
    .line 469
    .line 470
    move-result-object v8

    .line 471
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v9

    .line 475
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 476
    .line 477
    .line 478
    move-result-object v10

    .line 479
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 484
    .line 485
    .line 486
    move-result-object v10

    .line 487
    invoke-static {v2, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 488
    .line 489
    .line 490
    move-result-object v10

    .line 491
    invoke-static {v7, v8, v9, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 492
    .line 493
    .line 494
    move-result-object v11

    .line 495
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 496
    .line 497
    .line 498
    move-result-object v7

    .line 499
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 500
    .line 501
    .line 502
    move-result-object v7

    .line 503
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 504
    .line 505
    .line 506
    move-result-object v8

    .line 507
    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 508
    .line 509
    .line 510
    move-result-object v8

    .line 511
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v9

    .line 515
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 516
    .line 517
    .line 518
    move-result-object v10

    .line 519
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 520
    .line 521
    .line 522
    move-result-object v9

    .line 523
    invoke-static {v7, v8, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 524
    .line 525
    .line 526
    move-result-object v21

    .line 527
    const-string/jumbo v8, "screen_on_critical"

    .line 528
    .line 529
    .line 530
    move-object v7, v12

    .line 531
    move v9, v0

    .line 532
    move/from16 v10, v19

    .line 533
    .line 534
    move-object v13, v12

    .line 535
    move-object/from16 v12, v21

    .line 536
    .line 537
    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    .line 538
    .line 539
    .line 540
    invoke-direct {v3, v5, v1, v15, v13}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    .line 541
    .line 542
    .line 543
    sput-object v3, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 544
    .line 545
    new-instance v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 546
    .line 547
    new-instance v3, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 548
    .line 549
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 550
    .line 551
    .line 552
    move-result-object v5

    .line 553
    const v13, 0x3e99999a    # 0.3f

    .line 554
    .line 555
    .line 556
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 557
    .line 558
    .line 559
    move-result-object v7

    .line 560
    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 561
    .line 562
    .line 563
    move-result-object v27

    .line 564
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 565
    .line 566
    .line 567
    move-result-object v5

    .line 568
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 569
    .line 570
    .line 571
    move-result-object v7

    .line 572
    invoke-static {v5, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 573
    .line 574
    .line 575
    move-result-object v28

    .line 576
    const/4 v5, 0x4

    .line 577
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 578
    .line 579
    .line 580
    move-result-object v7

    .line 581
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 582
    .line 583
    .line 584
    move-result-object v5

    .line 585
    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 586
    .line 587
    .line 588
    move-result-object v29

    .line 589
    const v5, 0x3e19999a    # 0.15f

    .line 590
    .line 591
    .line 592
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 593
    .line 594
    .line 595
    move-result-object v7

    .line 596
    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 597
    .line 598
    .line 599
    move-result-object v30

    .line 600
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 601
    .line 602
    .line 603
    move-result-object v7

    .line 604
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 605
    .line 606
    .line 607
    move-result-object v31

    .line 608
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 609
    .line 610
    .line 611
    move-result-object v7

    .line 612
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 613
    .line 614
    .line 615
    move-result-object v32

    .line 616
    invoke-static/range {v27 .. v32}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 617
    .line 618
    .line 619
    move-result-object v11

    .line 620
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 625
    .line 626
    .line 627
    move-result-object v7

    .line 628
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 629
    .line 630
    .line 631
    move-result-object v8

    .line 632
    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 633
    .line 634
    .line 635
    move-result-object v8

    .line 636
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 637
    .line 638
    .line 639
    move-result-object v9

    .line 640
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 641
    .line 642
    .line 643
    move-result-object v10

    .line 644
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 645
    .line 646
    .line 647
    move-result-object v9

    .line 648
    invoke-static {v7, v8, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 649
    .line 650
    .line 651
    move-result-object v12

    .line 652
    const-string/jumbo v8, "screen_off_normal"

    .line 653
    .line 654
    .line 655
    move-object v7, v3

    .line 656
    move v9, v0

    .line 657
    move v10, v0

    .line 658
    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    .line 659
    .line 660
    .line 661
    new-instance v15, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 662
    .line 663
    mul-int/lit8 v7, v0, 0x9

    .line 664
    .line 665
    div-int/lit8 v10, v7, 0xa

    .line 666
    .line 667
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 668
    .line 669
    .line 670
    move-result-object v7

    .line 671
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 672
    .line 673
    .line 674
    move-result-object v8

    .line 675
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 676
    .line 677
    .line 678
    move-result-object v27

    .line 679
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 680
    .line 681
    .line 682
    move-result-object v7

    .line 683
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 684
    .line 685
    .line 686
    move-result-object v8

    .line 687
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 688
    .line 689
    .line 690
    move-result-object v28

    .line 691
    const/4 v7, 0x4

    .line 692
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 693
    .line 694
    .line 695
    move-result-object v8

    .line 696
    invoke-static/range {v23 .. v23}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 697
    .line 698
    .line 699
    move-result-object v7

    .line 700
    invoke-static {v8, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 701
    .line 702
    .line 703
    move-result-object v29

    .line 704
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 705
    .line 706
    .line 707
    move-result-object v7

    .line 708
    invoke-static {v2, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 709
    .line 710
    .line 711
    move-result-object v30

    .line 712
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 713
    .line 714
    .line 715
    move-result-object v7

    .line 716
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 717
    .line 718
    .line 719
    move-result-object v31

    .line 720
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 721
    .line 722
    .line 723
    move-result-object v7

    .line 724
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 725
    .line 726
    .line 727
    move-result-object v32

    .line 728
    invoke-static/range {v27 .. v32}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 729
    .line 730
    .line 731
    move-result-object v11

    .line 732
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 733
    .line 734
    .line 735
    move-result-object v7

    .line 736
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 737
    .line 738
    .line 739
    move-result-object v7

    .line 740
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 741
    .line 742
    .line 743
    move-result-object v8

    .line 744
    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 745
    .line 746
    .line 747
    move-result-object v8

    .line 748
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 749
    .line 750
    .line 751
    move-result-object v9

    .line 752
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 753
    .line 754
    .line 755
    move-result-object v12

    .line 756
    invoke-static {v9, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 757
    .line 758
    .line 759
    move-result-object v9

    .line 760
    invoke-static {v7, v8, v9}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 761
    .line 762
    .line 763
    move-result-object v12

    .line 764
    const-string/jumbo v8, "screen_off_moderate"

    .line 765
    .line 766
    .line 767
    move-object v7, v15

    .line 768
    move v9, v0

    .line 769
    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    .line 770
    .line 771
    .line 772
    new-instance v12, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 773
    .line 774
    mul-int/lit8 v7, v0, 0x6

    .line 775
    .line 776
    div-int/lit8 v10, v7, 0xa

    .line 777
    .line 778
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 779
    .line 780
    .line 781
    move-result-object v7

    .line 782
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 783
    .line 784
    .line 785
    move-result-object v8

    .line 786
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 787
    .line 788
    .line 789
    move-result-object v27

    .line 790
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 791
    .line 792
    .line 793
    move-result-object v7

    .line 794
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 795
    .line 796
    .line 797
    move-result-object v8

    .line 798
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 799
    .line 800
    .line 801
    move-result-object v28

    .line 802
    const/4 v7, 0x4

    .line 803
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 804
    .line 805
    .line 806
    move-result-object v8

    .line 807
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 808
    .line 809
    .line 810
    move-result-object v5

    .line 811
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 812
    .line 813
    .line 814
    move-result-object v29

    .line 815
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 816
    .line 817
    .line 818
    move-result-object v5

    .line 819
    invoke-static {v2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 820
    .line 821
    .line 822
    move-result-object v30

    .line 823
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 824
    .line 825
    .line 826
    move-result-object v5

    .line 827
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 828
    .line 829
    .line 830
    move-result-object v31

    .line 831
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 832
    .line 833
    .line 834
    move-result-object v5

    .line 835
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 836
    .line 837
    .line 838
    move-result-object v32

    .line 839
    invoke-static/range {v27 .. v32}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 840
    .line 841
    .line 842
    move-result-object v11

    .line 843
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 844
    .line 845
    .line 846
    move-result-object v5

    .line 847
    invoke-static {v6, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 848
    .line 849
    .line 850
    move-result-object v5

    .line 851
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 852
    .line 853
    .line 854
    move-result-object v7

    .line 855
    invoke-static {v4, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 856
    .line 857
    .line 858
    move-result-object v7

    .line 859
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 860
    .line 861
    .line 862
    move-result-object v8

    .line 863
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 864
    .line 865
    .line 866
    move-result-object v9

    .line 867
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 868
    .line 869
    .line 870
    move-result-object v8

    .line 871
    invoke-static {v5, v7, v8}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 872
    .line 873
    .line 874
    move-result-object v5

    .line 875
    const-string/jumbo v8, "screen_off_low"

    .line 876
    .line 877
    .line 878
    move-object v7, v12

    .line 879
    move v9, v0

    .line 880
    move-object/from16 v33, v12

    .line 881
    .line 882
    move-object v12, v5

    .line 883
    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    .line 884
    .line 885
    .line 886
    new-instance v5, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 887
    .line 888
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 889
    .line 890
    .line 891
    move-result-object v7

    .line 892
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 893
    .line 894
    .line 895
    move-result-object v8

    .line 896
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 897
    .line 898
    .line 899
    move-result-object v7

    .line 900
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 901
    .line 902
    .line 903
    move-result-object v8

    .line 904
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 905
    .line 906
    .line 907
    move-result-object v9

    .line 908
    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 909
    .line 910
    .line 911
    move-result-object v8

    .line 912
    const/4 v9, 0x4

    .line 913
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 914
    .line 915
    .line 916
    move-result-object v9

    .line 917
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 918
    .line 919
    .line 920
    move-result-object v10

    .line 921
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 922
    .line 923
    .line 924
    move-result-object v9

    .line 925
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 926
    .line 927
    .line 928
    move-result-object v10

    .line 929
    invoke-static {v2, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 930
    .line 931
    .line 932
    move-result-object v2

    .line 933
    invoke-static {v7, v8, v9, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 934
    .line 935
    .line 936
    move-result-object v11

    .line 937
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 938
    .line 939
    .line 940
    move-result-object v2

    .line 941
    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 942
    .line 943
    .line 944
    move-result-object v2

    .line 945
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 946
    .line 947
    .line 948
    move-result-object v6

    .line 949
    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 950
    .line 951
    .line 952
    move-result-object v4

    .line 953
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 954
    .line 955
    .line 956
    move-result-object v6

    .line 957
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 958
    .line 959
    .line 960
    move-result-object v7

    .line 961
    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 962
    .line 963
    .line 964
    move-result-object v6

    .line 965
    invoke-static {v2, v4, v6}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 966
    .line 967
    .line 968
    move-result-object v12

    .line 969
    const-string/jumbo v8, "screen_off_critical"

    .line 970
    .line 971
    .line 972
    move-object v7, v5

    .line 973
    move v9, v0

    .line 974
    move/from16 v10, v19

    .line 975
    .line 976
    invoke-direct/range {v7 .. v12}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;-><init>(Ljava/lang/String;IILjava/util/List;Ljava/util/List;)V

    .line 977
    .line 978
    .line 979
    move-object/from16 v0, v33

    .line 980
    .line 981
    invoke-direct {v1, v3, v15, v0, v5}, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;-><init>(Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;)V

    .line 982
    .line 983
    .line 984
    sput-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 985
    .line 986
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    .line 987
    .line 988
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 989
    .line 990
    .line 991
    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    .line 992
    .line 993
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    .line 994
    .line 995
    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    .line 996
    .line 997
    const/high16 v2, 0x42c60000    # 99.0f

    .line 998
    .line 999
    const/16 v3, 0x64

    .line 1000
    .line 1001
    const/4 v4, 0x0

    .line 1002
    invoke-direct {v1, v3, v4, v2}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    .line 1003
    .line 1004
    .line 1005
    const-string/jumbo v2, "job_scheduler.value_hist_job_concurrency"

    .line 1006
    .line 1007
    .line 1008
    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    .line 1009
    .line 1010
    .line 1011
    sput-object v0, Lcom/android/server/job/JobConcurrencyManager;->sConcurrencyHistogramLogger:Lcom/android/modules/expresslog/Histogram;

    .line 1012
    .line 1013
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager$Injector;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    .line 38
    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPrivilegedState:Landroid/util/SparseIntArray;

    .line 45
    .line 46
    new-instance v0, Landroid/util/Pools$SimplePool;

    .line 47
    .line 48
    const/16 v1, 0x60

    .line 49
    .line 50
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 54
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 61
    .line 62
    new-instance v0, Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 71
    .line 72
    new-instance v0, Landroid/util/ArraySet;

    .line 73
    .line 74
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 78
    .line 79
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 80
    .line 81
    invoke-direct {v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;-><init>()V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 85
    .line 86
    new-instance v0, Landroid/util/Pools$SimplePool;

    .line 87
    .line 88
    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    .line 92
    .line 93
    new-instance v0, Landroid/util/SparseArrayMap;

    .line 94
    .line 95
    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 99
    .line 100
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 105
    .line 106
    const-wide/16 v0, 0x7530

    .line 107
    .line 108
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 109
    .line 110
    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 111
    .line 112
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 113
    .line 114
    const/4 v0, 0x3

    .line 115
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    .line 116
    .line 117
    sget v0, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

    .line 118
    .line 119
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    .line 123
    .line 124
    const-wide/32 v0, 0x493e0

    .line 125
    .line 126
    .line 127
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    .line 128
    .line 129
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    .line 130
    .line 131
    const-wide/32 v0, 0x1b7740

    .line 132
    .line 133
    .line 134
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    .line 135
    .line 136
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 139
    .line 140
    .line 141
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    .line 142
    .line 143
    new-instance v0, Lcom/android/internal/util/jobs/StatLogger;

    .line 144
    .line 145
    const-string v1, "assignJobsToContexts"

    .line 146
    .line 147
    const-string/jumbo v2, "refreshSystemState"

    .line 148
    .line 149
    .line 150
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/StatLogger;-><init>([Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 158
    .line 159
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$1;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    .line 162
    .line 163
    .line 164
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mReceiver:Lcom/android/server/job/JobConcurrencyManager$1;

    .line 165
    .line 166
    new-instance v0, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    .line 167
    .line 168
    invoke-direct {v0, p0}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/JobConcurrencyManager;)V

    .line 169
    .line 170
    .line 171
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    .line 172
    .line 173
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 174
    .line 175
    iget-object v0, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mContext:Landroid/content/Context;

    .line 184
    .line 185
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

    .line 186
    .line 187
    new-instance p2, Lcom/android/server/job/JobNotificationCoordinator;

    .line 188
    .line 189
    invoke-direct {p2}, Lcom/android/server/job/JobNotificationCoordinator;-><init>()V

    .line 190
    .line 191
    .line 192
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 193
    .line 194
    const-class p2, Landroid/app/ActivityManagerInternal;

    .line 195
    .line 196
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    check-cast p2, Landroid/app/ActivityManagerInternal;

    .line 201
    .line 202
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 203
    .line 204
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    .line 205
    .line 206
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    .line 211
    .line 212
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 213
    .line 214
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    .line 219
    .line 220
    new-instance p2, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 221
    .line 222
    invoke-direct {p2, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    iput-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    const p2, 0x11101c3

    .line 232
    .line 233
    .line 234
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    .line 239
    .line 240
    return-void
.end method

.method public static varargs printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, ": "

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    move v1, p0

    .line 14
    :goto_0
    array-length v2, p1

    .line 15
    if-ge v1, v2, :cond_6

    .line 16
    .line 17
    aget-object v2, p1, v1

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    move v3, p0

    .line 24
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-eqz v4, :cond_5

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 35
    .line 36
    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 37
    .line 38
    if-nez v5, :cond_0

    .line 39
    .line 40
    iget-object v5, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 41
    .line 42
    iget-object v5, v5, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 43
    .line 44
    :cond_0
    if-gtz v1, :cond_1

    .line 45
    .line 46
    if-lez v3, :cond_2

    .line 47
    .line 48
    :cond_1
    const-string v6, " "

    .line 49
    .line 50
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    :cond_2
    const-string v6, "("

    .line 54
    .line 55
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v4, "="

    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    if-nez v5, :cond_3

    .line 73
    .line 74
    const-string/jumbo v4, "nothing"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    iget-object v4, v5, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 82
    .line 83
    if-eqz v4, :cond_4

    .line 84
    .line 85
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v4, ":"

    .line 89
    .line 90
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_4
    iget-object v4, v5, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 94
    .line 95
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v4, "/"

    .line 103
    .line 104
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v4, v5, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 108
    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    :goto_2
    const-string v4, ")"

    .line 113
    .line 114
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    return-object p0
.end method

.method public static workTypeToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_7

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_6

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_5

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    if-eq p0, v0, :cond_4

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eq p0, v0, :cond_3

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    if-eq p0, v0, :cond_2

    .line 19
    .line 20
    const/16 v0, 0x20

    .line 21
    .line 22
    if-eq p0, v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x40

    .line 25
    .line 26
    if-eq p0, v0, :cond_0

    .line 27
    .line 28
    const-string v0, "WORK("

    .line 29
    .line 30
    const-string v1, ")"

    .line 31
    .line 32
    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_0
    const-string p0, "BGUSER"

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_1
    const-string p0, "BGUSER_IMPORTANT"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2
    const-string p0, "BG"

    .line 44
    .line 45
    return-object p0

    .line 46
    :cond_3
    const-string p0, "EJ"

    .line 47
    .line 48
    return-object p0

    .line 49
    :cond_4
    const-string p0, "UI"

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_5
    const-string p0, "FGS"

    .line 53
    .line 54
    return-object p0

    .line 55
    :cond_6
    const-string p0, "TOP"

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_7
    const-string p0, "NONE"

    .line 59
    .line 60
    return-object p0
.end method


# virtual methods
.method public addRunningJobForTesting(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 7
    .line 8
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-static {v0, v2, v1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    sub-int/2addr v1, v2

    .line 37
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/android/server/job/JobServiceContext;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 62
    .line 63
    check-cast p0, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final assignJobsToContextsLocked()V
    .locals 16

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 4
    .line 5
    invoke-virtual {v7}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    .line 6
    .line 7
    .line 8
    move-result-wide v8

    .line 9
    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    const-string v10, "JobScheduler.Concurrency"

    .line 12
    .line 13
    const/4 v11, 0x1

    .line 14
    sget-boolean v12, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 15
    .line 16
    if-eqz v12, :cond_1

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "Pending queue: "

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 26
    .line 27
    iput-boolean v11, v2, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 28
    .line 29
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const-string v4, "({"

    .line 36
    .line 37
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v4, v3, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string/jumbo v4, "} "

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v4, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 52
    .line 53
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v4, ", "

    .line 61
    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v3, v3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, ") "

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 84
    .line 85
    iget v0, v0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 86
    .line 87
    const/4 v13, 0x0

    .line 88
    if-nez v0, :cond_2

    .line 89
    .line 90
    move v0, v13

    .line 91
    goto/16 :goto_6

    .line 92
    .line 93
    :cond_2
    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    .line 94
    .line 95
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 96
    .line 97
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 98
    .line 99
    iget-object v14, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    .line 100
    .line 101
    invoke-virtual {v6, v0, v1, v2, v14}, Lcom/android/server/job/JobConcurrencyManager;->prepareForAssignmentDeterminationLocked(Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V

    .line 102
    .line 103
    .line 104
    const/4 v15, 0x2

    .line 105
    if-eqz v12, :cond_3

    .line 106
    .line 107
    new-array v0, v15, [Ljava/util/Collection;

    .line 108
    .line 109
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 110
    .line 111
    aput-object v1, v0, v13

    .line 112
    .line 113
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 114
    .line 115
    aput-object v1, v0, v11

    .line 116
    .line 117
    const-string/jumbo v1, "running jobs initial"

    .line 118
    .line 119
    .line 120
    invoke-static {v1, v0}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_3
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 128
    .line 129
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    .line 130
    .line 131
    iget-object v3, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 132
    .line 133
    iget-object v4, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 134
    .line 135
    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledAssignmentInfo:Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;

    .line 136
    .line 137
    move-object/from16 v0, p0

    .line 138
    .line 139
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/JobConcurrencyManager;->determineAssignmentsLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V

    .line 140
    .line 141
    .line 142
    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 143
    .line 144
    if-eqz v12, :cond_4

    .line 145
    .line 146
    const/4 v1, 0x3

    .line 147
    new-array v1, v1, [Ljava/util/Collection;

    .line 148
    .line 149
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 150
    .line 151
    aput-object v2, v1, v13

    .line 152
    .line 153
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 154
    .line 155
    aput-object v2, v1, v11

    .line 156
    .line 157
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 158
    .line 159
    aput-object v2, v1, v15

    .line 160
    .line 161
    const-string/jumbo v2, "running jobs final"

    .line 162
    .line 163
    .line 164
    invoke-static {v2, v1}, Lcom/android/server/job/JobConcurrencyManager;->printAssignments(Ljava/lang/String;[Ljava/util/Collection;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    const-string/jumbo v2, "work count results: "

    .line 174
    .line 175
    .line 176
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_4
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    sub-int/2addr v2, v11

    .line 196
    :goto_1
    if-ltz v2, :cond_8

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 203
    .line 204
    iget-object v4, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 205
    .line 206
    iget-object v4, v4, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 207
    .line 208
    if-eqz v4, :cond_6

    .line 209
    .line 210
    if-eqz v12, :cond_5

    .line 211
    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    const-string/jumbo v13, "preempting job: "

    .line 215
    .line 216
    .line 217
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    :cond_5
    iget-object v4, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 231
    .line 232
    iget v5, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 233
    .line 234
    iget-object v13, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v4, v5, v15, v13}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_2

    .line 240
    :cond_6
    iget-object v4, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 241
    .line 242
    if-eqz v12, :cond_7

    .line 243
    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    const-string v13, "About to run job on context "

    .line 247
    .line 248
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    iget-object v13, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 252
    .line 253
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    .line 254
    .line 255
    .line 256
    move-result v13

    .line 257
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    const-string v13, ", job: "

    .line 261
    .line 262
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    :cond_7
    iget-object v5, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 276
    .line 277
    iget v13, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 278
    .line 279
    invoke-virtual {v6, v13, v5, v4}, Lcom/android/server/job/JobConcurrencyManager;->startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V

    .line 280
    .line 281
    .line 282
    :goto_2
    invoke-virtual {v3}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 283
    .line 284
    .line 285
    iget-object v4, v6, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 286
    .line 287
    check-cast v4, Landroid/util/Pools$SimplePool;

    .line 288
    .line 289
    invoke-virtual {v4, v3}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    add-int/lit8 v2, v2, -0x1

    .line 293
    .line 294
    const/4 v13, 0x0

    .line 295
    goto :goto_1

    .line 296
    :cond_8
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledChanged:Landroid/util/ArraySet;

    .line 297
    .line 298
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledIdle:Landroid/util/ArraySet;

    .line 299
    .line 300
    iget-object v3, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPreferredUidOnly:Ljava/util/ArrayList;

    .line 301
    .line 302
    iget-object v4, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledStoppable:Ljava/util/ArrayList;

    .line 303
    .line 304
    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPrivilegedState:Landroid/util/SparseIntArray;

    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 307
    .line 308
    .line 309
    move-result v10

    .line 310
    sub-int/2addr v10, v11

    .line 311
    :goto_3
    if-ltz v10, :cond_9

    .line 312
    .line 313
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v12

    .line 317
    check-cast v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 318
    .line 319
    invoke-virtual {v12}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 320
    .line 321
    .line 322
    iget-object v13, v6, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 323
    .line 324
    check-cast v13, Landroid/util/Pools$SimplePool;

    .line 325
    .line 326
    invoke-virtual {v13, v12}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    add-int/lit8 v10, v10, -0x1

    .line 330
    .line 331
    goto :goto_3

    .line 332
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 333
    .line 334
    .line 335
    move-result v10

    .line 336
    sub-int/2addr v10, v11

    .line 337
    :goto_4
    if-ltz v10, :cond_a

    .line 338
    .line 339
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v12

    .line 343
    check-cast v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 344
    .line 345
    invoke-virtual {v12}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 346
    .line 347
    .line 348
    iget-object v13, v6, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 349
    .line 350
    check-cast v13, Landroid/util/Pools$SimplePool;

    .line 351
    .line 352
    invoke-virtual {v13, v12}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    add-int/lit8 v10, v10, -0x1

    .line 356
    .line 357
    goto :goto_4

    .line 358
    :cond_a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    sub-int/2addr v10, v11

    .line 363
    :goto_5
    if-ltz v10, :cond_b

    .line 364
    .line 365
    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v12

    .line 369
    check-cast v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 370
    .line 371
    iget-object v13, v6, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 372
    .line 373
    iget-object v15, v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 374
    .line 375
    invoke-virtual {v13, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 376
    .line 377
    .line 378
    invoke-virtual {v12}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->clear()V

    .line 379
    .line 380
    .line 381
    iget-object v13, v6, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 382
    .line 383
    check-cast v13, Landroid/util/Pools$SimplePool;

    .line 384
    .line 385
    invoke-virtual {v13, v12}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    .line 386
    .line 387
    .line 388
    add-int/lit8 v10, v10, -0x1

    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_b
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 401
    .line 402
    .line 403
    const-wide/16 v1, 0x0

    .line 404
    .line 405
    iput-wide v1, v14, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    .line 406
    .line 407
    const/4 v1, 0x0

    .line 408
    iput v1, v14, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    .line 409
    .line 410
    iput v1, v14, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    .line 411
    .line 412
    iput v1, v14, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    .line 413
    .line 414
    iput v1, v14, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    .line 415
    .line 416
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->clear()V

    .line 417
    .line 418
    .line 419
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 420
    .line 421
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 422
    .line 423
    .line 424
    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 425
    .line 426
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager;->mPackageStatsStagingCountClearer:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda0;

    .line 427
    .line 428
    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6, v11}, Lcom/android/server/job/JobConcurrencyManager;->noteConcurrency(Z)V

    .line 432
    .line 433
    .line 434
    const/4 v0, 0x0

    .line 435
    :goto_6
    invoke-virtual {v7, v0, v8, v9}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 436
    .line 437
    .line 438
    return-void
.end method

.method public final createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;
    .locals 8

    .line 1
    const-string v0, "batterystats"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 14
    .line 15
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/android/server/job/JobServiceContext;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 33
    .line 34
    move-object v1, v0

    .line 35
    move-object v3, p0

    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public determineAssignmentsLocked(Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 14
    .line 15
    iget-object v7, v6, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    iput-boolean v9, v7, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 21
    .line 22
    check-cast v8, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 25
    .line 26
    .line 27
    move-result v8

    .line 28
    iget v10, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    .line 29
    .line 30
    if-nez v10, :cond_0

    .line 31
    .line 32
    move v10, v9

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v10, 0x0

    .line 35
    :goto_0
    iget v12, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    .line 36
    .line 37
    if-nez v12, :cond_1

    .line 38
    .line 39
    move v12, v9

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const/4 v12, 0x0

    .line 42
    :goto_1
    iget v13, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    .line 43
    .line 44
    if-nez v13, :cond_2

    .line 45
    .line 46
    move v13, v9

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/4 v13, 0x0

    .line 49
    :goto_2
    const-wide v14, 0x7fffffffffffffffL

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    :goto_3
    invoke-virtual {v7}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    if-eqz v11, :cond_35

    .line 59
    .line 60
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 61
    .line 62
    invoke-virtual {v9, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    sget-boolean v18, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 67
    .line 68
    move/from16 v19, v13

    .line 69
    .line 70
    const-string v13, "JobScheduler.Concurrency"

    .line 71
    .line 72
    if-eqz v9, :cond_4

    .line 73
    .line 74
    const-string v9, "Pending queue contained a running job"

    .line 75
    .line 76
    invoke-static {v13, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    if-eqz v18, :cond_3

    .line 80
    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    move/from16 v20, v12

    .line 84
    .line 85
    const-string v12, "Pending+running job: "

    .line 86
    .line 87
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-static {v13, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_3
    move/from16 v20, v12

    .line 102
    .line 103
    :goto_4
    invoke-virtual {v7, v11}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 104
    .line 105
    .line 106
    move/from16 v13, v19

    .line 107
    .line 108
    move/from16 v12, v20

    .line 109
    .line 110
    const/4 v9, 0x1

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move/from16 v20, v12

    .line 113
    .line 114
    iget-object v9, v0, Lcom/android/server/job/JobConcurrencyManager;->mRecycledPrivilegedState:Landroid/util/SparseIntArray;

    .line 115
    .line 116
    invoke-virtual {v0, v11, v9}, Lcom/android/server/job/JobConcurrencyManager;->hasImmediacyPrivilegeLocked(Lcom/android/server/job/controllers/JobStatus;Landroid/util/SparseIntArray;)Z

    .line 117
    .line 118
    .line 119
    move-result v9

    .line 120
    if-eqz v18, :cond_5

    .line 121
    .line 122
    invoke-virtual {v0, v11}, Lcom/android/server/job/JobConcurrencyManager;->isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    if-eqz v12, :cond_5

    .line 127
    .line 128
    new-instance v12, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    move-object/from16 v21, v7

    .line 131
    .line 132
    const-string v7, "Already running similar job to: "

    .line 133
    .line 134
    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    invoke-static {v13, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :goto_5
    move-object v7, v13

    .line 148
    goto :goto_6

    .line 149
    :cond_5
    move-object/from16 v21, v7

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :goto_6
    iget-wide v12, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    .line 153
    .line 154
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    .line 155
    .line 156
    .line 157
    move-result-wide v12

    .line 158
    move-wide/from16 v22, v14

    .line 159
    .line 160
    invoke-virtual {v0, v11}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    .line 161
    .line 162
    .line 163
    move-result v14

    .line 164
    invoke-virtual {v0, v11}, Lcom/android/server/job/JobConcurrencyManager;->isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 165
    .line 166
    .line 167
    move-result v15

    .line 168
    const/16 v17, 0x1

    .line 169
    .line 170
    xor-int/lit8 v15, v15, 0x1

    .line 171
    .line 172
    move/from16 v24, v10

    .line 173
    .line 174
    iget v10, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 175
    .line 176
    if-le v8, v10, :cond_6

    .line 177
    .line 178
    move/from16 v10, v17

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_6
    const/4 v10, 0x0

    .line 182
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    .line 183
    .line 184
    .line 185
    move-result v25

    .line 186
    move-object/from16 v26, v7

    .line 187
    .line 188
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 189
    .line 190
    move/from16 v27, v8

    .line 191
    .line 192
    iget v8, v11, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 193
    .line 194
    if-lez v25, :cond_9

    .line 195
    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    .line 197
    .line 198
    .line 199
    move-result v25

    .line 200
    add-int/lit8 v1, v25, -0x1

    .line 201
    .line 202
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v25

    .line 206
    move-object/from16 v3, v25

    .line 207
    .line 208
    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 209
    .line 210
    move-wide/from16 v28, v12

    .line 211
    .line 212
    iget v12, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    .line 213
    .line 214
    if-eq v12, v8, :cond_8

    .line 215
    .line 216
    const/4 v13, -0x1

    .line 217
    if-ne v12, v13, :cond_7

    .line 218
    .line 219
    goto :goto_8

    .line 220
    :cond_7
    const/4 v12, 0x0

    .line 221
    goto :goto_9

    .line 222
    :cond_8
    :goto_8
    const/4 v12, 0x1

    .line 223
    :goto_9
    invoke-virtual {v7, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    .line 224
    .line 225
    .line 226
    move-result v13

    .line 227
    if-eqz v12, :cond_a

    .line 228
    .line 229
    if-eqz v15, :cond_a

    .line 230
    .line 231
    if-eqz v13, :cond_a

    .line 232
    .line 233
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    iput-object v11, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 237
    .line 238
    iput v13, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 239
    .line 240
    const/4 v1, 0x1

    .line 241
    goto :goto_a

    .line 242
    :cond_9
    move-wide/from16 v28, v12

    .line 243
    .line 244
    :cond_a
    const/4 v1, 0x0

    .line 245
    const/4 v3, 0x0

    .line 246
    :goto_a
    if-nez v3, :cond_13

    .line 247
    .line 248
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result v13

    .line 252
    if-lez v13, :cond_13

    .line 253
    .line 254
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    .line 255
    .line 256
    .line 257
    move-result v13

    .line 258
    const/4 v15, 0x1

    .line 259
    sub-int/2addr v13, v15

    .line 260
    :goto_b
    if-ltz v13, :cond_13

    .line 261
    .line 262
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v15

    .line 266
    check-cast v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 267
    .line 268
    iget-object v12, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 269
    .line 270
    iget-object v12, v12, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 271
    .line 272
    if-nez v9, :cond_d

    .line 273
    .line 274
    if-nez v10, :cond_d

    .line 275
    .line 276
    invoke-virtual {v6, v12}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 277
    .line 278
    .line 279
    move-result v2

    .line 280
    iget v12, v12, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 281
    .line 282
    move-object/from16 v30, v3

    .line 283
    .line 284
    const/16 v3, 0x28

    .line 285
    .line 286
    if-lt v12, v3, :cond_c

    .line 287
    .line 288
    if-lt v2, v3, :cond_c

    .line 289
    .line 290
    iget v2, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    .line 291
    .line 292
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 293
    .line 294
    iget v3, v3, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 295
    .line 296
    const/4 v12, 0x2

    .line 297
    div-int/2addr v3, v12

    .line 298
    if-le v2, v3, :cond_b

    .line 299
    .line 300
    goto :goto_c

    .line 301
    :cond_b
    const/4 v2, 0x0

    .line 302
    goto :goto_d

    .line 303
    :cond_c
    :goto_c
    const/4 v2, 0x1

    .line 304
    goto :goto_d

    .line 305
    :cond_d
    move-object/from16 v30, v3

    .line 306
    .line 307
    move v2, v9

    .line 308
    :goto_d
    if-nez v2, :cond_11

    .line 309
    .line 310
    iget-boolean v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    .line 311
    .line 312
    if-eqz v3, :cond_11

    .line 313
    .line 314
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    if-eqz v2, :cond_f

    .line 319
    .line 320
    iget-wide v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    .line 321
    .line 322
    cmp-long v2, v28, v2

    .line 323
    .line 324
    if-ltz v2, :cond_e

    .line 325
    .line 326
    :goto_e
    const/4 v2, 0x1

    .line 327
    goto :goto_f

    .line 328
    :cond_e
    const/4 v2, 0x0

    .line 329
    goto :goto_f

    .line 330
    :cond_f
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-eqz v2, :cond_10

    .line 335
    .line 336
    iget-wide v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    .line 337
    .line 338
    cmp-long v2, v28, v2

    .line 339
    .line 340
    if-ltz v2, :cond_e

    .line 341
    .line 342
    goto :goto_e

    .line 343
    :cond_10
    iget-wide v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    .line 344
    .line 345
    cmp-long v2, v28, v2

    .line 346
    .line 347
    if-ltz v2, :cond_e

    .line 348
    .line 349
    goto :goto_e

    .line 350
    :cond_11
    :goto_f
    if-eqz v2, :cond_12

    .line 351
    .line 352
    iget-object v2, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 353
    .line 354
    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 355
    .line 356
    invoke-virtual {v7, v14, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    .line 357
    .line 358
    .line 359
    move-result v2

    .line 360
    if-eqz v2, :cond_12

    .line 361
    .line 362
    iget-object v3, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    .line 363
    .line 364
    iput-object v3, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    .line 365
    .line 366
    const/4 v3, 0x4

    .line 367
    iput v3, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 368
    .line 369
    invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    iput-object v11, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 373
    .line 374
    iput v2, v15, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 375
    .line 376
    move-object v3, v15

    .line 377
    goto :goto_10

    .line 378
    :cond_12
    add-int/lit8 v13, v13, -0x1

    .line 379
    .line 380
    move-object/from16 v2, p2

    .line 381
    .line 382
    move-object/from16 v3, v30

    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_13
    move-object/from16 v30, v3

    .line 386
    .line 387
    move-object/from16 v3, v30

    .line 388
    .line 389
    :goto_10
    if-nez v3, :cond_14

    .line 390
    .line 391
    if-eqz v10, :cond_15

    .line 392
    .line 393
    if-eqz v9, :cond_14

    .line 394
    .line 395
    goto :goto_11

    .line 396
    :cond_14
    move-object/from16 v15, p3

    .line 397
    .line 398
    move/from16 v30, v1

    .line 399
    .line 400
    move-object/from16 v31, v7

    .line 401
    .line 402
    goto/16 :goto_17

    .line 403
    .line 404
    :cond_15
    :goto_11
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    const/4 v10, 0x1

    .line 409
    sub-int/2addr v2, v10

    .line 410
    const v10, 0x7fffffff

    .line 411
    .line 412
    .line 413
    const-wide v12, 0x7fffffffffffffffL

    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    :goto_12
    if-ltz v2, :cond_1b

    .line 419
    .line 420
    move-object/from16 v15, p3

    .line 421
    .line 422
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v30

    .line 426
    move-object/from16 v4, v30

    .line 427
    .line 428
    check-cast v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 429
    .line 430
    move/from16 v30, v1

    .line 431
    .line 432
    iget-object v1, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 433
    .line 434
    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 435
    .line 436
    move-object/from16 v31, v7

    .line 437
    .line 438
    iget v7, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 439
    .line 440
    if-eq v7, v8, :cond_16

    .line 441
    .line 442
    goto :goto_13

    .line 443
    :cond_16
    invoke-virtual {v6, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    iget v7, v11, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 448
    .line 449
    if-lt v1, v7, :cond_17

    .line 450
    .line 451
    :goto_13
    move/from16 v32, v8

    .line 452
    .line 453
    :goto_14
    const/4 v7, 0x2

    .line 454
    goto :goto_16

    .line 455
    :cond_17
    if-eqz v3, :cond_18

    .line 456
    .line 457
    if-le v10, v1, :cond_19

    .line 458
    .line 459
    :cond_18
    move/from16 v32, v8

    .line 460
    .line 461
    goto :goto_15

    .line 462
    :cond_19
    move/from16 v32, v8

    .line 463
    .line 464
    iget-wide v7, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    .line 465
    .line 466
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 467
    .line 468
    .line 469
    move-result-wide v12

    .line 470
    goto :goto_14

    .line 471
    :goto_15
    if-eqz v3, :cond_1a

    .line 472
    .line 473
    iget-wide v7, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    .line 474
    .line 475
    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    .line 476
    .line 477
    .line 478
    move-result-wide v12

    .line 479
    :cond_1a
    const-string/jumbo v3, "higher bias job found"

    .line 480
    .line 481
    .line 482
    iput-object v3, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    .line 483
    .line 484
    const/4 v7, 0x2

    .line 485
    iput v7, v4, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 486
    .line 487
    move v10, v1

    .line 488
    move-object v3, v4

    .line 489
    :goto_16
    add-int/lit8 v2, v2, -0x1

    .line 490
    .line 491
    move-object/from16 v4, p4

    .line 492
    .line 493
    move/from16 v1, v30

    .line 494
    .line 495
    move-object/from16 v7, v31

    .line 496
    .line 497
    move/from16 v8, v32

    .line 498
    .line 499
    goto :goto_12

    .line 500
    :cond_1b
    move-object/from16 v15, p3

    .line 501
    .line 502
    move/from16 v30, v1

    .line 503
    .line 504
    move-object/from16 v31, v7

    .line 505
    .line 506
    if-eqz v3, :cond_1c

    .line 507
    .line 508
    iput-object v11, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 509
    .line 510
    invoke-interface {v15, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    iput-wide v12, v5, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    .line 514
    .line 515
    :cond_1c
    :goto_17
    if-eqz v9, :cond_23

    .line 516
    .line 517
    if-eqz v3, :cond_1d

    .line 518
    .line 519
    iget-object v1, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 520
    .line 521
    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 522
    .line 523
    if-eqz v1, :cond_1d

    .line 524
    .line 525
    move-object/from16 v1, p1

    .line 526
    .line 527
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    add-int/lit8 v8, v27, -0x1

    .line 531
    .line 532
    const/4 v2, 0x0

    .line 533
    iput-object v2, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 534
    .line 535
    const/4 v4, 0x0

    .line 536
    iput v4, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 537
    .line 538
    move-object v7, v2

    .line 539
    goto :goto_18

    .line 540
    :cond_1d
    move-object/from16 v1, p1

    .line 541
    .line 542
    const/4 v4, 0x0

    .line 543
    move-object v7, v3

    .line 544
    move/from16 v8, v27

    .line 545
    .line 546
    :goto_18
    if-nez v7, :cond_22

    .line 547
    .line 548
    if-eqz v18, :cond_1e

    .line 549
    .line 550
    const-string v2, "Allowing additional context because EJ would wait too long"

    .line 551
    .line 552
    move-object/from16 v7, v26

    .line 553
    .line 554
    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    :cond_1e
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 558
    .line 559
    check-cast v2, Landroid/util/Pools$SimplePool;

    .line 560
    .line 561
    invoke-virtual {v2}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 566
    .line 567
    if-nez v2, :cond_1f

    .line 568
    .line 569
    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 570
    .line 571
    invoke-direct {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    .line 572
    .line 573
    .line 574
    :cond_1f
    move-object v3, v2

    .line 575
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 576
    .line 577
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 578
    .line 579
    .line 580
    move-result v2

    .line 581
    if-lez v2, :cond_20

    .line 582
    .line 583
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 584
    .line 585
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 586
    .line 587
    .line 588
    move-result v7

    .line 589
    const/4 v10, 0x1

    .line 590
    sub-int/2addr v7, v10

    .line 591
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v2

    .line 595
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 596
    .line 597
    goto :goto_19

    .line 598
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    .line 599
    .line 600
    .line 601
    move-result-object v2

    .line 602
    :goto_19
    iput-object v2, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 603
    .line 604
    iput-object v11, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 605
    .line 606
    move-object/from16 v2, v31

    .line 607
    .line 608
    invoke-virtual {v2, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    .line 609
    .line 610
    .line 611
    move-result v7

    .line 612
    if-eqz v7, :cond_21

    .line 613
    .line 614
    goto :goto_1a

    .line 615
    :cond_21
    const/4 v7, 0x1

    .line 616
    :goto_1a
    iput v7, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 617
    .line 618
    :goto_1b
    move/from16 v13, v19

    .line 619
    .line 620
    move/from16 v12, v20

    .line 621
    .line 622
    move/from16 v10, v24

    .line 623
    .line 624
    goto/16 :goto_25

    .line 625
    .line 626
    :cond_22
    move-object/from16 v2, v31

    .line 627
    .line 628
    move-object v3, v7

    .line 629
    goto :goto_1b

    .line 630
    :cond_23
    move-object/from16 v1, p1

    .line 631
    .line 632
    move-object/from16 v7, v26

    .line 633
    .line 634
    move-object/from16 v2, v31

    .line 635
    .line 636
    const/4 v4, 0x0

    .line 637
    if-nez v3, :cond_30

    .line 638
    .line 639
    iget-boolean v8, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    .line 640
    .line 641
    if-eqz v8, :cond_30

    .line 642
    .line 643
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 644
    .line 645
    .line 646
    move-result v8

    .line 647
    if-eqz v8, :cond_25

    .line 648
    .line 649
    if-eqz v24, :cond_25

    .line 650
    .line 651
    iget-wide v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    .line 652
    .line 653
    cmp-long v8, v28, v12

    .line 654
    .line 655
    if-ltz v8, :cond_24

    .line 656
    .line 657
    const/4 v8, 0x1

    .line 658
    goto :goto_1c

    .line 659
    :cond_24
    move v8, v4

    .line 660
    :goto_1c
    xor-int/lit8 v10, v8, 0x1

    .line 661
    .line 662
    move/from16 v13, v19

    .line 663
    .line 664
    move/from16 v12, v20

    .line 665
    .line 666
    goto :goto_21

    .line 667
    :cond_25
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 668
    .line 669
    .line 670
    move-result v8

    .line 671
    if-eqz v8, :cond_27

    .line 672
    .line 673
    if-eqz v20, :cond_27

    .line 674
    .line 675
    iget-wide v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    .line 676
    .line 677
    cmp-long v8, v28, v12

    .line 678
    .line 679
    if-ltz v8, :cond_26

    .line 680
    .line 681
    const/4 v8, 0x1

    .line 682
    goto :goto_1d

    .line 683
    :cond_26
    move v8, v4

    .line 684
    :goto_1d
    xor-int/lit8 v12, v8, 0x1

    .line 685
    .line 686
    move/from16 v13, v19

    .line 687
    .line 688
    :goto_1e
    move/from16 v10, v24

    .line 689
    .line 690
    goto :goto_21

    .line 691
    :cond_27
    if-eqz v19, :cond_29

    .line 692
    .line 693
    iget-wide v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    .line 694
    .line 695
    cmp-long v8, v28, v12

    .line 696
    .line 697
    if-ltz v8, :cond_28

    .line 698
    .line 699
    const/4 v8, 0x1

    .line 700
    goto :goto_1f

    .line 701
    :cond_28
    move v8, v4

    .line 702
    :goto_1f
    xor-int/lit8 v13, v8, 0x1

    .line 703
    .line 704
    :goto_20
    move/from16 v12, v20

    .line 705
    .line 706
    goto :goto_1e

    .line 707
    :cond_29
    move v8, v4

    .line 708
    move/from16 v13, v19

    .line 709
    .line 710
    goto :goto_20

    .line 711
    :goto_21
    if-eqz v8, :cond_2f

    .line 712
    .line 713
    if-eqz v18, :cond_2a

    .line 714
    .line 715
    const-string v3, "Allowing additional context because job would wait too long"

    .line 716
    .line 717
    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .line 719
    .line 720
    :cond_2a
    iget-object v3, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 721
    .line 722
    check-cast v3, Landroid/util/Pools$SimplePool;

    .line 723
    .line 724
    invoke-virtual {v3}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object v3

    .line 728
    check-cast v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 729
    .line 730
    if-nez v3, :cond_2b

    .line 731
    .line 732
    new-instance v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 733
    .line 734
    invoke-direct {v3}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    .line 735
    .line 736
    .line 737
    :cond_2b
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 738
    .line 739
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 740
    .line 741
    .line 742
    move-result v7

    .line 743
    if-lez v7, :cond_2c

    .line 744
    .line 745
    iget-object v7, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 746
    .line 747
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 748
    .line 749
    .line 750
    move-result v8

    .line 751
    const/16 v16, 0x1

    .line 752
    .line 753
    add-int/lit8 v8, v8, -0x1

    .line 754
    .line 755
    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v7

    .line 759
    check-cast v7, Lcom/android/server/job/JobServiceContext;

    .line 760
    .line 761
    goto :goto_22

    .line 762
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    .line 763
    .line 764
    .line 765
    move-result-object v7

    .line 766
    :goto_22
    iput-object v7, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 767
    .line 768
    iput-object v11, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 769
    .line 770
    invoke-virtual {v2, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(I)I

    .line 771
    .line 772
    .line 773
    move-result v7

    .line 774
    if-eqz v7, :cond_2d

    .line 775
    .line 776
    iput v7, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 777
    .line 778
    goto :goto_24

    .line 779
    :cond_2d
    const/4 v7, 0x1

    .line 780
    :goto_23
    const/16 v8, 0x7f

    .line 781
    .line 782
    if-gt v7, v8, :cond_2f

    .line 783
    .line 784
    and-int v8, v7, v14

    .line 785
    .line 786
    if-eqz v8, :cond_2e

    .line 787
    .line 788
    iput v7, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 789
    .line 790
    goto :goto_24

    .line 791
    :cond_2e
    shl-int/lit8 v7, v7, 0x1

    .line 792
    .line 793
    goto :goto_23

    .line 794
    :cond_2f
    :goto_24
    move/from16 v8, v27

    .line 795
    .line 796
    goto :goto_25

    .line 797
    :cond_30
    move/from16 v13, v19

    .line 798
    .line 799
    move/from16 v12, v20

    .line 800
    .line 801
    move/from16 v10, v24

    .line 802
    .line 803
    goto :goto_24

    .line 804
    :goto_25
    iget v7, v11, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 805
    .line 806
    iget-object v4, v11, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 807
    .line 808
    invoke-virtual {v0, v7, v4}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 809
    .line 810
    .line 811
    move-result-object v5

    .line 812
    if-eqz v3, :cond_33

    .line 813
    .line 814
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 815
    .line 816
    .line 817
    iget-object v1, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 818
    .line 819
    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 820
    .line 821
    if-eqz v1, :cond_31

    .line 822
    .line 823
    add-int/lit8 v8, v8, -0x1

    .line 824
    .line 825
    :cond_31
    iget-object v1, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 826
    .line 827
    if-eqz v1, :cond_32

    .line 828
    .line 829
    iput-boolean v9, v1, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    .line 830
    .line 831
    add-int/lit8 v8, v8, 0x1

    .line 832
    .line 833
    move/from16 v18, v8

    .line 834
    .line 835
    invoke-virtual {v6, v1}, Lcom/android/server/job/JobSchedulerService;->getMinJobExecutionGuaranteeMs(Lcom/android/server/job/controllers/JobStatus;)J

    .line 836
    .line 837
    .line 838
    move-result-wide v8

    .line 839
    move v1, v12

    .line 840
    move/from16 v19, v13

    .line 841
    .line 842
    move-wide/from16 v12, v22

    .line 843
    .line 844
    invoke-static {v12, v13, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 845
    .line 846
    .line 847
    move-result-wide v8

    .line 848
    move-wide v12, v8

    .line 849
    move/from16 v8, v18

    .line 850
    .line 851
    goto :goto_26

    .line 852
    :cond_32
    move v1, v12

    .line 853
    move/from16 v19, v13

    .line 854
    .line 855
    move-wide/from16 v12, v22

    .line 856
    .line 857
    :goto_26
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 858
    .line 859
    .line 860
    move-result v9

    .line 861
    const/4 v11, 0x1

    .line 862
    invoke-static {v5, v11, v9}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 863
    .line 864
    .line 865
    goto :goto_27

    .line 866
    :cond_33
    move v1, v12

    .line 867
    move/from16 v19, v13

    .line 868
    .line 869
    move-wide/from16 v12, v22

    .line 870
    .line 871
    const/4 v11, 0x1

    .line 872
    :goto_27
    if-eqz v30, :cond_34

    .line 873
    .line 874
    iget v3, v3, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    .line 875
    .line 876
    invoke-virtual {v2, v3, v14}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->stageJob(II)V

    .line 877
    .line 878
    .line 879
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 880
    .line 881
    invoke-virtual {v2, v7, v4, v5}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    .line 883
    .line 884
    :cond_34
    move-object/from16 v2, p2

    .line 885
    .line 886
    move-object/from16 v4, p4

    .line 887
    .line 888
    move-object/from16 v5, p5

    .line 889
    .line 890
    move v9, v11

    .line 891
    move-object v3, v15

    .line 892
    move-object/from16 v7, v21

    .line 893
    .line 894
    move-wide v14, v12

    .line 895
    move/from16 v13, v19

    .line 896
    .line 897
    move v12, v1

    .line 898
    move-object/from16 v1, p1

    .line 899
    .line 900
    goto/16 :goto_3

    .line 901
    .line 902
    :cond_35
    return-void
.end method

.method public final dumpContextInfoLocked(Landroid/util/IndentingPrintWriter;Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;JJ)V
    .locals 6

    .line 1
    const-string v0, "Active jobs:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 10
    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, "N/A"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    move v1, v0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 27
    .line 28
    check-cast v2, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-ge v1, v2, :cond_3

    .line 35
    .line 36
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 37
    .line 38
    check-cast v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 45
    .line 46
    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 47
    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {p2, v3}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;->test(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    const-string v4, "Slot #"

    .line 58
    .line 59
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 63
    .line 64
    .line 65
    const-string v4, "(ID="

    .line 66
    .line 67
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 75
    .line 76
    .line 77
    const-string v4, "): "

    .line 78
    .line 79
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    .line 83
    .line 84
    .line 85
    if-eqz v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p1, v0, p3, p4}, Lcom/android/server/job/controllers/JobStatus;->dump(Landroid/util/IndentingPrintWriter;ZJ)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 97
    .line 98
    .line 99
    const-string v2, "Evaluated bias: "

    .line 100
    .line 101
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget v2, v3, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 105
    .line 106
    invoke-static {v2}, Landroid/app/job/JobInfo;->getBiasString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    const-string v2, "Active at "

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    .line 119
    .line 120
    sub-long/2addr v4, p5

    .line 121
    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 122
    .line 123
    .line 124
    const-string v2, ", pending for "

    .line 125
    .line 126
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-wide v4, v3, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    .line 130
    .line 131
    iget-wide v2, v3, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    .line 132
    .line 133
    sub-long/2addr v4, v2

    .line 134
    invoke-static {v4, v5, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 141
    .line 142
    .line 143
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 150
    .line 151
    .line 152
    const-string p2, "Idle contexts ("

    .line 153
    .line 154
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 158
    .line 159
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 164
    .line 165
    .line 166
    const-string p2, "):"

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 172
    .line 173
    .line 174
    :goto_2
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 175
    .line 176
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-ge v0, p2, :cond_4

    .line 181
    .line 182
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 183
    .line 184
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    check-cast p2, Lcom/android/server/job/JobServiceContext;

    .line 189
    .line 190
    const-string p5, "ID="

    .line 191
    .line 192
    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 196
    .line 197
    .line 198
    move-result p5

    .line 199
    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 200
    .line 201
    .line 202
    const-string p5, ": "

    .line 203
    .line 204
    invoke-virtual {p1, p5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/job/JobServiceContext;->dumpLocked(Landroid/util/IndentingPrintWriter;J)V

    .line 208
    .line 209
    .line 210
    add-int/lit8 v0, v0, 0x1

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 214
    .line 215
    .line 216
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 217
    .line 218
    if-lez p2, :cond_5

    .line 219
    .line 220
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 221
    .line 222
    .line 223
    const-string p2, "Dropped "

    .line 224
    .line 225
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNumDroppedContexts:I

    .line 229
    .line 230
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 231
    .line 232
    .line 233
    const-string p0, " contexts"

    .line 234
    .line 235
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_5
    return-void
.end method

.method public final dumpLocked(Landroid/util/IndentingPrintWriter;JJ)V
    .locals 3

    .line 1
    const-string v0, "Concurrency:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    :try_start_0
    const-string v0, "Configuration:"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 15
    .line 16
    .line 17
    const-string/jumbo v0, "concurrency_limit"

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 31
    .line 32
    .line 33
    const-string/jumbo v0, "concurrency_screen_off_adjustment_delay_ms"

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 37
    .line 38
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 47
    .line 48
    .line 49
    const-string/jumbo v0, "concurrency_pkg_concurrency_limit_ej"

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    .line 53
    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 63
    .line 64
    .line 65
    const-string/jumbo v0, "concurrency_pkg_concurrency_limit_regular"

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    .line 69
    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 79
    .line 80
    .line 81
    const-string/jumbo v0, "concurrency_enable_max_wait_time_bypass"

    .line 82
    .line 83
    .line 84
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v0, "concurrency_max_wait_ui_ms"

    .line 98
    .line 99
    .line 100
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    .line 101
    .line 102
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 111
    .line 112
    .line 113
    const-string/jumbo v0, "concurrency_max_wait_ej_ms"

    .line 114
    .line 115
    .line 116
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    .line 117
    .line 118
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 127
    .line 128
    .line 129
    const-string/jumbo v0, "concurrency_max_wait_regular_ms"

    .line 130
    .line 131
    .line 132
    iget-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    .line 133
    .line 134
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 146
    .line 147
    .line 148
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 149
    .line 150
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 151
    .line 152
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 159
    .line 160
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 164
    .line 165
    .line 166
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 167
    .line 168
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 172
    .line 173
    .line 174
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 175
    .line 176
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 180
    .line 181
    .line 182
    sget-object v0, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 183
    .line 184
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 185
    .line 186
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 190
    .line 191
    .line 192
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 193
    .line 194
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 198
    .line 199
    .line 200
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 201
    .line 202
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 206
    .line 207
    .line 208
    iget-object v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 209
    .line 210
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 217
    .line 218
    .line 219
    const-string v0, "Screen state: current "

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .line 226
    const-string v1, "OFF"

    .line 227
    .line 228
    const-string v2, "ON"

    .line 229
    .line 230
    if-eqz v0, :cond_0

    .line 231
    .line 232
    move-object v0, v2

    .line 233
    goto :goto_0

    .line 234
    :cond_0
    move-object v0, v1

    .line 235
    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    const-string v0, "  effective "

    .line 239
    .line 240
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 244
    .line 245
    if-eqz v0, :cond_1

    .line 246
    .line 247
    move-object v1, v2

    .line 248
    :cond_1
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 252
    .line 253
    .line 254
    const-string v0, "Last screen ON: "

    .line 255
    .line 256
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    sub-long p4, p2, p4

    .line 260
    .line 261
    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    .line 262
    .line 263
    add-long/2addr v0, p4

    .line 264
    invoke-static {p1, v0, v1, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 268
    .line 269
    .line 270
    const-string v0, "Last screen OFF: "

    .line 271
    .line 272
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    iget-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 276
    .line 277
    add-long/2addr p4, v0

    .line 278
    invoke-static {p1, p4, p5, p2, p3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 285
    .line 286
    .line 287
    const-string p2, "Current work counts: "

    .line 288
    .line 289
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 293
    .line 294
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 298
    .line 299
    .line 300
    const-string/jumbo p2, "mLastMemoryTrimLevel: "

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    .line 307
    .line 308
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 312
    .line 313
    .line 314
    const-string p2, "Active Package stats:"

    .line 315
    .line 316
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 320
    .line 321
    .line 322
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 323
    .line 324
    new-instance p3, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;

    .line 325
    .line 326
    invoke-direct {p3, p1}, Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda3;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2, p3}, Landroid/util/SparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 336
    .line 337
    .line 338
    const-string p2, "User Grace Period: "

    .line 339
    .line 340
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 344
    .line 345
    iget-object p2, p2, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    .line 346
    .line 347
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 351
    .line 352
    .line 353
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 354
    .line 355
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    .line 357
    .line 358
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 359
    .line 360
    .line 361
    return-void

    .line 362
    :catchall_0
    move-exception p0

    .line 363
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 364
    .line 365
    .line 366
    throw p0
.end method

.method public final dumpProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    .line 1
    const-wide v0, 0x10b00000014L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide v2, 0x10800000001L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iget-boolean v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    .line 16
    .line 17
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 18
    .line 19
    .line 20
    const-wide v2, 0x10800000002L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iget-boolean v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 26
    .line 27
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 28
    .line 29
    .line 30
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    .line 31
    .line 32
    sub-long v2, p2, v2

    .line 33
    .line 34
    const-wide v4, 0x10300000003L

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 40
    .line 41
    .line 42
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 43
    .line 44
    sub-long/2addr p2, v2

    .line 45
    const-wide v2, 0x10300000004L

    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v2, v3, p2, p3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 51
    .line 52
    .line 53
    const-wide p2, 0x10500000006L

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    .line 59
    .line 60
    invoke-virtual {p1, p2, p3, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 64
    .line 65
    const-wide p2, 0x10b00000007L

    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final executeStopCommandLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ZIII)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 4
    .line 5
    check-cast v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v0, v2, :cond_4

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 14
    .line 15
    check-cast v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 22
    .line 23
    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 24
    .line 25
    if-eqz v3, :cond_3

    .line 26
    .line 27
    const/4 v4, -0x1

    .line 28
    if-eq p3, v4, :cond_0

    .line 29
    .line 30
    iget v4, v3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 31
    .line 32
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ne p3, v4, :cond_3

    .line 37
    .line 38
    :cond_0
    if-eqz p2, :cond_1

    .line 39
    .line 40
    iget-object v4, v3, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_3

    .line 47
    .line 48
    :cond_1
    iget-object v4, v3, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {p4, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_3

    .line 55
    .line 56
    if-eqz p5, :cond_2

    .line 57
    .line 58
    iget-object v4, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 59
    .line 60
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-ne p6, v4, :cond_3

    .line 65
    .line 66
    :cond_2
    iget v4, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 67
    .line 68
    const/4 v5, 0x2

    .line 69
    if-ne v4, v5, :cond_3

    .line 70
    .line 71
    iget-object v1, v2, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 72
    .line 73
    const-string/jumbo v4, "stop from shell"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p7, p8, v4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v4}, Lcom/android/server/job/JobServiceContext;->sendStopMessageLocked(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v1, "Stopping job: "

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 88
    .line 89
    .line 90
    const-string v1, " "

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 96
    .line 97
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 v1, 0x1

    .line 109
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    return v1
.end method

.method public final getEstimatedNetworkBytesLocked(IILjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 3
    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, p1, p2, p4}, Lcom/android/server/job/controllers/JobStatus;->matches(IILjava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-wide p0, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    .line 41
    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-wide p1, v1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    .line 47
    .line 48
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public final getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x23

    .line 6
    .line 7
    if-eqz p0, :cond_3

    .line 8
    .line 9
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 10
    .line 11
    const/16 v1, 0x28

    .line 12
    .line 13
    if-lt p0, v1, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-lt p0, v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 p0, 0x10

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    or-int/lit8 p0, p0, 0x8

    .line 30
    .line 31
    goto :goto_3

    .line 32
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_6

    .line 37
    .line 38
    or-int/lit8 p0, p0, 0x4

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_3
    iget p0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 42
    .line 43
    if-ge p0, v0, :cond_5

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_5

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_4

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_4
    const/4 p0, 0x0

    .line 59
    goto :goto_2

    .line 60
    :cond_5
    :goto_1
    const/16 p0, 0x20

    .line 61
    .line 62
    :goto_2
    or-int/lit8 p0, p0, 0x40

    .line 63
    .line 64
    :cond_6
    :goto_3
    return p0
.end method

.method public getPackageConcurrencyLimitEj()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    .line 2
    .line 3
    return p0
.end method

.method public getPackageStatsForTesting(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgStatsPool:Landroid/util/Pools$Pool;

    .line 12
    .line 13
    check-cast p0, Landroid/util/Pools$SimplePool;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 20
    .line 21
    if-nez p0, :cond_0

    .line 22
    .line 23
    new-instance p0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;-><init>()V

    .line 26
    .line 27
    .line 28
    :cond_0
    move-object v0, p0

    .line 29
    iput p1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->userId:I

    .line 30
    .line 31
    iput-object p2, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->packageName:Ljava/lang/String;

    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    iput p0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    .line 35
    .line 36
    iput p0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 37
    .line 38
    iput p0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    .line 39
    .line 40
    iput p0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    .line 41
    .line 42
    :cond_1
    return-object v0
.end method

.method public final getRunningJobServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/JobServiceContext;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v0, v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 23
    .line 24
    check-cast v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 31
    .line 32
    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 33
    .line 34
    if-ne v3, p1, :cond_1

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "JobScheduler.Concurrency"

    .line 41
    .line 42
    const-string v2, "Couldn\'t find running job on a context"

    .line 43
    .line 44
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    sget-object p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mRunningJobSet:Ljava/util/Set;

    .line 61
    .line 62
    check-cast p0, Ljava/util/HashSet;

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    :cond_4
    :goto_1
    return-object v1
.end method

.method public final getTransferredNetworkBytesLocked(IILjava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 3
    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 13
    .line 14
    check-cast v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 21
    .line 22
    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-virtual {v2, p1, p2, p4}, Lcom/android/server/job/controllers/JobStatus;->matches(IILjava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget-wide p0, v1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 41
    .line 42
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    iget-wide p1, v1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    .line 47
    .line 48
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p0, 0x0

    .line 61
    return-object p0
.end method

.method public hasImmediacyPrivilegeLocked(Lcom/android/server/job/controllers/JobStatus;Landroid/util/SparseIntArray;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 16
    .line 17
    const/16 v2, 0x28

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v0, v2, :cond_1

    .line 21
    .line 22
    return v3

    .line 23
    :cond_1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 24
    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eq v2, v3, :cond_8

    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    if-eq v2, v4, :cond_7

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    if-eq v2, v5, :cond_6

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-ne v2, v4, :cond_2

    .line 44
    .line 45
    invoke-virtual {p2, v0, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    .line 47
    .line 48
    return v3

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_3

    .line 54
    .line 55
    return v1

    .line 56
    :cond_3
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->getBackgroundStartPrivileges(I)Landroid/app/BackgroundStartPrivileges;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    sget-boolean v1, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 63
    .line 64
    if-eqz v1, :cond_4

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v2, "Job "

    .line 69
    .line 70
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p1, " bsp state: "

    .line 81
    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v1, "JobScheduler.Concurrency"

    .line 93
    .line 94
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    :cond_4
    invoke-virtual {p0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_5

    .line 102
    .line 103
    move v3, v4

    .line 104
    :cond_5
    invoke-virtual {p2, v0, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    .line 106
    .line 107
    return p0

    .line 108
    :cond_6
    return v3

    .line 109
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    return p0

    .line 114
    :cond_8
    return v1
.end method

.method public isPkgConcurrencyLimitedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    .line 1
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 2
    .line 3
    const/16 v1, 0x28

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 12
    .line 13
    iget v0, v0, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    add-int/2addr v1, v0

    .line 22
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 23
    .line 24
    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 25
    .line 26
    if-ge v1, v0, :cond_1

    .line 27
    .line 28
    return v2

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 30
    .line 31
    iget v1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 32
    .line 33
    iget-object v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    return v2

    .line 44
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    .line 51
    iget p1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 52
    .line 53
    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedEj:I

    .line 54
    .line 55
    add-int/2addr p1, v0

    .line 56
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    .line 57
    .line 58
    if-lt p1, p0, :cond_3

    .line 59
    .line 60
    move v2, v1

    .line 61
    :cond_3
    return v2

    .line 62
    :cond_4
    iget p1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    .line 63
    .line 64
    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numStagedRegular:I

    .line 65
    .line 66
    add-int/2addr p1, v0

    .line 67
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    .line 68
    .line 69
    if-lt p1, p0, :cond_5

    .line 70
    .line 71
    move v2, v1

    .line 72
    :cond_5
    return v2
.end method

.method public final isSimilarJobRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    sub-int/2addr v0, v1

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 18
    .line 19
    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 20
    .line 21
    iget-object v4, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getId()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v3, v4, v2}, Lcom/android/server/job/controllers/JobStatus;->matches(IILjava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    return v1

    .line 36
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final markJobsForUserStopLocked(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v0, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    iget v3, v2, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 28
    .line 29
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ne p1, v3, :cond_2

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    iget v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 52
    .line 53
    const/4 v3, 0x4

    .line 54
    const-string v4, "JobServiceContext"

    .line 55
    .line 56
    if-ne v2, v3, :cond_0

    .line 57
    .line 58
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v3, "Too late to mark for death (verb="

    .line 65
    .line 66
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 70
    .line 71
    const-string v3, "), ignoring."

    .line 72
    .line 73
    invoke-static {v2, v1, v3, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    sget-boolean v2, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v3, "Marking "

    .line 84
    .line 85
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 89
    .line 90
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v3, " for death because 13:"

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    :cond_1
    const/16 v2, 0xd

    .line 113
    .line 114
    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkStopReason:I

    .line 115
    .line 116
    const/16 v3, 0xb

    .line 117
    .line 118
    iput v3, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkInternalStopReason:I

    .line 119
    .line 120
    iput-object p3, v1, Lcom/android/server/job/JobServiceContext;->mDeathMarkDebugReason:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v4, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 123
    .line 124
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getStopReason()I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-nez v4, :cond_2

    .line 129
    .line 130
    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 131
    .line 132
    invoke-virtual {v1, v2, v3, p3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_3
    return-void
.end method

.method public final maybeStopOvertimeJobsLocked(Lcom/android/server/job/restrictions/JobRestriction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    :goto_0
    if-ltz v0, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 14
    .line 15
    check-cast v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    invoke-virtual {p1, v2, v3}, Lcom/android/server/job/restrictions/JobRestriction;->isJobRestricted(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    iget v2, p1, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    .line 46
    .line 47
    invoke-static {v2}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    iget v4, p1, Lcom/android/server/job/restrictions/JobRestriction;->mStopReason:I

    .line 52
    .line 53
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public final noteConcurrency(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x1

    .line 17
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    iget-object v0, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 22
    .line 23
    iget v3, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 24
    .line 25
    if-le v1, v3, :cond_0

    .line 26
    .line 27
    iput v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 28
    .line 29
    :cond_0
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 30
    .line 31
    if-le v2, v1, :cond_1

    .line 32
    .line 33
    iput v2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 34
    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    .line 37
    sget-object p1, Lcom/android/server/job/JobConcurrencyManager;->sConcurrencyHistogramLogger:Lcom/android/modules/expresslog/Histogram;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 40
    .line 41
    check-cast p0, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    int-to-float p0, p0

    .line 48
    invoke-virtual {p1, p0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final onAppRemovedLocked(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningEj:I

    .line 16
    .line 17
    if-gtz v1, :cond_1

    .line 18
    .line 19
    iget v0, v0, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->numRunningRegular:I

    .line 20
    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 25
    .line 26
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, "("

    .line 43
    .line 44
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ") marked as removed before jobs stopped running"

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    const-string p1, "JobScheduler.Concurrency"

    .line 60
    .line 61
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void
.end method

.method public final onInteractiveStateChanged(Z)V
    .locals 4

    .line 1
    const-string v0, "Interactive: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    .line 7
    .line 8
    if-ne v2, p1, :cond_0

    .line 9
    .line 10
    monitor-exit v1

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mCurrentInteractiveState:Z

    .line 15
    .line 16
    sget-boolean v2, Lcom/android/server/job/JobConcurrencyManager;->DEBUG:Z

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    const-string v2, "JobScheduler.Concurrency"

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    iput-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOnRealtime:J

    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 52
    .line 53
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    .line 56
    .line 57
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iput-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastScreenOffRealtime:J

    .line 62
    .line 63
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mHandler:Landroid/os/Handler;

    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRampUpForScreenOff:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda1;

    .line 66
    .line 67
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 68
    .line 69
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 70
    .line 71
    .line 72
    :goto_0
    monitor-exit v1

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method public final onThirdPartyAppsCanStart()V
    .locals 11

    .line 1
    const-string v0, "batterystats"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v8, v1

    .line 13
    :goto_0
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 14
    .line 15
    if-ge v8, v1, :cond_0

    .line 16
    .line 17
    iget-object v9, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 20
    .line 21
    iget-object v6, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 22
    .line 23
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mInjector:Lcom/android/server/job/JobConcurrencyManager$Injector;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    new-instance v10, Lcom/android/server/job/JobServiceContext;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 39
    .line 40
    move-object v1, v10

    .line 41
    move-object v3, p0

    .line 42
    move-object v5, v0

    .line 43
    invoke-direct/range {v1 .. v7}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobConcurrencyManager;Lcom/android/server/job/JobNotificationCoordinator;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    add-int/lit8 v8, v8, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public final onUserRemoved(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->mGracePeriodExpiration:Landroid/util/SparseLongArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public prepareForAssignmentDeterminationLocked(Landroid/util/ArraySet;Ljava/util/List;Ljava/util/List;Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 10
    .line 11
    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 16
    .line 17
    .line 18
    iget-object v6, v0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 19
    .line 20
    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 21
    .line 22
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 28
    .line 29
    .line 30
    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 36
    .line 37
    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    .line 38
    .line 39
    .line 40
    const/4 v7, 0x1

    .line 41
    invoke-virtual {v0, v4, v7}, Lcom/android/server/job/JobConcurrencyManager;->updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V

    .line 42
    .line 43
    .line 44
    check-cast v5, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    sget-object v8, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 51
    .line 52
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    .line 57
    .line 58
    move-result-wide v8

    .line 59
    const/4 v13, 0x0

    .line 60
    const-wide v14, 0x7fffffffffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :goto_0
    if-ge v13, v4, :cond_6

    .line 66
    .line 67
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v16

    .line 71
    move-object/from16 v10, v16

    .line 72
    .line 73
    check-cast v10, Lcom/android/server/job/JobServiceContext;

    .line 74
    .line 75
    iget-object v11, v10, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 76
    .line 77
    iget-object v12, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 78
    .line 79
    check-cast v12, Landroid/util/Pools$SimplePool;

    .line 80
    .line 81
    invoke-virtual {v12}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    check-cast v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 86
    .line 87
    if-nez v12, :cond_0

    .line 88
    .line 89
    new-instance v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 90
    .line 91
    invoke-direct {v12}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    .line 92
    .line 93
    .line 94
    :cond_0
    iput-object v10, v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 95
    .line 96
    if-eqz v11, :cond_4

    .line 97
    .line 98
    iget v7, v10, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 99
    .line 100
    move/from16 v17, v4

    .line 101
    .line 102
    iget-object v4, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 103
    .line 104
    invoke-virtual {v4, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 105
    .line 106
    .line 107
    move-result v18

    .line 108
    move-object/from16 v19, v5

    .line 109
    .line 110
    const/16 v16, 0x1

    .line 111
    .line 112
    add-int/lit8 v5, v18, 0x1

    .line 113
    .line 114
    invoke-virtual {v4, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    .line 116
    .line 117
    iget-boolean v4, v11, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    .line 118
    .line 119
    if-eqz v4, :cond_1

    .line 120
    .line 121
    iget v4, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    .line 122
    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 124
    .line 125
    iput v4, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningImmediacyPrivileged:I

    .line 126
    .line 127
    :cond_1
    invoke-virtual {v11}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsUserInitiatedJob()Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    if-eqz v4, :cond_2

    .line 132
    .line 133
    iget v4, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    .line 134
    .line 135
    add-int/lit8 v4, v4, 0x1

    .line 136
    .line 137
    iput v4, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningUi:I

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    iget-boolean v4, v11, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 141
    .line 142
    if-eqz v4, :cond_3

    .line 143
    .line 144
    iget v4, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    .line 145
    .line 146
    add-int/lit8 v4, v4, 0x1

    .line 147
    .line 148
    iput v4, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningEj:I

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    iget v4, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    .line 152
    .line 153
    add-int/lit8 v4, v4, 0x1

    .line 154
    .line 155
    iput v4, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->numRunningReg:I

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    move/from16 v17, v4

    .line 159
    .line 160
    move-object/from16 v19, v5

    .line 161
    .line 162
    move/from16 v16, v7

    .line 163
    .line 164
    :goto_1
    iget v4, v10, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    .line 165
    .line 166
    iput v4, v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    .line 167
    .line 168
    invoke-virtual {v0, v10}, Lcom/android/server/job/JobConcurrencyManager;->shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    iput-object v4, v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    .line 173
    .line 174
    if-eqz v4, :cond_5

    .line 175
    .line 176
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_5
    iget-wide v4, v10, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 181
    .line 182
    iget-wide v10, v10, Lcom/android/server/job/JobServiceContext;->mMinExecutionGuaranteeMillis:J

    .line 183
    .line 184
    add-long/2addr v4, v10

    .line 185
    sub-long/2addr v4, v8

    .line 186
    const-wide/16 v10, 0x0

    .line 187
    .line 188
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 189
    .line 190
    .line 191
    move-result-wide v4

    .line 192
    iput-wide v4, v12, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->timeUntilStoppableMs:J

    .line 193
    .line 194
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 195
    .line 196
    .line 197
    move-result-wide v14

    .line 198
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 202
    .line 203
    move/from16 v7, v16

    .line 204
    .line 205
    move/from16 v4, v17

    .line 206
    .line 207
    move-object/from16 v5, v19

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_6
    move/from16 v17, v4

    .line 212
    .line 213
    move/from16 v16, v7

    .line 214
    .line 215
    const-wide/16 v10, 0x0

    .line 216
    .line 217
    sget-object v4, Lcom/android/server/job/JobConcurrencyManager;->sDeterminationComparator:Lcom/android/server/job/JobConcurrencyManager$$ExternalSyntheticLambda2;

    .line 218
    .line 219
    invoke-interface {v1, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 220
    .line 221
    .line 222
    invoke-interface {v2, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 223
    .line 224
    .line 225
    move/from16 v4, v17

    .line 226
    .line 227
    :goto_3
    iget v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 228
    .line 229
    if-ge v4, v1, :cond_9

    .line 230
    .line 231
    iget-object v1, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 232
    .line 233
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    if-lez v1, :cond_7

    .line 238
    .line 239
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 240
    .line 241
    add-int/lit8 v1, v1, -0x1

    .line 242
    .line 243
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Lcom/android/server/job/JobServiceContext;

    .line 248
    .line 249
    goto :goto_4

    .line 250
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    const-string v2, "Had fewer than "

    .line 253
    .line 254
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    const-string v2, " in existence"

    .line 263
    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const-string v2, "JobScheduler.Concurrency"

    .line 272
    .line 273
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/job/JobConcurrencyManager;->createNewJobServiceContext()Lcom/android/server/job/JobServiceContext;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    :goto_4
    iget-object v2, v0, Lcom/android/server/job/JobConcurrencyManager;->mContextAssignmentPool:Landroid/util/Pools$Pool;

    .line 281
    .line 282
    check-cast v2, Landroid/util/Pools$SimplePool;

    .line 283
    .line 284
    invoke-virtual {v2}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 289
    .line 290
    if-nez v2, :cond_8

    .line 291
    .line 292
    new-instance v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;

    .line 293
    .line 294
    invoke-direct {v2}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    .line 295
    .line 296
    .line 297
    :cond_8
    iput-object v1, v2, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    .line 298
    .line 299
    move-object/from16 v1, p1

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    add-int/lit8 v4, v4, 0x1

    .line 305
    .line 306
    goto :goto_3

    .line 307
    :cond_9
    iget v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    .line 308
    .line 309
    iput v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 310
    .line 311
    move/from16 v0, v16

    .line 312
    .line 313
    :goto_5
    const/16 v1, 0x7f

    .line 314
    .line 315
    if-ge v0, v1, :cond_a

    .line 316
    .line 317
    iget-object v1, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 318
    .line 319
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    .line 324
    .line 325
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 326
    .line 327
    .line 328
    iget v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 329
    .line 330
    sub-int/2addr v2, v1

    .line 331
    iput v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 332
    .line 333
    shl-int/lit8 v0, v0, 0x1

    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_a
    move/from16 v0, v16

    .line 337
    .line 338
    :goto_6
    if-ge v0, v1, :cond_b

    .line 339
    .line 340
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 341
    .line 342
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    iget-object v4, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 347
    .line 348
    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 349
    .line 350
    .line 351
    move-result v4

    .line 352
    add-int/2addr v4, v2

    .line 353
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    .line 354
    .line 355
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    iget v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 360
    .line 361
    iget-object v7, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    .line 362
    .line 363
    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->get(I)I

    .line 364
    .line 365
    .line 366
    move-result v7

    .line 367
    sub-int/2addr v7, v2

    .line 368
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 369
    .line 370
    .line 371
    move-result v4

    .line 372
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    .line 373
    .line 374
    .line 375
    move-result v4

    .line 376
    const/4 v5, 0x0

    .line 377
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    add-int/2addr v2, v4

    .line 382
    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    .line 383
    .line 384
    invoke-virtual {v5, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 385
    .line 386
    .line 387
    iget v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 388
    .line 389
    sub-int/2addr v2, v4

    .line 390
    iput v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 391
    .line 392
    shl-int/lit8 v0, v0, 0x1

    .line 393
    .line 394
    goto :goto_6

    .line 395
    :cond_b
    move/from16 v7, v16

    .line 396
    .line 397
    :goto_7
    if-ge v7, v1, :cond_c

    .line 398
    .line 399
    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 400
    .line 401
    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    iget-object v2, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumPendingJobs:Landroid/util/SparseIntArray;

    .line 406
    .line 407
    invoke-virtual {v2, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    add-int/2addr v2, v0

    .line 412
    iget-object v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mRecycledReserved:Landroid/util/SparseIntArray;

    .line 413
    .line 414
    invoke-virtual {v0, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    iget v4, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 419
    .line 420
    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 421
    .line 422
    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->get(I)I

    .line 423
    .line 424
    .line 425
    move-result v5

    .line 426
    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    sub-int/2addr v2, v0

    .line 431
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    const/4 v4, 0x0

    .line 436
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    iget-object v5, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumActuallyReservedSlots:Landroid/util/SparseIntArray;

    .line 441
    .line 442
    add-int/2addr v0, v2

    .line 443
    invoke-virtual {v5, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    .line 445
    .line 446
    iget v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 447
    .line 448
    sub-int/2addr v0, v2

    .line 449
    iput v0, v6, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 450
    .line 451
    shl-int/lit8 v7, v7, 0x1

    .line 452
    .line 453
    goto :goto_7

    .line 454
    :cond_c
    const-wide v7, 0x7fffffffffffffffL

    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    cmp-long v0, v14, v7

    .line 460
    .line 461
    if-nez v0, :cond_d

    .line 462
    .line 463
    move-wide v14, v10

    .line 464
    :cond_d
    iput-wide v14, v3, Lcom/android/server/job/JobConcurrencyManager$AssignmentInfo;->minPreferredUidOnlyWaitingTimeMs:J

    .line 465
    .line 466
    return-void
.end method

.method public shouldRunAsFgUserJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mShouldRestrictBgUser:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget v3, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 16
    .line 17
    const/16 v4, -0x2710

    .line 18
    .line 19
    if-eq v3, v4, :cond_1

    .line 20
    .line 21
    if-eq v3, p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move p1, v3

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eq v0, p1, :cond_3

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_3

    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mGracePeriodObserver:Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobConcurrencyManager$GracePeriodObserver;->isWithinGracePeriodForUser(I)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v1, 0x0

    .line 52
    :cond_3
    :goto_0
    return v1
.end method

.method public final shouldStopRunningJobLocked(Lcom/android/server/job/JobServiceContext;)Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->isWithinExecutionGuaranteeTime()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    const-string p0, "battery saver"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    const-string/jumbo p0, "deep doze"

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_3
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, Lcom/android/server/job/JobSchedulerService;->checkIfRestricted(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/restrictions/JobRestriction;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    if-eqz v3, :cond_4

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string/jumbo p1, "restriction:"

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget p1, v3, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    .line 54
    .line 55
    invoke-static {p1}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0

    .line 67
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/job/JobConcurrencyManager;->updateCounterConfigLocked()V

    .line 68
    .line 69
    .line 70
    iget p1, p1, Lcom/android/server/job/JobServiceContext;->mRunningJobWorkType:I

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 73
    .line 74
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 79
    .line 80
    iget v4, v4, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 81
    .line 82
    if-gt v3, v4, :cond_14

    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 85
    .line 86
    iget-object v4, v3, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iget-object v6, v3, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 94
    .line 95
    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-le v4, v6, :cond_5

    .line 100
    .line 101
    goto/16 :goto_3

    .line 102
    .line 103
    :cond_5
    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 104
    .line 105
    iget v4, v2, Lcom/android/server/job/PendingJobQueue;->mSize:I

    .line 106
    .line 107
    if-nez v4, :cond_6

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    const/4 v6, 0x1

    .line 115
    const-string v7, " queue"

    .line 116
    .line 117
    const-string/jumbo v8, "blocking "

    .line 118
    .line 119
    .line 120
    if-nez v4, :cond_c

    .line 121
    .line 122
    iget-boolean v4, v0, Lcom/android/server/job/controllers/JobStatus;->startedAsExpeditedJob:Z

    .line 123
    .line 124
    if-eqz v4, :cond_7

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_7
    invoke-virtual {v3, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-lez v0, :cond_8

    .line 132
    .line 133
    new-instance p0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    return-object p0

    .line 153
    :cond_8
    iput-boolean v6, v2, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 154
    .line 155
    const/16 v0, 0x7f

    .line 156
    .line 157
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    if-eqz v4, :cond_b

    .line 162
    .line 163
    invoke-virtual {p0, v4}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    and-int v5, v4, v0

    .line 168
    .line 169
    if-lez v5, :cond_a

    .line 170
    .line 171
    invoke-virtual {v3, v4, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    .line 172
    .line 173
    .line 174
    move-result v5

    .line 175
    if-eqz v5, :cond_a

    .line 176
    .line 177
    const-string/jumbo p0, "blocking other pending jobs"

    .line 178
    .line 179
    .line 180
    return-object p0

    .line 181
    :cond_a
    not-int v4, v4

    .line 182
    and-int/2addr v0, v4

    .line 183
    if-nez v0, :cond_9

    .line 184
    .line 185
    :cond_b
    return-object v1

    .line 186
    :cond_c
    :goto_0
    const/16 v2, 0x20

    .line 187
    .line 188
    const/16 v4, 0x8

    .line 189
    .line 190
    if-eq p1, v2, :cond_11

    .line 191
    .line 192
    const/16 v9, 0x40

    .line 193
    .line 194
    if-ne p1, v9, :cond_d

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_d
    invoke-virtual {v3, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    if-lez p1, :cond_e

    .line 202
    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-static {v4}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    return-object p0

    .line 223
    :cond_e
    iget-boolean p1, v0, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    .line 224
    .line 225
    if-eqz p1, :cond_13

    .line 226
    .line 227
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 228
    .line 229
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    sub-int/2addr p1, v6

    .line 234
    :goto_1
    if-ltz p1, :cond_10

    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 237
    .line 238
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 243
    .line 244
    iget-boolean v0, v0, Lcom/android/server/job/controllers/JobStatus;->startedWithImmediacyPrivilege:Z

    .line 245
    .line 246
    if-eqz v0, :cond_f

    .line 247
    .line 248
    add-int/lit8 v5, v5, 0x1

    .line 249
    .line 250
    :cond_f
    add-int/lit8 p1, p1, -0x1

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_10
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 254
    .line 255
    iget p0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 256
    .line 257
    div-int/lit8 p0, p0, 0x2

    .line 258
    .line 259
    if-le v5, p0, :cond_13

    .line 260
    .line 261
    const-string/jumbo p0, "prevent immediacy privilege dominance"

    .line 262
    .line 263
    .line 264
    return-object p0

    .line 265
    :cond_11
    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    if-lez p0, :cond_12

    .line 270
    .line 271
    new-instance p0, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    invoke-static {v2}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    return-object p0

    .line 291
    :cond_12
    invoke-virtual {v3, v4}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->getPendingJobCount(I)I

    .line 292
    .line 293
    .line 294
    move-result p0

    .line 295
    if-lez p0, :cond_13

    .line 296
    .line 297
    invoke-virtual {v3, v4, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->canJobStart(II)I

    .line 298
    .line 299
    .line 300
    move-result p0

    .line 301
    if-eqz p0, :cond_13

    .line 302
    .line 303
    new-instance p0, Ljava/lang/StringBuilder;

    .line 304
    .line 305
    invoke-direct {p0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-static {v4}, Lcom/android/server/job/JobConcurrencyManager;->workTypeToString(I)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    return-object p0

    .line 323
    :cond_13
    return-object v1

    .line 324
    :cond_14
    :goto_3
    const-string/jumbo p0, "too many jobs running"

    .line 325
    .line 326
    .line 327
    return-object p0
.end method

.method public final startJobLocked(ILcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12

    .line 1
    const-string v0, "JobScheduler.Concurrency"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 6
    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 14
    .line 15
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->getWakelockTag()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    iget v6, p3, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 20
    .line 21
    const/4 v7, 0x1

    .line 22
    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    iget v5, p3, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 27
    .line 28
    iget-object v8, p3, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v5, v8}, Lcom/android/server/job/JobSchedulerService;->deriveWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 42
    .line 43
    .line 44
    move v9, v5

    .line 45
    :goto_0
    if-ge v9, v3, :cond_0

    .line 46
    .line 47
    :try_start_0
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    check-cast v10, Lcom/android/server/job/controllers/StateController;

    .line 52
    .line 53
    invoke-virtual {v10, p3}, Lcom/android/server/job/controllers/StateController;->prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v9, v9, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_0
    invoke-virtual {p0, v6, v8}, Lcom/android/server/job/JobConcurrencyManager;->getPkgStatsLocked(ILjava/lang/String;)Lcom/android/server/job/JobConcurrencyManager$PackageStats;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 67
    .line 68
    .line 69
    move-result v10

    .line 70
    invoke-static {v9, v5, v10}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustStagedCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p3, p1}, Lcom/android/server/job/JobServiceContext;->executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;I)Z

    .line 74
    .line 75
    .line 76
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v11, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 78
    .line 79
    if-nez v10, :cond_2

    .line 80
    .line 81
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string p2, "Error executing "

    .line 87
    .line 88
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object p0, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 102
    .line 103
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-nez p0, :cond_1

    .line 108
    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string p2, "# staged jobs for "

    .line 112
    .line 113
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p1, " went negative."

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_1
    iget-object p2, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 133
    .line 134
    sub-int/2addr p0, v7

    .line 135
    invoke-virtual {p2, p1, p0}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v11, p1}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->maybeAdjustReservations(I)V

    .line 139
    .line 140
    .line 141
    :goto_1
    if-ge v5, v3, :cond_4

    .line 142
    .line 143
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p0

    .line 147
    check-cast p0, Lcom/android/server/job/controllers/StateController;

    .line 148
    .line 149
    invoke-virtual {p0, p3}, Lcom/android/server/job/controllers/StateController;->unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V

    .line 150
    .line 151
    .line 152
    add-int/lit8 v5, v5, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 156
    .line 157
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    sget-object v0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    .line 161
    .line 162
    iget-object v2, p3, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 163
    .line 164
    iget v3, p3, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 165
    .line 166
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->addRunningJobs(Landroid/app/job/JobInfo;I)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 170
    .line 171
    check-cast v0, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mIdleContexts:Landroid/util/ArraySet;

    .line 177
    .line 178
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    iget-object p2, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 182
    .line 183
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    .line 188
    .line 189
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    .line 191
    .line 192
    iget-object p2, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 193
    .line 194
    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    if-nez p2, :cond_3

    .line 199
    .line 200
    const-string p2, "# stated jobs for "

    .line 201
    .line 202
    const-string v0, " went negative."

    .line 203
    .line 204
    const-string v2, "JobScheduler.Concurrency"

    .line 205
    .line 206
    invoke-static {p1, p2, v0, v2}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_3
    iget-object v0, v11, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumStartingJobs:Landroid/util/SparseIntArray;

    .line 211
    .line 212
    add-int/lit8 p2, p2, -0x1

    .line 213
    .line 214
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    .line 216
    .line 217
    :goto_2
    invoke-virtual {p3}, Lcom/android/server/job/controllers/JobStatus;->shouldTreatAsExpeditedJob()Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    invoke-static {v9, v7, p1}, Lcom/android/server/job/JobConcurrencyManager$PackageStats;->-$$Nest$madjustRunningCount(Lcom/android/server/job/JobConcurrencyManager$PackageStats;ZZ)V

    .line 222
    .line 223
    .line 224
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mActivePkgStats:Landroid/util/SparseArrayMap;

    .line 225
    .line 226
    invoke-virtual {p0, v6, v8, v9}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, p3}, Lcom/android/server/job/JobSchedulerService;->resetPendingJobReasonCache(Lcom/android/server/job/controllers/JobStatus;)V

    .line 230
    .line 231
    .line 232
    :cond_4
    iget-object p0, v1, Lcom/android/server/job/JobSchedulerService;->mPendingJobQueue:Lcom/android/server/job/PendingJobQueue;

    .line 233
    .line 234
    invoke-virtual {p0, p3}, Lcom/android/server/job/PendingJobQueue;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 235
    .line 236
    .line 237
    move-result p0

    .line 238
    if-eqz p0, :cond_5

    .line 239
    .line 240
    iget-object p0, v1, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    .line 241
    .line 242
    invoke-virtual {p0, p3}, Lcom/android/server/job/JobPackageTracker;->noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .line 244
    .line 245
    :cond_5
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :goto_3
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 250
    .line 251
    .line 252
    throw p0
.end method

.method public final stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;IILjava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 13
    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v0, v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mActiveServices:Ljava/util/List;

    .line 23
    .line 24
    check-cast v2, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 31
    .line 32
    iget-object v3, v2, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 33
    .line 34
    if-ne v3, p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJobLocked(IILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-string p2, "JobScheduler.Concurrency"

    .line 45
    .line 46
    const-string p3, "Couldn\'t find running job on a context"

    .line 47
    .line 48
    invoke-static {p2, p3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    sget-object p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter$JobSchedulerPackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 61
    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/JobSchedulerPackageFilter;->mRunningJobSet:Ljava/util/Set;

    .line 65
    .line 66
    check-cast p0, Ljava/util/HashSet;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    return v1
.end method

.method public final updateConfigLocked()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string/jumbo v1, "jobscheduler"

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "concurrency_limit"

    .line 12
    .line 13
    .line 14
    sget v2, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_CONCURRENCY_LIMIT:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/16 v2, 0x40

    .line 21
    .line 22
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/16 v2, 0x8

    .line 27
    .line 28
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 33
    .line 34
    const-string/jumbo v1, "concurrency_screen_off_adjustment_delay_ms"

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x7530

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mScreenOffAdjustmentDelayMs:J

    .line 44
    .line 45
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 48
    .line 49
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 50
    .line 51
    invoke-virtual {v2, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 52
    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 55
    .line 56
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 57
    .line 58
    invoke-virtual {v2, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 59
    .line 60
    .line 61
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 62
    .line 63
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 64
    .line 65
    invoke-virtual {v2, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 69
    .line 70
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 71
    .line 72
    invoke-virtual {v1, v0, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 73
    .line 74
    .line 75
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 76
    .line 77
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 78
    .line 79
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 80
    .line 81
    invoke-virtual {v2, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 85
    .line 86
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 87
    .line 88
    invoke-virtual {v2, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 89
    .line 90
    .line 91
    iget-object v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 92
    .line 93
    iget v3, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 94
    .line 95
    invoke-virtual {v2, v0, v3}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 99
    .line 100
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->update(Landroid/provider/DeviceConfig$Properties;I)V

    .line 103
    .line 104
    .line 105
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 106
    .line 107
    const-string/jumbo v2, "concurrency_pkg_concurrency_limit_ej"

    .line 108
    .line 109
    .line 110
    const/4 v3, 0x3

    .line 111
    invoke-virtual {v0, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/4 v2, 0x1

    .line 120
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitEj:I

    .line 125
    .line 126
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mSteadyStateConcurrencyLimit:I

    .line 127
    .line 128
    const-string/jumbo v3, "concurrency_pkg_concurrency_limit_regular"

    .line 129
    .line 130
    .line 131
    sget v4, Lcom/android/server/job/JobConcurrencyManager;->DEFAULT_PKG_CONCURRENCY_LIMIT_REGULAR:I

    .line 132
    .line 133
    invoke-virtual {v0, v3, v4}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mPkgConcurrencyLimitRegular:I

    .line 146
    .line 147
    const-string/jumbo v1, "concurrency_enable_max_wait_time_bypass"

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    iput-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitTimeBypassEnabled:Z

    .line 155
    .line 156
    const-string/jumbo v1, "concurrency_max_wait_ui_ms"

    .line 157
    .line 158
    .line 159
    const-wide/32 v2, 0x493e0

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    const-wide/16 v6, 0x0

    .line 167
    .line 168
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    .line 169
    .line 170
    .line 171
    move-result-wide v4

    .line 172
    iput-wide v4, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitUIMs:J

    .line 173
    .line 174
    const-string/jumbo v1, "concurrency_max_wait_ej_ms"

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 182
    .line 183
    .line 184
    move-result-wide v1

    .line 185
    iput-wide v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitEjMs:J

    .line 186
    .line 187
    const-string/jumbo v3, "concurrency_max_wait_regular_ms"

    .line 188
    .line 189
    .line 190
    const-wide/32 v4, 0x1b7740

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v3, v4, v5}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 194
    .line 195
    .line 196
    move-result-wide v3

    .line 197
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 198
    .line 199
    .line 200
    move-result-wide v0

    .line 201
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mMaxWaitRegularMs:J

    .line 202
    .line 203
    return-void
.end method

.method public final updateCounterConfigLocked()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-wide v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    .line 17
    .line 18
    .line 19
    move-result-wide v3

    .line 20
    const-wide/16 v5, 0x3e8

    .line 21
    .line 22
    add-long/2addr v0, v5

    .line 23
    iput-wide v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mNextSystemStateRefreshTime:J

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    .line 27
    .line 28
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Landroid/app/IActivityManager;->getMemoryTrimLevel()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    :catch_0
    const/4 v0, 0x1

    .line 39
    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 40
    .line 41
    .line 42
    iget-boolean v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mEffectiveInteractiveState:Z

    .line 43
    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_ON:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object v1, Lcom/android/server/job/JobConcurrencyManager;->CONFIG_LIMITS_SCREEN_OFF:Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;

    .line 50
    .line 51
    :goto_0
    iget v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mLastMemoryTrimLevel:I

    .line 52
    .line 53
    if-eq v2, v0, :cond_4

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    if-eq v2, v3, :cond_3

    .line 57
    .line 58
    const/4 v3, 0x3

    .line 59
    if-eq v2, v3, :cond_2

    .line 60
    .line 61
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->normal:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->critical:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 67
    .line 68
    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->low:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 72
    .line 73
    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    iget-object v1, v1, Lcom/android/server/job/JobConcurrencyManager$WorkConfigLimitsPerMemoryTrimLevel;->moderate:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 77
    .line 78
    iput-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 79
    .line 80
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkTypeConfig:Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    iget v2, v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 88
    .line 89
    iput v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    .line 90
    .line 91
    move v2, v0

    .line 92
    :goto_2
    const/16 v3, 0x7f

    .line 93
    .line 94
    if-ge v2, v3, :cond_5

    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    .line 97
    .line 98
    iget-object v4, v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMinReservedSlots:Landroid/util/SparseIntArray;

    .line 99
    .line 100
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    .line 106
    .line 107
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigAbsoluteMaxSlots:Landroid/util/SparseIntArray;

    .line 108
    .line 109
    iget-object v4, v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxAllowedSlots:Landroid/util/SparseIntArray;

    .line 110
    .line 111
    iget v5, v1, Lcom/android/server/job/JobConcurrencyManager$WorkTypeConfig;->mMaxTotal:I

    .line 112
    .line 113
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    .line 119
    .line 120
    shl-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    iget v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigMaxTotal:I

    .line 124
    .line 125
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    sub-int/2addr v1, v0

    .line 134
    :goto_3
    if-ltz v1, :cond_6

    .line 135
    .line 136
    iget v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 137
    .line 138
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 139
    .line 140
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iget-object v3, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mConfigNumReservedSlots:Landroid/util/SparseIntArray;

    .line 145
    .line 146
    iget-object v4, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumRunningJobs:Landroid/util/SparseIntArray;

    .line 147
    .line 148
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 149
    .line 150
    .line 151
    move-result v4

    .line 152
    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    sub-int/2addr v0, v2

    .line 161
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->mNumUnspecializedRemaining:I

    .line 162
    .line 163
    add-int/lit8 v1, v1, -0x1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_6
    return-void
.end method

.method public final updateNonRunningPrioritiesLocked(Lcom/android/server/job/PendingJobQueue;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/android/server/job/PendingJobQueue;->mNeedToResetIterators:Z

    .line 3
    .line 4
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/PendingJobQueue;->next()Lcom/android/server/job/controllers/JobStatus;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mRunningJobs:Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lcom/android/server/job/JobSchedulerService;->evaluateJobBiasLocked(Lcom/android/server/job/controllers/JobStatus;)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput v2, v1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 26
    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobConcurrencyManager;->getJobWorkTypes(Lcom/android/server/job/controllers/JobStatus;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/android/server/job/JobConcurrencyManager;->mWorkCountTracker:Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;

    .line 34
    .line 35
    invoke-virtual {v2, v1, v0}, Lcom/android/server/job/JobConcurrencyManager$WorkCountTracker;->adjustPendingJobCount(IZ)I

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method
