.class public final Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemEventListener;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

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
    .locals 5

    .line 1
    const-string v0, "SystemEventListener"

    .line 2
    .line 3
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;->this$0:Lcom/android/server/chimera/SystemEventListener;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_e

    .line 13
    .line 14
    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mQuotaListeners:Ljava/util/List;

    .line 15
    .line 16
    check-cast p0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/android/server/chimera/SystemEventListener$AlwaysRunningQuotaExceedListener;

    .line 33
    .line 34
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 35
    .line 36
    if-ne v4, v3, :cond_0

    .line 37
    .line 38
    move v4, v3

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    move v4, v2

    .line 41
    :goto_1
    check-cast v1, Lcom/android/server/chimera/PolicyHandler;

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Lcom/android/server/chimera/PolicyHandler;->onQuotaKill(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto/16 :goto_d

    .line 49
    .line 50
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mTimeOrTimeZoneChangedListeners:Ljava/util/List;

    .line 51
    .line 52
    check-cast p0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/android/server/chimera/psitracker/PSITracker;

    .line 69
    .line 70
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string/jumbo v4, "onTimeOrTimeZoneChanged() action: "

    .line 80
    .line 81
    .line 82
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, v1, Lcom/android/server/chimera/psitracker/PSITracker;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 93
    .line 94
    const-string v4, "PSITracker"

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {v4, v2}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v2, "TIME_CHANGED"

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Lcom/android/server/chimera/psitracker/PSITracker;->scheduleAvailMem240PeriodRecord(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 109
    .line 110
    const-string v1, "MSG_ONE_HOUR_TIMER"

    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mOneHourTimerListeners:Ljava/util/List;

    .line 119
    .line 120
    check-cast p1, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_1

    .line 131
    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    check-cast v1, Lcom/android/server/chimera/AbnormalFgsDetector;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/android/server/chimera/AbnormalFgsDetector;->onOneHourTimer()V

    .line 139
    .line 140
    .line 141
    goto :goto_3

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/chimera/SystemEventListener;->startOneHourTimer()V

    .line 143
    .line 144
    .line 145
    goto/16 :goto_e

    .line 146
    .line 147
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    .line 148
    .line 149
    check-cast p0, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_3

    .line 160
    .line 161
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Lcom/android/server/chimera/SystemEventListener$CameraStateListener;

    .line 166
    .line 167
    check-cast p1, Lcom/android/server/chimera/PolicyHandler;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/android/server/chimera/PolicyHandler;->onCameraClose()V

    .line 170
    .line 171
    .line 172
    goto :goto_4

    .line 173
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCameraStateListeners:Ljava/util/List;

    .line 174
    .line 175
    check-cast p0, Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_3

    .line 186
    .line 187
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    check-cast p1, Lcom/android/server/chimera/SystemEventListener$CameraStateListener;

    .line 192
    .line 193
    check-cast p1, Lcom/android/server/chimera/PolicyHandler;

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/android/server/chimera/PolicyHandler;->onCameraOpen()V

    .line 196
    .line 197
    .line 198
    goto :goto_5

    .line 199
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchIntentListeners:Ljava/util/List;

    .line 200
    .line 201
    check-cast p0, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_3

    .line 212
    .line 213
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntentListener;

    .line 218
    .line 219
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v2, Ljava/lang/String;

    .line 222
    .line 223
    check-cast v1, Lcom/android/server/chimera/PolicyHandler;

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Lcom/android/server/chimera/PolicyHandler;->onAppLaunchIntent(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_6

    .line 229
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mDeviceIdleListeners:Ljava/util/List;

    .line 230
    .line 231
    check-cast p0, Ljava/util/ArrayList;

    .line 232
    .line 233
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_3

    .line 242
    .line 243
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Lcom/android/server/chimera/SystemEventListener$DeviceIdleListener;

    .line 248
    .line 249
    check-cast p1, Lcom/android/server/chimera/PolicyHandler;

    .line 250
    .line 251
    invoke-virtual {p1}, Lcom/android/server/chimera/PolicyHandler;->onDeviceIdle()V

    .line 252
    .line 253
    .line 254
    goto :goto_7

    .line 255
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mAppLaunchListeners:Ljava/util/List;

    .line 256
    .line 257
    check-cast p0, Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_2

    .line 268
    .line 269
    goto/16 :goto_e

    .line 270
    .line 271
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object p0

    .line 275
    invoke-static {p0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast p0, Ljava/lang/String;

    .line 281
    .line 282
    const/4 p0, 0x0

    .line 283
    throw p0

    .line 284
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mMediaScanFinishedListeners:Ljava/util/List;

    .line 285
    .line 286
    check-cast p0, Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 289
    .line 290
    .line 291
    move-result-object p0

    .line 292
    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_3

    .line 297
    .line 298
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    check-cast p1, Lcom/android/server/chimera/ChimeraManager;

    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/android/server/chimera/ChimeraManager;->onMediaScanFinished()V

    .line 305
    .line 306
    .line 307
    goto :goto_8

    .line 308
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    .line 309
    .line 310
    check-cast p0, Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 317
    .line 318
    .line 319
    move-result p1

    .line 320
    if-eqz p1, :cond_3

    .line 321
    .line 322
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    check-cast p1, Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;

    .line 327
    .line 328
    check-cast p1, Lcom/android/server/chimera/PolicyHandler;

    .line 329
    .line 330
    iput-boolean v2, p1, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    .line 331
    .line 332
    goto :goto_9

    .line 333
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mCarModeChangeListeners:Ljava/util/List;

    .line 334
    .line 335
    check-cast p0, Ljava/util/ArrayList;

    .line 336
    .line 337
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object p0

    .line 341
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result p1

    .line 345
    if-eqz p1, :cond_3

    .line 346
    .line 347
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Lcom/android/server/chimera/SystemEventListener$CarModeChangeListener;

    .line 352
    .line 353
    check-cast p1, Lcom/android/server/chimera/PolicyHandler;

    .line 354
    .line 355
    iput-boolean v3, p1, Lcom/android/server/chimera/PolicyHandler;->mIsCarMode:Z

    .line 356
    .line 357
    goto :goto_a

    .line 358
    :pswitch_b
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHomeLaunchListeners:Ljava/util/List;

    .line 359
    .line 360
    check-cast p0, Ljava/util/ArrayList;

    .line 361
    .line 362
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result p1

    .line 370
    if-eqz p1, :cond_3

    .line 371
    .line 372
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object p1

    .line 376
    check-cast p1, Lcom/android/server/chimera/SystemEventListener$HomeLaunchListener;

    .line 377
    .line 378
    check-cast p1, Lcom/android/server/chimera/PolicyHandler;

    .line 379
    .line 380
    invoke-virtual {p1}, Lcom/android/server/chimera/PolicyHandler;->onHomeLaunched()V

    .line 381
    .line 382
    .line 383
    goto :goto_b

    .line 384
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mLmkdEventListeners:Ljava/util/List;

    .line 385
    .line 386
    check-cast p0, Ljava/util/ArrayList;

    .line 387
    .line 388
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-eqz v1, :cond_3

    .line 397
    .line 398
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    check-cast v1, Lcom/android/server/chimera/SystemEventListener$LmkdEventListener;

    .line 403
    .line 404
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 405
    .line 406
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast v3, Ljava/lang/Integer;

    .line 409
    .line 410
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    check-cast v1, Lcom/android/server/chimera/PolicyHandler;

    .line 415
    .line 416
    invoke-virtual {v1, v2, v3}, Lcom/android/server/chimera/PolicyHandler;->onLmkdEventTriggered(II)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    .line 418
    .line 419
    goto :goto_c

    .line 420
    :goto_d
    invoke-static {v0}, Lcom/android/server/chimera/SystemRepository;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    const-string v1, "Handler execute with exception "

    .line 427
    .line 428
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object p0

    .line 435
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    .line 444
    .line 445
    :cond_3
    :goto_e
    return-void

    .line 446
    nop

    .line 447
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
