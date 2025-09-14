.class public final Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

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
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget v2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v2, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v0, "com.sec.df.changed.SEC_UI.MODE_NIGHT"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    const-string v0, "com.sec.df.changed.SEC_UI.MODE_ANIMATION"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 33
    .line 34
    iget p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 35
    .line 36
    const-string v0, "MODE_ANIMATION"

    .line 37
    .line 38
    if-ne p1, v1, :cond_1

    .line 39
    .line 40
    const-string p1, "NEW_AIRDROP2"

    .line 41
    .line 42
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testVerifyIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testVerifyIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 52
    .line 53
    iget p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mStage:I

    .line 54
    .line 55
    const-string v0, "MODE_NIGHT"

    .line 56
    .line 57
    if-ne p1, v1, :cond_3

    .line 58
    .line 59
    const-string p1, "0.2|0.9|false"

    .line 60
    .line 61
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testVerifyIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_3
    const-string p1, "1|0.9|true"

    .line 66
    .line 67
    invoke-virtual {p0, p2, v0, p1}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->testVerifyIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void

    .line 71
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    const-string v3, "event received : "

    .line 74
    .line 75
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-string v3, "dynamicfeature_Service"

    .line 90
    .line 91
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    const/4 v4, -0x1

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    sparse-switch v5, :sswitch_data_0

    .line 107
    .line 108
    .line 109
    :goto_1
    move v1, v4

    .line 110
    goto :goto_2

    .line 111
    :sswitch_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_4

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const/4 v1, 0x2

    .line 121
    goto :goto_2

    .line 122
    :sswitch_1
    const-string v5, "com.samsung.feature.FORCE_START"

    .line 123
    .line 124
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_6

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :sswitch_2
    const-string v1, "android.intent.action.SERVICE_STATE"

    .line 132
    .line 133
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_5
    move v1, v0

    .line 141
    :cond_6
    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 142
    .line 143
    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string p1, " We don\'t handle this"

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    goto/16 :goto_4

    .line 169
    .line 170
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string p2, " : Start Job service"

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 195
    .line 196
    iget-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mFeatures:Ljava/util/ArrayList;

    .line 197
    .line 198
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-nez p1, :cond_7

    .line 203
    .line 204
    const-string/jumbo p1, "update immediately"

    .line 205
    .line 206
    .line 207
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 211
    .line 212
    iget-object p2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->updateOnceRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$3;

    .line 213
    .line 214
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    .line 216
    .line 217
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mContext:Landroid/content/Context;

    .line 218
    .line 219
    if-nez p1, :cond_8

    .line 220
    .line 221
    const-string p0, "Cannot start job service context is null"

    .line 222
    .line 223
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    goto/16 :goto_4

    .line 227
    .line 228
    :cond_8
    new-instance p1, Landroid/content/ComponentName;

    .line 229
    .line 230
    const-string p2, "android"

    .line 231
    .line 232
    const-string v0, "android.provider.SemDynamicFeatureScheduler"

    .line 233
    .line 234
    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    new-instance p2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    const-string v0, "==="

    .line 240
    .line 241
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mHandler:Landroid/os/Handler;

    .line 255
    .line 256
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->requestJobSchedulerRunnable:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$JobSchedulerRunnable;

    .line 257
    .line 258
    invoke-static {}, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->getStartMilFromNow()J

    .line 259
    .line 260
    .line 261
    move-result-wide v0

    .line 262
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
    .line 264
    .line 265
    goto/16 :goto_4

    .line 266
    .line 267
    :pswitch_2
    const-string/jumbo v1, "phone"

    .line 268
    .line 269
    .line 270
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 275
    .line 276
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    sget-object v1, Lcom/samsung/android/server/dynamicfeature/InfoBoard;->sExecutableBinaryType:Ljava/lang/String;

    .line 281
    .line 282
    const-string v1, "UNKNOWN"

    .line 283
    .line 284
    const-string/jumbo v2, "ro.product_ship"

    .line 285
    .line 286
    .line 287
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    const-string/jumbo v2, "true"

    .line 292
    .line 293
    .line 294
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    const-string v2, " New mcc is:"

    .line 299
    .line 300
    if-nez v1, :cond_9

    .line 301
    .line 302
    const-string/jumbo p1, "mcc"

    .line 303
    .line 304
    .line 305
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    new-instance p2, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v1, "Debugging mode - PrevMcc:"

    .line 312
    .line 313
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 317
    .line 318
    iget-object v1, v1, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrevMcc:Ljava/lang/String;

    .line 319
    .line 320
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object p2

    .line 333
    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    :cond_9
    if-eqz p1, :cond_c

    .line 337
    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 339
    .line 340
    .line 341
    move-result p2

    .line 342
    const/4 v1, 0x3

    .line 343
    if-ge p2, v1, :cond_a

    .line 344
    .line 345
    goto :goto_3

    .line 346
    :cond_a
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    iget-object p0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService$2;->this$0:Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;

    .line 351
    .line 352
    new-instance p2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v0, "PrevMcc:"

    .line 355
    .line 356
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    iget-object v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrevMcc:Ljava/lang/String;

    .line 360
    .line 361
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object p2

    .line 374
    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    .line 376
    .line 377
    if-eqz p1, :cond_d

    .line 378
    .line 379
    iget-object p2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrevMcc:Ljava/lang/String;

    .line 380
    .line 381
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result p2

    .line 385
    if-nez p2, :cond_d

    .line 386
    .line 387
    iput-object p1, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->mPrevMcc:Ljava/lang/String;

    .line 388
    .line 389
    sget-object p2, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->ALLOWED_MCC:Ljava/util/ArrayList;

    .line 390
    .line 391
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    move-result p1

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v0, "isWorking:"

    .line 398
    .line 399
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-boolean v0, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 403
    .line 404
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    const-string v0, "  allowed:"

    .line 408
    .line 409
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p2

    .line 419
    invoke-static {v3, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .line 421
    .line 422
    iget-boolean p2, p0, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->isWorking:Z

    .line 423
    .line 424
    if-eq p2, p1, :cond_d

    .line 425
    .line 426
    if-eqz p2, :cond_b

    .line 427
    .line 428
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->disableService()V

    .line 429
    .line 430
    .line 431
    goto :goto_4

    .line 432
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/server/dynamicfeature/DynamicFeatureService;->enableService()V

    .line 433
    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_c
    :goto_3
    const-string/jumbo p0, "no operator : "

    .line 437
    .line 438
    .line 439
    invoke-static {p0, p1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    :cond_d
    :goto_4
    return-void

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    :sswitch_data_0
    .sparse-switch
        -0x7d6de25e -> :sswitch_2
        -0x5441540b -> :sswitch_1
        0x2f94f923 -> :sswitch_0
    .end sparse-switch

    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
