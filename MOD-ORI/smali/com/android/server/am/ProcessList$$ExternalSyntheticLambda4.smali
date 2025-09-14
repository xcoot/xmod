.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ProcessList;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$10:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:Ljava/lang/String;

.field public final synthetic f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 1
    iput p12, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ProcessList;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$3:[I

    .line 8
    .line 9
    iput p4, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$4:I

    .line 10
    .line 11
    iput p5, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$5:I

    .line 12
    .line 13
    iput p6, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$6:I

    .line 14
    .line 15
    iput-object p7, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$7:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p8, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$8:Ljava/lang/String;

    .line 18
    .line 19
    iput-object p9, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$9:Ljava/lang/String;

    .line 20
    .line 21
    iput-wide p10, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$10:J

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ProcessList;

    .line 9
    .line 10
    iget-object v14, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 11
    .line 12
    iget-object v6, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$3:[I

    .line 13
    .line 14
    iget v7, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$4:I

    .line 15
    .line 16
    iget v8, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$5:I

    .line 17
    .line 18
    iget v9, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$6:I

    .line 19
    .line 20
    iget-object v11, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$7:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v12, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$8:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v13, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$9:Ljava/lang/String;

    .line 25
    .line 26
    iget-wide v4, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$10:J

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v3, v14, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 32
    .line 33
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 34
    .line 35
    iget-object v10, v14, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    .line 36
    .line 37
    move-object v15, v12

    .line 38
    move-object/from16 v16, v13

    .line 39
    .line 40
    iget-wide v12, v14, Lcom/android/server/am/ProcessRecord;->mStartUptime:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 41
    .line 42
    move-object v2, v1

    .line 43
    move-wide/from16 v17, v4

    .line 44
    .line 45
    move-object v4, v14

    .line 46
    move v5, v0

    .line 47
    move-wide/from16 v19, v12

    .line 48
    .line 49
    move-object v12, v15

    .line 50
    move-object/from16 v13, v16

    .line 51
    .line 52
    move-object/from16 v21, v14

    .line 53
    .line 54
    move-wide/from16 v14, v19

    .line 55
    .line 56
    :try_start_1
    invoke-virtual/range {v2 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iget-object v9, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 61
    .line 62
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 63
    .line 64
    .line 65
    monitor-enter v9
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :try_start_2
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    .line 68
    move-wide/from16 v10, v17

    .line 69
    .line 70
    :try_start_3
    invoke-virtual {v2, v10, v11}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    if-nez v2, :cond_0

    .line 75
    .line 76
    move-object/from16 v12, v21

    .line 77
    .line 78
    :try_start_4
    iget v2, v12, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 79
    .line 80
    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 81
    .line 82
    if-ne v2, v3, :cond_1

    .line 83
    .line 84
    iget-boolean v0, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 85
    .line 86
    iput-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 87
    .line 88
    iget-object v2, v12, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 89
    .line 90
    iput-boolean v0, v2, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    move-object/from16 v12, v21

    .line 94
    .line 95
    iget v4, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 96
    .line 97
    iget-boolean v5, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 98
    .line 99
    const/4 v8, 0x0

    .line 100
    move-object v2, v1

    .line 101
    move-object v3, v12

    .line 102
    move-wide v6, v10

    .line 103
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 108
    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto :goto_3

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    goto :goto_2

    .line 116
    :catchall_1
    move-exception v0

    .line 117
    :goto_1
    move-object/from16 v12, v21

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catchall_2
    move-exception v0

    .line 121
    move-wide/from16 v10, v17

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :goto_2
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 125
    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 126
    .line 127
    .line 128
    throw v0
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    .line 129
    :catch_1
    move-exception v0

    .line 130
    move-wide/from16 v10, v17

    .line 131
    .line 132
    move-object/from16 v12, v21

    .line 133
    .line 134
    goto :goto_3

    .line 135
    :catch_2
    move-exception v0

    .line 136
    move-wide v10, v4

    .line 137
    move-object v12, v14

    .line 138
    :goto_3
    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 139
    .line 140
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 141
    .line 142
    .line 143
    monitor-enter v2

    .line 144
    :try_start_8
    const-string v3, "ActivityManager"

    .line 145
    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v5, "Failure starting process "

    .line 152
    .line 153
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object v5, v12, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    .line 167
    .line 168
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 169
    .line 170
    invoke-virtual {v0, v10, v11}, Landroid/util/LongSparseArray;->remove(J)V

    .line 171
    .line 172
    .line 173
    const/4 v0, 0x0

    .line 174
    iput-boolean v0, v12, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 175
    .line 176
    iget-object v13, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 177
    .line 178
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 179
    .line 180
    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 181
    .line 182
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 183
    .line 184
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 185
    .line 186
    .line 187
    move-result v15

    .line 188
    iget v0, v12, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 189
    .line 190
    const-string/jumbo v22, "start failure"

    .line 191
    .line 192
    .line 193
    const/16 v16, 0x0

    .line 194
    .line 195
    const/16 v17, 0x0

    .line 196
    .line 197
    const/16 v18, 0x1

    .line 198
    .line 199
    const/16 v19, 0x0

    .line 200
    .line 201
    const/16 v20, 0x0

    .line 202
    .line 203
    move/from16 v21, v0

    .line 204
    .line 205
    invoke-virtual/range {v13 .. v22}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 209
    .line 210
    if-nez v0, :cond_2

    .line 211
    .line 212
    iget-object v0, v12, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 213
    .line 214
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    .line 215
    .line 216
    invoke-virtual {v0, v12}, Lcom/android/server/am/OomAdjuster;->onProcessEndLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 217
    .line 218
    .line 219
    :cond_2
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 220
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 221
    .line 222
    .line 223
    :goto_4
    return-void

    .line 224
    :catchall_3
    move-exception v0

    .line 225
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 226
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 227
    .line 228
    .line 229
    throw v0

    .line 230
    :pswitch_0
    iget-object v1, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/am/ProcessList;

    .line 231
    .line 232
    iget-object v2, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$1:Lcom/android/server/am/ProcessRecord;

    .line 233
    .line 234
    iget-object v6, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$3:[I

    .line 235
    .line 236
    iget v7, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$4:I

    .line 237
    .line 238
    iget v8, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$5:I

    .line 239
    .line 240
    iget v9, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$6:I

    .line 241
    .line 242
    iget-object v10, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$7:Ljava/lang/String;

    .line 243
    .line 244
    iget-object v11, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$8:Ljava/lang/String;

    .line 245
    .line 246
    iget-object v12, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$9:Ljava/lang/String;

    .line 247
    .line 248
    iget-wide v13, v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->f$10:J

    .line 249
    .line 250
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    new-instance v0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;

    .line 254
    .line 255
    const/4 v15, 0x1

    .line 256
    move-object v3, v0

    .line 257
    move-object v4, v1

    .line 258
    move-object v5, v2

    .line 259
    invoke-direct/range {v3 .. v15}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 260
    .line 261
    .line 262
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 263
    .line 264
    if-eqz v2, :cond_4

    .line 265
    .line 266
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    .line 267
    .line 268
    if-lez v3, :cond_4

    .line 269
    .line 270
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 271
    .line 272
    if-eqz v3, :cond_3

    .line 273
    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    .line 275
    .line 276
    const-string v1, "We\'ve been watching for the death of "

    .line 277
    .line 278
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    const-string v1, "ActivityManager"

    .line 289
    .line 290
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    goto :goto_5

    .line 294
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    const-string/jumbo v4, "handleProcessStartWithPredecessor predecessor = "

    .line 297
    .line 298
    .line 299
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    const-string v4, "ActivityManager_PRED"

    .line 310
    .line 311
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    iput-object v0, v2, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 315
    .line 316
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 317
    .line 318
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    .line 319
    .line 320
    const/4 v3, 0x2

    .line 321
    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 326
    .line 327
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 328
    .line 329
    iget-wide v3, v1, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    .line 330
    .line 331
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 332
    .line 333
    .line 334
    goto :goto_5

    .line 335
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;->run()V

    .line 336
    .line 337
    .line 338
    :goto_5
    return-void

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
