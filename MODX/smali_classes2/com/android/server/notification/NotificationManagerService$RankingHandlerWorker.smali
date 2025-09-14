.class public final Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/RankingHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v3, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const/16 v4, 0x3e8

    .line 8
    .line 9
    if-eq v3, v4, :cond_a

    .line 10
    .line 11
    const/16 v1, 0x3e9

    .line 12
    .line 13
    if-eq v3, v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_c

    .line 16
    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto/16 :goto_c

    .line 24
    .line 25
    :cond_1
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v3

    .line 28
    :try_start_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    new-instance v4, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-direct {v4, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 37
    .line 38
    .line 39
    const/4 v15, 0x0

    .line 40
    :goto_0
    if-ge v15, v1, :cond_2

    .line 41
    .line 42
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    move-object v14, v6

    .line 49
    check-cast v14, Lcom/android/server/notification/NotificationRecord;

    .line 50
    .line 51
    new-instance v13, Lcom/android/server/notification/NotificationRecordExtractorData;

    .line 52
    .line 53
    iget v8, v14, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 54
    .line 55
    iget-boolean v9, v14, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 56
    .line 57
    iget-boolean v10, v14, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 58
    .line 59
    iget-object v6, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 60
    .line 61
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v6}, Landroid/app/Notification;->isBubbleNotification()Z

    .line 66
    .line 67
    .line 68
    move-result v11

    .line 69
    iget-object v12, v14, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 70
    .line 71
    iget-object v6, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 72
    .line 73
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v16

    .line 77
    iget-object v7, v14, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    .line 78
    .line 79
    iget-object v6, v14, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget v5, v14, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 82
    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    iget v2, v14, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 88
    .line 89
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v17

    .line 93
    iget-object v2, v14, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    .line 94
    .line 95
    move/from16 p0, v1

    .line 96
    .line 97
    iget-object v1, v14, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    .line 98
    .line 99
    move-object/from16 p1, v0

    .line 100
    .line 101
    iget v0, v14, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 102
    .line 103
    move-object/from16 v25, v4

    .line 104
    .line 105
    iget v4, v14, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 106
    .line 107
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    .line 108
    .line 109
    .line 110
    move-result v22

    .line 111
    move/from16 v21, v4

    .line 112
    .line 113
    iget v4, v14, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    .line 114
    .line 115
    move/from16 v23, v4

    .line 116
    .line 117
    iget-boolean v4, v14, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    .line 118
    .line 119
    move-object/from16 v18, v6

    .line 120
    .line 121
    move-object v6, v13

    .line 122
    move-object/from16 v19, v7

    .line 123
    .line 124
    move v7, v15

    .line 125
    move-object/from16 v26, v13

    .line 126
    .line 127
    move-object/from16 v13, v16

    .line 128
    .line 129
    move-object/from16 v27, v14

    .line 130
    .line 131
    move-object/from16 v14, v19

    .line 132
    .line 133
    move/from16 v28, v15

    .line 134
    .line 135
    move-object/from16 v15, v18

    .line 136
    .line 137
    move-object/from16 v16, v5

    .line 138
    .line 139
    move-object/from16 v18, v2

    .line 140
    .line 141
    move-object/from16 v19, v1

    .line 142
    .line 143
    move/from16 v20, v0

    .line 144
    .line 145
    move/from16 v24, v4

    .line 146
    .line 147
    invoke-direct/range {v6 .. v24}, Lcom/android/server/notification/NotificationRecordExtractorData;-><init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZIZ)V

    .line 148
    .line 149
    .line 150
    move-object/from16 v6, v27

    .line 151
    .line 152
    iget-object v0, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    move-object/from16 v1, v25

    .line 159
    .line 160
    move-object/from16 v2, v26

    .line 161
    .line 162
    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-object/from16 v0, p1

    .line 166
    .line 167
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 168
    .line 169
    invoke-virtual {v2, v6}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 170
    .line 171
    .line 172
    const/4 v2, 0x1

    .line 173
    add-int/lit8 v15, v28, 0x1

    .line 174
    .line 175
    move-object v4, v1

    .line 176
    move/from16 v1, p0

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :catchall_0
    move-exception v0

    .line 181
    goto/16 :goto_6

    .line 182
    .line 183
    :cond_2
    move/from16 p0, v1

    .line 184
    .line 185
    move-object v1, v4

    .line 186
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 187
    .line 188
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v2, v4}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 191
    .line 192
    .line 193
    const/4 v10, 0x0

    .line 194
    move/from16 v2, p0

    .line 195
    .line 196
    :goto_1
    if-ge v10, v2, :cond_9

    .line 197
    .line 198
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v4

    .line 204
    move-object v11, v4

    .line 205
    check-cast v11, Lcom/android/server/notification/NotificationRecord;

    .line 206
    .line 207
    iget-object v4, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 208
    .line 209
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-nez v4, :cond_4

    .line 218
    .line 219
    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 220
    goto :goto_5

    .line 221
    :cond_4
    iget-object v4, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 222
    .line 223
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v4

    .line 227
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    check-cast v4, Lcom/android/server/notification/NotificationRecordExtractorData;

    .line 232
    .line 233
    invoke-virtual {v4, v11, v10}, Lcom/android/server/notification/NotificationRecordExtractorData;->hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_5

    .line 238
    .line 239
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 240
    .line 241
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 242
    .line 243
    .line 244
    :cond_5
    iget-boolean v4, v11, Lcom/android/server/notification/NotificationRecord;->mPendingLogUpdate:Z

    .line 245
    .line 246
    if-eqz v4, :cond_3

    .line 247
    .line 248
    iget-object v4, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 249
    .line 250
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    check-cast v4, Lcom/android/server/notification/NotificationRecordExtractorData;

    .line 259
    .line 260
    invoke-virtual {v4, v11, v10}, Lcom/android/server/notification/NotificationRecordExtractorData;->hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_8

    .line 265
    .line 266
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 267
    .line 268
    iget-object v5, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 269
    .line 270
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v5

    .line 274
    const/4 v6, 0x0

    .line 275
    if-nez v5, :cond_6

    .line 276
    .line 277
    :goto_3
    move-object v9, v6

    .line 278
    goto :goto_4

    .line 279
    :cond_6
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 280
    .line 281
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 286
    .line 287
    if-nez v5, :cond_7

    .line 288
    .line 289
    goto :goto_3

    .line 290
    :cond_7
    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 291
    .line 292
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 293
    .line 294
    .line 295
    move-result-object v5

    .line 296
    move-object v9, v5

    .line 297
    :goto_4
    check-cast v4, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 298
    .line 299
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 300
    .line 301
    .line 302
    new-instance v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    .line 303
    .line 304
    invoke-direct {v5, v11, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 305
    .line 306
    .line 307
    new-instance v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    .line 308
    .line 309
    sget-object v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_ADJUSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 310
    .line 311
    const/4 v8, 0x0

    .line 312
    move-object v4, v12

    .line 313
    move v7, v10

    .line 314
    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;-><init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V

    .line 315
    .line 316
    .line 317
    invoke-static {v12}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    .line 318
    .line 319
    .line 320
    :cond_8
    const/4 v4, 0x0

    .line 321
    iput-boolean v4, v11, Lcom/android/server/notification/NotificationRecord;->mPendingLogUpdate:Z

    .line 322
    .line 323
    goto :goto_2

    .line 324
    :goto_5
    add-int/2addr v10, v4

    .line 325
    goto/16 :goto_1

    .line 326
    .line 327
    :cond_9
    monitor-exit v3

    .line 328
    goto/16 :goto_c

    .line 329
    .line 330
    :goto_6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    throw v0

    .line 332
    :cond_a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 333
    .line 334
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 335
    .line 336
    .line 337
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 338
    .line 339
    instance-of v2, v1, Lcom/android/server/notification/RankingReconsideration;

    .line 340
    .line 341
    if-nez v2, :cond_b

    .line 342
    .line 343
    goto/16 :goto_c

    .line 344
    .line 345
    :cond_b
    check-cast v1, Lcom/android/server/notification/RankingReconsideration;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 348
    .line 349
    .line 350
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 351
    .line 352
    monitor-enter v2

    .line 353
    :try_start_1
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 354
    .line 355
    iget-object v4, v1, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    .line 356
    .line 357
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 362
    .line 363
    if-nez v3, :cond_c

    .line 364
    .line 365
    monitor-exit v2

    .line 366
    goto/16 :goto_c

    .line 367
    .line 368
    :catchall_1
    move-exception v0

    .line 369
    goto/16 :goto_d

    .line 370
    .line 371
    :cond_c
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 372
    .line 373
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 374
    .line 375
    iget-object v4, v4, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 376
    .line 377
    invoke-static {v5, v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    iget-boolean v5, v3, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 382
    .line 383
    iget v6, v3, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 384
    .line 385
    iget-boolean v7, v3, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 386
    .line 387
    invoke-virtual {v1, v3}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 388
    .line 389
    .line 390
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 391
    .line 392
    iget-object v8, v1, Lcom/android/server/notification/ZenModeHelper;->mConfigLock:Ljava/lang/Object;

    .line 393
    .line 394
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 395
    :try_start_2
    iget-object v9, v1, Lcom/android/server/notification/ZenModeHelper;->mFiltering:Lcom/android/server/notification/ZenModeFiltering;

    .line 396
    .line 397
    iget v10, v1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 398
    .line 399
    iget-object v1, v1, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 400
    .line 401
    invoke-virtual {v9, v10, v1, v3}, Lcom/android/server/notification/ZenModeFiltering;->shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 406
    :try_start_3
    iput-boolean v1, v3, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 407
    .line 408
    const/4 v8, 0x1

    .line 409
    iput-boolean v8, v3, Lcom/android/server/notification/NotificationRecord;->mInterceptSet:Z

    .line 410
    .line 411
    if-eqz v1, :cond_d

    .line 412
    .line 413
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 414
    .line 415
    iget-object v1, v1, Lcom/android/server/notification/ZenModeHelper;->mConsolidatedPolicy:Landroid/app/NotificationManager$Policy;

    .line 416
    .line 417
    invoke-virtual {v1}, Landroid/app/NotificationManager$Policy;->copy()Landroid/app/NotificationManager$Policy;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iget v1, v1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 422
    .line 423
    iput v1, v3, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 424
    .line 425
    const/4 v1, 0x0

    .line 426
    goto :goto_7

    .line 427
    :cond_d
    const/4 v1, 0x0

    .line 428
    iput v1, v3, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 429
    .line 430
    :goto_7
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 431
    .line 432
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 433
    .line 434
    invoke-virtual {v9, v10}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 435
    .line 436
    .line 437
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 438
    .line 439
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 440
    .line 441
    iget-object v9, v9, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    .line 442
    .line 443
    invoke-static {v10, v3, v9}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 444
    .line 445
    .line 446
    move-result v9

    .line 447
    if-eq v4, v9, :cond_e

    .line 448
    .line 449
    move v4, v8

    .line 450
    goto :goto_8

    .line 451
    :cond_e
    move v4, v1

    .line 452
    :goto_8
    iget-boolean v9, v3, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 453
    .line 454
    if-eq v5, v9, :cond_f

    .line 455
    .line 456
    move v10, v8

    .line 457
    goto :goto_9

    .line 458
    :cond_f
    move v10, v1

    .line 459
    :goto_9
    iget v11, v3, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 460
    .line 461
    if-eq v6, v11, :cond_10

    .line 462
    .line 463
    move v6, v8

    .line 464
    goto :goto_a

    .line 465
    :cond_10
    move v6, v1

    .line 466
    :goto_a
    iget-boolean v11, v3, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 467
    .line 468
    if-eqz v11, :cond_11

    .line 469
    .line 470
    iget-boolean v11, v3, Lcom/android/server/notification/NotificationRecord;->mIsInterruptive:Z

    .line 471
    .line 472
    if-eq v7, v11, :cond_11

    .line 473
    .line 474
    move v7, v8

    .line 475
    goto :goto_b

    .line 476
    :cond_11
    move v7, v1

    .line 477
    :goto_b
    if-nez v4, :cond_12

    .line 478
    .line 479
    if-nez v10, :cond_12

    .line 480
    .line 481
    if-nez v6, :cond_12

    .line 482
    .line 483
    if-eqz v7, :cond_13

    .line 484
    .line 485
    :cond_12
    move v1, v8

    .line 486
    :cond_13
    if-eqz v5, :cond_14

    .line 487
    .line 488
    if-nez v9, :cond_14

    .line 489
    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 491
    .line 492
    .line 493
    move-result-wide v4

    .line 494
    iget-wide v6, v3, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 495
    .line 496
    sub-long/2addr v4, v6

    .line 497
    long-to-int v4, v4

    .line 498
    const/16 v5, 0x7d0

    .line 499
    .line 500
    if-gt v4, v5, :cond_14

    .line 501
    .line 502
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 503
    .line 504
    new-instance v5, Lcom/android/server/notification/NotificationAttentionHelper$Signals;

    .line 505
    .line 506
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 507
    .line 508
    iget-object v7, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 509
    .line 510
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 511
    .line 512
    .line 513
    move-result v7

    .line 514
    invoke-virtual {v6, v7}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    .line 515
    .line 516
    .line 517
    move-result v6

    .line 518
    iget v7, v0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 519
    .line 520
    invoke-direct {v5, v7, v6}, Lcom/android/server/notification/NotificationAttentionHelper$Signals;-><init>(IZ)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v4, v3, v5}, Lcom/android/server/notification/NotificationAttentionHelper;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationAttentionHelper$Signals;)I

    .line 524
    .line 525
    .line 526
    sget-object v4, Lcom/android/server/notification/ZenLog;->STATE_CHANGES:Landroid/util/LocalLog;

    .line 527
    .line 528
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 529
    .line 530
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v3

    .line 534
    const/16 v4, 0x15

    .line 535
    .line 536
    invoke-static {v4, v3}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 537
    .line 538
    .line 539
    :cond_14
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 540
    if-eqz v1, :cond_15

    .line 541
    .line 542
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 543
    .line 544
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 545
    .line 546
    .line 547
    :cond_15
    :goto_c
    return-void

    .line 548
    :catchall_2
    move-exception v0

    .line 549
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 550
    :try_start_5
    throw v0

    .line 551
    :goto_d
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 552
    throw v0
.end method

.method public final requestSort()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/notification/Flags;->notificationReduceMessagequeueUsage()Z

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e9

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput v0, v1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
