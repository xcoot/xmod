.class public final Lcom/android/server/am/pds/PDSTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/pds/PDSTrigger;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/pds/PDSTrigger;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/am/pds/PDSTrigger$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x5

    .line 4
    const-wide/32 v2, 0x493e0

    .line 7
    const/16 v4, 0xa

    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v6, 0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    iget v8, v0, Lcom/android/server/am/pds/PDSTrigger$1;->$r8$classId:I

    .line 14
    packed-switch v8, :pswitch_data_0

    .line 17
    if-eqz p2, :cond_5

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_0

    .line 25
    goto/16 :goto_0

    .line 27
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string/jumbo v8, "com.android.server.am.MARS_TRIGGER_MPSM_POLICY"

    .line 34
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v8

    .line 38
    const-string v9, "PACKAGE_NAME"

    .line 40
    const-string v10, "PDSTrigger"

    .line 42
    sget-object v11, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    .line 44
    if-eqz v8, :cond_3

    .line 46
    iget-object v5, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    move-result-wide v12

    .line 52
    iget-object v8, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 54
    iget-wide v14, v8, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    .line 56
    sub-long/2addr v12, v14

    .line 57
    cmp-long v2, v12, v2

    .line 59
    if-ltz v2, :cond_1

    .line 61
    move v7, v6

    .line 62
    :cond_1
    iput-boolean v7, v5, Lcom/android/server/am/pds/PDSTrigger;->isInDuration:Z

    .line 64
    iget-boolean v2, v8, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    .line 66
    if-eqz v2, :cond_2

    .line 68
    if-eqz v2, :cond_5

    .line 70
    iget-boolean v2, v8, Lcom/android/server/am/pds/PDSTrigger;->isInDuration:Z

    .line 72
    if-eqz v2, :cond_5

    .line 74
    :cond_2
    iput-boolean v6, v8, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    move-result-wide v2

    .line 80
    iput-wide v2, v8, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    .line 82
    const-string/jumbo v2, "broadcast received action : MARS_TRIGGER_MPSM_POLICY"

    .line 85
    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_5

    .line 94
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 97
    move-result-object v2

    .line 98
    if-eqz v2, :cond_5

    .line 100
    iget-object v3, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 102
    invoke-static {v3, v1}, Lcom/android/server/am/pds/PDSTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/pds/PDSTrigger;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object v1

    .line 106
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 108
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 113
    move-result v0

    .line 114
    invoke-virtual {v11, v4, v0, v1, v2}, Lcom/android/server/am/pds/PDSHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    const-string/jumbo v2, "com.android.server.am.MARS_CANCEL_MPSM_POLICY"

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_5

    .line 127
    const-string/jumbo v1, "broadcast received action : MARS_CANCEL_MPSM_POLICY"

    .line 130
    invoke-static {v10, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 135
    iput-boolean v7, v1, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    .line 137
    const-wide/16 v2, -0x1

    .line 139
    iput-wide v2, v1, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 144
    move-result-object v1

    .line 145
    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 150
    move-result-object v1

    .line 151
    if-eqz v1, :cond_5

    .line 153
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 155
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    .line 157
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 160
    move-result v0

    .line 161
    invoke-virtual {v11, v4, v0, v1}, Lcom/android/server/am/pds/PDSHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    .line 164
    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 167
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 172
    move-result v0

    .line 173
    invoke-virtual {v11, v4, v0, v5}, Lcom/android/server/am/pds/PDSHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    .line 176
    :cond_5
    :goto_0
    return-void

    .line 177
    :pswitch_0
    if-eqz p2, :cond_9

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 182
    move-result-object v2

    .line 183
    if-nez v2, :cond_6

    .line 185
    goto :goto_1

    .line 186
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 189
    move-result-object v2

    .line 190
    const-string/jumbo v3, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v3

    .line 197
    const-string v4, "PACKAGE_NAME"

    .line 199
    const-string v8, "PDSTrigger"

    .line 201
    sget-object v9, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    .line 203
    if-eqz v3, :cond_7

    .line 205
    const-string/jumbo v3, "broadcast received action : MARS_TRIGGER_UDS_POLICY"

    .line 208
    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 213
    iput-boolean v6, v3, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 218
    move-result-object v3

    .line 219
    if-eqz v3, :cond_9

    .line 221
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 224
    move-result-object v3

    .line 225
    if-eqz v3, :cond_9

    .line 227
    iget-object v4, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 229
    invoke-static {v4, v2}, Lcom/android/server/am/pds/PDSTrigger;->-$$Nest$mactionToString(Lcom/android/server/am/pds/PDSTrigger;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-result-object v2

    .line 233
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 235
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 240
    move-result v0

    .line 241
    invoke-virtual {v9, v1, v0, v2, v3}, Lcom/android/server/am/pds/PDSHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    .line 244
    goto :goto_1

    .line 245
    :cond_7
    const-string/jumbo v3, "com.android.server.am.MARS_CANCEL_UDS_POLICY"

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_9

    .line 254
    const-string/jumbo v2, "broadcast received action : MARS_CANCEL_UDS_POLICY"

    .line 257
    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 262
    iput-boolean v7, v2, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 267
    move-result-object v2

    .line 268
    if-eqz v2, :cond_8

    .line 270
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 273
    move-result-object v2

    .line 274
    if-eqz v2, :cond_9

    .line 276
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 278
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    .line 280
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 283
    move-result v0

    .line 284
    invoke-virtual {v9, v1, v0, v2}, Lcom/android/server/am/pds/PDSHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    .line 287
    goto :goto_1

    .line 288
    :cond_8
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 290
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 295
    move-result v0

    .line 296
    invoke-virtual {v9, v1, v0, v5}, Lcom/android/server/am/pds/PDSHandler;->sendCancelPolicyMsgToMainHandler(IILjava/util/ArrayList;)V

    .line 299
    :cond_9
    :goto_1
    return-void

    .line 300
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 303
    move-result-object v6

    .line 304
    if-nez v6, :cond_a

    .line 306
    goto/16 :goto_4

    .line 308
    :cond_a
    const-string v8, "FIRST_ALARM_TRIGGER_ACTION"

    .line 310
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 313
    move-result v8

    .line 314
    sget-object v9, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    .line 316
    if-eqz v8, :cond_d

    .line 318
    const-string/jumbo v8, "mPolicyIntentReceiver broadcast received action : "

    .line 321
    invoke-virtual {v8, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    move-result-object v8

    .line 325
    const-string v10, "PDSTrigger"

    .line 327
    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-object v8, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 332
    sget-object v8, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    .line 334
    monitor-enter v8

    .line 335
    :try_start_0
    iget-boolean v10, v8, Lcom/android/server/am/PDSController;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit v8

    .line 338
    if-nez v10, :cond_d

    .line 340
    iget-object v8, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 342
    iget-boolean v8, v8, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    .line 344
    if-eqz v8, :cond_c

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 349
    move-result-wide v10

    .line 350
    iget-object v8, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 352
    iget-wide v12, v8, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    .line 354
    sub-long/2addr v10, v12

    .line 355
    cmp-long v10, v10, v2

    .line 357
    if-gez v10, :cond_b

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 362
    move-result-wide v10

    .line 363
    iget-object v12, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 365
    iget-wide v12, v12, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    .line 367
    sub-long/2addr v10, v12

    .line 368
    sub-long/2addr v2, v10

    .line 369
    iput-wide v2, v8, Lcom/android/server/am/pds/PDSTrigger;->firstTrigger:J

    .line 371
    :cond_b
    iget-object v2, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 373
    iget-wide v2, v2, Lcom/android/server/am/pds/PDSTrigger;->firstTrigger:J

    .line 375
    invoke-virtual {v9, v4, v2, v3}, Lcom/android/server/am/pds/PDSHandler;->sendFirstTriggerMsgToMainHandler(IJ)V

    .line 378
    :cond_c
    iget-object v2, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 380
    iget-boolean v3, v2, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    .line 382
    if-eqz v3, :cond_d

    .line 384
    iget-wide v2, v2, Lcom/android/server/am/pds/PDSTrigger;->firstTrigger:J

    .line 386
    invoke-virtual {v9, v1, v2, v3}, Lcom/android/server/am/pds/PDSHandler;->sendFirstTriggerMsgToMainHandler(IJ)V

    .line 389
    goto :goto_2

    .line 390
    :catchall_0
    move-exception v0

    .line 391
    move-object v1, v0

    .line 392
    monitor-exit v8

    .line 393
    throw v1

    .line 394
    :cond_d
    :goto_2
    const-string/jumbo v2, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    .line 397
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_10

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 406
    move-result-object v2

    .line 407
    if-eqz v2, :cond_10

    .line 409
    const-string v3, "POLICY_NAME"

    .line 411
    const-string v6, ""

    .line 413
    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 416
    move-result-object v3

    .line 417
    iget-object v6, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 419
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 422
    const-string/jumbo v6, "udspolicy"

    .line 425
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 428
    move-result v6

    .line 429
    if-eqz v6, :cond_e

    .line 431
    goto :goto_3

    .line 432
    :cond_e
    const-string/jumbo v1, "mpsmpolicy"

    .line 435
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_f

    .line 441
    move v1, v4

    .line 442
    goto :goto_3

    .line 443
    :cond_f
    move v1, v7

    .line 444
    :goto_3
    const-string v3, "PACKAGE_NAME"

    .line 446
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 449
    move-result-object v2

    .line 450
    if-eqz v1, :cond_10

    .line 452
    if-eqz v2, :cond_10

    .line 454
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 456
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    .line 458
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    .line 461
    move-result v0

    .line 462
    invoke-virtual {v9, v1, v0, v5, v2}, Lcom/android/server/am/pds/PDSHandler;->sendRunPolicySpecificPkgMsgToMainHandler(IILjava/lang/String;Ljava/util/ArrayList;)V

    .line 465
    :cond_10
    :goto_4
    return-void

    .line 466
    :pswitch_2
    if-eqz p2, :cond_17

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 471
    move-result-object v1

    .line 472
    if-nez v1, :cond_11

    .line 474
    goto/16 :goto_5

    .line 476
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 479
    move-result-object v1

    .line 480
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 482
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 485
    move-result v2

    .line 486
    if-eqz v2, :cond_14

    .line 488
    sget-object v1, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 490
    sget-object v1, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    .line 492
    monitor-enter v1

    .line 493
    :try_start_1
    iput-boolean v6, v1, Lcom/android/server/am/PDSController;->mScreenOn:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 495
    monitor-exit v1

    .line 496
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 498
    iget-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 500
    if-eqz v1, :cond_12

    .line 502
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mAlarm:Landroid/app/AlarmManager;

    .line 504
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 507
    :cond_12
    sget-object v0, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    .line 509
    iget-object v0, v0, Lcom/android/server/am/pds/PDSHandler;->mMainHandler:Lcom/android/server/am/pds/PDSHandler$MainHandler;

    .line 511
    if-nez v0, :cond_13

    .line 513
    goto :goto_5

    .line 514
    :cond_13
    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    goto :goto_5

    .line 518
    :catchall_1
    move-exception v0

    .line 519
    move-object v2, v0

    .line 520
    monitor-exit v1

    .line 521
    throw v2

    .line 522
    :cond_14
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 524
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    move-result v1

    .line 528
    if-eqz v1, :cond_17

    .line 530
    sget-object v1, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 532
    sget-object v1, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    .line 534
    monitor-enter v1

    .line 535
    :try_start_2
    iput-boolean v7, v1, Lcom/android/server/am/PDSController;->mScreenOn:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 537
    monitor-exit v1

    .line 538
    iget-boolean v1, v1, Lcom/android/server/am/PDSController;->mIsPDSEnable:Z

    .line 540
    if-eqz v1, :cond_17

    .line 542
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger$1;->this$0:Lcom/android/server/am/pds/PDSTrigger;

    .line 544
    iget-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    .line 546
    if-nez v1, :cond_15

    .line 548
    iget-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    .line 550
    if-eqz v1, :cond_17

    .line 552
    :cond_15
    iget-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 554
    if-nez v1, :cond_16

    .line 556
    new-instance v1, Landroid/content/Intent;

    .line 558
    const-string v2, "FIRST_ALARM_TRIGGER_ACTION"

    .line 560
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    const-string v2, "android"

    .line 565
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    move-result-object v1

    .line 569
    const/high16 v2, 0x40000000    # 2.0f

    .line 571
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 574
    move-result-object v1

    .line 575
    iget-object v2, v0, Lcom/android/server/am/pds/PDSTrigger;->mContext:Landroid/content/Context;

    .line 577
    iget-object v3, v0, Lcom/android/server/am/pds/PDSTrigger;->user:Landroid/os/UserHandle;

    .line 579
    const/high16 v4, 0x4000000

    .line 581
    invoke-static {v2, v7, v1, v4, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 584
    move-result-object v1

    .line 585
    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 587
    :cond_16
    iget-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mAlarm:Landroid/app/AlarmManager;

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 592
    move-result-wide v2

    .line 593
    const-wide/16 v4, 0x1388

    .line 595
    add-long/2addr v2, v4

    .line 596
    iget-object v0, v0, Lcom/android/server/am/pds/PDSTrigger;->mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

    .line 598
    invoke-virtual {v1, v6, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 601
    goto :goto_5

    .line 602
    :catchall_2
    move-exception v0

    .line 603
    move-object v2, v0

    .line 604
    monitor-exit v1

    .line 605
    throw v2

    .line 606
    :cond_17
    :goto_5
    return-void

    .line 607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
