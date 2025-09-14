.class public final Lcom/android/server/trust/TrustManagerService$3;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    sget-boolean v2, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v3, "TrustManagerService"

    .line 10
    .line 11
    const-string v4, "handler: %s"

    .line 12
    .line 13
    iget v5, v1, Landroid/os/Message;->what:I

    .line 14
    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget v3, v1, Landroid/os/Message;->what:I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, -0x1

    .line 30
    const/4 v6, 0x1

    .line 31
    const/4 v7, 0x0

    .line 32
    packed-switch v3, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    :pswitch_0
    goto/16 :goto_17

    .line 36
    .line 37
    :pswitch_1
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 38
    .line 39
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 40
    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v2, "TrustManagerService"

    .line 55
    .line 56
    const-string v5, "dispatchUserMayRequestUnlock(user=%s)"

    .line 57
    .line 58
    invoke-static {v2, v5, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-ge v4, v0, :cond_24

    .line 68
    .line 69
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 70
    .line 71
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 76
    .line 77
    iget v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 78
    .line 79
    if-ne v2, v1, :cond_2

    .line 80
    .line 81
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    :try_start_0
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-interface {v0}, Landroid/service/trust/ITrustAgentService;->onUserMayRequestUnlock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :pswitch_2
    if-eqz v2, :cond_3

    .line 102
    .line 103
    const-string v3, "TrustManagerService"

    .line 104
    .line 105
    const-string v4, "REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH userId=%s"

    .line 106
    .line 107
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 108
    .line 109
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v3, v4, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 121
    .line 122
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService;->mTrustableTimeoutAlarmListenerForUser:Landroid/util/SparseArray;

    .line 123
    .line 124
    iget v4, v1, Landroid/os/Message;->arg1:I

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lcom/android/server/trust/TrustManagerService$TrustableTimeoutAlarmListener;

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    if-eqz v3, :cond_4

    .line 135
    .line 136
    const-string v4, "TrustManagerService"

    .line 137
    .line 138
    const-string v5, "REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH trustable alarm isQueued=%s"

    .line 139
    .line 140
    iget-boolean v7, v3, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 141
    .line 142
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-static {v4, v5, v7}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_4
    const-string v4, "TrustManagerService"

    .line 155
    .line 156
    const-string v5, "REFRESH_TRUSTABLE_TIMERS_AFTER_AUTH no trustable alarm"

    .line 157
    .line 158
    invoke-static {v4, v5}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .line 160
    .line 161
    :cond_5
    :goto_2
    if-eqz v3, :cond_24

    .line 162
    .line 163
    iget-boolean v3, v3, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 164
    .line 165
    if-eqz v3, :cond_24

    .line 166
    .line 167
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 168
    .line 169
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 170
    .line 171
    if-eqz v2, :cond_6

    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    const-string v3, "TrustManagerService"

    .line 185
    .line 186
    const-string/jumbo v4, "refreshTrustableTimers(userId=%s)"

    .line 187
    .line 188
    .line 189
    invoke-static {v3, v4, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    :cond_6
    invoke-virtual {v0, v1, v6, v6}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_17

    .line 196
    .line 197
    :pswitch_3
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 198
    .line 199
    iget v5, v1, Landroid/os/Message;->arg1:I

    .line 200
    .line 201
    iget v0, v1, Landroid/os/Message;->arg2:I

    .line 202
    .line 203
    if-eqz v0, :cond_7

    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_7
    move v6, v4

    .line 207
    :goto_3
    if-eqz v2, :cond_8

    .line 208
    .line 209
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    .line 211
    .line 212
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v1, "TrustManagerService"

    .line 225
    .line 226
    const-string v2, "dispatchUserRequestedUnlock(user=%s, dismissKeyguard=%s)"

    .line 227
    .line 228
    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    :cond_8
    :goto_4
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 232
    .line 233
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-ge v4, v0, :cond_24

    .line 238
    .line 239
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 240
    .line 241
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 246
    .line 247
    iget v1, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 248
    .line 249
    if-ne v1, v5, :cond_9

    .line 250
    .line 251
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    .line 255
    .line 256
    :try_start_1
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 257
    .line 258
    if-eqz v0, :cond_9

    .line 259
    .line 260
    invoke-interface {v0, v6}, Landroid/service/trust/ITrustAgentService;->onUserRequestedUnlock(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :catch_1
    move-exception v0

    .line 265
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 266
    .line 267
    .line 268
    :cond_9
    :goto_5
    add-int/lit8 v4, v4, 0x1

    .line 269
    .line 270
    goto :goto_4

    .line 271
    :pswitch_4
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 272
    .line 273
    if-ne v3, v6, :cond_a

    .line 274
    .line 275
    move v3, v6

    .line 276
    goto :goto_6

    .line 277
    :cond_a
    move v3, v4

    .line 278
    :goto_6
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 279
    .line 280
    if-ne v1, v6, :cond_b

    .line 281
    .line 282
    sget-object v1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_b
    sget-object v1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    .line 286
    .line 287
    :goto_7
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 288
    .line 289
    iget v5, v0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 290
    .line 291
    const-string v7, "TrustManagerService"

    .line 292
    .line 293
    if-eqz v2, :cond_c

    .line 294
    .line 295
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 296
    .line 297
    .line 298
    move-result-object v8

    .line 299
    filled-new-array {v8, v1}, [Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v8

    .line 303
    const-string v9, "handleScheduleTrustTimeout(shouldOverride=%s, timeoutType=%s)"

    .line 304
    .line 305
    invoke-static {v7, v9, v8}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    :cond_c
    sget-object v8, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    .line 309
    .line 310
    if-ne v1, v8, :cond_d

    .line 311
    .line 312
    invoke-virtual {v0, v5, v3, v4}, Lcom/android/server/trust/TrustManagerService;->handleScheduleTrustableTimeouts(IZZ)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_17

    .line 316
    .line 317
    :cond_d
    if-eqz v2, :cond_e

    .line 318
    .line 319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    filled-new-array {v1, v4}, [Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    const-string v4, "handleScheduleTrustedTimeout(userId=%s, shouldOverride=%s)"

    .line 332
    .line 333
    invoke-static {v7, v4, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 337
    .line 338
    .line 339
    move-result-wide v8

    .line 340
    const-wide/32 v10, 0xdbba00

    .line 341
    .line 342
    .line 343
    add-long v14, v8, v10

    .line 344
    .line 345
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 346
    .line 347
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v1

    .line 355
    check-cast v1, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    .line 356
    .line 357
    if-eqz v1, :cond_10

    .line 358
    .line 359
    if-nez v3, :cond_f

    .line 360
    .line 361
    iget-boolean v3, v1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 362
    .line 363
    if-eqz v3, :cond_f

    .line 364
    .line 365
    if-eqz v2, :cond_24

    .line 366
    .line 367
    const-string v0, "Found existing trust timeout alarm. Skipping."

    .line 368
    .line 369
    invoke-static {v7, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    goto/16 :goto_17

    .line 373
    .line 374
    :cond_f
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 375
    .line 376
    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 377
    .line 378
    .line 379
    goto :goto_8

    .line 380
    :cond_10
    new-instance v1, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;

    .line 381
    .line 382
    invoke-direct {v1, v0, v5}, Lcom/android/server/trust/TrustManagerService$TrustedTimeoutAlarmListener;-><init>(Lcom/android/server/trust/TrustManagerService;I)V

    .line 383
    .line 384
    .line 385
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService;->mTrustTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 386
    .line 387
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    :goto_8
    if-eqz v2, :cond_11

    .line 395
    .line 396
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    const-string v3, "\tSetting up trust timeout alarm triggering at elapsedRealTime=%s"

    .line 405
    .line 406
    invoke-static {v7, v3, v2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    :cond_11
    iput-boolean v6, v1, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 410
    .line 411
    iget-object v12, v0, Lcom/android/server/trust/TrustManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 412
    .line 413
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 414
    .line 415
    const/4 v13, 0x2

    .line 416
    const-string v16, "TrustManagerService.trustTimeoutForUser"

    .line 417
    .line 418
    move-object/from16 v17, v1

    .line 419
    .line 420
    move-object/from16 v18, v0

    .line 421
    .line 422
    invoke-virtual/range {v12 .. v18}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 423
    .line 424
    .line 425
    goto/16 :goto_17

    .line 426
    .line 427
    :pswitch_5
    iget v2, v1, Landroid/os/Message;->arg2:I

    .line 428
    .line 429
    if-ne v2, v6, :cond_12

    .line 430
    .line 431
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 432
    .line 433
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 434
    .line 435
    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 436
    .line 437
    .line 438
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 439
    .line 440
    .line 441
    move-result-object v2

    .line 442
    const-string v3, "except"

    .line 443
    .line 444
    const/16 v4, -0x2710

    .line 445
    .line 446
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 447
    .line 448
    .line 449
    move-result v2

    .line 450
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 451
    .line 452
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 453
    .line 454
    invoke-virtual {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(II)V

    .line 455
    .line 456
    .line 457
    goto/16 :goto_17

    .line 458
    .line 459
    :pswitch_6
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 460
    .line 461
    iget v3, v1, Landroid/os/Message;->arg1:I

    .line 462
    .line 463
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 464
    .line 465
    :goto_9
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 466
    .line 467
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    if-ge v4, v0, :cond_24

    .line 472
    .line 473
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 474
    .line 475
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 480
    .line 481
    iget v5, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 482
    .line 483
    if-ne v5, v1, :cond_13

    .line 484
    .line 485
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 486
    .line 487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 488
    .line 489
    .line 490
    :try_start_2
    iget-object v0, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 491
    .line 492
    if-eqz v0, :cond_13

    .line 493
    .line 494
    invoke-interface {v0, v3}, Landroid/service/trust/ITrustAgentService;->onUnlockLockout(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 495
    .line 496
    .line 497
    goto :goto_a

    .line 498
    :catch_2
    move-exception v0

    .line 499
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 500
    .line 501
    .line 502
    :cond_13
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 503
    .line 504
    goto :goto_9

    .line 505
    :pswitch_7
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 506
    .line 507
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 508
    .line 509
    invoke-virtual {v0, v1, v6}, Lcom/android/server/trust/TrustManagerService;->setDeviceLockedForUser(IZ)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_17

    .line 513
    .line 514
    :pswitch_8
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 515
    .line 516
    iget-object v2, v1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 517
    .line 518
    monitor-enter v2

    .line 519
    :try_start_3
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 520
    .line 521
    iget-object v1, v1, Lcom/android/server/trust/TrustManagerService;->mTrustUsuallyManagedForUser:Landroid/util/SparseBooleanArray;

    .line 522
    .line 523
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    .line 524
    .line 525
    .line 526
    move-result-object v1

    .line 527
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 528
    :goto_b
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    .line 529
    .line 530
    .line 531
    move-result v2

    .line 532
    if-ge v4, v2, :cond_24

    .line 533
    .line 534
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 539
    .line 540
    .line 541
    move-result v3

    .line 542
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 543
    .line 544
    iget-object v5, v5, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 545
    .line 546
    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    .line 547
    .line 548
    .line 549
    move-result v5

    .line 550
    if-eq v3, v5, :cond_14

    .line 551
    .line 552
    iget-object v5, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 553
    .line 554
    iget-object v5, v5, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 555
    .line 556
    invoke-virtual {v5, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    .line 557
    .line 558
    .line 559
    :cond_14
    add-int/lit8 v4, v4, 0x1

    .line 560
    .line 561
    goto :goto_b

    .line 562
    :catchall_0
    move-exception v0

    .line 563
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 564
    throw v0

    .line 565
    :pswitch_9
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 566
    .line 567
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 568
    .line 569
    iput v1, v0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 570
    .line 571
    invoke-virtual {v0, v5}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 572
    .line 573
    .line 574
    goto/16 :goto_17

    .line 575
    .line 576
    :pswitch_a
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 577
    .line 578
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 579
    .line 580
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 581
    .line 582
    .line 583
    goto/16 :goto_17

    .line 584
    .line 585
    :pswitch_b
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 586
    .line 587
    move v2, v4

    .line 588
    :goto_c
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 589
    .line 590
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    if-ge v2, v3, :cond_16

    .line 595
    .line 596
    iget-object v3, v1, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 597
    .line 598
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 599
    .line 600
    .line 601
    move-result-object v3

    .line 602
    check-cast v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 603
    .line 604
    iget v5, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 605
    .line 606
    iget v7, v1, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 607
    .line 608
    if-ne v5, v7, :cond_15

    .line 609
    .line 610
    iget-object v3, v3, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 611
    .line 612
    iget-boolean v5, v3, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 613
    .line 614
    if-eqz v5, :cond_15

    .line 615
    .line 616
    iput-boolean v4, v3, Lcom/android/server/trust/TrustAgentWrapper;->mWaitingForTrustableDowngrade:Z

    .line 617
    .line 618
    iput-boolean v4, v3, Lcom/android/server/trust/TrustAgentWrapper;->mTrusted:Z

    .line 619
    .line 620
    iput-boolean v6, v3, Lcom/android/server/trust/TrustAgentWrapper;->mTrustable:Z

    .line 621
    .line 622
    iget-object v5, v3, Lcom/android/server/trust/TrustAgentWrapper;->mTrustManagerService:Lcom/android/server/trust/TrustManagerService;

    .line 623
    .line 624
    iget v3, v3, Lcom/android/server/trust/TrustAgentWrapper;->mUserId:I

    .line 625
    .line 626
    invoke-virtual {v5, v3}, Lcom/android/server/trust/TrustManagerService;->updateTrust(I)V

    .line 627
    .line 628
    .line 629
    :cond_15
    add-int/lit8 v2, v2, 0x1

    .line 630
    .line 631
    goto :goto_c

    .line 632
    :cond_16
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 633
    .line 634
    iget v1, v0, Lcom/android/server/trust/TrustManagerService;->mCurrentUser:I

    .line 635
    .line 636
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 637
    .line 638
    .line 639
    goto/16 :goto_17

    .line 640
    .line 641
    :pswitch_c
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 642
    .line 643
    invoke-virtual {v3, v5}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 644
    .line 645
    .line 646
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 647
    .line 648
    invoke-virtual {v3, v5}, Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V

    .line 649
    .line 650
    .line 651
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 652
    .line 653
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 654
    .line 655
    const-string v5, "TrustManagerService"

    .line 656
    .line 657
    if-eqz v2, :cond_17

    .line 658
    .line 659
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 660
    .line 661
    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    const-string/jumbo v2, "onEnabledTrustAgentsChanged("

    .line 665
    .line 666
    .line 667
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 671
    .line 672
    .line 673
    const-string v2, ")"

    .line 674
    .line 675
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .line 684
    .line 685
    :cond_17
    :goto_d
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 686
    .line 687
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    if-ge v4, v0, :cond_24

    .line 692
    .line 693
    :try_start_5
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 694
    .line 695
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    check-cast v0, Landroid/app/trust/ITrustListener;

    .line 700
    .line 701
    invoke-interface {v0, v1}, Landroid/app/trust/ITrustListener;->onEnabledTrustAgentsChanged(I)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 702
    .line 703
    .line 704
    goto :goto_e

    .line 705
    :catch_3
    move-exception v0

    .line 706
    const-string v2, "Exception while notifying TrustListener."

    .line 707
    .line 708
    invoke-static {v5, v2, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 709
    .line 710
    .line 711
    goto :goto_e

    .line 712
    :catch_4
    const-string v0, "Removing dead TrustListener."

    .line 713
    .line 714
    invoke-static {v5, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .line 716
    .line 717
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 718
    .line 719
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    add-int/lit8 v4, v4, -0x1

    .line 723
    .line 724
    :goto_e
    add-int/2addr v4, v6

    .line 725
    goto :goto_d

    .line 726
    :pswitch_d
    iget-object v3, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 727
    .line 728
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 729
    .line 730
    if-eqz v0, :cond_18

    .line 731
    .line 732
    move v5, v6

    .line 733
    goto :goto_f

    .line 734
    :cond_18
    move v5, v4

    .line 735
    :goto_f
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 736
    .line 737
    const-string v0, "TrustManagerService"

    .line 738
    .line 739
    if-eqz v2, :cond_19

    .line 740
    .line 741
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 742
    .line 743
    .line 744
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 745
    .line 746
    .line 747
    move-result-object v8

    .line 748
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 749
    .line 750
    .line 751
    move-result-object v9

    .line 752
    filled-new-array {v8, v9}, [Ljava/lang/Object;

    .line 753
    .line 754
    .line 755
    move-result-object v8

    .line 756
    const-string v9, "dispatchUnlockAttempt(successful=%s, userId=%s)"

    .line 757
    .line 758
    invoke-static {v0, v9, v8}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    .line 760
    .line 761
    :cond_19
    if-eqz v5, :cond_1d

    .line 762
    .line 763
    iget-object v8, v3, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 764
    .line 765
    if-ltz v1, :cond_1c

    .line 766
    .line 767
    invoke-virtual {v8, v1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    .line 768
    .line 769
    .line 770
    move-result v9

    .line 771
    iget-object v10, v8, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->mStartFromSuccessfulUnlock:Landroid/util/SparseBooleanArray;

    .line 772
    .line 773
    invoke-virtual {v10, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 774
    .line 775
    .line 776
    if-eqz v2, :cond_1a

    .line 777
    .line 778
    const-string v2, "allowTrustFromUnlock("

    .line 779
    .line 780
    const-string v10, ") -> trustAllowed="

    .line 781
    .line 782
    invoke-static {v1, v2, v10}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v8, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    .line 787
    .line 788
    .line 789
    move-result v10

    .line 790
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 791
    .line 792
    .line 793
    const-string v10, " agentsCanRun="

    .line 794
    .line 795
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v8, v1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    .line 799
    .line 800
    .line 801
    move-result v10

    .line 802
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object v2

    .line 809
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    :cond_1a
    invoke-virtual {v8, v1}, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->canAgentsRunForUser(I)Z

    .line 813
    .line 814
    .line 815
    move-result v0

    .line 816
    if-eq v0, v9, :cond_1b

    .line 817
    .line 818
    iget-object v0, v8, Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 819
    .line 820
    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 821
    .line 822
    .line 823
    :cond_1b
    invoke-virtual {v3, v1, v4, v6, v7}, Lcom/android/server/trust/TrustManagerService;->updateTrust(IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 824
    .line 825
    .line 826
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mHandler:Lcom/android/server/trust/TrustManagerService$3;

    .line 827
    .line 828
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 829
    .line 830
    .line 831
    move-result-object v2

    .line 832
    const/16 v6, 0x11

    .line 833
    .line 834
    invoke-virtual {v0, v6, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 835
    .line 836
    .line 837
    move-result-object v0

    .line 838
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 839
    .line 840
    .line 841
    goto :goto_10

    .line 842
    :cond_1c
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 843
    .line 844
    .line 845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 846
    .line 847
    const-string/jumbo v2, "userId must be a valid user: "

    .line 848
    .line 849
    .line 850
    invoke-static {v1, v2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    throw v0

    .line 858
    :cond_1d
    :goto_10
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 859
    .line 860
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 861
    .line 862
    .line 863
    move-result v0

    .line 864
    if-ge v4, v0, :cond_24

    .line 865
    .line 866
    iget-object v0, v3, Lcom/android/server/trust/TrustManagerService;->mActiveAgents:Landroid/util/ArraySet;

    .line 867
    .line 868
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    check-cast v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;

    .line 873
    .line 874
    iget v2, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->userId:I

    .line 875
    .line 876
    if-ne v2, v1, :cond_1f

    .line 877
    .line 878
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$AgentInfo;->agent:Lcom/android/server/trust/TrustAgentWrapper;

    .line 879
    .line 880
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 881
    .line 882
    .line 883
    :try_start_6
    iget-object v2, v0, Lcom/android/server/trust/TrustAgentWrapper;->mTrustAgentService:Landroid/service/trust/ITrustAgentService;

    .line 884
    .line 885
    if-eqz v2, :cond_1e

    .line 886
    .line 887
    invoke-interface {v2, v5}, Landroid/service/trust/ITrustAgentService;->onUnlockAttempt(Z)V

    .line 888
    .line 889
    .line 890
    goto :goto_12

    .line 891
    :catch_5
    move-exception v0

    .line 892
    goto :goto_11

    .line 893
    :cond_1e
    iput-boolean v5, v0, Lcom/android/server/trust/TrustAgentWrapper;->mPendingSuccessfulUnlock:Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    .line 894
    .line 895
    goto :goto_12

    .line 896
    :goto_11
    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->onError(Ljava/lang/Exception;)V

    .line 897
    .line 898
    .line 899
    :cond_1f
    :goto_12
    add-int/lit8 v4, v4, 0x1

    .line 900
    .line 901
    goto :goto_10

    .line 902
    :pswitch_e
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 903
    .line 904
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v1, Landroid/app/trust/ITrustListener;

    .line 907
    .line 908
    :goto_13
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 909
    .line 910
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 911
    .line 912
    .line 913
    move-result v2

    .line 914
    if-ge v4, v2, :cond_24

    .line 915
    .line 916
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 917
    .line 918
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 919
    .line 920
    .line 921
    move-result-object v2

    .line 922
    check-cast v2, Landroid/app/trust/ITrustListener;

    .line 923
    .line 924
    invoke-interface {v2}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    .line 925
    .line 926
    .line 927
    move-result-object v2

    .line 928
    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    if-ne v2, v3, :cond_20

    .line 933
    .line 934
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 935
    .line 936
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 937
    .line 938
    .line 939
    goto :goto_17

    .line 940
    :cond_20
    add-int/lit8 v4, v4, 0x1

    .line 941
    .line 942
    goto :goto_13

    .line 943
    :pswitch_f
    iget-object v2, v0, Lcom/android/server/trust/TrustManagerService$3;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 944
    .line 945
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 946
    .line 947
    move-object v1, v0

    .line 948
    check-cast v1, Landroid/app/trust/ITrustListener;

    .line 949
    .line 950
    move v0, v4

    .line 951
    :goto_14
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 952
    .line 953
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 954
    .line 955
    .line 956
    move-result v3

    .line 957
    if-ge v0, v3, :cond_22

    .line 958
    .line 959
    iget-object v3, v2, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 960
    .line 961
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 962
    .line 963
    .line 964
    move-result-object v3

    .line 965
    check-cast v3, Landroid/app/trust/ITrustListener;

    .line 966
    .line 967
    invoke-interface {v3}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    .line 968
    .line 969
    .line 970
    move-result-object v3

    .line 971
    invoke-interface {v1}, Landroid/app/trust/ITrustListener;->asBinder()Landroid/os/IBinder;

    .line 972
    .line 973
    .line 974
    move-result-object v5

    .line 975
    if-ne v3, v5, :cond_21

    .line 976
    .line 977
    goto :goto_17

    .line 978
    :cond_21
    add-int/lit8 v0, v0, 0x1

    .line 979
    .line 980
    goto :goto_14

    .line 981
    :cond_22
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mTrustListeners:Ljava/util/ArrayList;

    .line 982
    .line 983
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    .line 987
    .line 988
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 989
    .line 990
    .line 991
    move-result v3

    .line 992
    :goto_15
    if-ge v4, v3, :cond_23

    .line 993
    .line 994
    iget-object v0, v2, Lcom/android/server/trust/TrustManagerService;->mLastActiveUnlockRunningState:Landroid/util/SparseBooleanArray;

    .line 995
    .line 996
    invoke-virtual {v0, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 997
    .line 998
    .line 999
    move-result v0

    .line 1000
    invoke-virtual {v2, v0}, Lcom/android/server/trust/TrustManagerService;->aggregateIsActiveUnlockRunning(I)Z

    .line 1001
    .line 1002
    .line 1003
    move-result v5

    .line 1004
    const-string v6, "TrustManagerService"

    .line 1005
    .line 1006
    :try_start_7
    invoke-interface {v1, v5, v0}, Landroid/app/trust/ITrustListener;->onIsActiveUnlockRunningChanged(ZI)V
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1007
    .line 1008
    .line 1009
    goto :goto_16

    .line 1010
    :catch_6
    move-exception v0

    .line 1011
    move-object v5, v0

    .line 1012
    const-string v0, "Exception while notifying TrustListener."

    .line 1013
    .line 1014
    invoke-static {v6, v0, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    .line 1016
    .line 1017
    goto :goto_16

    .line 1018
    :catch_7
    const-string v0, "TrustListener dead while trying to notify Active Unlock running state"

    .line 1019
    .line 1020
    invoke-static {v6, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    .line 1022
    .line 1023
    :goto_16
    add-int/lit8 v4, v4, 0x1

    .line 1024
    .line 1025
    goto :goto_15

    .line 1026
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService;->updateTrustAll()V

    .line 1027
    .line 1028
    .line 1029
    :cond_24
    :goto_17
    return-void

    .line 1030
    nop

    .line 1031
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
