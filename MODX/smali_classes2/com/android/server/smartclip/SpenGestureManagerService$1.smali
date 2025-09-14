.class public final Lcom/android/server/smartclip/SpenGestureManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 10
    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 19
    .line 20
    const-string/jumbo v2, "online"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iput v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string v3, "SpenGestureManagerService"

    .line 33
    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v6, "Receive broadcast : "

    .line 37
    .line 38
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const-string v3, "com.samsung.pen.INSERT"

    .line 52
    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, -0x2

    .line 58
    const/4 v6, 0x0

    .line 59
    if-eqz v3, :cond_15

    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    const-string/jumbo v2, "penInsert"

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    const-string v3, "isBoot"

    .line 76
    .line 77
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    const-string v7, "isReversed"

    .line 82
    .line 83
    invoke-virtual {v1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    const-string v8, "SpenGestureManagerService"

    .line 88
    .line 89
    const-string/jumbo v9, "penInsert : "

    .line 90
    .line 91
    .line 92
    const-string v10, ", isBoot : "

    .line 93
    .line 94
    const-string v11, ", isReversed : "

    .line 95
    .line 96
    invoke-static {v9, v2, v10, v3, v11}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    invoke-static {v8, v9, v7}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 101
    .line 102
    .line 103
    iget-object v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 104
    .line 105
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->getTopMostPackage()Landroid/content/ComponentName;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    if-eqz v8, :cond_2

    .line 113
    .line 114
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v9

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    const-string v9, ""

    .line 120
    .line 121
    :goto_0
    if-eqz v2, :cond_a

    .line 122
    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 124
    .line 125
    .line 126
    move-result-wide v10

    .line 127
    iget-object v12, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 128
    .line 129
    iget-wide v12, v12, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 130
    .line 131
    sub-long/2addr v10, v12

    .line 132
    const-wide/16 v14, 0x0

    .line 133
    .line 134
    cmp-long v12, v12, v14

    .line 135
    .line 136
    if-eqz v12, :cond_9

    .line 137
    .line 138
    const-wide/16 v12, 0x3e8

    .line 139
    .line 140
    cmp-long v12, v10, v12

    .line 141
    .line 142
    const/high16 v13, 0x42700000    # 60.0f

    .line 143
    .line 144
    const/high16 v16, 0x3f800000    # 1.0f

    .line 145
    .line 146
    if-ltz v12, :cond_3

    .line 147
    .line 148
    long-to-float v10, v10

    .line 149
    const/high16 v11, 0x447a0000    # 1000.0f

    .line 150
    .line 151
    div-float/2addr v10, v11

    .line 152
    div-float/2addr v10, v13

    .line 153
    goto :goto_1

    .line 154
    :cond_3
    move/from16 v10, v16

    .line 155
    .line 156
    :goto_1
    cmpl-float v11, v10, v13

    .line 157
    .line 158
    if-lez v11, :cond_4

    .line 159
    .line 160
    const-string v10, "MoreThan1Hour"

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    const/high16 v11, 0x41f00000    # 30.0f

    .line 164
    .line 165
    cmpl-float v11, v10, v11

    .line 166
    .line 167
    if-lez v11, :cond_5

    .line 168
    .line 169
    const-string v10, "30to60Minutes"

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_5
    const/high16 v11, 0x41200000    # 10.0f

    .line 173
    .line 174
    cmpl-float v11, v10, v11

    .line 175
    .line 176
    if-lez v11, :cond_6

    .line 177
    .line 178
    const-string v10, "10to30Minutes"

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_6
    const/high16 v11, 0x40a00000    # 5.0f

    .line 182
    .line 183
    cmpl-float v11, v10, v11

    .line 184
    .line 185
    if-lez v11, :cond_7

    .line 186
    .line 187
    const-string v10, "5to10Minutes"

    .line 188
    .line 189
    goto :goto_2

    .line 190
    :cond_7
    cmpl-float v10, v10, v16

    .line 191
    .line 192
    if-lez v10, :cond_8

    .line 193
    .line 194
    const-string v10, "1to5Minutes"

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_8
    const-string v10, "1MinuteOrLess"

    .line 198
    .line 199
    :goto_2
    const-string v11, "SPEN"

    .line 200
    .line 201
    invoke-static {v10, v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_9
    iget-object v10, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 205
    .line 206
    iput-wide v14, v10, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 207
    .line 208
    const-string v10, "SPAT"

    .line 209
    .line 210
    invoke-static {v9, v10}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_3

    .line 214
    :cond_a
    iget-object v10, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 215
    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 217
    .line 218
    .line 219
    move-result-wide v11

    .line 220
    iput-wide v11, v10, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUsingStartTime:J

    .line 221
    .line 222
    iget-object v10, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 223
    .line 224
    const-string v11, "SPEN"

    .line 225
    .line 226
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    .line 228
    .line 229
    invoke-static {v9, v11}, Lcom/android/server/smartclip/SpenGestureManagerService;->sendLogSpenInsertInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :goto_3
    iget-object v9, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 233
    .line 234
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    iput-object v2, v9, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    .line 239
    .line 240
    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 241
    .line 242
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 243
    .line 244
    .line 245
    move-result-object v7

    .line 246
    iput-object v7, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenReversed:Ljava/lang/Boolean;

    .line 247
    .line 248
    new-instance v2, Landroid/os/Bundle;

    .line 249
    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 251
    .line 252
    .line 253
    move-result-object v7

    .line 254
    invoke-direct {v2, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 255
    .line 256
    .line 257
    const-string v7, "action"

    .line 258
    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    invoke-virtual {v2, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    const-string/jumbo v1, "topComponent"

    .line 267
    .line 268
    .line 269
    if-eqz v8, :cond_b

    .line 270
    .line 271
    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    goto :goto_4

    .line 276
    :cond_b
    const-string v7, ""

    .line 277
    .line 278
    :goto_4
    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    const-string v1, "batteryStatus"

    .line 282
    .line 283
    iget-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 284
    .line 285
    iget v7, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mBatteryOnlineStatus:I

    .line 286
    .line 287
    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    .line 289
    .line 290
    const-string v1, "coverOpened"

    .line 291
    .line 292
    iget-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 293
    .line 294
    iget-boolean v7, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z

    .line 295
    .line 296
    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    .line 298
    .line 299
    const-string v1, "isReversed"

    .line 300
    .line 301
    iget-object v7, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 302
    .line 303
    iget-object v7, v7, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenReversed:Ljava/lang/Boolean;

    .line 304
    .line 305
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 306
    .line 307
    .line 308
    move-result v7

    .line 309
    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 313
    .line 314
    iget-object v7, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    .line 315
    .line 316
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 317
    .line 318
    .line 319
    move-result v7

    .line 320
    iget-object v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 321
    .line 322
    iget-object v8, v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 323
    .line 324
    monitor-enter v8

    .line 325
    :try_start_0
    iget-boolean v9, v8, Lcom/android/server/smartclip/BleSpenManager;->mBundledRemoteSpenSupport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 326
    .line 327
    monitor-exit v8

    .line 328
    iget-object v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 329
    .line 330
    iget-object v8, v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 331
    .line 332
    monitor-enter v8

    .line 333
    :try_start_1
    iget-boolean v10, v8, Lcom/android/server/smartclip/BleSpenManager;->mUnbundledRemoteSpenSupport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    .line 335
    monitor-exit v8

    .line 336
    iget-object v8, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 337
    .line 338
    iget-object v8, v8, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 339
    .line 340
    invoke-virtual {v8}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    .line 341
    .line 342
    .line 343
    move-result v8

    .line 344
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 345
    .line 346
    sget-object v11, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 347
    .line 348
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    const-string/jumbo v11, "pen_digitizer_enabled"

    .line 356
    .line 357
    .line 358
    invoke-static {v0, v11, v4, v5}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 359
    .line 360
    .line 361
    move-result v0

    .line 362
    if-eqz v0, :cond_c

    .line 363
    .line 364
    goto :goto_5

    .line 365
    :cond_c
    move v4, v6

    .line 366
    :goto_5
    const-string v0, "InsertPenServiceHandler: isBoot="

    .line 367
    .line 368
    const-string v5, " isPenInserted= "

    .line 369
    .line 370
    const-string v6, " isBundleSupportBle= "

    .line 371
    .line 372
    invoke-static {v0, v3, v5, v7, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    const-string v11, " isUnBundleSupportBle= "

    .line 377
    .line 378
    const-string v12, " isAirActionOn= "

    .line 379
    .line 380
    invoke-static {v0, v9, v11, v10, v12}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    const-string v11, " isDigitizerEnabled= "

    .line 387
    .line 388
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    const-string v11, "SpenGestureManagerService"

    .line 399
    .line 400
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .line 402
    .line 403
    if-nez v9, :cond_f

    .line 404
    .line 405
    if-eqz v10, :cond_d

    .line 406
    .line 407
    goto :goto_6

    .line 408
    :cond_d
    const-string/jumbo v0, "startNonBleService: isDigitizerEnabled="

    .line 409
    .line 410
    .line 411
    invoke-static {v0, v4, v5, v9, v12}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-static {v11, v0, v8}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 416
    .line 417
    .line 418
    if-eqz v4, :cond_1e

    .line 419
    .line 420
    if-eqz v8, :cond_e

    .line 421
    .line 422
    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 423
    .line 424
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 425
    .line 426
    invoke-virtual {v0, v3}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    .line 427
    .line 428
    .line 429
    :cond_e
    if-nez v9, :cond_1e

    .line 430
    .line 431
    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    .line 432
    .line 433
    .line 434
    goto/16 :goto_a

    .line 435
    .line 436
    :cond_f
    :goto_6
    const-string/jumbo v0, "startBleService: isBoot="

    .line 437
    .line 438
    .line 439
    invoke-static {v0, v3, v5, v7, v6}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v0

    .line 456
    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    .line 458
    .line 459
    if-eqz v3, :cond_12

    .line 460
    .line 461
    if-eqz v7, :cond_11

    .line 462
    .line 463
    if-eqz v8, :cond_10

    .line 464
    .line 465
    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 466
    .line 467
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 468
    .line 469
    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    .line 470
    .line 471
    .line 472
    goto/16 :goto_a

    .line 473
    .line 474
    :cond_10
    if-eqz v9, :cond_1e

    .line 475
    .line 476
    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 477
    .line 478
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 479
    .line 480
    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;)V

    .line 481
    .line 482
    .line 483
    goto/16 :goto_a

    .line 484
    .line 485
    :cond_11
    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    .line 486
    .line 487
    .line 488
    goto/16 :goto_a

    .line 489
    .line 490
    :cond_12
    if-eqz v8, :cond_13

    .line 491
    .line 492
    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 493
    .line 494
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 495
    .line 496
    invoke-virtual {v0, v3}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    .line 497
    .line 498
    .line 499
    goto :goto_7

    .line 500
    :cond_13
    if-eqz v9, :cond_14

    .line 501
    .line 502
    iget-object v0, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 503
    .line 504
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 505
    .line 506
    invoke-virtual {v0, v3}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;)V

    .line 507
    .line 508
    .line 509
    :cond_14
    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_a

    .line 513
    .line 514
    :catchall_0
    move-exception v0

    .line 515
    move-object v1, v0

    .line 516
    monitor-exit v8

    .line 517
    throw v1

    .line 518
    :catchall_1
    move-exception v0

    .line 519
    move-object v1, v0

    .line 520
    monitor-exit v8

    .line 521
    throw v1

    .line 522
    :cond_15
    const-string v3, "com.sec.android.intent.action.BLACK_MEMO"

    .line 523
    .line 524
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    move-result v3

    .line 528
    if-eqz v3, :cond_16

    .line 529
    .line 530
    :try_start_2
    const-string/jumbo v2, "state"

    .line 531
    .line 532
    .line 533
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 537
    goto :goto_8

    .line 538
    :catch_0
    const/4 v1, 0x0

    .line 539
    :goto_8
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 540
    .line 541
    const-string/jumbo v2, "show"

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 545
    .line 546
    .line 547
    move-result v1

    .line 548
    iput-boolean v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mAcIsScreenOffMemoShowing:Z

    .line 549
    .line 550
    goto/16 :goto_a

    .line 551
    .line 552
    :cond_16
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    .line 553
    .line 554
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v3

    .line 558
    if-eqz v3, :cond_17

    .line 559
    .line 560
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 561
    .line 562
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 563
    .line 564
    invoke-virtual {v0}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    .line 565
    .line 566
    .line 567
    move-result v0

    .line 568
    if-eqz v0, :cond_1e

    .line 569
    .line 570
    const-string/jumbo v0, "state"

    .line 571
    .line 572
    .line 573
    invoke-virtual {v1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    new-instance v1, Landroid/content/Intent;

    .line 578
    .line 579
    const-string v2, "com.samsung.android.service.aircommand.remotespen.action.COMMON_BROADCAST"

    .line 580
    .line 581
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    const-string v2, "action"

    .line 585
    .line 586
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    .line 587
    .line 588
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    .line 590
    .line 591
    const-string v2, "isEnabled"

    .line 592
    .line 593
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    .line 595
    .line 596
    const-string v0, "com.samsung.android.service.aircommand"

    .line 597
    .line 598
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    .line 600
    .line 601
    move-object/from16 v0, p1

    .line 602
    .line 603
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 604
    .line 605
    .line 606
    goto/16 :goto_a

    .line 607
    .line 608
    :cond_17
    const-string v3, "android.intent.action.USER_SWITCHED"

    .line 609
    .line 610
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 611
    .line 612
    .line 613
    move-result v3

    .line 614
    if-eqz v3, :cond_1a

    .line 615
    .line 616
    const-string v2, "SpenGestureManagerService"

    .line 617
    .line 618
    const-string/jumbo v3, "onReceive : User switched"

    .line 619
    .line 620
    .line 621
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    .line 623
    .line 624
    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 625
    .line 626
    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 627
    .line 628
    invoke-virtual {v2}, Lcom/android/server/smartclip/BleSpenManager;->isSupportBleSpen()Z

    .line 629
    .line 630
    .line 631
    move-result v2

    .line 632
    if-eqz v2, :cond_1e

    .line 633
    .line 634
    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 635
    .line 636
    iget-object v3, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    .line 637
    .line 638
    if-eqz v3, :cond_19

    .line 639
    .line 640
    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 641
    .line 642
    invoke-virtual {v2}, Lcom/android/server/smartclip/BleSpenManager;->isAirActionSettingEnabled()Z

    .line 643
    .line 644
    .line 645
    move-result v2

    .line 646
    if-eqz v2, :cond_18

    .line 647
    .line 648
    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 649
    .line 650
    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 651
    .line 652
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 653
    .line 654
    invoke-virtual {v2, v3}, Lcom/android/server/smartclip/BleSpenManager;->startRemoteSpenService(Landroid/content/Context;)V

    .line 655
    .line 656
    .line 657
    goto :goto_9

    .line 658
    :cond_18
    const-string v2, "SpenGestureManagerService"

    .line 659
    .line 660
    const-string/jumbo v3, "onReceive : air action is disabled. startBlindChargeService"

    .line 661
    .line 662
    .line 663
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    iget-object v2, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 667
    .line 668
    iget-object v2, v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mBleSpenManager:Lcom/android/server/smartclip/BleSpenManager;

    .line 669
    .line 670
    sget-object v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 671
    .line 672
    invoke-virtual {v2, v3}, Lcom/android/server/smartclip/BleSpenManager;->startBlindChargeService(Landroid/content/Context;)V

    .line 673
    .line 674
    .line 675
    :goto_9
    const-string v2, "SpenGestureManagerService"

    .line 676
    .line 677
    const-string v3, "Start AirCommandUiService. #4"

    .line 678
    .line 679
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .line 681
    .line 682
    new-instance v2, Landroid/os/Bundle;

    .line 683
    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 689
    .line 690
    .line 691
    const-string v3, "action"

    .line 692
    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v1

    .line 697
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    const-string/jumbo v1, "penInsert"

    .line 701
    .line 702
    .line 703
    iget-object v3, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 704
    .line 705
    iget-object v3, v3, Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Ljava/lang/Boolean;

    .line 706
    .line 707
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 708
    .line 709
    .line 710
    move-result v3

    .line 711
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 712
    .line 713
    .line 714
    const-string v1, "isBoot"

    .line 715
    .line 716
    invoke-virtual {v2, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 717
    .line 718
    .line 719
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 720
    .line 721
    invoke-virtual {v0, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->startAirCommandUiService(Landroid/os/Bundle;)V

    .line 722
    .line 723
    .line 724
    goto :goto_a

    .line 725
    :cond_19
    const-string v0, "SpenGestureManagerService"

    .line 726
    .line 727
    const-string/jumbo v1, "onReceive : SPen insertion state is not detected yet"

    .line 728
    .line 729
    .line 730
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    goto :goto_a

    .line 734
    :cond_1a
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 735
    .line 736
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    if-eqz v1, :cond_1e

    .line 741
    .line 742
    iget-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 743
    .line 744
    iput-boolean v4, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mBootComplete:Z

    .line 745
    .line 746
    iget v1, v1, Lcom/android/server/smartclip/SpenGestureManagerService;->mSpenUspLevel:I

    .line 747
    .line 748
    if-lez v1, :cond_1d

    .line 749
    .line 750
    invoke-static {}, Lcom/android/server/smartclip/SpenGarageSpecManager;->getInstance()Lcom/android/server/smartclip/SpenGarageSpecManager;

    .line 751
    .line 752
    .line 753
    move-result-object v1

    .line 754
    iget-boolean v1, v1, Lcom/android/server/smartclip/SpenGarageSpecManager;->mIsBundledSpenSupported:Z

    .line 755
    .line 756
    if-eqz v1, :cond_1b

    .line 757
    .line 758
    const-string v0, "SpenGestureManagerService"

    .line 759
    .line 760
    const-string/jumbo v1, "onReceive : This model is bundle pen provided model"

    .line 761
    .line 762
    .line 763
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    return-void

    .line 767
    :cond_1b
    iget-object v1, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 768
    .line 769
    sget-object v2, Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;

    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    const-string/jumbo v2, "pen_digitizer_enabled"

    .line 779
    .line 780
    .line 781
    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 782
    .line 783
    .line 784
    move-result v1

    .line 785
    if-eqz v1, :cond_1c

    .line 786
    .line 787
    goto :goto_a

    .line 788
    :cond_1c
    const-string v1, "SpenGestureManagerService"

    .line 789
    .line 790
    const-string/jumbo v2, "onReceive : isDigitizerEnabled = false"

    .line 791
    .line 792
    .line 793
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .line 795
    .line 796
    iget-object v0, v0, Lcom/android/server/smartclip/SpenGestureManagerService$1;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 797
    .line 798
    invoke-virtual {v0, v6}, Lcom/android/server/smartclip/SpenGestureManagerService;->writeDigitizerOnOffCommand(Z)V

    .line 799
    .line 800
    .line 801
    goto :goto_a

    .line 802
    :cond_1d
    const-string v0, "SpenGestureManagerService"

    .line 803
    .line 804
    const-string/jumbo v1, "onReceive : This model is not support S pen"

    .line 805
    .line 806
    .line 807
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .line 809
    .line 810
    :cond_1e
    :goto_a
    return-void
.end method
