.class public final Lcom/android/server/am/ProcessErrorStateRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final DEBUG_ATRACE:Z

.field public mAnrAnnotation:Ljava/lang/String;

.field public mAnrData:Lcom/android/server/am/AppNotRespondingDialog$Data;

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mBad:Z

.field public mCrashHandler:Ljava/lang/Runnable;

.field public mCrashing:Z

.field public mCrashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field public final mDialogController:Lcom/android/server/am/ErrorDialogController;

.field public mErrorReportReceiver:Landroid/content/ComponentName;

.field public mForceCrashReport:Z

.field public mNotResponding:Z

.field public mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_HIGH:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->DEBUG_ATRACE:Z

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/am/ErrorDialogController;

    .line 29
    .line 30
    invoke-direct {v0, p1}, Lcom/android/server/am/ErrorDialogController;-><init>(Lcom/android/server/am/ProcessRecord;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final appNotResponding(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;Ljava/util/concurrent/ExecutorService;ZZLjava/util/concurrent/Future;)V
    .locals 55

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    move-object/from16 v7, p3

    .line 8
    .line 9
    move-object/from16 v2, p4

    .line 10
    .line 11
    move-object/from16 v0, p6

    .line 12
    .line 13
    move-object/from16 v3, p7

    .line 14
    .line 15
    move/from16 v4, p8

    .line 16
    .line 17
    const-string v13, "ANR "

    .line 18
    .line 19
    iget-object v12, v0, Lcom/android/internal/os/TimeoutRecord;->mReason:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v5, v0, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    .line 22
    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v8, 0x5

    .line 26
    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    new-instance v8, Landroid/util/SparseBooleanArray;

    .line 30
    .line 31
    const/16 v9, 0x14

    .line 32
    .line 33
    invoke-direct {v8, v9}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/os/TimeoutRecord;->closeExpiredTimer()V

    .line 37
    .line 38
    .line 39
    iget-object v9, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 40
    .line 41
    iget-boolean v9, v9, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 42
    .line 43
    if-eqz v9, :cond_0

    .line 44
    .line 45
    const-string v0, "ActivityManager"

    .line 46
    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v3, "Skipping debugged app ANR: "

    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " "

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    iget-boolean v9, v1, Lcom/android/server/am/ProcessErrorStateRecord;->DEBUG_ATRACE:Z

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v10, 0x1

    .line 77
    if-eqz v9, :cond_3

    .line 78
    .line 79
    const-string/jumbo v9, "debug.perfmond.atrace"

    .line 80
    .line 81
    .line 82
    invoke-static {v9, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-eq v9, v10, :cond_2

    .line 87
    .line 88
    const/4 v10, 0x3

    .line 89
    if-eq v9, v10, :cond_2

    .line 90
    .line 91
    const/16 v10, 0x67

    .line 92
    .line 93
    if-ne v9, v10, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    move v10, v11

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    const/4 v10, 0x1

    .line 99
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    move-object/from16 v44, v13

    .line 102
    .line 103
    const-string v13, "Trace mode: "

    .line 104
    .line 105
    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v9, ", ANR trace enabled : "

    .line 112
    .line 113
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    const-string v11, "ActivityManager"

    .line 124
    .line 125
    invoke-static {v11, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    if-eqz v10, :cond_4

    .line 129
    .line 130
    new-instance v9, Landroid/content/Intent;

    .line 131
    .line 132
    const-string/jumbo v10, "com.samsung.intent.action.PERFORMANCE_LOGGING"

    .line 133
    .line 134
    .line 135
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string/jumbo v10, "performance_logging_ctrl"

    .line 139
    .line 140
    .line 141
    const/4 v11, 0x3

    .line 142
    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    iget-object v10, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 146
    .line 147
    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 148
    .line 149
    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 150
    .line 151
    invoke-virtual {v10, v9, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    move-object/from16 v44, v13

    .line 156
    .line 157
    :cond_4
    :goto_2
    iget-object v9, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 158
    .line 159
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 160
    .line 161
    new-instance v10, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;

    .line 162
    .line 163
    invoke-direct {v10, v1, v5, v12}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9, v12, v10}, Lcom/android/server/wm/WindowProcessController;->appEarlyNotResponding(Ljava/lang/String;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda0;)V

    .line 167
    .line 168
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 170
    .line 171
    .line 172
    move-result-wide v9

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    .line 174
    .line 175
    .line 176
    move-result v11

    .line 177
    const/16 v45, 0x0

    .line 178
    .line 179
    if-eqz v11, :cond_5

    .line 180
    .line 181
    new-instance v11, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;

    .line 182
    .line 183
    invoke-direct {v11, v1, v5}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {v3, v11}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    goto :goto_3

    .line 191
    :cond_5
    move-object/from16 v11, v45

    .line 192
    .line 193
    :goto_3
    const-string v13, "ANR"

    .line 194
    .line 195
    move-object/from16 v30, v11

    .line 196
    .line 197
    const/4 v11, 0x0

    .line 198
    invoke-static {v13, v11}, Lcom/samsung/android/core/SystemDumpWriter;->saveDumpsysFiles(Ljava/lang/String;Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockStarted()V

    .line 202
    .line 203
    .line 204
    iget-object v11, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 205
    .line 206
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 207
    .line 208
    .line 209
    monitor-enter v11

    .line 210
    :try_start_0
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnAMSLockEnded()V

    .line 211
    .line 212
    .line 213
    iget-object v13, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 214
    .line 215
    iget v13, v13, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 216
    .line 217
    iput-object v12, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mAnrAnnotation:Ljava/lang/String;

    .line 218
    .line 219
    const-string/jumbo v16, "stability_anr.value_total_anrs"

    .line 220
    .line 221
    .line 222
    invoke-static/range {v16 .. v16}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v1, v12}, Lcom/android/server/am/ProcessErrorStateRecord;->skipAnrLocked(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v16

    .line 229
    if-eqz v16, :cond_6

    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->anrSkippedProcessErrorStateRecordAppNotResponding()V

    .line 232
    .line 233
    .line 234
    const-string/jumbo v0, "stability_anr.value_skipped_anrs"

    .line 235
    .line 236
    .line 237
    invoke-static {v0}, Lcom/android/modules/expresslog/Counter;->logIncrement(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    goto/16 :goto_2b

    .line 247
    .line 248
    :cond_6
    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockStarted()V

    .line 249
    .line 250
    .line 251
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 252
    .line 253
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 254
    .line 255
    .line 256
    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    :try_start_2
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnProcLockEnded()V

    .line 258
    .line 259
    .line 260
    const/4 v14, 0x1

    .line 261
    invoke-virtual {v1, v14}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 262
    .line 263
    .line 264
    iget-wide v14, v0, Lcom/android/internal/os/TimeoutRecord;->mEndUptimeMillis:J

    .line 265
    .line 266
    const-wide/16 v31, 0x0

    .line 267
    .line 268
    cmp-long v0, v14, v31

    .line 269
    .line 270
    if-lez v0, :cond_7

    .line 271
    .line 272
    sub-long v14, v9, v14

    .line 273
    .line 274
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0, v14, v15}, Ljava/time/Instant;->minusMillis(J)Ljava/time/Instant;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 283
    .line 284
    .line 285
    move-result-object v14

    .line 286
    invoke-virtual {v0, v14}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    goto :goto_4

    .line 291
    :catchall_1
    move-exception v0

    .line 292
    move-object v1, v3

    .line 293
    goto/16 :goto_2a

    .line 294
    .line 295
    :cond_7
    move-object/from16 v0, v45

    .line 296
    .line 297
    :goto_4
    iget-object v14, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 298
    .line 299
    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 300
    .line 301
    iget-boolean v14, v14, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 302
    .line 303
    new-instance v15, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;

    .line 304
    .line 305
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 306
    .line 307
    .line 308
    move-result-object v14

    .line 309
    invoke-direct {v15, v14, v0}, Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;-><init>(Ljava/lang/Boolean;Ljava/time/ZonedDateTime;)V

    .line 310
    .line 311
    .line 312
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 313
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 314
    .line 315
    .line 316
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 317
    .line 318
    iget v0, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 319
    .line 320
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    iget-object v14, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 329
    .line 330
    move-object/from16 p6, v15

    .line 331
    .line 332
    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 333
    .line 334
    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 335
    .line 336
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 337
    .line 338
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v14

    .line 342
    filled-new-array {v0, v3, v15, v14, v12}, [Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    const/16 v3, 0x7538

    .line 347
    .line 348
    invoke-static {v3, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 349
    .line 350
    .line 351
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 352
    .line 353
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 354
    .line 355
    if-eqz v0, :cond_8

    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    .line 359
    .line 360
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 365
    .line 366
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 367
    .line 368
    iget-object v14, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 369
    .line 370
    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 371
    .line 372
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    .line 374
    .line 375
    invoke-static {v14, v13, v0}, Lcom/android/server/am/TraceErrorLogger;->addProcessInfoAndErrorIdToTrace(Ljava/lang/String;ILjava/util/UUID;)V

    .line 376
    .line 377
    .line 378
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 379
    .line 380
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mTraceErrorLogger:Lcom/android/server/am/TraceErrorLogger;

    .line 381
    .line 382
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 383
    .line 384
    .line 385
    invoke-static {v12, v0}, Lcom/android/server/am/TraceErrorLogger;->addSubjectToTrace(Ljava/lang/String;Ljava/util/UUID;)V

    .line 386
    .line 387
    .line 388
    move-object v15, v0

    .line 389
    goto :goto_5

    .line 390
    :cond_8
    move-object/from16 v15, v45

    .line 391
    .line 392
    :goto_5
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 393
    .line 394
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 395
    .line 396
    const/16 v3, 0x178

    .line 397
    .line 398
    invoke-static {v3, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    if-nez v0, :cond_d

    .line 413
    .line 414
    if-nez v4, :cond_d

    .line 415
    .line 416
    if-eqz v2, :cond_9

    .line 417
    .line 418
    iget v3, v2, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 419
    .line 420
    if-lez v3, :cond_9

    .line 421
    .line 422
    iget v3, v2, Lcom/android/server/wm/WindowProcessController;->mPid:I

    .line 423
    .line 424
    goto :goto_6

    .line 425
    :cond_9
    move v3, v13

    .line 426
    :goto_6
    if-eq v3, v13, :cond_a

    .line 427
    .line 428
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 429
    .line 430
    .line 431
    move-result-object v14

    .line 432
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    :cond_a
    sget v14, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 436
    .line 437
    if-eq v14, v13, :cond_b

    .line 438
    .line 439
    if-eq v14, v3, :cond_b

    .line 440
    .line 441
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    :cond_b
    if-eq v14, v13, :cond_c

    .line 449
    .line 450
    if-eq v14, v3, :cond_c

    .line 451
    .line 452
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    .line 454
    .line 455
    move-result-object v2

    .line 456
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 457
    .line 458
    .line 459
    move-result v2

    .line 460
    if-nez v2, :cond_c

    .line 461
    .line 462
    const/4 v2, 0x1

    .line 463
    invoke-virtual {v8, v14, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 464
    .line 465
    .line 466
    :cond_c
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 467
    .line 468
    move-wide/from16 v33, v9

    .line 469
    .line 470
    const/4 v9, 0x0

    .line 471
    invoke-direct {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 472
    .line 473
    .line 474
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object v9

    .line 478
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 479
    .line 480
    .line 481
    move-result v9

    .line 482
    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 483
    .line 484
    .line 485
    iget-object v9, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 486
    .line 487
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 488
    .line 489
    new-instance v10, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;

    .line 490
    .line 491
    move-object/from16 v16, v10

    .line 492
    .line 493
    move/from16 v17, v13

    .line 494
    .line 495
    move/from16 v18, v3

    .line 496
    .line 497
    move-object/from16 v19, v2

    .line 498
    .line 499
    move-object/from16 v20, v6

    .line 500
    .line 501
    move-object/from16 v21, v8

    .line 502
    .line 503
    invoke-direct/range {v16 .. v21}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda2;-><init>(IILjava/util/concurrent/atomic/AtomicBoolean;Ljava/util/ArrayList;Landroid/util/SparseBooleanArray;)V

    .line 504
    .line 505
    .line 506
    const/4 v2, 0x0

    .line 507
    invoke-virtual {v9, v10, v2}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 508
    .line 509
    .line 510
    goto :goto_7

    .line 511
    :cond_d
    move-wide/from16 v33, v9

    .line 512
    .line 513
    :goto_7
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 514
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 515
    .line 516
    .line 517
    const-string v2, "ActivityManager"

    .line 518
    .line 519
    if-gtz v13, :cond_e

    .line 520
    .line 521
    const-string v3, "Memory header requested with invalid pid: "

    .line 522
    .line 523
    invoke-static {v13, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    :goto_8
    move-object/from16 v24, v45

    .line 527
    .line 528
    goto :goto_9

    .line 529
    :cond_e
    invoke-static {v13}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    if-nez v3, :cond_f

    .line 534
    .line 535
    const-string v3, "Failed to get memory snapshot for pid:"

    .line 536
    .line 537
    invoke-static {v13, v3, v2}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    goto :goto_8

    .line 541
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 542
    .line 543
    const-string v9, "RssHwmKb: "

    .line 544
    .line 545
    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    iget v9, v3, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 549
    .line 550
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 551
    .line 552
    .line 553
    const-string v9, "\nRssKb: "

    .line 554
    .line 555
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget v9, v3, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 559
    .line 560
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v9, "\nRssAnonKb: "

    .line 564
    .line 565
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    iget v9, v3, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 569
    .line 570
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    const-string v9, "\nRssShmemKb: "

    .line 574
    .line 575
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    iget v9, v3, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    .line 579
    .line 580
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v9, "\nVmSwapKb: "

    .line 584
    .line 585
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    iget v3, v3, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    .line 589
    .line 590
    const-string v9, "\n"

    .line 591
    .line 592
    invoke-static {v3, v2, v9}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v2

    .line 596
    move-object/from16 v24, v2

    .line 597
    .line 598
    :goto_9
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogStarted()V

    .line 599
    .line 600
    .line 601
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 602
    .line 603
    .line 604
    move-result-object v2

    .line 605
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 606
    .line 607
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    .line 608
    .line 609
    .line 610
    move-result v3

    .line 611
    iget-object v9, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 612
    .line 613
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 614
    .line 615
    iget v9, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 616
    .line 617
    invoke-virtual {v2, v3, v10, v9}, Lcom/android/server/criticalevents/CriticalEventLog;->getOutputLogProto(ILjava/lang/String;I)Lcom/android/server/criticalevents/nano/CriticalEventLogProto;

    .line 618
    .line 619
    .line 620
    move-result-object v2

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    const-string v9, "--- CriticalEventLog ---\n"

    .line 624
    .line 625
    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    .line 627
    .line 628
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/MessageNanoPrinter;->print(Lcom/android/framework/protobuf/nano/MessageNano;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v2

    .line 632
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const/16 v2, 0xa

    .line 636
    .line 637
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v23

    .line 644
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->criticalEventLogEnded()V

    .line 645
    .line 646
    .line 647
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 652
    .line 653
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    .line 654
    .line 655
    .line 656
    move-result v3

    .line 657
    iget-object v9, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 658
    .line 659
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 660
    .line 661
    iget v11, v9, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 662
    .line 663
    iget v9, v9, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 664
    .line 665
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 666
    .line 667
    .line 668
    new-instance v14, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;

    .line 669
    .line 670
    invoke-direct {v14}, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;-><init>()V

    .line 671
    .line 672
    .line 673
    iput-object v12, v14, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->subject:Ljava/lang/String;

    .line 674
    .line 675
    iput v3, v14, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->processClass:I

    .line 676
    .line 677
    iput-object v10, v14, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->process:Ljava/lang/String;

    .line 678
    .line 679
    iput v11, v14, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->uid:I

    .line 680
    .line 681
    iput v9, v14, Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;->pid:I

    .line 682
    .line 683
    new-instance v3, Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 684
    .line 685
    invoke-direct {v3}, Lcom/android/server/criticalevents/nano/CriticalEventProto;-><init>()V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v3, v14}, Lcom/android/server/criticalevents/nano/CriticalEventProto;->setAnr(Lcom/android/server/criticalevents/nano/CriticalEventProto$AppNotResponding;)Lcom/android/server/criticalevents/nano/CriticalEventProto;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2, v3}, Lcom/android/server/criticalevents/CriticalEventLog;->log(Lcom/android/server/criticalevents/nano/CriticalEventProto;)V

    .line 692
    .line 693
    .line 694
    new-instance v14, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    const/4 v2, 0x0

    .line 700
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 701
    .line 702
    .line 703
    const-string v3, "ANR in "

    .line 704
    .line 705
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 709
    .line 710
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 711
    .line 712
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    .line 714
    .line 715
    move-object/from16 v11, p1

    .line 716
    .line 717
    if-eqz v11, :cond_10

    .line 718
    .line 719
    const-string v3, " ("

    .line 720
    .line 721
    const-string v9, ")"

    .line 722
    .line 723
    invoke-static {v14, v3, v11, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    :cond_10
    const-string v3, "\n"

    .line 727
    .line 728
    const-string v9, "PID: "

    .line 729
    .line 730
    const-string v10, "\n"

    .line 731
    .line 732
    invoke-static {v13, v3, v9, v10, v14}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 733
    .line 734
    .line 735
    if-eqz v12, :cond_11

    .line 736
    .line 737
    const-string v3, "Reason: "

    .line 738
    .line 739
    const-string v9, "\n"

    .line 740
    .line 741
    invoke-static {v14, v3, v12, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    :cond_11
    if-eqz v7, :cond_12

    .line 745
    .line 746
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 747
    .line 748
    .line 749
    move-result v3

    .line 750
    if-eqz v3, :cond_12

    .line 751
    .line 752
    const-string v3, "Parent: "

    .line 753
    .line 754
    const-string v9, "\n"

    .line 755
    .line 756
    invoke-static {v14, v3, v7, v9}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .line 758
    .line 759
    :cond_12
    if-eqz v15, :cond_13

    .line 760
    .line 761
    const-string v3, "ErrorId: "

    .line 762
    .line 763
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v15}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v3

    .line 770
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    .line 772
    .line 773
    const-string v3, "\n"

    .line 774
    .line 775
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .line 777
    .line 778
    :cond_13
    const-string v3, "Frozen: s["

    .line 779
    .line 780
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    .line 782
    .line 783
    invoke-static {v13}, Landroid/os/Process;->isFrozenState(I)Z

    .line 784
    .line 785
    .line 786
    move-result v3

    .line 787
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    const-string v3, "] g["

    .line 791
    .line 792
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 796
    .line 797
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 798
    .line 799
    iget-boolean v3, v3, Lcom/android/server/am/ProcessCachedOptimizerRecord;->mFrozen:Z

    .line 800
    .line 801
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    const-string v3, "]"

    .line 805
    .line 806
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    .line 808
    .line 809
    const-string v3, "\n"

    .line 810
    .line 811
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    .line 813
    .line 814
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 815
    .line 816
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 817
    .line 818
    move-object/from16 v10, p2

    .line 819
    .line 820
    invoke-virtual {v3, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;

    .line 821
    .line 822
    .line 823
    move-result-object v9

    .line 824
    if-eqz v9, :cond_14

    .line 825
    .line 826
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 827
    .line 828
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 829
    .line 830
    move-object/from16 v16, v8

    .line 831
    .line 832
    invoke-interface {v9, v3, v2}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    .line 833
    .line 834
    .line 835
    move-result-wide v7

    .line 836
    invoke-interface {v9, v3, v2}, Landroid/app/AnrController;->onAnrDelayStarted(Ljava/lang/String;I)V

    .line 837
    .line 838
    .line 839
    const-string v2, "ActivityManager"

    .line 840
    .line 841
    move-object/from16 v46, v9

    .line 842
    .line 843
    new-instance v9, Ljava/lang/StringBuilder;

    .line 844
    .line 845
    const-string v10, "ANR delay of "

    .line 846
    .line 847
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    const-string/jumbo v10, "ms started for "

    .line 854
    .line 855
    .line 856
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v3

    .line 866
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .line 868
    .line 869
    move-wide v9, v7

    .line 870
    goto :goto_a

    .line 871
    :cond_14
    move-object/from16 v16, v8

    .line 872
    .line 873
    move-object/from16 v46, v9

    .line 874
    .line 875
    move-wide/from16 v9, v31

    .line 876
    .line 877
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 878
    .line 879
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 880
    .line 881
    .line 882
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateCalled()V

    .line 883
    .line 884
    .line 885
    invoke-static {}, Lcom/android/server/ResourcePressureUtil;->currentPsiState()Ljava/lang/String;

    .line 886
    .line 887
    .line 888
    move-result-object v3

    .line 889
    invoke-virtual {v5}, Lcom/android/internal/os/anr/AnrLatencyTracker;->currentPsiStateReturned()V

    .line 890
    .line 891
    .line 892
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    new-instance v3, Lcom/android/internal/os/ProcessCpuTracker;

    .line 896
    .line 897
    const/4 v8, 0x1

    .line 898
    invoke-direct {v3, v8}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    .line 899
    .line 900
    .line 901
    new-instance v7, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;

    .line 902
    .line 903
    invoke-direct {v7, v1, v5, v0, v4}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)V

    .line 904
    .line 905
    .line 906
    move-object/from16 v4, p7

    .line 907
    .line 908
    invoke-interface {v4, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 909
    .line 910
    .line 911
    move-result-object v19

    .line 912
    new-instance v7, Ljava/io/StringWriter;

    .line 913
    .line 914
    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 915
    .line 916
    .line 917
    new-instance v8, Ljava/util/concurrent/atomic/AtomicLong;

    .line 918
    .line 919
    move-wide/from16 v47, v9

    .line 920
    .line 921
    const-wide/16 v9, -0x1

    .line 922
    .line 923
    invoke-direct {v8, v9, v10}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 924
    .line 925
    .line 926
    if-eqz v0, :cond_15

    .line 927
    .line 928
    move-object/from16 v17, v45

    .line 929
    .line 930
    goto :goto_b

    .line 931
    :cond_15
    move-object/from16 v17, v3

    .line 932
    .line 933
    :goto_b
    if-eqz v0, :cond_16

    .line 934
    .line 935
    move-object/from16 v18, v45

    .line 936
    .line 937
    goto :goto_c

    .line 938
    :cond_16
    move-object/from16 v18, v16

    .line 939
    .line 940
    :goto_c
    move-object/from16 v16, v6

    .line 941
    .line 942
    move-object/from16 v20, v7

    .line 943
    .line 944
    move-object/from16 v21, v8

    .line 945
    .line 946
    move-object/from16 v22, v12

    .line 947
    .line 948
    move-object/from16 v25, p7

    .line 949
    .line 950
    move-object/from16 v26, p10

    .line 951
    .line 952
    move-object/from16 v27, v5

    .line 953
    .line 954
    invoke-static/range {v16 .. v27}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    .line 955
    .line 956
    .line 957
    move-result-object v49

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isMonitorCpuUsage()Z

    .line 959
    .line 960
    .line 961
    move-result v0

    .line 962
    if-eqz v0, :cond_17

    .line 963
    .line 964
    :try_start_4
    invoke-interface/range {v30 .. v30}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 965
    .line 966
    .line 967
    goto :goto_d

    .line 968
    :catch_0
    move-exception v0

    .line 969
    move-object v4, v0

    .line 970
    const-string v0, "ActivityManager"

    .line 971
    .line 972
    const-string v5, "Interrupted while updating the CPU stats"

    .line 973
    .line 974
    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    .line 976
    .line 977
    goto :goto_d

    .line 978
    :catch_1
    move-exception v0

    .line 979
    move-object v4, v0

    .line 980
    const-string v0, "ActivityManager"

    .line 981
    .line 982
    const-string v5, "Failed to update the CPU stats"

    .line 983
    .line 984
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    .line 985
    .line 986
    .line 987
    move-result-object v4

    .line 988
    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 989
    .line 990
    .line 991
    :goto_d
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 992
    .line 993
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 994
    .line 995
    .line 996
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 997
    .line 998
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 999
    .line 1000
    move-wide/from16 v4, v33

    .line 1001
    .line 1002
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/am/AppProfiler;->printCurrentCpuState(Ljava/lang/StringBuilder;J)V

    .line 1003
    .line 1004
    .line 1005
    monitor-enter v3

    .line 1006
    :try_start_5
    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v0

    .line 1010
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    .line 1012
    .line 1013
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1014
    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCpuCoreInfo()Ljava/lang/String;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v0

    .line 1018
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    .line 1021
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1022
    .line 1023
    .line 1024
    goto :goto_e

    .line 1025
    :catchall_2
    move-exception v0

    .line 1026
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1027
    throw v0

    .line 1028
    :cond_17
    move-wide/from16 v4, v33

    .line 1029
    .line 1030
    :goto_e
    invoke-virtual {v7}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v0

    .line 1034
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    monitor-enter v3

    .line 1038
    :try_start_7
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1046
    const-string v0, "ActivityManager"

    .line 1047
    .line 1048
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v3

    .line 1052
    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    if-nez v49, :cond_18

    .line 1056
    .line 1057
    const/4 v3, 0x3

    .line 1058
    invoke-static {v13, v3}, Landroid/os/Process;->sendSignal(II)V

    .line 1059
    .line 1060
    .line 1061
    goto :goto_f

    .line 1062
    :cond_18
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 1063
    .line 1064
    .line 1065
    move-result-wide v3

    .line 1066
    cmp-long v0, v3, v31

    .line 1067
    .line 1068
    if-lez v0, :cond_19

    .line 1069
    .line 1070
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 1071
    .line 1072
    .line 1073
    move-result-wide v3

    .line 1074
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1075
    .line 1076
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1077
    .line 1078
    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 1079
    .line 1080
    iget-object v5, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1081
    .line 1082
    iget v6, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1083
    .line 1084
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 1085
    .line 1086
    invoke-virtual {v5}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v38

    .line 1090
    iget-object v5, v0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 1091
    .line 1092
    new-instance v7, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;

    .line 1093
    .line 1094
    invoke-direct {v7, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    .line 1095
    .line 1096
    .line 1097
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v36

    .line 1101
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v37

    .line 1105
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v40

    .line 1109
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v41

    .line 1113
    move-object/from16 v35, v7

    .line 1114
    .line 1115
    move-object/from16 v39, v49

    .line 1116
    .line 1117
    invoke-static/range {v35 .. v41}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v0

    .line 1121
    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1122
    .line 1123
    .line 1124
    :cond_19
    :goto_f
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1125
    .line 1126
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v0

    .line 1130
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1131
    .line 1132
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1133
    .line 1134
    const/high16 v4, 0x42c80000    # 100.0f

    .line 1135
    .line 1136
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1137
    .line 1138
    if-eqz v3, :cond_1b

    .line 1139
    .line 1140
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1141
    .line 1142
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1143
    .line 1144
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1145
    .line 1146
    if-eqz v3, :cond_1b

    .line 1147
    .line 1148
    if-eqz v0, :cond_1b

    .line 1149
    .line 1150
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1151
    .line 1152
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1153
    .line 1154
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1155
    .line 1156
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1157
    .line 1158
    iget v6, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1159
    .line 1160
    const/16 v7, 0x3e8

    .line 1161
    .line 1162
    invoke-virtual {v0, v7, v6, v3}, Landroid/content/pm/PackageManagerInternal;->getIncrementalStatesInfo(IILjava/lang/String;)Landroid/content/pm/IncrementalStatesInfo;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v0

    .line 1166
    if-eqz v0, :cond_1a

    .line 1167
    .line 1168
    invoke-virtual {v0}, Landroid/content/pm/IncrementalStatesInfo;->getProgress()F

    .line 1169
    .line 1170
    .line 1171
    move-result v5

    .line 1172
    :cond_1a
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1173
    .line 1174
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1175
    .line 1176
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v0

    .line 1180
    if-eqz v0, :cond_1b

    .line 1181
    .line 1182
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 1183
    .line 1184
    .line 1185
    move-result v3

    .line 1186
    if-nez v3, :cond_1b

    .line 1187
    .line 1188
    invoke-static {v0}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    .line 1189
    .line 1190
    .line 1191
    move-result v3

    .line 1192
    if-eqz v3, :cond_1b

    .line 1193
    .line 1194
    const-string v3, "ActivityManager"

    .line 1195
    .line 1196
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    const-string v7, "App ANR on incremental package "

    .line 1199
    .line 1200
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v7, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1204
    .line 1205
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1206
    .line 1207
    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1208
    .line 1209
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    .line 1211
    .line 1212
    const-string v7, " which is "

    .line 1213
    .line 1214
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    .line 1216
    .line 1217
    mul-float v7, v5, v4

    .line 1218
    .line 1219
    float-to-int v7, v7

    .line 1220
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1221
    .line 1222
    .line 1223
    const-string v7, "% loaded."

    .line 1224
    .line 1225
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    .line 1227
    .line 1228
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v6

    .line 1232
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    .line 1234
    .line 1235
    const-string/jumbo v3, "incremental"

    .line 1236
    .line 1237
    .line 1238
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v3

    .line 1242
    if-eqz v3, :cond_1b

    .line 1243
    .line 1244
    new-instance v6, Landroid/os/incremental/IncrementalManager;

    .line 1245
    .line 1246
    invoke-static {v3}, Landroid/os/incremental/IIncrementalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/incremental/IIncrementalService;

    .line 1247
    .line 1248
    .line 1249
    move-result-object v3

    .line 1250
    invoke-direct {v6, v3}, Landroid/os/incremental/IncrementalManager;-><init>(Landroid/os/incremental/IIncrementalService;)V

    .line 1251
    .line 1252
    .line 1253
    invoke-virtual {v6, v0}, Landroid/os/incremental/IncrementalManager;->getMetrics(Ljava/lang/String;)Landroid/os/incremental/IncrementalMetrics;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v0

    .line 1257
    goto :goto_10

    .line 1258
    :cond_1b
    move-object/from16 v0, v45

    .line 1259
    .line 1260
    :goto_10
    if-eqz v0, :cond_1c

    .line 1261
    .line 1262
    const-string v3, "Package is "

    .line 1263
    .line 1264
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    .line 1267
    mul-float/2addr v4, v5

    .line 1268
    float-to-int v3, v4

    .line 1269
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1270
    .line 1271
    .line 1272
    const-string v3, "% loaded.\n"

    .line 1273
    .line 1274
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1275
    .line 1276
    .line 1277
    :cond_1c
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1278
    .line 1279
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1280
    .line 1281
    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1282
    .line 1283
    if-nez v11, :cond_1d

    .line 1284
    .line 1285
    const-string/jumbo v7, "unknown"

    .line 1286
    .line 1287
    .line 1288
    move-object/from16 v19, v7

    .line 1289
    .line 1290
    goto :goto_11

    .line 1291
    :cond_1d
    move-object/from16 v19, v11

    .line 1292
    .line 1293
    :goto_11
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1294
    .line 1295
    const/4 v13, 0x2

    .line 1296
    if-eqz v3, :cond_1f

    .line 1297
    .line 1298
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1299
    .line 1300
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1301
    .line 1302
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    .line 1303
    .line 1304
    .line 1305
    move-result v3

    .line 1306
    if-eqz v3, :cond_1e

    .line 1307
    .line 1308
    move/from16 v21, v13

    .line 1309
    .line 1310
    goto :goto_12

    .line 1311
    :cond_1e
    const/16 v21, 0x1

    .line 1312
    .line 1313
    goto :goto_12

    .line 1314
    :cond_1f
    const/16 v21, 0x0

    .line 1315
    .line 1316
    :goto_12
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1317
    .line 1318
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    .line 1319
    .line 1320
    .line 1321
    move-result v3

    .line 1322
    if-eqz v3, :cond_20

    .line 1323
    .line 1324
    move/from16 v22, v13

    .line 1325
    .line 1326
    goto :goto_13

    .line 1327
    :cond_20
    const/16 v22, 0x1

    .line 1328
    .line 1329
    :goto_13
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1330
    .line 1331
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getProcessClassEnum()I

    .line 1332
    .line 1333
    .line 1334
    move-result v23

    .line 1335
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1336
    .line 1337
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1338
    .line 1339
    if-eqz v3, :cond_21

    .line 1340
    .line 1341
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1342
    .line 1343
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1344
    .line 1345
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1346
    .line 1347
    :goto_14
    move-object/from16 v24, v3

    .line 1348
    .line 1349
    goto :goto_15

    .line 1350
    :cond_21
    const-string v3, ""

    .line 1351
    .line 1352
    goto :goto_14

    .line 1353
    :goto_15
    if-eqz v0, :cond_22

    .line 1354
    .line 1355
    const/16 v25, 0x1

    .line 1356
    .line 1357
    goto :goto_16

    .line 1358
    :cond_22
    const/16 v25, 0x0

    .line 1359
    .line 1360
    :goto_16
    if-eqz v0, :cond_23

    .line 1361
    .line 1362
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceOldestPendingRead()J

    .line 1363
    .line 1364
    .line 1365
    move-result-wide v7

    .line 1366
    move-wide/from16 v27, v7

    .line 1367
    .line 1368
    goto :goto_17

    .line 1369
    :cond_23
    move-wide/from16 v27, v9

    .line 1370
    .line 1371
    :goto_17
    const/4 v3, -0x1

    .line 1372
    if-eqz v0, :cond_24

    .line 1373
    .line 1374
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getStorageHealthStatusCode()I

    .line 1375
    .line 1376
    .line 1377
    move-result v7

    .line 1378
    goto :goto_18

    .line 1379
    :cond_24
    move v7, v3

    .line 1380
    :goto_18
    if-eqz v0, :cond_25

    .line 1381
    .line 1382
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderStatusCode()I

    .line 1383
    .line 1384
    .line 1385
    move-result v8

    .line 1386
    move/from16 v30, v8

    .line 1387
    .line 1388
    goto :goto_19

    .line 1389
    :cond_25
    move/from16 v30, v3

    .line 1390
    .line 1391
    :goto_19
    if-eqz v0, :cond_26

    .line 1392
    .line 1393
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getReadLogsEnabled()Z

    .line 1394
    .line 1395
    .line 1396
    move-result v8

    .line 1397
    if-eqz v8, :cond_26

    .line 1398
    .line 1399
    const/16 v31, 0x1

    .line 1400
    .line 1401
    goto :goto_1a

    .line 1402
    :cond_26
    const/16 v31, 0x0

    .line 1403
    .line 1404
    :goto_1a
    if-eqz v0, :cond_27

    .line 1405
    .line 1406
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastDataLoaderBind()J

    .line 1407
    .line 1408
    .line 1409
    move-result-wide v16

    .line 1410
    move-wide/from16 v32, v16

    .line 1411
    .line 1412
    goto :goto_1b

    .line 1413
    :cond_27
    move-wide/from16 v32, v9

    .line 1414
    .line 1415
    :goto_1b
    if-eqz v0, :cond_28

    .line 1416
    .line 1417
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getDataLoaderBindDelayMillis()J

    .line 1418
    .line 1419
    .line 1420
    move-result-wide v16

    .line 1421
    move-wide/from16 v34, v16

    .line 1422
    .line 1423
    goto :goto_1c

    .line 1424
    :cond_28
    move-wide/from16 v34, v9

    .line 1425
    .line 1426
    :goto_1c
    if-eqz v0, :cond_29

    .line 1427
    .line 1428
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReads()I

    .line 1429
    .line 1430
    .line 1431
    move-result v8

    .line 1432
    move/from16 v36, v8

    .line 1433
    .line 1434
    goto :goto_1d

    .line 1435
    :cond_29
    move/from16 v36, v3

    .line 1436
    .line 1437
    :goto_1d
    if-eqz v0, :cond_2a

    .line 1438
    .line 1439
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getTotalFailedReads()I

    .line 1440
    .line 1441
    .line 1442
    move-result v8

    .line 1443
    move/from16 v37, v8

    .line 1444
    .line 1445
    goto :goto_1e

    .line 1446
    :cond_2a
    move/from16 v37, v3

    .line 1447
    .line 1448
    :goto_1e
    if-eqz v0, :cond_2b

    .line 1449
    .line 1450
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorUid()I

    .line 1451
    .line 1452
    .line 1453
    move-result v3

    .line 1454
    :cond_2b
    move/from16 v38, v3

    .line 1455
    .line 1456
    if-eqz v0, :cond_2c

    .line 1457
    .line 1458
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getMillisSinceLastReadError()J

    .line 1459
    .line 1460
    .line 1461
    move-result-wide v16

    .line 1462
    move-wide/from16 v39, v16

    .line 1463
    .line 1464
    goto :goto_1f

    .line 1465
    :cond_2c
    move-wide/from16 v39, v9

    .line 1466
    .line 1467
    :goto_1f
    if-eqz v0, :cond_2d

    .line 1468
    .line 1469
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getLastReadErrorNumber()I

    .line 1470
    .line 1471
    .line 1472
    move-result v3

    .line 1473
    move/from16 v41, v3

    .line 1474
    .line 1475
    goto :goto_20

    .line 1476
    :cond_2d
    const/16 v41, 0x0

    .line 1477
    .line 1478
    :goto_20
    if-eqz v0, :cond_2e

    .line 1479
    .line 1480
    invoke-virtual {v0}, Landroid/os/incremental/IncrementalMetrics;->getTotalDelayedReadsDurationMillis()J

    .line 1481
    .line 1482
    .line 1483
    move-result-wide v8

    .line 1484
    move-wide/from16 v42, v8

    .line 1485
    .line 1486
    goto :goto_21

    .line 1487
    :cond_2e
    move-wide/from16 v42, v9

    .line 1488
    .line 1489
    :goto_21
    const/16 v16, 0x4f

    .line 1490
    .line 1491
    move/from16 v17, v4

    .line 1492
    .line 1493
    move-object/from16 v18, v6

    .line 1494
    .line 1495
    move-object/from16 v20, v12

    .line 1496
    .line 1497
    move/from16 v26, v5

    .line 1498
    .line 1499
    move/from16 v29, v7

    .line 1500
    .line 1501
    invoke-static/range {v16 .. v43}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ZFJIIZJJIIIJIJ)V

    .line 1502
    .line 1503
    .line 1504
    move-object/from16 v3, p4

    .line 1505
    .line 1506
    if-eqz v3, :cond_2f

    .line 1507
    .line 1508
    iget-object v3, v3, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 1509
    .line 1510
    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1511
    .line 1512
    move-object v8, v3

    .line 1513
    goto :goto_22

    .line 1514
    :cond_2f
    move-object/from16 v8, v45

    .line 1515
    .line 1516
    :goto_22
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1517
    .line 1518
    const-string v4, "anr"

    .line 1519
    .line 1520
    iget-object v6, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1521
    .line 1522
    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1523
    .line 1524
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1525
    .line 1526
    .line 1527
    move-result-object v10

    .line 1528
    new-instance v9, Ljava/lang/Float;

    .line 1529
    .line 1530
    invoke-direct {v9, v5}, Ljava/lang/Float;-><init>(F)V

    .line 1531
    .line 1532
    .line 1533
    const/16 v16, 0x0

    .line 1534
    .line 1535
    const/16 v17, 0x0

    .line 1536
    .line 1537
    move-object v2, v3

    .line 1538
    move-object v3, v4

    .line 1539
    move-object v4, v6

    .line 1540
    move-object v5, v7

    .line 1541
    move-object/from16 v6, p1

    .line 1542
    .line 1543
    move-object/from16 v7, p3

    .line 1544
    .line 1545
    const/16 v18, 0x1

    .line 1546
    .line 1547
    move-object/from16 v19, v9

    .line 1548
    .line 1549
    move-object/from16 v50, v46

    .line 1550
    .line 1551
    move-wide/from16 v51, v47

    .line 1552
    .line 1553
    move-object/from16 v9, v16

    .line 1554
    .line 1555
    move-object/from16 v11, v49

    .line 1556
    .line 1557
    move-object/from16 v53, v12

    .line 1558
    .line 1559
    move-object/from16 v12, v17

    .line 1560
    .line 1561
    move-object/from16 v54, v44

    .line 1562
    .line 1563
    move-object/from16 v13, v19

    .line 1564
    .line 1565
    move-object/from16 v17, v14

    .line 1566
    .line 1567
    move-object v14, v0

    .line 1568
    move-object/from16 v16, p6

    .line 1569
    .line 1570
    invoke-virtual/range {v2 .. v16}, Lcom/android/server/am/ActivityManagerService;->addErrorToDropBox(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/app/ApplicationErrorReport$CrashInfo;Ljava/lang/Float;Landroid/os/incremental/IncrementalMetrics;Ljava/util/UUID;Lcom/android/server/am/ActivityManagerService$VolatileDropboxEntryStates;)V

    .line 1571
    .line 1572
    .line 1573
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1574
    .line 1575
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1576
    .line 1577
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v2

    .line 1581
    new-instance v3, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;

    .line 1582
    .line 1583
    const/4 v4, 0x0

    .line 1584
    invoke-direct {v3, v1, v4}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;I)V

    .line 1585
    .line 1586
    .line 1587
    new-instance v4, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;

    .line 1588
    .line 1589
    const/4 v5, 0x1

    .line 1590
    invoke-direct {v4, v1, v5}, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessErrorStateRecord;I)V

    .line 1591
    .line 1592
    .line 1593
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowProcessController;->appNotResponding(Ljava/lang/String;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda4;)Z

    .line 1594
    .line 1595
    .line 1596
    move-result v0

    .line 1597
    if-eqz v0, :cond_30

    .line 1598
    .line 1599
    return-void

    .line 1600
    :cond_30
    iget-object v8, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1601
    .line 1602
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1603
    .line 1604
    .line 1605
    monitor-enter v8

    .line 1606
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1607
    .line 1608
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 1609
    .line 1610
    if-eqz v0, :cond_31

    .line 1611
    .line 1612
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1613
    .line 1614
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1615
    .line 1616
    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1617
    .line 1618
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->noteProcessAnr(ILjava/lang/String;)V

    .line 1619
    .line 1620
    .line 1621
    goto :goto_23

    .line 1622
    :catchall_3
    move-exception v0

    .line 1623
    goto/16 :goto_29

    .line 1624
    .line 1625
    :cond_31
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    .line 1626
    .line 1627
    .line 1628
    move-result v0

    .line 1629
    if-eqz v0, :cond_32

    .line 1630
    .line 1631
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1632
    .line 1633
    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 1634
    .line 1635
    if-nez v2, :cond_32

    .line 1636
    .line 1637
    const-string v1, "bg anr"

    .line 1638
    .line 1639
    const/4 v2, 0x6

    .line 1640
    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ProcessRecord;->killLocked(ILjava/lang/String;)V

    .line 1641
    .line 1642
    .line 1643
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1644
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1645
    .line 1646
    .line 1647
    return-void

    .line 1648
    :cond_32
    :try_start_9
    iget-object v9, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 1649
    .line 1650
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1651
    .line 1652
    .line 1653
    monitor-enter v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1654
    move-object/from16 v2, v53

    .line 1655
    .line 1656
    if-eqz v2, :cond_33

    .line 1657
    .line 1658
    move-object/from16 v3, v54

    .line 1659
    .line 1660
    :try_start_a
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v0

    .line 1664
    :goto_24
    move-object v5, v0

    .line 1665
    goto :goto_25

    .line 1666
    :catchall_4
    move-exception v0

    .line 1667
    goto/16 :goto_28

    .line 1668
    .line 1669
    :cond_33
    const-string v0, "ANR"

    .line 1670
    .line 1671
    goto :goto_24

    .line 1672
    :goto_25
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v6

    .line 1676
    const/4 v2, 0x1

    .line 1677
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 1678
    .line 1679
    .line 1680
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1681
    .line 1682
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 1683
    .line 1684
    if-eqz v0, :cond_34

    .line 1685
    .line 1686
    iget-object v2, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1687
    .line 1688
    const/4 v3, 0x2

    .line 1689
    const/4 v7, 0x0

    .line 1690
    move-object/from16 v4, p1

    .line 1691
    .line 1692
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppErrors;->generateProcessError(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v0

    .line 1696
    iput-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mNotRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 1697
    .line 1698
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessErrorStateRecord;->startAppProblemLSP()V

    .line 1699
    .line 1700
    .line 1701
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1702
    .line 1703
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 1704
    .line 1705
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->stopFreezingActivities()V

    .line 1706
    .line 1707
    .line 1708
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 1709
    .line 1710
    move-object/from16 v2, v50

    .line 1711
    .line 1712
    iput-object v2, v0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    .line 1713
    .line 1714
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1715
    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1716
    .line 1717
    .line 1718
    iget-object v0, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1719
    .line 1720
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1721
    .line 1722
    if-eqz v0, :cond_35

    .line 1723
    .line 1724
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v0

    .line 1728
    const/4 v2, 0x2

    .line 1729
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1730
    .line 1731
    new-instance v2, Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 1732
    .line 1733
    iget-object v3, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1734
    .line 1735
    move-object/from16 v4, p2

    .line 1736
    .line 1737
    move/from16 v5, p5

    .line 1738
    .line 1739
    move/from16 v6, p9

    .line 1740
    .line 1741
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/am/AppNotRespondingDialog$Data;-><init>(Lcom/android/server/am/ProcessRecord;Landroid/content/pm/ApplicationInfo;ZZ)V

    .line 1742
    .line 1743
    .line 1744
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1745
    .line 1746
    iget-object v1, v1, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 1747
    .line 1748
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 1749
    .line 1750
    move-wide/from16 v2, v51

    .line 1751
    .line 1752
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1753
    .line 1754
    .line 1755
    goto :goto_26

    .line 1756
    :cond_35
    move-object/from16 v4, p2

    .line 1757
    .line 1758
    :goto_26
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1759
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1760
    .line 1761
    .line 1762
    new-instance v0, Landroid/os/BugreportParams;

    .line 1763
    .line 1764
    const/16 v1, 0x10

    .line 1765
    .line 1766
    invoke-direct {v0, v1}, Landroid/os/BugreportParams;-><init>(I)V

    .line 1767
    .line 1768
    .line 1769
    if-nez v4, :cond_36

    .line 1770
    .line 1771
    move-object/from16 v1, v45

    .line 1772
    .line 1773
    goto :goto_27

    .line 1774
    :cond_36
    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1775
    .line 1776
    :goto_27
    invoke-static {v0, v1}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    .line 1777
    .line 1778
    .line 1779
    return-void

    .line 1780
    :goto_28
    :try_start_c
    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1781
    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1782
    .line 1783
    .line 1784
    throw v0

    .line 1785
    :goto_29
    monitor-exit v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1786
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1787
    .line 1788
    .line 1789
    throw v0

    .line 1790
    :catchall_5
    move-exception v0

    .line 1791
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1792
    throw v0

    .line 1793
    :goto_2a
    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1794
    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1795
    .line 1796
    .line 1797
    throw v0

    .line 1798
    :catchall_6
    move-exception v0

    .line 1799
    goto :goto_2a

    .line 1800
    :goto_2b
    monitor-exit v11
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1801
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1802
    .line 1803
    .line 1804
    throw v0
.end method

.method public isMonitorCpuUsage()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    return p0
.end method

.method public isSilentAnr()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "anr_show_background"

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 24
    .line 25
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 26
    .line 27
    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    .line 28
    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 47
    .line 48
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 49
    .line 50
    const-string/jumbo v1, "com.android.systemui"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 62
    .line 63
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    .line 64
    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    iget-boolean p0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 68
    .line 69
    if-eqz p0, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    const/4 v3, 0x1

    .line 73
    :cond_4
    :goto_0
    return v3
.end method

.method public final setNotResponding(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    .line 8
    .line 9
    return-void
.end method

.method public final skipAnrLocked(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 4
    .line 5
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const-string v2, " "

    .line 13
    .line 14
    const-string v3, "ActivityManager"

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v4, "During shutdown skipping ANR: "

    .line 21
    .line 22
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return v1

    .line 42
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mNotResponding:Z

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "Skipping duplicate ANR: "

    .line 49
    .line 50
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return v1

    .line 70
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mCrashing:Z

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v4, "Crashing app skipping ANR: "

    .line 77
    .line 78
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    return v1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 99
    .line 100
    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 101
    .line 102
    if-eqz v4, :cond_3

    .line 103
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    const-string v4, "App already killed by AM skipping ANR: "

    .line 107
    .line 108
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    return v1

    .line 128
    :cond_3
    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 129
    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    const-string v4, "Skipping died app ANR: "

    .line 135
    .line 136
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    return v1

    .line 156
    :cond_4
    const/4 p0, 0x0

    .line 157
    return p0
.end method

.method public final startAppProblemLSP()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    if-ge v2, v1, :cond_1

    .line 15
    .line 16
    aget v3, v0, v2

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 19
    .line 20
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 21
    .line 22
    if-ne v5, v3, :cond_0

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 29
    .line 30
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 33
    .line 34
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 35
    .line 36
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 37
    .line 38
    invoke-static {v3, v4, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iput-object v3, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mErrorReportReceiver:Landroid/content/ComponentName;

    .line 43
    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueueModernImpl;

    .line 50
    .line 51
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 52
    .line 53
    invoke-virtual {v0, p0}, Lcom/android/server/am/BroadcastQueueModernImpl;->onApplicationCleanupLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
