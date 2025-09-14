.class public final Lcom/android/server/pm/ShortcutService$5;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/pm/ShortcutService$5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

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
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    iget v2, v1, Lcom/android/server/pm/ShortcutService$5;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-boolean v0, Lcom/android/server/pm/ShortcutService;->DEBUG_REBOOT:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "ShortcutService"

    .line 15
    .line 16
    const-string v2, "Shutdown broadcast received."

    .line 17
    .line 18
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 22
    .line 23
    iget-object v2, v0, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v2

    .line 26
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 27
    .line 28
    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    .line 31
    .line 32
    invoke-virtual {v3, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 39
    .line 40
    iget-object v3, v0, Lcom/android/server/pm/ShortcutService;->mHandler:Landroid/os/Handler;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mSaveDirtyInfoRunner:Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda9;

    .line 43
    .line 44
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 48
    .line 49
    new-instance v3, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;

    .line 50
    .line 51
    const/16 v4, 0xa

    .line 52
    .line 53
    invoke-direct {v3, v4}, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda4;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutService;->forEachLoadedUserLocked(Ljava/util/function/Consumer;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->saveDirtyInfo()V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/pm/ShortcutService;->mShutdown:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    .line 74
    .line 75
    monitor-exit v2

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw v0

    .line 79
    :pswitch_0
    const-string v2, "adding package: "

    .line 80
    .line 81
    const-string/jumbo v3, "replacing package: "

    .line 82
    .line 83
    .line 84
    const-string v4, "archiving package: "

    .line 85
    .line 86
    const-string/jumbo v5, "removing package: "

    .line 87
    .line 88
    .line 89
    const-string v6, "changing package: "

    .line 90
    .line 91
    const-string v7, "Skip PACKAGE_CHANGED intent from Emergency mode: "

    .line 92
    .line 93
    const-string v8, "clearing data for package: "

    .line 94
    .line 95
    const-string/jumbo v9, "received package broadcast intent: "

    .line 96
    .line 97
    .line 98
    const-string v10, "Intent broadcast does not contain package name: "

    .line 99
    .line 100
    const-string v11, "android.intent.extra.user_handle"

    .line 101
    .line 102
    const/16 v12, -0x2710

    .line 103
    .line 104
    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-ne v11, v12, :cond_2

    .line 109
    .line 110
    const-string v1, "ShortcutService"

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v3, "Intent broadcast does not contain user handle: "

    .line 115
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    goto/16 :goto_b

    .line 130
    .line 131
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    iget-object v13, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 136
    .line 137
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 141
    .line 142
    .line 143
    move-result-wide v13

    .line 144
    :try_start_1
    iget-object v15, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 145
    .line 146
    iget-object v15, v15, Lcom/android/server/pm/ShortcutService;->mServiceLock:Ljava/lang/Object;

    .line 147
    .line 148
    monitor-enter v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 149
    move-object/from16 p1, v2

    .line 150
    .line 151
    :try_start_2
    iget-object v2, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 152
    .line 153
    invoke-virtual {v2, v11}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_3

    .line 158
    .line 159
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 161
    .line 162
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 166
    .line 167
    .line 168
    goto/16 :goto_b

    .line 169
    .line 170
    :catchall_1
    move-exception v0

    .line 171
    move-wide/from16 v16, v13

    .line 172
    .line 173
    goto/16 :goto_9

    .line 174
    .line 175
    :cond_3
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 176
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    if-eqz v2, :cond_4

    .line 181
    .line 182
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    goto :goto_3

    .line 187
    :catchall_2
    move-exception v0

    .line 188
    move-wide/from16 v16, v13

    .line 189
    .line 190
    goto/16 :goto_c

    .line 191
    .line 192
    :catch_0
    move-exception v0

    .line 193
    move-wide/from16 v16, v13

    .line 194
    .line 195
    goto/16 :goto_a

    .line 196
    .line 197
    :cond_4
    const/4 v2, 0x0

    .line 198
    :goto_3
    if-nez v2, :cond_5

    .line 199
    .line 200
    const-string v2, "ShortcutService"

    .line 201
    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 215
    .line 216
    .line 217
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_5
    :try_start_5
    const-string v10, "android.intent.extra.REPLACING"

    .line 221
    .line 222
    const/4 v15, 0x0

    .line 223
    invoke-virtual {v0, v10, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 224
    .line 225
    .line 226
    move-result v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 227
    move-wide/from16 v16, v13

    .line 228
    .line 229
    :try_start_6
    const-string v13, "android.intent.extra.ARCHIVAL"

    .line 230
    .line 231
    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 232
    .line 233
    .line 234
    move-result v13

    .line 235
    const-string v14, "ShortcutService"

    .line 236
    .line 237
    new-instance v15, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v9

    .line 249
    invoke-static {v14, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    .line 253
    .line 254
    .line 255
    move-result v9

    .line 256
    const/4 v15, 0x1

    .line 257
    const/4 v14, -0x1

    .line 258
    sparse-switch v9, :sswitch_data_0

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :sswitch_0
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    .line 263
    .line 264
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    if-eqz v9, :cond_6

    .line 269
    .line 270
    const/4 v9, 0x0

    .line 271
    goto :goto_5

    .line 272
    :catchall_3
    move-exception v0

    .line 273
    goto/16 :goto_c

    .line 274
    .line 275
    :catch_1
    move-exception v0

    .line 276
    goto/16 :goto_a

    .line 277
    .line 278
    :sswitch_1
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    .line 279
    .line 280
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v9

    .line 284
    if-eqz v9, :cond_6

    .line 285
    .line 286
    move v9, v15

    .line 287
    goto :goto_5

    .line 288
    :sswitch_2
    const-string v9, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 289
    .line 290
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v9

    .line 294
    if-eqz v9, :cond_6

    .line 295
    .line 296
    const/4 v9, 0x3

    .line 297
    goto :goto_5

    .line 298
    :sswitch_3
    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    .line 299
    .line 300
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    .line 302
    .line 303
    move-result v9

    .line 304
    if-eqz v9, :cond_6

    .line 305
    .line 306
    const/4 v9, 0x2

    .line 307
    goto :goto_5

    .line 308
    :cond_6
    :goto_4
    move v9, v14

    .line 309
    :goto_5
    if-eqz v9, :cond_e

    .line 310
    .line 311
    if-eq v9, v15, :cond_a

    .line 312
    .line 313
    const/4 v3, 0x2

    .line 314
    if-eq v9, v3, :cond_8

    .line 315
    .line 316
    const/4 v3, 0x3

    .line 317
    if-eq v9, v3, :cond_7

    .line 318
    .line 319
    goto/16 :goto_7

    .line 320
    .line 321
    :cond_7
    const-string v0, "ShortcutService"

    .line 322
    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    const-string v4, " userId"

    .line 332
    .line 333
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 347
    .line 348
    invoke-static {v0, v2, v11}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageDataCleared(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 349
    .line 350
    .line 351
    goto/16 :goto_7

    .line 352
    .line 353
    :cond_8
    const-string v3, "EM_PKG_HADNLER_ID"

    .line 354
    .line 355
    invoke-virtual {v0, v3, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    move-result v0

    .line 359
    if-eq v0, v14, :cond_9

    .line 360
    .line 361
    const-string v3, "ShortcutService"

    .line 362
    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    .line 364
    .line 365
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    const-string v0, ", pkg: "

    .line 372
    .line 373
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    goto/16 :goto_7

    .line 387
    .line 388
    :cond_9
    const-string v0, "ShortcutService"

    .line 389
    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    .line 391
    .line 392
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    const-string v4, " userId"

    .line 399
    .line 400
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 414
    .line 415
    invoke-static {v0, v2, v11}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    goto/16 :goto_7

    .line 419
    .line 420
    :cond_a
    if-eqz v10, :cond_b

    .line 421
    .line 422
    if-eqz v10, :cond_10

    .line 423
    .line 424
    if-eqz v13, :cond_10

    .line 425
    .line 426
    :cond_b
    if-nez v10, :cond_c

    .line 427
    .line 428
    const-string v0, "ShortcutService"

    .line 429
    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    const-string v4, " userId"

    .line 439
    .line 440
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    goto :goto_6

    .line 454
    :cond_c
    if-eqz v13, :cond_d

    .line 455
    .line 456
    const-string v0, "ShortcutService"

    .line 457
    .line 458
    new-instance v3, Ljava/lang/StringBuilder;

    .line 459
    .line 460
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    const-string v4, " userId"

    .line 467
    .line 468
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v3

    .line 478
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    .line 480
    .line 481
    :cond_d
    :goto_6
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 482
    .line 483
    invoke-virtual {v0, v2, v11}, Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V

    .line 484
    .line 485
    .line 486
    goto :goto_7

    .line 487
    :cond_e
    if-eqz v10, :cond_f

    .line 488
    .line 489
    const-string v0, "ShortcutService"

    .line 490
    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    .line 492
    .line 493
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .line 498
    .line 499
    const-string v3, " userId"

    .line 500
    .line 501
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    .line 503
    .line 504
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v3

    .line 511
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    .line 513
    .line 514
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 515
    .line 516
    invoke-static {v0, v2, v11}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 517
    .line 518
    .line 519
    goto :goto_7

    .line 520
    :cond_f
    const-string v0, "ShortcutService"

    .line 521
    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    .line 523
    .line 524
    move-object/from16 v4, p1

    .line 525
    .line 526
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    .line 531
    .line 532
    const-string v4, " userId"

    .line 533
    .line 534
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v3

    .line 544
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 548
    .line 549
    invoke-static {v0, v2, v11}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 550
    .line 551
    .line 552
    :cond_10
    :goto_7
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 553
    .line 554
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 555
    .line 556
    .line 557
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    .line 559
    .line 560
    goto :goto_b

    .line 561
    :goto_9
    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 562
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 563
    :catchall_4
    move-exception v0

    .line 564
    goto :goto_9

    .line 565
    :goto_a
    :try_start_9
    iget-object v2, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 566
    .line 567
    const-string v3, "Exception in mPackageMonitor.onReceive"

    .line 568
    .line 569
    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 570
    .line 571
    .line 572
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 573
    .line 574
    goto :goto_8

    .line 575
    :goto_b
    return-void

    .line 576
    :goto_c
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 577
    .line 578
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 579
    .line 580
    .line 581
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 582
    .line 583
    .line 584
    throw v0

    .line 585
    :pswitch_1
    iget-object v2, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 586
    .line 587
    iget-object v2, v2, Lcom/android/server/pm/ShortcutService;->mBootCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 588
    .line 589
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    if-nez v2, :cond_11

    .line 594
    .line 595
    goto :goto_d

    .line 596
    :cond_11
    :try_start_a
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 597
    .line 598
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v0

    .line 602
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    if-eqz v0, :cond_12

    .line 607
    .line 608
    iget-object v0, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 609
    .line 610
    const/4 v2, 0x0

    .line 611
    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutService;->handleLocaleChanged(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 612
    .line 613
    .line 614
    goto :goto_d

    .line 615
    :catch_2
    move-exception v0

    .line 616
    iget-object v1, v1, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    .line 617
    .line 618
    const-string v2, "Exception in mReceiver.onReceive"

    .line 619
    .line 620
    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    .line 622
    .line 623
    :cond_12
    :goto_d
    return-void

    .line 624
    nop

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_3
        0xff13fb5 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch
.end method
