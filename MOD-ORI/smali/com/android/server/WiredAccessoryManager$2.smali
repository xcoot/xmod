.class public final Lcom/android/server/WiredAccessoryManager$2;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

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
    const/4 v3, 0x1

    .line 8
    const/16 v4, 0x400

    .line 9
    .line 10
    const/4 v5, 0x4

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x2

    .line 13
    if-eq v2, v3, :cond_9

    .line 14
    .line 15
    if-eq v2, v7, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-eq v2, v0, :cond_0

    .line 19
    .line 20
    goto/16 :goto_c

    .line 21
    .line 22
    :cond_0
    iget-object v0, v1, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/view/ContextThemeWrapper;

    .line 28
    .line 29
    iget-object v4, v0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    const v5, 0x103012b

    .line 32
    .line 33
    .line 34
    invoke-direct {v2, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const v4, 0x10405bf

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    .line 56
    .line 57
    iget-object v0, v1, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 62
    .line 63
    .line 64
    goto/16 :goto_c

    .line 65
    .line 66
    :cond_1
    iget-object v0, v1, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 67
    .line 68
    iget-boolean v2, v0, Lcom/android/server/WiredAccessoryManager;->mUseDevInputEventForAudioJack:Z

    .line 69
    .line 70
    if-eqz v2, :cond_5

    .line 71
    .line 72
    iget-object v2, v0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 75
    .line 76
    const/4 v8, -0x1

    .line 77
    const/16 v9, -0x100

    .line 78
    .line 79
    invoke-interface {v2, v8, v9, v7}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ne v2, v3, :cond_2

    .line 84
    .line 85
    move v2, v5

    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move v2, v6

    .line 88
    :goto_0
    iget-object v7, v0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 89
    .line 90
    iget-object v7, v7, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 91
    .line 92
    invoke-interface {v7, v8, v9, v5}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-ne v5, v3, :cond_3

    .line 97
    .line 98
    or-int/lit8 v2, v2, 0x10

    .line 99
    .line 100
    :cond_3
    iget-object v5, v0, Lcom/android/server/WiredAccessoryManager;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 101
    .line 102
    iget-object v5, v5, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    .line 103
    .line 104
    const/4 v7, 0x6

    .line 105
    invoke-interface {v5, v8, v9, v7}, Lcom/android/server/input/NativeInputManagerService;->getSwitchState(III)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    if-ne v5, v3, :cond_4

    .line 110
    .line 111
    or-int/lit8 v2, v2, 0x40

    .line 112
    .line 113
    :cond_4
    const/16 v3, 0x54

    .line 114
    .line 115
    invoke-virtual {v0, v2, v3}, Lcom/android/server/WiredAccessoryManager;->notifyWiredAccessoryChanged(II)V

    .line 116
    .line 117
    .line 118
    :cond_5
    iget-object v2, v0, Lcom/android/server/WiredAccessoryManager;->mObserver:Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;

    .line 119
    .line 120
    iget-object v0, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 121
    .line 122
    iget-object v8, v0, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 123
    .line 124
    monitor-enter v8

    .line 125
    move v3, v6

    .line 126
    :goto_1
    :try_start_0
    iget-object v0, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 127
    .line 128
    check-cast v0, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-ge v3, v0, :cond_7

    .line 135
    .line 136
    iget-object v0, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 137
    .line 138
    check-cast v0, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    move-object v5, v0

    .line 145
    check-cast v5, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .line 147
    :try_start_1
    new-instance v7, Ljava/io/FileReader;

    .line 148
    .line 149
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    .line 155
    .line 156
    :try_start_2
    new-array v0, v4, [C

    .line 157
    .line 158
    invoke-virtual {v7, v0, v6, v4}, Ljava/io/FileReader;->read([CII)I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    new-instance v10, Ljava/lang/String;

    .line 163
    .line 164
    invoke-direct {v10, v0, v6, v9}, Ljava/lang/String;-><init>([CII)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V

    .line 176
    .line 177
    .line 178
    if-lez v0, :cond_6

    .line 179
    .line 180
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    iget-object v9, v5, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 185
    .line 186
    invoke-virtual {v2, v0, v7, v9}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->updateStateLocked(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :catchall_0
    move-exception v0

    .line 191
    goto/16 :goto_6

    .line 192
    .line 193
    :catch_0
    move-exception v0

    .line 194
    goto :goto_3

    .line 195
    :catchall_1
    move-exception v0

    .line 196
    move-object v9, v0

    .line 197
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :catchall_2
    move-exception v0

    .line 202
    move-object v7, v0

    .line 203
    :try_start_5
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    :goto_2
    throw v9
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 207
    :goto_3
    :try_start_6
    const-string v7, "WiredAccessoryManager"

    .line 208
    .line 209
    new-instance v9, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v10, "Error while attempting to determine initial switch state for "

    .line 215
    .line 216
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    iget-object v5, v5, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->mDevName:Ljava/lang/String;

    .line 220
    .line 221
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-static {v7, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :catch_1
    const-string v0, "WiredAccessoryManager"

    .line 233
    .line 234
    new-instance v7, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v5}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getSwitchStatePath()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v5, " not found while attempting to determine initial switch state"

    .line 247
    .line 248
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .line 257
    .line 258
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 259
    .line 260
    goto/16 :goto_1

    .line 261
    .line 262
    :cond_7
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 263
    :goto_5
    iget-object v0, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 264
    .line 265
    check-cast v0, Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-ge v6, v0, :cond_8

    .line 272
    .line 273
    iget-object v0, v2, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver;->mUEventInfo:Ljava/util/List;

    .line 274
    .line 275
    check-cast v0, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    check-cast v0, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/android/server/WiredAccessoryManager$WiredAccessoryObserver$UEventInfo;->getDevPath()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    const-string v3, "DEVPATH="

    .line 288
    .line 289
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v2, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    add-int/lit8 v6, v6, 0x1

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_8
    iget-object v0, v1, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 300
    .line 301
    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 302
    .line 303
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_c

    .line 307
    .line 308
    :goto_6
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 309
    throw v0

    .line 310
    :cond_9
    iget-object v2, v1, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 311
    .line 312
    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 313
    .line 314
    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 315
    .line 316
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 317
    .line 318
    check-cast v0, Ljava/lang/String;

    .line 319
    .line 320
    iget-object v10, v2, Lcom/android/server/WiredAccessoryManager;->mLock:Ljava/lang/Object;

    .line 321
    .line 322
    monitor-enter v10

    .line 323
    const/16 v11, 0x3f

    .line 324
    .line 325
    move v12, v3

    .line 326
    :goto_7
    if-eqz v11, :cond_14

    .line 327
    .line 328
    and-int v13, v12, v11

    .line 329
    .line 330
    if-eqz v13, :cond_13

    .line 331
    .line 332
    and-int v13, v8, v12

    .line 333
    .line 334
    and-int v14, v9, v12

    .line 335
    .line 336
    if-eq v13, v14, :cond_12

    .line 337
    .line 338
    if-eqz v13, :cond_a

    .line 339
    .line 340
    move v13, v3

    .line 341
    goto :goto_8

    .line 342
    :cond_a
    move v13, v6

    .line 343
    :goto_8
    if-ne v12, v3, :cond_b

    .line 344
    .line 345
    const v14, -0x7ffffff0

    .line 346
    .line 347
    .line 348
    move v15, v14

    .line 349
    move v14, v5

    .line 350
    goto :goto_a

    .line 351
    :cond_b
    const/16 v14, 0x8

    .line 352
    .line 353
    if-ne v12, v7, :cond_c

    .line 354
    .line 355
    :goto_9
    move v15, v6

    .line 356
    goto :goto_a

    .line 357
    :cond_c
    const/16 v15, 0x20

    .line 358
    .line 359
    if-ne v12, v15, :cond_d

    .line 360
    .line 361
    const/high16 v14, 0x20000

    .line 362
    .line 363
    goto :goto_9

    .line 364
    :cond_d
    if-ne v12, v5, :cond_e

    .line 365
    .line 366
    const/16 v14, 0x800

    .line 367
    .line 368
    goto :goto_9

    .line 369
    :cond_e
    if-ne v12, v14, :cond_f

    .line 370
    .line 371
    const/16 v14, 0x1000

    .line 372
    .line 373
    goto :goto_9

    .line 374
    :cond_f
    const/16 v14, 0x10

    .line 375
    .line 376
    if-ne v12, v14, :cond_11

    .line 377
    .line 378
    move v14, v4

    .line 379
    goto :goto_9

    .line 380
    :goto_a
    :try_start_8
    const-string v3, ""

    .line 381
    .line 382
    if-eqz v14, :cond_10

    .line 383
    .line 384
    iget-object v4, v2, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 385
    .line 386
    invoke-virtual {v4, v14, v13, v3, v0}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    :cond_10
    if-eqz v15, :cond_12

    .line 390
    .line 391
    iget-object v4, v2, Lcom/android/server/WiredAccessoryManager;->mAudioManager:Landroid/media/AudioManager;

    .line 392
    .line 393
    invoke-virtual {v4, v15, v13, v3, v0}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto :goto_b

    .line 397
    :cond_11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 398
    .line 399
    const-string/jumbo v4, "setDeviceState() invalid headset type: "

    .line 400
    .line 401
    .line 402
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    const-string v4, "WiredAccessoryManager"

    .line 413
    .line 414
    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    :cond_12
    :goto_b
    not-int v3, v12

    .line 418
    and-int/2addr v3, v11

    .line 419
    move v11, v3

    .line 420
    :cond_13
    shl-int/lit8 v12, v12, 0x1

    .line 421
    .line 422
    const/4 v3, 0x1

    .line 423
    const/16 v4, 0x400

    .line 424
    .line 425
    goto :goto_7

    .line 426
    :cond_14
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 427
    iget-object v0, v1, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    .line 428
    .line 429
    iget-object v0, v0, Lcom/android/server/WiredAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 430
    .line 431
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 432
    .line 433
    .line 434
    :goto_c
    return-void

    .line 435
    :catchall_3
    move-exception v0

    .line 436
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 437
    throw v0
.end method
