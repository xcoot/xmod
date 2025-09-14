.class public final Lcom/android/server/vibrator/VibratorManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 1
    iget p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string p2, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 21
    .line 22
    if-nez p1, :cond_a

    .line 23
    .line 24
    new-instance p1, Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    const-string v0, "VibratorService"

    .line 29
    .line 30
    invoke-direct {p1, p2, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mGoodCatchManager:Lcom/samsung/android/server/audio/GoodCatchManager;

    .line 34
    .line 35
    goto/16 :goto_6

    .line 36
    .line 37
    :cond_0
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    const/4 v0, 0x0

    .line 44
    const-string v1, "com.sec.media.action.VIBRTOR_LOGGING"

    .line 45
    .line 46
    if-eqz p2, :cond_2

    .line 47
    .line 48
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 49
    .line 50
    iget-object p2, p1, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    sget-object v2, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    new-instance v2, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "HqmManagerService"

    .line 62
    .line 63
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Landroid/os/SemHqmManager;

    .line 68
    .line 69
    iput-object v3, v2, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 70
    .line 71
    const-string v3, "alarm"

    .line 72
    .line 73
    invoke-virtual {p2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Landroid/app/AlarmManager;

    .line 78
    .line 79
    iput-object p2, v2, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 80
    .line 81
    sput-object v2, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 82
    .line 83
    :cond_1
    sget-object p2, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->sInstance:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 84
    .line 85
    iput-object p2, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 88
    .line 89
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mContext:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance p2, Landroid/content/Intent;

    .line 97
    .line 98
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/high16 v1, 0x4000000

    .line 102
    .line 103
    invoke-static {p0, v0, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    iget-object v2, p1, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mAlarmManager:Landroid/app/AlarmManager;

    .line 108
    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 110
    .line 111
    .line 112
    move-result-wide p0

    .line 113
    const-wide/32 v0, 0x5265c00

    .line 114
    .line 115
    .line 116
    add-long v4, p0, v0

    .line 117
    .line 118
    const-wide/32 v6, 0x5265c00

    .line 119
    .line 120
    .line 121
    const/4 v3, 0x3

    .line 122
    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_6

    .line 126
    .line 127
    :cond_2
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 128
    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    if-nez p2, :cond_4

    .line 134
    .line 135
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    if-eqz p2, :cond_3

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    const-string p2, "com.android.launcher3.quickstep.closeall"

    .line 143
    .line 144
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-eqz p1, :cond_a

    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 151
    .line 152
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mHandler:Landroid/os/Handler;

    .line 153
    .line 154
    new-instance p2, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    .line 155
    .line 156
    invoke-direct {p2, p0}, Lcom/android/server/vibrator/VibratorManagerService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vibrator/VibratorManagerService$1;)V

    .line 157
    .line 158
    .line 159
    const-wide/16 v0, 0x1f4

    .line 160
    .line 161
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    .line 163
    .line 164
    goto/16 :goto_6

    .line 165
    .line 166
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 167
    .line 168
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmHelper:Lcom/samsung/android/server/vibrator/VibratorHqmHelper;

    .line 169
    .line 170
    if-eqz p1, :cond_a

    .line 171
    .line 172
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 173
    .line 174
    new-instance v1, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    new-instance v2, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    move v3, v0

    .line 185
    :goto_1
    const/4 v4, 0x5

    .line 186
    if-ge v3, v4, :cond_6

    .line 187
    .line 188
    sget-object v4, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->BIG_DATA:[Ljava/lang/String;

    .line 189
    .line 190
    aget-object v5, v4, v3

    .line 191
    .line 192
    iget-object v6, p2, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mLoggingData:Ljava/util/HashMap;

    .line 193
    .line 194
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v5

    .line 202
    check-cast v5, Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    if-eqz v5, :cond_5

    .line 213
    .line 214
    aget-object v4, v4, v3

    .line 215
    .line 216
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 223
    .line 224
    goto :goto_1

    .line 225
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 226
    .line 227
    .line 228
    move-result p2

    .line 229
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 230
    .line 231
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 232
    .line 233
    .line 234
    move v4, v0

    .line 235
    :goto_2
    if-ge v4, p2, :cond_7

    .line 236
    .line 237
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    check-cast v5, Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v6

    .line 247
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    .line 249
    .line 250
    add-int/lit8 v4, v4, 0x1

    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catch_0
    move-exception p2

    .line 254
    goto :goto_3

    .line 255
    :cond_7
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p2

    .line 259
    goto :goto_4

    .line 260
    :goto_3
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 261
    .line 262
    .line 263
    const/4 p2, 0x0

    .line 264
    :goto_4
    if-nez p2, :cond_8

    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_8
    const-string v1, "\\{"

    .line 268
    .line 269
    const-string v2, ""

    .line 270
    .line 271
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    const-string v1, "\\}"

    .line 276
    .line 277
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    iget-object p2, p1, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 282
    .line 283
    if-eqz p2, :cond_9

    .line 284
    .line 285
    const-string p2, "VibratorHqmHelper"

    .line 286
    .line 287
    const-string/jumbo v1, "sendLoggingDataToHQM() Server update !!!"

    .line 288
    .line 289
    .line 290
    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    iget-object v3, p1, Lcom/samsung/android/server/vibrator/VibratorHqmHelper;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 294
    .line 295
    const-string v10, ""

    .line 296
    .line 297
    const-string v12, ""

    .line 298
    .line 299
    const/4 v4, 0x0

    .line 300
    const-string v5, "Audio"

    .line 301
    .line 302
    const-string v6, "VIBE"

    .line 303
    .line 304
    const-string/jumbo v7, "sm"

    .line 305
    .line 306
    .line 307
    const-string v8, "0.0"

    .line 308
    .line 309
    const-string/jumbo v9, "sec"

    .line 310
    .line 311
    .line 312
    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 313
    .line 314
    .line 315
    :cond_9
    :goto_5
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mHqmLoggingData:Lcom/samsung/android/server/vibrator/VibratorHqmData;

    .line 316
    .line 317
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mRingCount:I

    .line 318
    .line 319
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mAlarmCount:I

    .line 320
    .line 321
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mNotificationCount:I

    .line 322
    .line 323
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mTouchCount:I

    .line 324
    .line 325
    iput v0, p0, Lcom/samsung/android/server/vibrator/VibratorHqmData;->mExtraCount:I

    .line 326
    .line 327
    :cond_a
    :goto_6
    return-void

    .line 328
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 333
    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    if-eqz p1, :cond_11

    .line 339
    .line 340
    iget-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 341
    .line 342
    iget-object p1, p1, Lcom/android/server/vibrator/VibratorManagerService;->mLock:Ljava/lang/Object;

    .line 343
    .line 344
    monitor-enter p1

    .line 345
    :try_start_1
    const-string/jumbo v0, "reason"

    .line 346
    .line 347
    .line 348
    const/4 v1, -0x1

    .line 349
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 350
    .line 351
    .line 352
    move-result p2

    .line 353
    const/16 v0, 0x13

    .line 354
    .line 355
    if-ne p2, v0, :cond_b

    .line 356
    .line 357
    const-string p0, "VibratorManagerService"

    .line 358
    .line 359
    const-string p2, "Keep screen turned off"

    .line 360
    .line 361
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .line 363
    .line 364
    monitor-exit p1

    .line 365
    goto :goto_9

    .line 366
    :catchall_0
    move-exception p0

    .line 367
    goto :goto_8

    .line 368
    :cond_b
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 369
    .line 370
    iget-object p2, p2, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 371
    .line 372
    const/4 v0, 0x0

    .line 373
    if-eqz p2, :cond_d

    .line 374
    .line 375
    iget-object p2, p2, Lcom/android/server/vibrator/VibrationStepConductor;->mVibration:Lcom/android/server/vibrator/HalVibration;

    .line 376
    .line 377
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration;->callerInfo:Lcom/android/server/vibrator/Vibration$CallerInfo;

    .line 378
    .line 379
    iget-object v1, p2, Lcom/android/server/vibrator/Vibration$CallerInfo;->opPkg:Ljava/lang/String;

    .line 380
    .line 381
    iget-object p2, p2, Lcom/android/server/vibrator/Vibration$CallerInfo;->attrs:Landroid/os/VibrationAttributes;

    .line 382
    .line 383
    invoke-virtual {p2}, Landroid/os/VibrationAttributes;->getUsage()I

    .line 384
    .line 385
    .line 386
    move-result p2

    .line 387
    const/16 v2, 0x21

    .line 388
    .line 389
    const/4 v3, 0x1

    .line 390
    if-ne p2, v2, :cond_c

    .line 391
    .line 392
    move p2, v3

    .line 393
    goto :goto_7

    .line 394
    :cond_c
    move p2, v0

    .line 395
    :goto_7
    const-string v2, "com.android.server.telecom"

    .line 396
    .line 397
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    move-result v2

    .line 401
    if-eqz v2, :cond_d

    .line 402
    .line 403
    if-eqz p2, :cond_d

    .line 404
    .line 405
    const-string p2, "ignore cancelling current vibration: "

    .line 406
    .line 407
    const-string v0, "VibratorManagerService"

    .line 408
    .line 409
    invoke-static {p2, v1, v0}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .line 411
    .line 412
    move v0, v3

    .line 413
    :cond_d
    if-eqz v0, :cond_e

    .line 414
    .line 415
    monitor-exit p1

    .line 416
    goto :goto_9

    .line 417
    :cond_e
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 418
    .line 419
    iget-object v0, p2, Lcom/android/server/vibrator/VibratorManagerService;->mNextVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 420
    .line 421
    invoke-static {p2, v0}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Z

    .line 422
    .line 423
    .line 424
    move-result p2

    .line 425
    const/4 v0, 0x0

    .line 426
    if-eqz p2, :cond_f

    .line 427
    .line 428
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 429
    .line 430
    new-instance v1, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 431
    .line 432
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    .line 433
    .line 434
    invoke-direct {v1, v2, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->clearNextVibrationLocked(Lcom/android/server/vibrator/Vibration$EndInfo;)V

    .line 438
    .line 439
    .line 440
    :cond_f
    iget-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 441
    .line 442
    iget-object v1, p2, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 443
    .line 444
    invoke-static {p2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->-$$Nest$mshouldCancelOnScreenOffLocked(Lcom/android/server/vibrator/VibratorManagerService;Lcom/android/server/vibrator/VibrationStepConductor;)Z

    .line 445
    .line 446
    .line 447
    move-result p2

    .line 448
    if-eqz p2, :cond_10

    .line 449
    .line 450
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService$1;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    .line 451
    .line 452
    iget-object p0, p0, Lcom/android/server/vibrator/VibratorManagerService;->mCurrentVibration:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 453
    .line 454
    new-instance p2, Lcom/android/server/vibrator/Vibration$EndInfo;

    .line 455
    .line 456
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->CANCELLED_BY_SCREEN_OFF:Lcom/android/server/vibrator/Vibration$Status;

    .line 457
    .line 458
    invoke-direct {p2, v1, v0}, Lcom/android/server/vibrator/Vibration$EndInfo;-><init>(Lcom/android/server/vibrator/Vibration$Status;Lcom/android/server/vibrator/Vibration$CallerInfo;)V

    .line 459
    .line 460
    .line 461
    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, p2, v0}, Lcom/android/server/vibrator/VibrationStepConductor;->notifyCancelled(Lcom/android/server/vibrator/Vibration$EndInfo;Z)V

    .line 463
    .line 464
    .line 465
    :cond_10
    monitor-exit p1

    .line 466
    goto :goto_9

    .line 467
    :goto_8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    throw p0

    .line 469
    :cond_11
    :goto_9
    return-void

    .line 470
    nop

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
