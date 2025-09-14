.class public final Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

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
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget v2, v0, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const-wide/16 v5, 0x3e8

    .line 8
    .line 9
    const/4 v7, 0x6

    .line 10
    const/4 v8, 0x2

    .line 11
    const/4 v9, -0x1

    .line 12
    const/4 v11, 0x1

    .line 13
    packed-switch v2, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    :pswitch_0
    goto/16 :goto_c

    .line 17
    .line 18
    :pswitch_1
    iget-object v1, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    .line 24
    .line 25
    const-string/jumbo v2, "bootCompleted"

    .line 26
    .line 27
    .line 28
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    const-string/jumbo v0, "ibs_policy_activated"

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->getBooleanState(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_17

    .line 39
    .line 40
    iget-object v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v2

    .line 43
    :goto_0
    if-ltz v11, :cond_1

    .line 44
    .line 45
    :try_start_0
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    :try_start_1
    const-string v4, "IntelligentBatterySaverFastDrainPolicy"

    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v6, " cancel fast drain restriction "

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v6, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    .line 94
    .line 95
    invoke-interface {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;->cancelFastDrainRestriction()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_0
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_0
    add-int/lit8 v11, v11, -0x1

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    monitor-exit v2

    .line 110
    goto/16 :goto_c

    .line 111
    .line 112
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    throw v0

    .line 114
    :pswitch_2
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 115
    .line 116
    iget-object v1, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 117
    .line 118
    iget v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 119
    .line 120
    not-int v0, v0

    .line 121
    and-int/2addr v0, v2

    .line 122
    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setSysState(I)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_c

    .line 126
    .line 127
    :pswitch_3
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 128
    .line 129
    iget-object v1, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 130
    .line 131
    iget v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mSysState:I

    .line 132
    .line 133
    or-int/2addr v0, v2

    .line 134
    invoke-virtual {v1, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->setSysState(I)V

    .line 135
    .line 136
    .line 137
    goto/16 :goto_c

    .line 138
    .line 139
    :pswitch_4
    iget-object v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 140
    .line 141
    invoke-virtual {v2, v11}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    if-eqz v12, :cond_2

    .line 146
    .line 147
    iget v2, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 148
    .line 149
    if-ne v2, v7, :cond_2

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_2
    iget-object v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 153
    .line 154
    invoke-virtual {v2, v11}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 155
    .line 156
    .line 157
    move-result v7

    .line 158
    if-eqz v7, :cond_17

    .line 159
    .line 160
    iget v2, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 161
    .line 162
    if-ne v2, v11, :cond_17

    .line 163
    .line 164
    :goto_3
    iget-object v1, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 165
    .line 166
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 167
    .line 168
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 169
    .line 170
    iget-object v7, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    .line 171
    .line 172
    iget-boolean v12, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->initialized:Z

    .line 173
    .line 174
    const-string/jumbo v13, "warning !!! battery drop is more than 2 level"

    .line 175
    .line 176
    .line 177
    iget-object v14, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 178
    .line 179
    const-string v15, " scale = "

    .line 180
    .line 181
    const-string v10, "IntelligentBatterySaverFastDrainPolicy"

    .line 182
    .line 183
    if-nez v12, :cond_5

    .line 184
    .line 185
    mul-int/lit8 v1, v2, 0x64

    .line 186
    .line 187
    div-int/2addr v1, v0

    .line 188
    iget v3, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 189
    .line 190
    if-ne v3, v9, :cond_3

    .line 191
    .line 192
    iput v1, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 193
    .line 194
    goto/16 :goto_c

    .line 195
    .line 196
    :cond_3
    sub-int/2addr v3, v1

    .line 197
    if-ne v3, v11, :cond_4

    .line 198
    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    div-long/2addr v3, v5

    .line 204
    iput-wide v3, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    .line 205
    .line 206
    iput v1, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 207
    .line 208
    iput-boolean v11, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->initialized:Z

    .line 209
    .line 210
    const-string/jumbo v1, "checkBatteryInfo init level = "

    .line 211
    .line 212
    .line 213
    const-string v3, " start time = "

    .line 214
    .line 215
    invoke-static {v2, v0, v1, v15, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    iget-wide v5, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    .line 220
    .line 221
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-static {v2, v0, v15, v3, v4}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 237
    .line 238
    .line 239
    iget-wide v0, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    .line 240
    .line 241
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v14, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_c

    .line 252
    .line 253
    :cond_4
    if-lt v3, v8, :cond_17

    .line 254
    .line 255
    iput v9, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 256
    .line 257
    invoke-static {v10, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    goto/16 :goto_c

    .line 261
    .line 262
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 263
    .line 264
    .line 265
    move-result-wide v16

    .line 266
    div-long v5, v16, v5

    .line 267
    .line 268
    iget-wide v8, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    .line 269
    .line 270
    sub-long v8, v5, v8

    .line 271
    .line 272
    mul-int/lit8 v16, v2, 0x64

    .line 273
    .line 274
    div-int v12, v16, v0

    .line 275
    .line 276
    const-string/jumbo v3, "checkBatteryInfo level = "

    .line 277
    .line 278
    .line 279
    const-string v4, " timeDelta = "

    .line 280
    .line 281
    invoke-static {v2, v0, v3, v15, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v11

    .line 292
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    new-instance v11, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-static {v2, v0, v15, v4, v11}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v14, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    iget v0, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 314
    .line 315
    sub-int/2addr v0, v12

    .line 316
    const/4 v2, 0x1

    .line 317
    if-ne v0, v2, :cond_c

    .line 318
    .line 319
    iput-wide v5, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->startTime:J

    .line 320
    .line 321
    iput v12, v7, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 322
    .line 323
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 324
    .line 325
    if-nez v0, :cond_6

    .line 326
    .line 327
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    .line 328
    .line 329
    iget-object v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 330
    .line 331
    invoke-direct {v0, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    .line 332
    .line 333
    .line 334
    iput-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 335
    .line 336
    :cond_6
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 337
    .line 338
    invoke-virtual {v0}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    .line 339
    .line 340
    .line 341
    move-result-wide v2

    .line 342
    double-to-float v0, v2

    .line 343
    iput v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEstimatedBatteryCapacity:F

    .line 344
    .line 345
    const-wide/16 v2, 0x0

    .line 346
    .line 347
    cmp-long v2, v8, v2

    .line 348
    .line 349
    if-ltz v2, :cond_7

    .line 350
    .line 351
    const-wide/16 v2, 0x3c

    .line 352
    .line 353
    cmp-long v2, v8, v2

    .line 354
    .line 355
    if-gtz v2, :cond_7

    .line 356
    .line 357
    invoke-virtual {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_c

    .line 361
    .line 362
    :cond_7
    const/high16 v2, 0x42c80000    # 100.0f

    .line 363
    .line 364
    div-float/2addr v0, v2

    .line 365
    const/high16 v2, 0x45610000    # 3600.0f

    .line 366
    .line 367
    mul-float/2addr v0, v2

    .line 368
    long-to-float v2, v8

    .line 369
    div-float/2addr v0, v2

    .line 370
    iget-object v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 371
    .line 372
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    const-string v3, "aod_show_state"

    .line 377
    .line 378
    const/4 v4, 0x0

    .line 379
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 380
    .line 381
    .line 382
    move-result v2

    .line 383
    if-eqz v2, :cond_8

    .line 384
    .line 385
    const/4 v2, 0x1

    .line 386
    goto :goto_4

    .line 387
    :cond_8
    const/4 v2, 0x0

    .line 388
    :goto_4
    if-eqz v2, :cond_9

    .line 389
    .line 390
    const/high16 v3, 0x425c0000    # 55.0f

    .line 391
    .line 392
    iput v3, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :cond_9
    const/high16 v3, 0x420c0000    # 35.0f

    .line 396
    .line 397
    iput v3, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    .line 398
    .line 399
    :goto_5
    iget v3, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    .line 400
    .line 401
    cmpl-float v3, v0, v3

    .line 402
    .line 403
    const-string v4, " and isAodEnabled = "

    .line 404
    .line 405
    const-string/jumbo v5, "curCurrent = "

    .line 406
    .line 407
    .line 408
    if-ltz v3, :cond_b

    .line 409
    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    const-string v6, " > mFastDropCurrent = "

    .line 419
    .line 420
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    iget v7, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    .line 424
    .line 425
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v2

    .line 438
    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .line 440
    .line 441
    iget-object v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIBSBigData:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;

    .line 442
    .line 443
    iget-boolean v3, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->initialized:Z

    .line 444
    .line 445
    if-nez v3, :cond_a

    .line 446
    .line 447
    iput v0, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->drainHightCurrent:F

    .line 448
    .line 449
    const/4 v3, 0x1

    .line 450
    iput-boolean v3, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverBatteryBigData;->initialized:Z

    .line 451
    .line 452
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    iget v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    .line 464
    .line 465
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {v14, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_c

    .line 476
    .line 477
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    const-string v6, " < mFastDropCurrent = "

    .line 486
    .line 487
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    iget v7, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    .line 491
    .line 492
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    .line 497
    .line 498
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v2

    .line 505
    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .line 507
    .line 508
    new-instance v2, Ljava/lang/StringBuilder;

    .line 509
    .line 510
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    iget v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDropCurrent:F

    .line 520
    .line 521
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-virtual {v14, v0}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    goto/16 :goto_c

    .line 532
    .line 533
    :cond_c
    const/4 v2, 0x2

    .line 534
    if-lt v0, v2, :cond_17

    .line 535
    .line 536
    invoke-virtual {v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    .line 537
    .line 538
    .line 539
    invoke-static {v10, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .line 541
    .line 542
    goto/16 :goto_c

    .line 543
    .line 544
    :pswitch_5
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 545
    .line 546
    const/16 v2, 0x20

    .line 547
    .line 548
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    if-nez v0, :cond_f

    .line 553
    .line 554
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 555
    .line 556
    iget-object v3, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mContext:Landroid/content/Context;

    .line 557
    .line 558
    const-string v4, "audio"

    .line 559
    .line 560
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    check-cast v3, Landroid/media/AudioManager;

    .line 565
    .line 566
    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    .line 567
    .line 568
    .line 569
    move-result v4

    .line 570
    invoke-virtual {v3, v9}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    if-nez v4, :cond_e

    .line 575
    .line 576
    if-eqz v3, :cond_d

    .line 577
    .line 578
    goto :goto_6

    .line 579
    :cond_d
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 580
    .line 581
    .line 582
    goto :goto_7

    .line 583
    :cond_e
    :goto_6
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    .line 584
    .line 585
    .line 586
    :cond_f
    :goto_7
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 587
    .line 588
    const/16 v2, 0x40

    .line 589
    .line 590
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 591
    .line 592
    .line 593
    move-result v0

    .line 594
    if-nez v0, :cond_17

    .line 595
    .line 596
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 597
    .line 598
    iget-object v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mTrafiicStat:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;

    .line 599
    .line 600
    iget-boolean v3, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->initialized:Z

    .line 601
    .line 602
    if-nez v3, :cond_10

    .line 603
    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 605
    .line 606
    .line 607
    move-result-wide v2

    .line 608
    div-long/2addr v2, v5

    .line 609
    iput-wide v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->sampleTimeInSecs:J

    .line 610
    .line 611
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 612
    .line 613
    .line 614
    move-result-wide v2

    .line 615
    iput-wide v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->txBytes:J

    .line 616
    .line 617
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 618
    .line 619
    .line 620
    move-result-wide v2

    .line 621
    iput-wide v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->rxBytes:J

    .line 622
    .line 623
    const/4 v2, 0x1

    .line 624
    iput-boolean v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->initialized:Z

    .line 625
    .line 626
    goto/16 :goto_c

    .line 627
    .line 628
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 629
    .line 630
    .line 631
    move-result-wide v3

    .line 632
    div-long/2addr v3, v5

    .line 633
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    .line 634
    .line 635
    .line 636
    move-result-wide v5

    .line 637
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    .line 638
    .line 639
    .line 640
    move-result-wide v7

    .line 641
    add-long v9, v5, v7

    .line 642
    .line 643
    iget-wide v11, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->txBytes:J

    .line 644
    .line 645
    iget-wide v13, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->rxBytes:J

    .line 646
    .line 647
    add-long/2addr v11, v13

    .line 648
    sub-long/2addr v9, v11

    .line 649
    iget-wide v11, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->sampleTimeInSecs:J

    .line 650
    .line 651
    sub-long v11, v3, v11

    .line 652
    .line 653
    const-wide/16 v13, 0x0

    .line 654
    .line 655
    cmp-long v13, v11, v13

    .line 656
    .line 657
    if-gtz v13, :cond_11

    .line 658
    .line 659
    goto/16 :goto_c

    .line 660
    .line 661
    :cond_11
    div-long v13, v9, v11

    .line 662
    .line 663
    const-string/jumbo v15, "checkDownloadSafe speed: ,"

    .line 664
    .line 665
    .line 666
    const-string v2, ","

    .line 667
    .line 668
    invoke-static {v15, v3, v4, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    move-result-object v15

    .line 672
    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 673
    .line 674
    .line 675
    invoke-static {v15, v2, v7, v8, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 676
    .line 677
    .line 678
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-static {v15, v2, v11, v12, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 682
    .line 683
    .line 684
    const-string v2, "IntelligentBatterySaverFastDrainPolicy"

    .line 685
    .line 686
    invoke-static {v15, v13, v14, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 687
    .line 688
    .line 689
    const-wide/16 v9, 0x1388

    .line 690
    .line 691
    cmp-long v2, v13, v9

    .line 692
    .line 693
    if-gez v2, :cond_12

    .line 694
    .line 695
    const/16 v2, 0x40

    .line 696
    .line 697
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportSetState(I)V

    .line 698
    .line 699
    .line 700
    const/4 v0, 0x0

    .line 701
    iput-boolean v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->initialized:Z

    .line 702
    .line 703
    goto/16 :goto_c

    .line 704
    .line 705
    :cond_12
    const/16 v2, 0x40

    .line 706
    .line 707
    iput-wide v3, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->sampleTimeInSecs:J

    .line 708
    .line 709
    iput-wide v5, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->txBytes:J

    .line 710
    .line 711
    iput-wide v7, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainTrafficStat;->rxBytes:J

    .line 712
    .line 713
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->reportClearState(I)V

    .line 714
    .line 715
    .line 716
    goto/16 :goto_c

    .line 717
    .line 718
    :pswitch_6
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 719
    .line 720
    iget v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 721
    .line 722
    const/4 v3, 0x1

    .line 723
    if-ne v2, v3, :cond_17

    .line 724
    .line 725
    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->exitFastDrainRestriction()V

    .line 726
    .line 727
    .line 728
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 729
    .line 730
    const/4 v2, 0x2

    .line 731
    iput v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 732
    .line 733
    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    .line 734
    .line 735
    const-string/jumbo v2, "move to off state, message"

    .line 736
    .line 737
    .line 738
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .line 740
    .line 741
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 742
    .line 743
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 744
    .line 745
    const-string/jumbo v1, "move to off state, message"

    .line 746
    .line 747
    .line 748
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 749
    .line 750
    .line 751
    goto/16 :goto_c

    .line 752
    .line 753
    :pswitch_7
    iget-object v2, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 754
    .line 755
    iget v0, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 756
    .line 757
    if-ne v0, v7, :cond_17

    .line 758
    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 760
    .line 761
    .line 762
    move-result-wide v3

    .line 763
    iput-wide v3, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSTime:J

    .line 764
    .line 765
    iget-object v0, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mBatteryInfo:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;

    .line 766
    .line 767
    iget v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainBatteryInfo;->level:I

    .line 768
    .line 769
    iput v0, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mEnterIBSBatteryLevel:I

    .line 770
    .line 771
    const/16 v0, 0x80

    .line 772
    .line 773
    invoke-virtual {v2, v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->testState(I)Z

    .line 774
    .line 775
    .line 776
    move-result v0

    .line 777
    if-nez v0, :cond_13

    .line 778
    .line 779
    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    .line 780
    .line 781
    const-string v2, "UI switch off disable the fast drain restriction."

    .line 782
    .line 783
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    .line 785
    .line 786
    const/4 v4, 0x1

    .line 787
    goto :goto_a

    .line 788
    :cond_13
    iget-object v3, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLock:Ljava/lang/Object;

    .line 789
    .line 790
    monitor-enter v3

    .line 791
    const/4 v4, 0x1

    .line 792
    const/4 v10, 0x0

    .line 793
    :goto_8
    if-gt v10, v4, :cond_15

    .line 794
    .line 795
    :try_start_3
    iget-object v0, v2, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mActionsLevel:Ljava/util/ArrayList;

    .line 796
    .line 797
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v0

    .line 801
    check-cast v0, Ljava/util/ArrayList;

    .line 802
    .line 803
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 804
    .line 805
    .line 806
    move-result-object v4

    .line 807
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    if-eqz v0, :cond_14

    .line 812
    .line 813
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    check-cast v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 818
    .line 819
    :try_start_4
    const-string v5, "IntelligentBatterySaverFastDrainPolicy"

    .line 820
    .line 821
    new-instance v6, Ljava/lang/StringBuilder;

    .line 822
    .line 823
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 824
    .line 825
    .line 826
    const-string v7, " do fast drain restriction "

    .line 827
    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    iget-object v7, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->tag:Ljava/lang/String;

    .line 832
    .line 833
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    .line 835
    .line 836
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v6

    .line 840
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    .line 842
    .line 843
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$ActionEntry;->callBack:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;

    .line 844
    .line 845
    invoke-interface {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IIntelligentBatterySaverFastDrainCallBack;->doFastDrainRestriction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 846
    .line 847
    .line 848
    goto :goto_9

    .line 849
    :catchall_1
    move-exception v0

    .line 850
    goto :goto_b

    .line 851
    :catch_1
    move-exception v0

    .line 852
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 853
    .line 854
    .line 855
    goto :goto_9

    .line 856
    :cond_14
    add-int/lit8 v10, v10, 0x1

    .line 857
    .line 858
    const/4 v4, 0x1

    .line 859
    goto :goto_8

    .line 860
    :cond_15
    const-string/jumbo v0, "ibs_policy_activated"

    .line 861
    .line 862
    .line 863
    const/4 v4, 0x1

    .line 864
    invoke-virtual {v2, v0, v4}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->saveBooleanState(Ljava/lang/String;Z)V

    .line 865
    .line 866
    .line 867
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 868
    :goto_a
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 869
    .line 870
    iput v4, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 871
    .line 872
    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    .line 873
    .line 874
    const-string/jumbo v2, "move to state on, message"

    .line 875
    .line 876
    .line 877
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .line 879
    .line 880
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 881
    .line 882
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 883
    .line 884
    const-string/jumbo v1, "move to state on, message"

    .line 885
    .line 886
    .line 887
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 888
    .line 889
    .line 890
    goto :goto_c

    .line 891
    :goto_b
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 892
    throw v0

    .line 893
    :pswitch_8
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 894
    .line 895
    iget-boolean v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    .line 896
    .line 897
    if-eqz v2, :cond_16

    .line 898
    .line 899
    const/4 v2, 0x0

    .line 900
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initBroadcast(Z)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initAlarm(Z)V

    .line 904
    .line 905
    .line 906
    iput-boolean v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    .line 907
    .line 908
    :cond_16
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 909
    .line 910
    const/4 v2, 0x2

    .line 911
    iput v2, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mFastDrainInternalState:I

    .line 912
    .line 913
    const-string v0, "IntelligentBatterySaverFastDrainPolicy"

    .line 914
    .line 915
    const-string/jumbo v2, "stop, move to off state, message"

    .line 916
    .line 917
    .line 918
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .line 920
    .line 921
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 922
    .line 923
    iget-object v0, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mIntelligentBatterySaverLogger:Lcom/android/server/ibs/IntelligentBatterySaverLogger;

    .line 924
    .line 925
    const-string/jumbo v2, "stop, move to off state, message"

    .line 926
    .line 927
    .line 928
    invoke-virtual {v0, v2}, Lcom/android/server/ibs/IntelligentBatterySaverLogger;->add(Ljava/lang/String;)V

    .line 929
    .line 930
    .line 931
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 932
    .line 933
    invoke-virtual {v0}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->resetBatteryInfo()V

    .line 934
    .line 935
    .line 936
    goto :goto_c

    .line 937
    :pswitch_9
    iget-object v0, v1, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy$IntelligentBatterySaverFastDrainHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    .line 938
    .line 939
    iget-boolean v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    .line 940
    .line 941
    if-nez v1, :cond_17

    .line 942
    .line 943
    const/4 v1, 0x1

    .line 944
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initBroadcast(Z)V

    .line 945
    .line 946
    .line 947
    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->initAlarm(Z)V

    .line 948
    .line 949
    .line 950
    iput-boolean v1, v0, Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;->mInited:Z

    .line 951
    .line 952
    :cond_17
    :goto_c
    return-void

    .line 953
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
