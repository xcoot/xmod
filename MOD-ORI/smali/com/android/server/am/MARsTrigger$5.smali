.class public final Lcom/android/server/am/MARsTrigger$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/am/MARsTrigger$5;->$r8$classId:I

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
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    iget p0, p0, Lcom/android/server/am/MARsTrigger$5;->$r8$classId:I

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_6

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v2, "android.intent.extra.user_handle"

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const-string v2, "MARsTrigger"

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v4, "mUserActionReceiver : "

    .line 34
    .line 35
    .line 36
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, " userId = "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    const-string v2, "android.intent.action.USER_STOPPED"

    .line 58
    .line 59
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/16 v3, 0x63

    .line 64
    .line 65
    const/16 v4, 0x5f

    .line 66
    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    if-lt p2, v4, :cond_1

    .line 70
    .line 71
    if-gt p2, v3, :cond_1

    .line 72
    .line 73
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 74
    .line 75
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 76
    .line 77
    monitor-enter p0

    .line 78
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :catchall_0
    move-exception p1

    .line 84
    monitor-exit p0

    .line 85
    throw p1

    .line 86
    :cond_1
    const-string/jumbo p0, "user"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    check-cast p0, Landroid/os/UserManager;

    .line 94
    .line 95
    if-eqz p0, :cond_6

    .line 96
    .line 97
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    if-eqz p0, :cond_6

    .line 102
    .line 103
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_6

    .line 108
    .line 109
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 110
    .line 111
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 112
    .line 113
    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->setManagedProfileEnabled(IZ)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_0

    .line 117
    .line 118
    :cond_2
    const-string v0, "android.intent.action.USER_STARTED"

    .line 119
    .line 120
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    if-lt p2, v4, :cond_3

    .line 127
    .line 128
    if-gt p2, v3, :cond_3

    .line 129
    .line 130
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 131
    .line 132
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 133
    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 136
    .line 137
    monitor-exit p0

    .line 138
    goto :goto_0

    .line 139
    :catchall_1
    move-exception p1

    .line 140
    monitor-exit p0

    .line 141
    throw p1

    .line 142
    :cond_3
    const-string/jumbo p0, "user"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    check-cast p0, Landroid/os/UserManager;

    .line 150
    .line 151
    if-eqz p0, :cond_6

    .line 152
    .line 153
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    if-eqz p0, :cond_6

    .line 158
    .line 159
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-eqz p0, :cond_6

    .line 164
    .line 165
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 166
    .line 167
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 168
    .line 169
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->setManagedProfileEnabled(IZ)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_4
    const-string v0, "android.intent.action.USER_ADDED"

    .line 174
    .line 175
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p0

    .line 179
    if-eqz p0, :cond_6

    .line 180
    .line 181
    if-lt p2, v4, :cond_5

    .line 182
    .line 183
    if-gt p2, v3, :cond_5

    .line 184
    .line 185
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 186
    .line 187
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 188
    .line 189
    monitor-enter p0

    .line 190
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 191
    .line 192
    monitor-exit p0

    .line 193
    monitor-enter p0

    .line 194
    :try_start_3
    iget p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 195
    .line 196
    monitor-exit p0

    .line 197
    if-eq p2, p1, :cond_6

    .line 198
    .line 199
    monitor-enter p0

    .line 200
    :try_start_4
    iput p2, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 201
    .line 202
    monitor-exit p0

    .line 203
    goto :goto_0

    .line 204
    :catchall_2
    move-exception p1

    .line 205
    monitor-exit p0

    .line 206
    throw p1

    .line 207
    :catchall_3
    move-exception p1

    .line 208
    monitor-exit p0

    .line 209
    throw p1

    .line 210
    :catchall_4
    move-exception p1

    .line 211
    monitor-exit p0

    .line 212
    throw p1

    .line 213
    :cond_5
    const-string/jumbo p0, "user"

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    check-cast p0, Landroid/os/UserManager;

    .line 221
    .line 222
    if-eqz p0, :cond_6

    .line 223
    .line 224
    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    if-eqz p0, :cond_6

    .line 229
    .line 230
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-eqz p0, :cond_6

    .line 235
    .line 236
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 237
    .line 238
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 239
    .line 240
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->setManagedProfileEnabled(IZ)V

    .line 241
    .line 242
    .line 243
    :cond_6
    :goto_0
    return-void

    .line 244
    :pswitch_0
    if-eqz p2, :cond_c

    .line 245
    .line 246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p0

    .line 250
    if-nez p0, :cond_7

    .line 251
    .line 252
    goto/16 :goto_3

    .line 253
    .line 254
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    const-string p2, "MARS_REQUEST_PKG_INFO"

    .line 263
    .line 264
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result p0

    .line 268
    if-eqz p0, :cond_c

    .line 269
    .line 270
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 271
    .line 272
    if-nez p0, :cond_8

    .line 273
    .line 274
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->postInit()V

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_8
    if-eqz p1, :cond_a

    .line 281
    .line 282
    const-string p0, "MARS_EXTRA"

    .line 283
    .line 284
    const-string p2, ""

    .line 285
    .line 286
    invoke-virtual {p1, p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    const-string/jumbo p1, "create"

    .line 291
    .line 292
    .line 293
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    const-string/jumbo p2, "update"

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result p2

    .line 304
    const-string/jumbo v2, "init"

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    move-result p0

    .line 311
    if-eqz p0, :cond_9

    .line 312
    .line 313
    :goto_1
    move v0, p1

    .line 314
    goto :goto_2

    .line 315
    :cond_9
    move v1, v0

    .line 316
    goto :goto_1

    .line 317
    :cond_a
    move p2, v0

    .line 318
    move v1, p2

    .line 319
    :goto_2
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBHandler;->getInstance()V

    .line 320
    .line 321
    .line 322
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBHandler$MARsDBHandlerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBHandler;

    .line 323
    .line 324
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 325
    .line 326
    if-nez p1, :cond_b

    .line 327
    .line 328
    goto :goto_3

    .line 329
    :cond_b
    const/4 v2, 0x6

    .line 330
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    .line 332
    .line 333
    iget-object p1, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 334
    .line 335
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    new-instance v2, Landroid/os/Bundle;

    .line 340
    .line 341
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 342
    .line 343
    .line 344
    const-string/jumbo v3, "onCreate"

    .line 345
    .line 346
    .line 347
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    .line 349
    .line 350
    const-string/jumbo v0, "onUpgrade"

    .line 351
    .line 352
    .line 353
    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 354
    .line 355
    .line 356
    const-string/jumbo p2, "onInit"

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 363
    .line 364
    .line 365
    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBHandler;->mMainHandler:Lcom/android/server/am/mars/database/MARsDBHandler$MainHandler;

    .line 366
    .line 367
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    .line 369
    .line 370
    :cond_c
    :goto_3
    return-void

    .line 371
    :pswitch_1
    if-eqz p2, :cond_12

    .line 372
    .line 373
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    if-nez p0, :cond_d

    .line 378
    .line 379
    goto/16 :goto_5

    .line 380
    .line 381
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p0

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    .line 386
    .line 387
    const-string/jumbo p2, "mAppStartUpIntentReceiver onReceive : "

    .line 388
    .line 389
    .line 390
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object p1

    .line 400
    const-string p2, "MARsTrigger"

    .line 401
    .line 402
    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 406
    .line 407
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result p1

    .line 411
    if-nez p1, :cond_e

    .line 412
    .line 413
    const-string p1, "android.intent.action.REBOOT"

    .line 414
    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result p0

    .line 419
    if-eqz p0, :cond_12

    .line 420
    .line 421
    :cond_e
    sget-object p0, Lcom/android/server/am/mars/MARsBigData$MARsBigDataHolder;->INSTANCE:Lcom/android/server/am/mars/MARsBigData;

    .line 422
    .line 423
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/am/mars/MARsBigData;->updateBigdataInfo()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    .line 427
    .line 428
    .line 429
    goto :goto_4

    .line 430
    :catch_0
    move-exception p1

    .line 431
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 432
    .line 433
    .line 434
    new-instance p1, Lcom/android/server/am/mars/MARsBigData$UsageInfo;

    .line 435
    .line 436
    invoke-direct {p1}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {p1}, Lcom/android/server/am/mars/MARsBigData$UsageInfo;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    iput-object p1, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 444
    .line 445
    :goto_4
    iget-object p1, p0, Lcom/android/server/am/mars/MARsBigData;->PLEVdata:Ljava/lang/String;

    .line 446
    .line 447
    if-eqz p1, :cond_f

    .line 448
    .line 449
    const-string p2, "PLEV"

    .line 450
    .line 451
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/mars/MARsBigData;->sendBigData(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    :cond_f
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 455
    .line 456
    sget-object p0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 457
    .line 458
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->updateResetTime()V

    .line 459
    .line 460
    .line 461
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    .line 462
    .line 463
    if-nez p0, :cond_10

    .line 464
    .line 465
    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    .line 466
    .line 467
    if-eqz p0, :cond_11

    .line 468
    .line 469
    :cond_10
    sget-object p0, Lcom/android/server/am/mars/MARsHistoryLog$MARsHistoryLogHolder;->INSTANCE:Lcom/android/server/am/mars/MARsHistoryLog;

    .line 470
    .line 471
    iget-object p0, p0, Lcom/android/server/am/mars/MARsHistoryLog;->mSaveLogThread:Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread;

    .line 472
    .line 473
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 474
    .line 475
    .line 476
    new-instance p1, Ljava/lang/Thread;

    .line 477
    .line 478
    new-instance p2, Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread$$ExternalSyntheticLambda0;

    .line 479
    .line 480
    invoke-direct {p2, p0}, Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/MARsHistoryLog$SaveLogThread;)V

    .line 481
    .line 482
    .line 483
    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 490
    .line 491
    .line 492
    :cond_11
    sget-boolean p0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 493
    .line 494
    if-eqz p0, :cond_12

    .line 495
    .line 496
    sget-object p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 497
    .line 498
    invoke-virtual {p0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->doUpdateCompHistory(Z)V

    .line 499
    .line 500
    .line 501
    :cond_12
    :goto_5
    return-void

    .line 502
    :pswitch_2
    const-string/jumbo p0, "pid"

    .line 503
    .line 504
    .line 505
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 506
    .line 507
    .line 508
    move-result-object p0

    .line 509
    sget-object p1, Lcom/android/server/am/MARsHandler$MARsHandlerHolder;->INSTANCE:Lcom/android/server/am/MARsHandler;

    .line 510
    .line 511
    iget-object v0, p1, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 512
    .line 513
    if-eqz v0, :cond_14

    .line 514
    .line 515
    if-nez p0, :cond_13

    .line 516
    .line 517
    goto :goto_6

    .line 518
    :cond_13
    const/16 v1, 0x11

    .line 519
    .line 520
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    new-instance v1, Landroid/os/Bundle;

    .line 525
    .line 526
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 527
    .line 528
    .line 529
    const-string/jumbo v2, "pidList"

    .line 530
    .line 531
    .line 532
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 536
    .line 537
    .line 538
    iget-object p0, p1, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 539
    .line 540
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 541
    .line 542
    .line 543
    :cond_14
    :goto_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p0

    .line 547
    const-string/jumbo p1, "broadcast received action TCPU: "

    .line 548
    .line 549
    .line 550
    const-string p2, "MARsTrigger"

    .line 551
    .line 552
    invoke-static {p1, p0, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .line 554
    .line 555
    return-void

    .line 556
    nop

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
