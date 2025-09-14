.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v2, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    :try_start_0
    const-string/jumbo v2, "networkInfo"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/net/NetworkInfo;

    .line 18
    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy$15;->$SwitchMap$android$net$NetworkInfo$State:[I

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    aget v2, v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    const-string v3, "Connected"

    .line 41
    .line 42
    const-string v4, "Disconnected"

    .line 43
    .line 44
    const/4 v5, 0x1

    .line 45
    if-eq v2, v5, :cond_1

    .line 46
    .line 47
    const/4 v6, 0x2

    .line 48
    if-eq v2, v6, :cond_0

    .line 49
    .line 50
    :try_start_1
    const-string v2, "Unknown"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v2, v4

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move-object v2, v3

    .line 56
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_3

    .line 61
    .line 62
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    iput-object v6, v4, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v4, Landroid/os/Message;

    .line 73
    .line 74
    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 80
    .line 81
    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const-string/jumbo v7, "mobile"

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_2

    .line 95
    .line 96
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/4 v5, 0x0

    .line 102
    iput v5, v4, Landroid/os/Message;->arg1:I

    .line 103
    .line 104
    :goto_1
    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v5, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 107
    .line 108
    iget-object v5, v5, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 109
    .line 110
    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    .line 112
    .line 113
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_4

    .line 118
    .line 119
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 122
    .line 123
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    iput-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_4
    :goto_3
    return-void

    .line 134
    :pswitch_0
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 135
    .line 136
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 141
    .line 142
    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    if-eqz v3, :cond_5

    .line 148
    .line 149
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    goto :goto_4

    .line 154
    :cond_5
    const/4 v3, 0x0

    .line 155
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-virtual/range {p0 .. p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 160
    .line 161
    .line 162
    move-result v5

    .line 163
    if-eqz v3, :cond_11

    .line 164
    .line 165
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-lez v6, :cond_11

    .line 174
    .line 175
    if-eqz v4, :cond_11

    .line 176
    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-lez v6, :cond_11

    .line 186
    .line 187
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 191
    const-string/jumbo v12, "mHandler must not be null!"

    .line 192
    .line 193
    .line 194
    const/4 v7, 0x0

    .line 195
    const-string v13, "ApplicationPolicy"

    .line 196
    .line 197
    if-eqz v6, :cond_9

    .line 198
    .line 199
    :try_start_3
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 202
    .line 203
    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 204
    .line 205
    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    const-string v8, "android.intent.extra.REPLACING"

    .line 210
    .line 211
    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 216
    .line 217
    .line 218
    move-result-object v15

    .line 219
    :cond_6
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_7

    .line 224
    .line 225
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    check-cast v6, Ljava/lang/Integer;

    .line 230
    .line 231
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    .line 236
    .line 237
    invoke-direct {v6, v11}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 238
    .line 239
    .line 240
    iget-object v7, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 241
    .line 242
    check-cast v7, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 243
    .line 244
    invoke-virtual {v7, v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    if-eqz v6, :cond_6

    .line 249
    .line 250
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 251
    .line 252
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 253
    .line 254
    const-string v7, "applicationUninstallationCount"

    .line 255
    .line 256
    invoke-virtual {v6, v11, v3, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    if-nez v14, :cond_6

    .line 260
    .line 261
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 264
    .line 265
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result v6

    .line 269
    if-nez v6, :cond_6

    .line 270
    .line 271
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 272
    .line 273
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 274
    .line 275
    const/4 v10, 0x2

    .line 276
    const/16 v16, 0x0

    .line 277
    .line 278
    const/4 v8, 0x0

    .line 279
    move-object v7, v3

    .line 280
    move v9, v11

    .line 281
    move/from16 v17, v11

    .line 282
    .line 283
    move/from16 v11, v16

    .line 284
    .line 285
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    .line 286
    .line 287
    .line 288
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 291
    .line 292
    const/high16 v10, 0x1000000

    .line 293
    .line 294
    const/4 v11, 0x0

    .line 295
    const/4 v8, 0x0

    .line 296
    move-object v7, v3

    .line 297
    move/from16 v9, v17

    .line 298
    .line 299
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;Ljava/lang/String;IIZ)Z

    .line 300
    .line 301
    .line 302
    const-string v6, "App removed, clear masks"

    .line 303
    .line 304
    invoke-static {v13, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :catch_1
    move-exception v0

    .line 309
    goto/16 :goto_8

    .line 310
    .line 311
    :cond_7
    if-nez v14, :cond_10

    .line 312
    .line 313
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 314
    .line 315
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 316
    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-nez v1, :cond_10

    .line 326
    .line 327
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 330
    .line 331
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 332
    .line 333
    if-eqz v6, :cond_8

    .line 334
    .line 335
    const/4 v7, 0x1

    .line 336
    invoke-static {v6, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 341
    .line 342
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 343
    .line 344
    .line 345
    goto/16 :goto_7

    .line 346
    .line 347
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 348
    .line 349
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    throw v0

    .line 353
    :cond_9
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    .line 354
    .line 355
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    move-result v6

    .line 359
    if-eqz v6, :cond_b

    .line 360
    .line 361
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 364
    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-static {v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-nez v1, :cond_10

    .line 374
    .line 375
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 378
    .line 379
    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result v1

    .line 383
    if-nez v1, :cond_10

    .line 384
    .line 385
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 386
    .line 387
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 388
    .line 389
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 390
    .line 391
    if-eqz v6, :cond_a

    .line 392
    .line 393
    invoke-static {v6, v7, v5, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 398
    .line 399
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 400
    .line 401
    .line 402
    goto/16 :goto_7

    .line 403
    .line 404
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    .line 405
    .line 406
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    throw v0

    .line 410
    :cond_b
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    .line 411
    .line 412
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    move-result v6

    .line 416
    if-eqz v6, :cond_10

    .line 417
    .line 418
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 419
    .line 420
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 421
    .line 422
    iget-object v6, v6, Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 423
    .line 424
    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    .line 425
    .line 426
    .line 427
    move-result-object v6

    .line 428
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 429
    .line 430
    .line 431
    move-result-object v6

    .line 432
    :cond_c
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 433
    .line 434
    .line 435
    move-result v8

    .line 436
    if-eqz v8, :cond_d

    .line 437
    .line 438
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    check-cast v8, Ljava/lang/Integer;

    .line 443
    .line 444
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 445
    .line 446
    .line 447
    move-result v8

    .line 448
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    .line 449
    .line 450
    invoke-direct {v9, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 451
    .line 452
    .line 453
    iget-object v10, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v10, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 456
    .line 457
    invoke-virtual {v10, v9, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    .line 458
    .line 459
    .line 460
    move-result-object v9

    .line 461
    if-eqz v9, :cond_c

    .line 462
    .line 463
    iget-object v9, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 464
    .line 465
    check-cast v9, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 466
    .line 467
    const-string v10, "applicationInstallationCount"

    .line 468
    .line 469
    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    const-string v8, "App install count incremented"

    .line 473
    .line 474
    invoke-static {v13, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    .line 476
    .line 477
    goto :goto_6

    .line 478
    :cond_d
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 481
    .line 482
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    if-eqz v6, :cond_e

    .line 487
    .line 488
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 491
    .line 492
    invoke-virtual {v6, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    :cond_e
    iget-object v6, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 496
    .line 497
    check-cast v6, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 498
    .line 499
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    invoke-static {v6, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    .line 504
    .line 505
    .line 506
    move-result v1

    .line 507
    if-nez v1, :cond_10

    .line 508
    .line 509
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 510
    .line 511
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 512
    .line 513
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 514
    .line 515
    if-eqz v6, :cond_f

    .line 516
    .line 517
    invoke-static {v6, v7, v5, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 518
    .line 519
    .line 520
    move-result-object v6

    .line 521
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mHandler:Landroid/os/Handler;

    .line 522
    .line 523
    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 524
    .line 525
    .line 526
    goto :goto_7

    .line 527
    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    .line 528
    .line 529
    invoke-direct {v0, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    throw v0

    .line 533
    :cond_10
    :goto_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-nez v1, :cond_11

    .line 538
    .line 539
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 542
    .line 543
    invoke-static {v0, v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mgetProvidersFromPackage(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-virtual {v0, v5, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(ILjava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 548
    .line 549
    .line 550
    goto :goto_9

    .line 551
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 552
    .line 553
    .line 554
    :cond_11
    :goto_9
    return-void

    .line 555
    :pswitch_1
    const-string v1, "ApplicationPolicy"

    .line 556
    .line 557
    const-string v2, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 558
    .line 559
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 563
    .line 564
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 565
    .line 566
    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 567
    .line 568
    .line 569
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 570
    .line 571
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 572
    .line 573
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mProcessStats:Lcom/android/server/enterprise/application/ProcessStats;

    .line 574
    .line 575
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 576
    .line 577
    .line 578
    new-instance v2, Ljava/lang/StringBuilder;

    .line 579
    .line 580
    const-string v3, "Init: "

    .line 581
    .line 582
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    const-string v3, "ProcessStats"

    .line 593
    .line 594
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    .line 596
    .line 597
    const/4 v2, 0x1

    .line 598
    iput-boolean v2, v1, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 599
    .line 600
    invoke-virtual {v1}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    .line 601
    .line 602
    .line 603
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 604
    .line 605
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 606
    .line 607
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 608
    .line 609
    const-string/jumbo v2, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    .line 610
    .line 611
    .line 612
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 617
    .line 618
    .line 619
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 620
    .line 621
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 622
    .line 623
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 624
    .line 625
    const-string/jumbo v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    .line 626
    .line 627
    .line 628
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 629
    .line 630
    .line 631
    move-result-object v1

    .line 632
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 633
    .line 634
    .line 635
    return-void

    .line 636
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 637
    .line 638
    .line 639
    move-result-object v2

    .line 640
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 641
    .line 642
    .line 643
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    if-eqz v2, :cond_12

    .line 648
    .line 649
    const-string v2, "ApplicationPolicy"

    .line 650
    .line 651
    const-string v3, "System UI update received - update system UI monitor"

    .line 652
    .line 653
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .line 655
    .line 656
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 657
    .line 658
    .line 659
    const/4 v3, 0x0

    .line 660
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 661
    .line 662
    .line 663
    move-result v1

    .line 664
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 665
    .line 666
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 667
    .line 668
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemUIMonitor(I)V

    .line 669
    .line 670
    .line 671
    :cond_12
    return-void

    .line 672
    :pswitch_3
    const-string v1, "ApplicationPolicy"

    .line 673
    .line 674
    const-string/jumbo v2, "boot completed - refreshWidgetStatus"

    .line 675
    .line 676
    .line 677
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .line 679
    .line 680
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 683
    .line 684
    const/4 v2, 0x1

    .line 685
    iput-boolean v2, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mBootCompleted:Z

    .line 686
    .line 687
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 688
    .line 689
    const-string/jumbo v2, "user"

    .line 690
    .line 691
    .line 692
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    move-result-object v1

    .line 696
    check-cast v1, Landroid/os/UserManager;

    .line 697
    .line 698
    if-eqz v1, :cond_13

    .line 699
    .line 700
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    if-eqz v1, :cond_13

    .line 705
    .line 706
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 711
    .line 712
    .line 713
    move-result v2

    .line 714
    if-eqz v2, :cond_13

    .line 715
    .line 716
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 717
    .line 718
    .line 719
    move-result-object v2

    .line 720
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 721
    .line 722
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 723
    .line 724
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 725
    .line 726
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 727
    .line 728
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 729
    .line 730
    .line 731
    goto :goto_a

    .line 732
    :cond_13
    return-void

    .line 733
    :pswitch_4
    const-string v2, "User switched"

    .line 734
    .line 735
    const-string v3, "ApplicationPolicy"

    .line 736
    .line 737
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .line 739
    .line 740
    sget-object v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    .line 741
    .line 742
    if-eqz v2, :cond_18

    .line 743
    .line 744
    move-object v4, v2

    .line 745
    check-cast v4, Ljava/util/HashMap;

    .line 746
    .line 747
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    .line 748
    .line 749
    .line 750
    move-result v4

    .line 751
    if-eqz v4, :cond_14

    .line 752
    .line 753
    goto :goto_c

    .line 754
    :cond_14
    const-string v4, "android.intent.extra.user_handle"

    .line 755
    .line 756
    const/4 v5, 0x0

    .line 757
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 758
    .line 759
    .line 760
    move-result v1

    .line 761
    check-cast v2, Ljava/util/HashMap;

    .line 762
    .line 763
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 764
    .line 765
    .line 766
    move-result-object v2

    .line 767
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    :cond_15
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 772
    .line 773
    .line 774
    move-result v4

    .line 775
    if-eqz v4, :cond_18

    .line 776
    .line 777
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    check-cast v4, Ljava/lang/Long;

    .line 782
    .line 783
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 784
    .line 785
    .line 786
    move-result-wide v5

    .line 787
    long-to-int v7, v5

    .line 788
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    .line 789
    .line 790
    .line 791
    move-result v8

    .line 792
    if-ne v1, v8, :cond_15

    .line 793
    .line 794
    iget-object v8, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 795
    .line 796
    check-cast v8, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 797
    .line 798
    iget-object v8, v8, Lcom/android/server/enterprise/application/ApplicationPolicy;->mPersonaManagerAdapter:Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 799
    .line 800
    check-cast v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 801
    .line 802
    iget-object v9, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 803
    .line 804
    if-nez v9, :cond_16

    .line 805
    .line 806
    iget-object v9, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mContext:Landroid/content/Context;

    .line 807
    .line 808
    const-string/jumbo v10, "user"

    .line 809
    .line 810
    .line 811
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 812
    .line 813
    .line 814
    move-result-object v9

    .line 815
    check-cast v9, Landroid/os/UserManager;

    .line 816
    .line 817
    iput-object v9, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 818
    .line 819
    :cond_16
    iget-object v8, v8, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->mUserMgr:Landroid/os/UserManager;

    .line 820
    .line 821
    invoke-virtual {v8, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 822
    .line 823
    .line 824
    move-result-object v8

    .line 825
    if-eqz v8, :cond_17

    .line 826
    .line 827
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 828
    .line 829
    .line 830
    move-result v8

    .line 831
    if-eqz v8, :cond_17

    .line 832
    .line 833
    const-string v0, "Persona no longer valid removing from cache"

    .line 834
    .line 835
    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .line 837
    .line 838
    sget-object v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    .line 839
    .line 840
    check-cast v0, Ljava/util/HashMap;

    .line 841
    .line 842
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    .line 844
    .line 845
    goto :goto_c

    .line 846
    :cond_17
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 847
    .line 848
    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 849
    .line 850
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mstartCachedAppsForActiveUser(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    .line 851
    .line 852
    .line 853
    goto :goto_b

    .line 854
    :cond_18
    :goto_c
    return-void

    .line 855
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v2

    .line 859
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 860
    .line 861
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v2

    .line 865
    if-eqz v2, :cond_19

    .line 866
    .line 867
    const-string v2, "android.intent.extra.user_handle"

    .line 868
    .line 869
    const/4 v3, 0x0

    .line 870
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 871
    .line 872
    .line 873
    move-result v1

    .line 874
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 875
    .line 876
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 877
    .line 878
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 879
    .line 880
    .line 881
    new-instance v2, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    const-string/jumbo v3, "onUserRemoved() userId = "

    .line 884
    .line 885
    .line 886
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 887
    .line 888
    .line 889
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    const-string v2, "ApplicationPolicy"

    .line 897
    .line 898
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    .line 900
    .line 901
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 902
    .line 903
    const-string/jumbo v2, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardBlackList"

    .line 904
    .line 905
    .line 906
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 907
    .line 908
    .line 909
    move-result-object v2

    .line 910
    invoke-static {v1, v2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 911
    .line 912
    .line 913
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 914
    .line 915
    const-string/jumbo v1, "content://com.sec.knox.provider2/ApplicationPolicy/getPackagesFromDisableClipboardWhiteList"

    .line 916
    .line 917
    .line 918
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 919
    .line 920
    .line 921
    move-result-object v1

    .line 922
    invoke-static {v0, v1}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    .line 923
    .line 924
    .line 925
    :cond_19
    return-void

    .line 926
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 927
    .line 928
    .line 929
    move-result-object v2

    .line 930
    const-string v3, "android.intent.action.USER_UNLOCKED"

    .line 931
    .line 932
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 933
    .line 934
    .line 935
    move-result v2

    .line 936
    if-eqz v2, :cond_1b

    .line 937
    .line 938
    iget-object v2, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast v2, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 941
    .line 942
    invoke-static {v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$menablePreventStart(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    .line 943
    .line 944
    .line 945
    const-string/jumbo v2, "user unlocked - refreshWidgetStatus"

    .line 946
    .line 947
    .line 948
    const-string v3, "ApplicationPolicy"

    .line 949
    .line 950
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    .line 952
    .line 953
    const-string v2, "android.intent.extra.user_handle"

    .line 954
    .line 955
    const/16 v4, -0x2710

    .line 956
    .line 957
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 958
    .line 959
    .line 960
    move-result v1

    .line 961
    if-eq v1, v4, :cond_1a

    .line 962
    .line 963
    const-string/jumbo v2, "calling refreshWidgetStatus for userId "

    .line 964
    .line 965
    .line 966
    invoke-static {v1, v2, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 967
    .line 968
    .line 969
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 970
    .line 971
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 972
    .line 973
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(I)V

    .line 974
    .line 975
    .line 976
    goto :goto_d

    .line 977
    :cond_1a
    const-string/jumbo v0, "could not call refreshWidgetStatus due to USER_NULL userId "

    .line 978
    .line 979
    .line 980
    invoke-static {v1, v0, v3}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 981
    .line 982
    .line 983
    :cond_1b
    :goto_d
    return-void

    .line 984
    :pswitch_7
    const-string/jumbo v2, "mInstallReceiver - packageName = "

    .line 985
    .line 986
    .line 987
    const-string/jumbo v3, "mInstallReceiver - sessionId = "

    .line 988
    .line 989
    .line 990
    const-string v4, "ApplicationPolicy"

    .line 991
    .line 992
    new-instance v5, Ljava/lang/StringBuilder;

    .line 993
    .line 994
    const-string/jumbo v6, "onReceive - mInstallReceiver "

    .line 995
    .line 996
    .line 997
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v5

    .line 1007
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    .line 1009
    .line 1010
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v4

    .line 1014
    if-eqz v4, :cond_1d

    .line 1015
    .line 1016
    const-string/jumbo v4, "com.samsung.android.knox.intent.action.INSTALL_COMMIT_INTERNAL"

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v5

    .line 1023
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1024
    .line 1025
    .line 1026
    move-result v4

    .line 1027
    if-eqz v4, :cond_1d

    .line 1028
    .line 1029
    iget-object v4, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1030
    .line 1031
    check-cast v4, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1032
    .line 1033
    iget-object v4, v4, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    .line 1034
    .line 1035
    monitor-enter v4

    .line 1036
    :try_start_4
    const-string v5, "android.content.pm.extra.SESSION_ID"

    .line 1037
    .line 1038
    const/4 v6, 0x0

    .line 1039
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1040
    .line 1041
    .line 1042
    move-result v5

    .line 1043
    const-string v6, "ApplicationPolicy"

    .line 1044
    .line 1045
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1051
    .line 1052
    .line 1053
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v3

    .line 1057
    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    .line 1059
    .line 1060
    iget-object v3, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1061
    .line 1062
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1063
    .line 1064
    iget-object v3, v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallMap:Ljava/util/Map;

    .line 1065
    .line 1066
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v6

    .line 1070
    check-cast v3, Ljava/util/HashMap;

    .line 1071
    .line 1072
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v3

    .line 1076
    check-cast v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;

    .line 1077
    .line 1078
    if-eqz v3, :cond_1c

    .line 1079
    .line 1080
    iput v5, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mSessionId:I

    .line 1081
    .line 1082
    const-string v6, "android.content.pm.extra.PACKAGE_NAME"

    .line 1083
    .line 1084
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v6

    .line 1088
    iput-object v6, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    .line 1089
    .line 1090
    const-string v6, "android.content.pm.extra.STATUS"

    .line 1091
    .line 1092
    const/4 v7, 0x1

    .line 1093
    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 1094
    .line 1095
    .line 1096
    move-result v1

    .line 1097
    iput v1, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    .line 1098
    .line 1099
    const-string v1, "ApplicationPolicy"

    .line 1100
    .line 1101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1104
    .line 1105
    .line 1106
    iget-object v2, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mPackageName:Ljava/lang/String;

    .line 1107
    .line 1108
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    .line 1110
    .line 1111
    const-string v2, ", statusCode = "

    .line 1112
    .line 1113
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    .line 1115
    .line 1116
    iget v2, v3, Lcom/android/server/enterprise/application/ApplicationPolicy$InstallData;->mStatusCode:I

    .line 1117
    .line 1118
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v2

    .line 1125
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    .line 1127
    .line 1128
    iget-object v1, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1129
    .line 1130
    check-cast v1, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1131
    .line 1132
    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallMap:Ljava/util/Map;

    .line 1133
    .line 1134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v2

    .line 1138
    check-cast v1, Ljava/util/HashMap;

    .line 1139
    .line 1140
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    .line 1142
    .line 1143
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy$4;->this$0:Ljava/lang/Object;

    .line 1144
    .line 1145
    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1146
    .line 1147
    iget-object v0, v0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mInstallAppLock:Ljava/lang/Object;

    .line 1148
    .line 1149
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1150
    .line 1151
    .line 1152
    goto :goto_e

    .line 1153
    :catchall_0
    move-exception v0

    .line 1154
    goto :goto_f

    .line 1155
    :cond_1c
    :goto_e
    monitor-exit v4

    .line 1156
    goto :goto_10

    .line 1157
    :goto_f
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1158
    throw v0

    .line 1159
    :cond_1d
    :goto_10
    return-void

    .line 1160
    nop

    .line 1161
    :pswitch_data_0
    .packed-switch 0x0
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
