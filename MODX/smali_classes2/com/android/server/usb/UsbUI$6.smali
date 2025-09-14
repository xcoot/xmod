.class public final Lcom/android/server/usb/UsbUI$6;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbUI;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usb/UsbUI$6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "ACTION"

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const-string v4, "ADD"

    .line 9
    .line 10
    const-string v5, "STATE"

    .line 11
    .line 12
    const-string v6, "REMOVE"

    .line 13
    .line 14
    const/4 v7, 0x2

    .line 15
    const-string v8, "UsbUI"

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    const/4 v10, 0x1

    .line 19
    iget v11, v0, Lcom/android/server/usb/UsbUI$6;->$r8$classId:I

    .line 20
    .line 21
    packed-switch v11, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    const-string v2, "SWITCH_STATE"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "CCIC"

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v2, :cond_0

    .line 37
    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    goto/16 :goto_2

    .line 41
    .line 42
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string/jumbo v5, "onUEvent(USB CCIC): "

    .line 45
    .line 46
    .line 47
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    const-string v1, "115"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 69
    .line 70
    iget-boolean v2, v1, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 71
    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    invoke-static {v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const v4, 0x1040fdb

    .line 84
    .line 85
    .line 86
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    :cond_1
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 92
    .line 93
    const v14, 0x1040fdb

    .line 94
    .line 95
    .line 96
    const-wide/16 v15, 0xe

    .line 97
    .line 98
    const/16 v12, 0x6c

    .line 99
    .line 100
    const v13, 0x1040fdc

    .line 101
    .line 102
    .line 103
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    const-string v1, "0"

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 116
    .line 117
    const/16 v2, 0x6c

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 123
    .line 124
    iget-boolean v1, v1, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 125
    .line 126
    const-string v2, "WATER"

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 135
    .line 136
    iput-boolean v10, v2, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    const-string v2, "DRY"

    .line 140
    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-eqz v2, :cond_5

    .line 146
    .line 147
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 148
    .line 149
    iput-boolean v9, v2, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 150
    .line 151
    :cond_5
    :goto_1
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 152
    .line 153
    iget-boolean v2, v0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 154
    .line 155
    if-eq v2, v1, :cond_6

    .line 156
    .line 157
    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbUI;->notifyUsbWetDetection(Z)V

    .line 158
    .line 159
    .line 160
    :cond_6
    :goto_2
    return-void

    .line 161
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string/jumbo v11, "onUEvent(USB Control): "

    .line 164
    .line 165
    .line 166
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v8, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    const-string v2, "TYPE"

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    const-string/jumbo v11, "usberr"

    .line 190
    .line 191
    .line 192
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v11

    .line 196
    const-string v12, "WORDS"

    .line 197
    .line 198
    if-eqz v11, :cond_a

    .line 199
    .line 200
    invoke-virtual {v1, v12}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    const-string v2, "abnormal_reset"

    .line 208
    .line 209
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v1

    .line 213
    if-nez v1, :cond_7

    .line 214
    .line 215
    goto/16 :goto_4

    .line 216
    .line 217
    :cond_7
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_9

    .line 222
    .line 223
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 224
    .line 225
    iget-boolean v2, v1, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 226
    .line 227
    if-eqz v2, :cond_8

    .line 228
    .line 229
    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    invoke-static {v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    const v3, 0x1040f8c

    .line 239
    .line 240
    .line 241
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 242
    .line 243
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 244
    .line 245
    .line 246
    :cond_8
    iget-object v4, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 247
    .line 248
    const v7, 0x1040f8a

    .line 249
    .line 250
    .line 251
    const-wide/16 v8, 0xc

    .line 252
    .line 253
    const/16 v5, 0x6d

    .line 254
    .line 255
    const v6, 0x1040f8b

    .line 256
    .line 257
    .line 258
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_4

    .line 262
    .line 263
    :cond_9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-eqz v1, :cond_f

    .line 268
    .line 269
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 270
    .line 271
    const/16 v1, 0x6d

    .line 272
    .line 273
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 274
    .line 275
    .line 276
    goto/16 :goto_4

    .line 277
    .line 278
    :cond_a
    const-string/jumbo v6, "usbrestrict"

    .line 279
    .line 280
    .line 281
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_f

    .line 286
    .line 287
    invoke-virtual {v1, v12}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    sparse-switch v2, :sswitch_data_0

    .line 299
    .line 300
    .line 301
    goto :goto_3

    .line 302
    :sswitch_0
    const-string/jumbo v2, "timesecurerestrict"

    .line 303
    .line 304
    .line 305
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_b

    .line 310
    .line 311
    goto :goto_3

    .line 312
    :cond_b
    move v3, v7

    .line 313
    goto :goto_3

    .line 314
    :sswitch_1
    const-string/jumbo v2, "securerestrict"

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_c

    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_c
    move v3, v10

    .line 325
    goto :goto_3

    .line 326
    :sswitch_2
    const-string/jumbo v2, "securerelease"

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-nez v1, :cond_d

    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_d
    move v3, v9

    .line 337
    :goto_3
    packed-switch v3, :pswitch_data_1

    .line 338
    .line 339
    .line 340
    goto/16 :goto_4

    .line 341
    .line 342
    :pswitch_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v1

    .line 346
    if-eqz v1, :cond_f

    .line 347
    .line 348
    const-string/jumbo v1, "onUEvent(USB Control): Show USB BLK Notification"

    .line 349
    .line 350
    .line 351
    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 355
    .line 356
    invoke-virtual {v1, v10}, Lcom/android/server/usb/UsbUI;->notifyUsbRestrict(Z)V

    .line 357
    .line 358
    .line 359
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 360
    .line 361
    const-string v2, "ON"

    .line 362
    .line 363
    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbUI;->sendingUsbRestrictionStateIntent(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 367
    .line 368
    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 369
    .line 370
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallState()I

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eq v1, v10, :cond_e

    .line 375
    .line 376
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 377
    .line 378
    iget-object v1, v1, Lcom/android/server/usb/UsbUI;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 379
    .line 380
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCallState()I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    if-ne v1, v7, :cond_f

    .line 385
    .line 386
    :cond_e
    const-string v1, "Show USB BLK Toast on call"

    .line 387
    .line 388
    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .line 390
    .line 391
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 392
    .line 393
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 394
    .line 395
    if-eqz v1, :cond_f

    .line 396
    .line 397
    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    .line 401
    .line 402
    invoke-static {v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    const v2, 0x1040fd6

    .line 407
    .line 408
    .line 409
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 410
    .line 411
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    .line 413
    .line 414
    goto :goto_4

    .line 415
    :pswitch_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-eqz v1, :cond_f

    .line 420
    .line 421
    const-string/jumbo v1, "onUEvent(USB Control): Show USB BLK Toast"

    .line 422
    .line 423
    .line 424
    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    .line 426
    .line 427
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 428
    .line 429
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 430
    .line 431
    if-eqz v1, :cond_f

    .line 432
    .line 433
    iget-object v0, v0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 434
    .line 435
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    .line 437
    .line 438
    invoke-static {v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    const v2, 0x1040fd5

    .line 443
    .line 444
    .line 445
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 446
    .line 447
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    .line 449
    .line 450
    goto :goto_4

    .line 451
    :pswitch_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-eqz v1, :cond_f

    .line 456
    .line 457
    const-string/jumbo v1, "onUEvent(USB Control): Cancel USB BLK Notification"

    .line 458
    .line 459
    .line 460
    invoke-static {v8, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    .line 462
    .line 463
    iget-object v1, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 464
    .line 465
    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbUI;->notifyUsbRestrict(Z)V

    .line 466
    .line 467
    .line 468
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 469
    .line 470
    const-string v1, "OFF"

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbUI;->sendingUsbRestrictionStateIntent(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    :cond_f
    :goto_4
    return-void

    .line 476
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 477
    .line 478
    const-string/jumbo v4, "onUEvent(Host Interface): "

    .line 479
    .line 480
    .line 481
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v3

    .line 491
    invoke-static {v8, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v2

    .line 498
    const-string v3, "INTERFACE"

    .line 499
    .line 500
    invoke-virtual {v1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v3

    .line 504
    const-string v4, "WARNING"

    .line 505
    .line 506
    invoke-virtual {v1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v4

    .line 510
    const-string/jumbo v5, "unsupport_accessory"

    .line 511
    .line 512
    .line 513
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v5

    .line 517
    if-eqz v5, :cond_10

    .line 518
    .line 519
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 520
    .line 521
    const/16 v12, 0x72

    .line 522
    .line 523
    const v13, 0x1040fd8

    .line 524
    .line 525
    .line 526
    const v14, 0x1040fd7

    .line 527
    .line 528
    .line 529
    const-wide/16 v15, 0x1

    .line 530
    .line 531
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_5

    .line 535
    .line 536
    :cond_10
    const-string/jumbo v5, "no_response"

    .line 537
    .line 538
    .line 539
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v5

    .line 543
    if-eqz v5, :cond_11

    .line 544
    .line 545
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 546
    .line 547
    const/16 v12, 0x73

    .line 548
    .line 549
    const v13, 0x1040fba

    .line 550
    .line 551
    .line 552
    const v14, 0x1040fb9

    .line 553
    .line 554
    .line 555
    const-wide/16 v15, 0x1

    .line 556
    .line 557
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_5

    .line 561
    .line 562
    :cond_11
    const-string v5, "hub_depth_exceed"

    .line 563
    .line 564
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    move-result v5

    .line 568
    if-eqz v5, :cond_12

    .line 569
    .line 570
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 571
    .line 572
    const/16 v12, 0x74

    .line 573
    .line 574
    const v13, 0x1040fa9

    .line 575
    .line 576
    .line 577
    const v14, 0x1040fa8

    .line 578
    .line 579
    .line 580
    const-wide/16 v15, 0x1

    .line 581
    .line 582
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_5

    .line 586
    .line 587
    :cond_12
    const-string v5, "hub_power_exceed"

    .line 588
    .line 589
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    move-result v5

    .line 593
    if-eqz v5, :cond_13

    .line 594
    .line 595
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 596
    .line 597
    const/16 v12, 0x75

    .line 598
    .line 599
    const v13, 0x1040fba

    .line 600
    .line 601
    .line 602
    const v14, 0x1040faa

    .line 603
    .line 604
    .line 605
    const-wide/16 v15, 0x1

    .line 606
    .line 607
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 608
    .line 609
    .line 610
    goto :goto_5

    .line 611
    :cond_13
    const-string v5, "host_resource_exceed"

    .line 612
    .line 613
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 614
    .line 615
    .line 616
    move-result v4

    .line 617
    if-eqz v4, :cond_14

    .line 618
    .line 619
    iget-object v11, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 620
    .line 621
    const/16 v12, 0x76

    .line 622
    .line 623
    const v13, 0x1040fa7

    .line 624
    .line 625
    .line 626
    const v14, 0x1040fa6

    .line 627
    .line 628
    .line 629
    const-wide/16 v15, 0x1

    .line 630
    .line 631
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 632
    .line 633
    .line 634
    goto :goto_5

    .line 635
    :cond_14
    :try_start_0
    const-string v4, "/"

    .line 636
    .line 637
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v3

    .line 641
    aget-object v4, v3, v9

    .line 642
    .line 643
    aget-object v5, v3, v10

    .line 644
    .line 645
    aget-object v3, v3, v7

    .line 646
    .line 647
    if-eqz v4, :cond_16

    .line 648
    .line 649
    if-eqz v5, :cond_16

    .line 650
    .line 651
    if-nez v3, :cond_15

    .line 652
    .line 653
    goto :goto_5

    .line 654
    :cond_15
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 655
    .line 656
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 657
    .line 658
    .line 659
    move-result v4

    .line 660
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 661
    .line 662
    .line 663
    move-result v5

    .line 664
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    move-result v3

    .line 668
    invoke-virtual {v0, v4, v5, v3, v2}, Lcom/android/server/usb/UsbUI;->notifyUsbInterface(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    .line 670
    .line 671
    goto :goto_5

    .line 672
    :catch_0
    move-exception v0

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    const-string v2, "ArrayIndexOutOfBoundsException "

    .line 676
    .line 677
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 681
    .line 682
    .line 683
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-static {v8, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    .line 689
    .line 690
    goto :goto_5

    .line 691
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 692
    .line 693
    const-string v2, "Could not parse state or devPath from event "

    .line 694
    .line 695
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 699
    .line 700
    .line 701
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 702
    .line 703
    .line 704
    move-result-object v0

    .line 705
    invoke-static {v8, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .line 707
    .line 708
    :cond_16
    :goto_5
    return-void

    .line 709
    :pswitch_5
    new-instance v11, Ljava/lang/StringBuilder;

    .line 710
    .line 711
    const-string/jumbo v12, "onUEvent(Host Path): "

    .line 712
    .line 713
    .line 714
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 718
    .line 719
    .line 720
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v11

    .line 724
    invoke-static {v8, v11}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .line 726
    .line 727
    invoke-virtual {v1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v2

    .line 731
    invoke-virtual {v1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v1

    .line 735
    const-string/jumbo v5, "remove"

    .line 736
    .line 737
    .line 738
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 739
    .line 740
    .line 741
    move-result v5

    .line 742
    const/16 v8, 0x71

    .line 743
    .line 744
    const/16 v11, 0x70

    .line 745
    .line 746
    if-eqz v5, :cond_17

    .line 747
    .line 748
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 749
    .line 750
    invoke-virtual {v0, v11}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0, v8}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 754
    .line 755
    .line 756
    goto/16 :goto_8

    .line 757
    .line 758
    :cond_17
    const-string v5, "change"

    .line 759
    .line 760
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 761
    .line 762
    .line 763
    move-result v2

    .line 764
    if-eqz v2, :cond_1c

    .line 765
    .line 766
    if-eqz v1, :cond_1c

    .line 767
    .line 768
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 769
    .line 770
    .line 771
    move-result v2

    .line 772
    sparse-switch v2, :sswitch_data_1

    .line 773
    .line 774
    .line 775
    goto :goto_6

    .line 776
    :sswitch_3
    const-string v2, "UNKNOWN"

    .line 777
    .line 778
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    move-result v2

    .line 782
    if-nez v2, :cond_18

    .line 783
    .line 784
    goto :goto_6

    .line 785
    :cond_18
    move v3, v7

    .line 786
    goto :goto_6

    .line 787
    :sswitch_4
    const-string v2, "OVERCURRENT"

    .line 788
    .line 789
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 790
    .line 791
    .line 792
    move-result v2

    .line 793
    if-nez v2, :cond_19

    .line 794
    .line 795
    goto :goto_6

    .line 796
    :cond_19
    move v3, v10

    .line 797
    goto :goto_6

    .line 798
    :sswitch_5
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 799
    .line 800
    .line 801
    move-result v2

    .line 802
    if-nez v2, :cond_1a

    .line 803
    .line 804
    goto :goto_6

    .line 805
    :cond_1a
    move v3, v9

    .line 806
    :goto_6
    packed-switch v3, :pswitch_data_2

    .line 807
    .line 808
    .line 809
    goto :goto_7

    .line 810
    :pswitch_6
    iget-object v12, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 811
    .line 812
    const/16 v18, 0x0

    .line 813
    .line 814
    const-wide/16 v19, 0x0

    .line 815
    .line 816
    const/16 v13, 0x71

    .line 817
    .line 818
    const v14, 0x1040fa1

    .line 819
    .line 820
    .line 821
    const/4 v15, 0x0

    .line 822
    const v16, 0x1080ba2

    .line 823
    .line 824
    .line 825
    const/16 v17, 0x0

    .line 826
    .line 827
    invoke-virtual/range {v12 .. v20}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    .line 828
    .line 829
    .line 830
    goto :goto_7

    .line 831
    :pswitch_7
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 832
    .line 833
    const/16 v27, 0x0

    .line 834
    .line 835
    const-wide/16 v28, 0x0

    .line 836
    .line 837
    const/16 v22, 0x70

    .line 838
    .line 839
    const v23, 0x1040fa5

    .line 840
    .line 841
    .line 842
    const v24, 0x1040fa4

    .line 843
    .line 844
    .line 845
    const v25, 0x1080ba1

    .line 846
    .line 847
    .line 848
    const/16 v26, 0x0

    .line 849
    .line 850
    move-object/from16 v21, v2

    .line 851
    .line 852
    invoke-virtual/range {v21 .. v29}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    .line 853
    .line 854
    .line 855
    goto :goto_7

    .line 856
    :pswitch_8
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 857
    .line 858
    invoke-virtual {v2, v11}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 859
    .line 860
    .line 861
    invoke-virtual {v2, v8}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 862
    .line 863
    .line 864
    :goto_7
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 865
    .line 866
    .line 867
    move-result v2

    .line 868
    if-nez v2, :cond_1b

    .line 869
    .line 870
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 871
    .line 872
    .line 873
    move-result v2

    .line 874
    if-eqz v2, :cond_1c

    .line 875
    .line 876
    :cond_1b
    iget-object v2, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 877
    .line 878
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 879
    .line 880
    .line 881
    move-result v1

    .line 882
    iput-boolean v1, v2, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 883
    .line 884
    iget-object v0, v0, Lcom/android/server/usb/UsbUI$6;->this$0:Lcom/android/server/usb/UsbUI;

    .line 885
    .line 886
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 887
    .line 888
    if-nez v1, :cond_1c

    .line 889
    .line 890
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 891
    .line 892
    if-eqz v1, :cond_1c

    .line 893
    .line 894
    iget-boolean v1, v0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 895
    .line 896
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V

    .line 897
    .line 898
    .line 899
    :cond_1c
    :goto_8
    return-void

    .line 900
    nop

    .line 901
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    :sswitch_data_0
    .sparse-switch
        -0x54bab750 -> :sswitch_2
        -0x35cf50cd -> :sswitch_1
        0x70a39740 -> :sswitch_0
    .end sparse-switch

    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    :sswitch_data_1
    .sparse-switch
        -0x7022137c -> :sswitch_5
        -0x523741fb -> :sswitch_4
        0x19d1382a -> :sswitch_3
    .end sparse-switch

    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    .line 944
    .line 945
    .line 946
    .line 947
    .line 948
    .line 949
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
