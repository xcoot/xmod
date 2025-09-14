.class public final Lcom/android/server/am/pds/PDSHandler$MainHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public extras:Landroid/os/Bundle;

.field public final mPDSController:Lcom/android/server/am/PDSController;

.field public final synthetic this$0:Lcom/android/server/am/pds/PDSHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/am/pds/PDSHandler$PDSHandlerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSHandler;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/android/server/am/pds/PDSHandler$MainHandler;->this$0:Lcom/android/server/am/pds/PDSHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 10
    .line 11
    sget-object v0, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 12
    .line 13
    sget-object v0, Lcom/android/server/am/PDSController$PDSControllerHolder;->INSTANCE:Lcom/android/server/am/PDSController;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    iput-object v2, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 10
    .line 11
    iget v3, v0, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x5

    .line 15
    const/16 v6, 0xa

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    if-eq v3, v4, :cond_1f

    .line 19
    .line 20
    const/4 v8, 0x7

    .line 21
    const/4 v9, 0x0

    .line 22
    if-eq v3, v8, :cond_e

    .line 23
    .line 24
    const/16 v4, 0x8

    .line 25
    .line 26
    if-ne v3, v4, :cond_d

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto/16 :goto_1b

    .line 31
    .line 32
    :cond_0
    const-string/jumbo v0, "packageList"

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 40
    .line 41
    const-string/jumbo v3, "policy-num"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v2, :cond_6

    .line 49
    .line 50
    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 51
    .line 52
    const-string/jumbo v4, "userId"

    .line 53
    .line 54
    .line 55
    iget-object v8, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->this$0:Lcom/android/server/am/pds/PDSHandler;

    .line 56
    .line 57
    iget-object v8, v8, Lcom/android/server/am/pds/PDSHandler;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    move v8, v7

    .line 68
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-ge v8, v0, :cond_23

    .line 73
    .line 74
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/String;

    .line 79
    .line 80
    const-string v10, "PDSHandler"

    .line 81
    .line 82
    const-string/jumbo v11, "cancelPolicy"

    .line 83
    .line 84
    .line 85
    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object v10, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    .line 89
    .line 90
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const-string v11, "Failed trying to stop package "

    .line 94
    .line 95
    const-string v12, "PDSController"

    .line 96
    .line 97
    new-instance v13, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string/jumbo v14, "cancelPolicy"

    .line 100
    .line 101
    .line 102
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v13

    .line 112
    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    sget-object v13, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 120
    .line 121
    monitor-enter v13

    .line 122
    :try_start_0
    iget-object v14, v10, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 123
    .line 124
    if-eqz v14, :cond_2

    .line 125
    .line 126
    invoke-virtual {v14}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    .line 127
    .line 128
    .line 129
    move-result v15

    .line 130
    if-eqz v15, :cond_2

    .line 131
    .line 132
    iget-object v14, v14, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 133
    .line 134
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Landroid/util/SparseArray;

    .line 139
    .line 140
    if-nez v0, :cond_1

    .line 141
    .line 142
    move-object v0, v9

    .line 143
    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_1
    check-cast v0, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 149
    .line 150
    move-object v14, v0

    .line 151
    goto :goto_2

    .line 152
    :cond_2
    move-object v14, v9

    .line 153
    :goto_2
    if-eqz v14, :cond_5

    .line 154
    .line 155
    iget-object v0, v14, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 156
    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    iget v0, v0, Lcom/android/server/am/PDSController$Policy;->num:I

    .line 160
    .line 161
    if-ne v0, v3, :cond_4

    .line 162
    .line 163
    iput-object v9, v14, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 164
    .line 165
    iput v7, v14, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    .line 166
    .line 167
    if-ne v3, v5, :cond_3

    .line 168
    .line 169
    iput v7, v14, Lcom/android/server/am/pds/PDSPackageInfo;->uds:I

    .line 170
    .line 171
    :cond_3
    if-ne v3, v6, :cond_4

    .line 172
    .line 173
    iput v7, v14, Lcom/android/server/am/pds/PDSPackageInfo;->mpsm:I

    .line 174
    .line 175
    goto :goto_3

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    goto :goto_5

    .line 178
    :cond_4
    :goto_3
    iget-object v0, v14, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .line 180
    if-nez v0, :cond_5

    .line 181
    .line 182
    :try_start_1
    iget-object v0, v14, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 183
    .line 184
    iget v15, v14, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 185
    .line 186
    invoke-interface {v12, v0, v7, v15}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .line 188
    .line 189
    goto :goto_4

    .line 190
    :catch_0
    move-exception v0

    .line 191
    :try_start_2
    const-string v12, "PDSController"

    .line 192
    .line 193
    new-instance v15, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v11, v14, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v11, ": "

    .line 204
    .line 205
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .line 217
    .line 218
    :catch_1
    :goto_4
    iget-object v0, v10, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 219
    .line 220
    iget-object v10, v14, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 221
    .line 222
    iget v11, v14, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 223
    .line 224
    iget-object v12, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 225
    .line 226
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v12

    .line 230
    check-cast v12, Landroid/util/SparseArray;

    .line 231
    .line 232
    if-eqz v12, :cond_5

    .line 233
    .line 234
    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-nez v11, :cond_5

    .line 242
    .line 243
    iget-object v0, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 244
    .line 245
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    :cond_5
    monitor-exit v13

    .line 249
    add-int/lit8 v8, v8, 0x1

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :goto_5
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    throw v0

    .line 255
    :cond_6
    const-string v0, "PDSHandler"

    .line 256
    .line 257
    const-string/jumbo v2, "cancelPolicy(policyNum)"

    .line 258
    .line 259
    .line 260
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    .line 262
    .line 263
    iget-object v1, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    const-string v0, "PDSController"

    .line 269
    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    .line 271
    .line 272
    const-string/jumbo v4, "cancelpolicy"

    .line 273
    .line 274
    .line 275
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v2

    .line 285
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    new-instance v4, Ljava/util/ArrayList;

    .line 293
    .line 294
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .line 296
    .line 297
    sget-object v8, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 298
    .line 299
    monitor-enter v8

    .line 300
    move v0, v7

    .line 301
    :goto_6
    :try_start_3
    iget-object v10, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 302
    .line 303
    iget-object v10, v10, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 304
    .line 305
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    .line 306
    .line 307
    .line 308
    move-result v10

    .line 309
    if-ge v0, v10, :cond_b

    .line 310
    .line 311
    iget-object v10, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 312
    .line 313
    iget-object v10, v10, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 314
    .line 315
    invoke-virtual {v10, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v10

    .line 319
    check-cast v10, Landroid/util/SparseArray;

    .line 320
    .line 321
    move v11, v7

    .line 322
    :goto_7
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    .line 323
    .line 324
    .line 325
    move-result v12

    .line 326
    if-ge v11, v12, :cond_a

    .line 327
    .line 328
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v12

    .line 332
    check-cast v12, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 333
    .line 334
    iget-object v13, v12, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 335
    .line 336
    if-eqz v13, :cond_8

    .line 337
    .line 338
    iget v13, v13, Lcom/android/server/am/PDSController$Policy;->num:I

    .line 339
    .line 340
    if-ne v13, v3, :cond_8

    .line 341
    .line 342
    iput v7, v12, Lcom/android/server/am/pds/PDSPackageInfo;->curLevel:I

    .line 343
    .line 344
    iput-object v9, v12, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 345
    .line 346
    if-ne v3, v5, :cond_7

    .line 347
    .line 348
    iput v7, v12, Lcom/android/server/am/pds/PDSPackageInfo;->uds:I

    .line 349
    .line 350
    :cond_7
    if-ne v3, v6, :cond_8

    .line 351
    .line 352
    iput v7, v12, Lcom/android/server/am/pds/PDSPackageInfo;->mpsm:I

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :catchall_1
    move-exception v0

    .line 356
    goto :goto_b

    .line 357
    :cond_8
    :goto_8
    iget-object v13, v12, Lcom/android/server/am/pds/PDSPackageInfo;->appliedPolicy:Lcom/android/server/am/PDSController$Policy;

    .line 358
    .line 359
    if-nez v13, :cond_9

    .line 360
    .line 361
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .line 363
    .line 364
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 365
    .line 366
    goto :goto_7

    .line 367
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 368
    .line 369
    goto :goto_6

    .line 370
    :cond_b
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 371
    move v3, v7

    .line 372
    :goto_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-ge v3, v0, :cond_23

    .line 377
    .line 378
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    move-object v5, v0

    .line 383
    check-cast v5, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 384
    .line 385
    :try_start_4
    iget-object v0, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 386
    .line 387
    iget v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 388
    .line 389
    invoke-interface {v2, v0, v7, v6}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    .line 390
    .line 391
    .line 392
    goto :goto_a

    .line 393
    :catch_2
    move-exception v0

    .line 394
    const-string v6, "PDSController"

    .line 395
    .line 396
    new-instance v8, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    const-string v9, "Failed trying to stop package "

    .line 399
    .line 400
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    iget-object v9, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 404
    .line 405
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    const-string v9, ": "

    .line 409
    .line 410
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    :catch_3
    :goto_a
    iget-object v0, v1, Lcom/android/server/am/PDSController;->mPDSRestrictedPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 424
    .line 425
    iget-object v6, v5, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 426
    .line 427
    iget v5, v5, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 428
    .line 429
    iget-object v8, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 430
    .line 431
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v8

    .line 435
    check-cast v8, Landroid/util/SparseArray;

    .line 436
    .line 437
    if-eqz v8, :cond_c

    .line 438
    .line 439
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    .line 443
    .line 444
    .line 445
    move-result v5

    .line 446
    if-nez v5, :cond_c

    .line 447
    .line 448
    iget-object v0, v0, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 449
    .line 450
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 454
    .line 455
    goto :goto_9

    .line 456
    :goto_b
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 457
    throw v0

    .line 458
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 459
    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    const-string v3, "Unexpected value: "

    .line 463
    .line 464
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget v0, v0, Landroid/os/Message;->what:I

    .line 468
    .line 469
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v0

    .line 476
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 477
    .line 478
    .line 479
    throw v1

    .line 480
    :cond_e
    if-nez v2, :cond_f

    .line 481
    .line 482
    goto/16 :goto_1b

    .line 483
    .line 484
    :cond_f
    const-string/jumbo v0, "packageList"

    .line 485
    .line 486
    .line 487
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 492
    .line 493
    const-string/jumbo v3, "policy-num"

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 497
    .line 498
    .line 499
    move-result v3

    .line 500
    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 501
    .line 502
    const-string/jumbo v8, "userId"

    .line 503
    .line 504
    .line 505
    iget-object v10, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->this$0:Lcom/android/server/am/pds/PDSHandler;

    .line 506
    .line 507
    iget-object v10, v10, Lcom/android/server/am/pds/PDSHandler;->mContext:Landroid/content/Context;

    .line 508
    .line 509
    invoke-virtual {v10}, Landroid/content/Context;->getUserId()I

    .line 510
    .line 511
    .line 512
    move-result v10

    .line 513
    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 514
    .line 515
    .line 516
    move-result v8

    .line 517
    if-eq v3, v5, :cond_10

    .line 518
    .line 519
    if-eq v3, v6, :cond_10

    .line 520
    .line 521
    goto/16 :goto_1b

    .line 522
    .line 523
    :cond_10
    if-eqz v2, :cond_1e

    .line 524
    .line 525
    iget-object v10, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    .line 526
    .line 527
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 528
    .line 529
    .line 530
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    if-eqz v0, :cond_11

    .line 535
    .line 536
    invoke-interface {v0}, Landroid/app/IActivityManager;->getAllRestrictedList()Ljava/util/List;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    iput-object v0, v10, Lcom/android/server/am/PDSController;->mPDSTargetlist:Ljava/util/List;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 541
    .line 542
    goto :goto_c

    .line 543
    :catch_4
    move-exception v0

    .line 544
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 545
    .line 546
    .line 547
    :cond_11
    :goto_c
    iget-object v11, v10, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 548
    .line 549
    iget-object v0, v11, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 550
    .line 551
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 552
    .line 553
    .line 554
    sget-object v0, Lcom/android/server/am/mars/database/FASDataManager$FASDataManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/FASDataManager;

    .line 555
    .line 556
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASDataManager;->getFASDataFromDB()Ljava/util/ArrayList;

    .line 557
    .line 558
    .line 559
    move-result-object v12

    .line 560
    iget-object v0, v10, Lcom/android/server/am/PDSController;->mPDSTargetlist:Ljava/util/List;

    .line 561
    .line 562
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 563
    .line 564
    .line 565
    move-result-object v13

    .line 566
    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 567
    .line 568
    .line 569
    move-result v0

    .line 570
    if-eqz v0, :cond_17

    .line 571
    .line 572
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    move-result-object v0

    .line 576
    move-object v14, v0

    .line 577
    check-cast v14, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 578
    .line 579
    move v15, v7

    .line 580
    :goto_e
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-ge v15, v0, :cond_16

    .line 585
    .line 586
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 587
    .line 588
    .line 589
    move-result-object v0

    .line 590
    check-cast v0, Lcom/android/server/am/mars/database/FASEntity;

    .line 591
    .line 592
    new-instance v9, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 593
    .line 594
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v7

    .line 601
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v16

    .line 605
    invoke-static/range {v16 .. v16}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    move-result v6

    .line 609
    const/16 v16, -0x1

    .line 610
    .line 611
    const-wide/16 v17, 0x0

    .line 612
    .line 613
    :try_start_7
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v19

    .line 617
    if-eqz v19, :cond_12

    .line 618
    .line 619
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v19

    .line 623
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 624
    .line 625
    .line 626
    move-result v19
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_5

    .line 627
    goto :goto_f

    .line 628
    :catch_5
    move-exception v0

    .line 629
    move-object v4, v0

    .line 630
    move/from16 v0, v16

    .line 631
    .line 632
    goto :goto_11

    .line 633
    :cond_12
    move/from16 v19, v16

    .line 634
    .line 635
    :goto_f
    :try_start_8
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    .line 636
    .line 637
    .line 638
    move-result v16

    .line 639
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v20

    .line 643
    if-eqz v20, :cond_13

    .line 644
    .line 645
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 650
    .line 651
    .line 652
    move-result-wide v17
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6

    .line 653
    goto :goto_10

    .line 654
    :catch_6
    move-exception v0

    .line 655
    move-object v4, v0

    .line 656
    move/from16 v0, v16

    .line 657
    .line 658
    move/from16 v16, v19

    .line 659
    .line 660
    goto :goto_11

    .line 661
    :cond_13
    :goto_10
    move-object/from16 p1, v12

    .line 662
    .line 663
    move/from16 v0, v16

    .line 664
    .line 665
    move-wide/from16 v4, v17

    .line 666
    .line 667
    move/from16 v12, v19

    .line 668
    .line 669
    goto :goto_12

    .line 670
    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    move/from16 p1, v0

    .line 673
    .line 674
    const-string v0, "NumberFormatException !"

    .line 675
    .line 676
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    const-string v4, "PDSPackageInfo"

    .line 687
    .line 688
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .line 690
    .line 691
    move/from16 v0, p1

    .line 692
    .line 693
    move-object/from16 p1, v12

    .line 694
    .line 695
    move/from16 v12, v16

    .line 696
    .line 697
    move-wide/from16 v4, v17

    .line 698
    .line 699
    :goto_12
    iput-object v7, v9, Lcom/android/server/am/pds/PDSPackageInfo;->name:Ljava/lang/String;

    .line 700
    .line 701
    iput v12, v9, Lcom/android/server/am/pds/PDSPackageInfo;->uid:I

    .line 702
    .line 703
    iput v0, v9, Lcom/android/server/am/pds/PDSPackageInfo;->userId:I

    .line 704
    .line 705
    iput v6, v9, Lcom/android/server/am/pds/PDSPackageInfo;->fasType:I

    .line 706
    .line 707
    iput-wide v4, v9, Lcom/android/server/am/pds/PDSPackageInfo;->disableResetTime:J

    .line 708
    .line 709
    invoke-virtual {v14}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 714
    .line 715
    .line 716
    move-result v4

    .line 717
    if-eqz v4, :cond_15

    .line 718
    .line 719
    invoke-virtual {v14}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    .line 720
    .line 721
    .line 722
    move-result v4

    .line 723
    if-ne v4, v12, :cond_15

    .line 724
    .line 725
    invoke-virtual {v14}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    iget-object v5, v11, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 730
    .line 731
    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v5

    .line 735
    check-cast v5, Landroid/util/SparseArray;

    .line 736
    .line 737
    if-nez v5, :cond_14

    .line 738
    .line 739
    new-instance v5, Landroid/util/SparseArray;

    .line 740
    .line 741
    const/4 v6, 0x2

    .line 742
    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    .line 743
    .line 744
    .line 745
    iget-object v6, v11, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 746
    .line 747
    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    :cond_14
    invoke-virtual {v5, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 751
    .line 752
    .line 753
    goto :goto_13

    .line 754
    :cond_15
    add-int/lit8 v15, v15, 0x1

    .line 755
    .line 756
    move-object/from16 v12, p1

    .line 757
    .line 758
    const/4 v4, 0x1

    .line 759
    const/4 v5, 0x5

    .line 760
    const/16 v6, 0xa

    .line 761
    .line 762
    const/4 v7, 0x0

    .line 763
    const/4 v9, 0x0

    .line 764
    goto/16 :goto_e

    .line 765
    .line 766
    :cond_16
    move-object/from16 p1, v12

    .line 767
    .line 768
    :goto_13
    move-object/from16 v12, p1

    .line 769
    .line 770
    const/4 v4, 0x1

    .line 771
    const/4 v5, 0x5

    .line 772
    const/16 v6, 0xa

    .line 773
    .line 774
    const/4 v7, 0x0

    .line 775
    const/4 v9, 0x0

    .line 776
    goto/16 :goto_d

    .line 777
    .line 778
    :cond_17
    const/4 v7, 0x0

    .line 779
    :goto_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 780
    .line 781
    .line 782
    move-result v0

    .line 783
    if-ge v7, v0, :cond_1e

    .line 784
    .line 785
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 786
    .line 787
    .line 788
    move-result-object v0

    .line 789
    check-cast v0, Ljava/lang/String;

    .line 790
    .line 791
    if-eqz v0, :cond_1d

    .line 792
    .line 793
    sget-object v4, Lcom/android/server/am/PDSController;->PDSLock:Lcom/android/server/am/PDSController$Lock;

    .line 794
    .line 795
    monitor-enter v4

    .line 796
    :try_start_9
    iget-object v5, v10, Lcom/android/server/am/PDSController;->mPDSTargetPackages:Lcom/android/server/am/pds/PDSPkgMap;

    .line 797
    .line 798
    if-eqz v5, :cond_19

    .line 799
    .line 800
    invoke-virtual {v5}, Lcom/android/server/am/pds/PDSPkgMap;->totalSize()I

    .line 801
    .line 802
    .line 803
    move-result v6

    .line 804
    if-eqz v6, :cond_19

    .line 805
    .line 806
    iget-object v5, v5, Lcom/android/server/am/pds/PDSPkgMap;->mMap:Landroid/util/ArrayMap;

    .line 807
    .line 808
    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v0

    .line 812
    check-cast v0, Landroid/util/SparseArray;

    .line 813
    .line 814
    if-nez v0, :cond_18

    .line 815
    .line 816
    const/4 v0, 0x0

    .line 817
    goto :goto_15

    .line 818
    :cond_18
    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 819
    .line 820
    .line 821
    move-result-object v0

    .line 822
    :goto_15
    check-cast v0, Lcom/android/server/am/pds/PDSPackageInfo;

    .line 823
    .line 824
    goto :goto_16

    .line 825
    :cond_19
    const/4 v0, 0x0

    .line 826
    :goto_16
    if-eqz v0, :cond_1b

    .line 827
    .line 828
    const/4 v5, 0x5

    .line 829
    if-ne v3, v5, :cond_1a

    .line 830
    .line 831
    const/4 v5, 0x1

    .line 832
    iput v5, v0, Lcom/android/server/am/pds/PDSPackageInfo;->uds:I

    .line 833
    .line 834
    :goto_17
    const/16 v6, 0xa

    .line 835
    .line 836
    goto :goto_18

    .line 837
    :cond_1a
    const/4 v5, 0x1

    .line 838
    goto :goto_17

    .line 839
    :goto_18
    if-ne v3, v6, :cond_1c

    .line 840
    .line 841
    iput v5, v0, Lcom/android/server/am/pds/PDSPackageInfo;->mpsm:I

    .line 842
    .line 843
    goto :goto_19

    .line 844
    :cond_1b
    const/4 v5, 0x1

    .line 845
    :cond_1c
    :goto_19
    monitor-exit v4

    .line 846
    goto :goto_1a

    .line 847
    :catchall_2
    move-exception v0

    .line 848
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 849
    throw v0

    .line 850
    :cond_1d
    const/4 v5, 0x1

    .line 851
    :goto_1a
    add-int/lit8 v7, v7, 0x1

    .line 852
    .line 853
    goto :goto_14

    .line 854
    :cond_1e
    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    .line 855
    .line 856
    invoke-virtual {v0, v3}, Lcom/android/server/am/PDSController;->forceRunPolicyForSpecificPolicy(I)V

    .line 857
    .line 858
    .line 859
    goto :goto_1b

    .line 860
    :cond_1f
    iget-object v2, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->mPDSController:Lcom/android/server/am/PDSController;

    .line 861
    .line 862
    monitor-enter v2

    .line 863
    :try_start_a
    iget-boolean v0, v2, Lcom/android/server/am/PDSController;->mScreenOn:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 864
    .line 865
    monitor-exit v2

    .line 866
    if-nez v0, :cond_23

    .line 867
    .line 868
    iget-object v0, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->extras:Landroid/os/Bundle;

    .line 869
    .line 870
    if-nez v0, :cond_20

    .line 871
    .line 872
    goto :goto_1b

    .line 873
    :cond_20
    const-string/jumbo v3, "policy-num"

    .line 874
    .line 875
    .line 876
    const/4 v4, 0x0

    .line 877
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    const/4 v3, 0x5

    .line 882
    if-eq v0, v3, :cond_21

    .line 883
    .line 884
    const/16 v3, 0xa

    .line 885
    .line 886
    if-ne v0, v3, :cond_22

    .line 887
    .line 888
    :cond_21
    invoke-virtual {v2, v0}, Lcom/android/server/am/PDSController;->forceRunPolicyForSpecificPolicy(I)V

    .line 889
    .line 890
    .line 891
    :cond_22
    iget-object v1, v1, Lcom/android/server/am/pds/PDSHandler$MainHandler;->this$0:Lcom/android/server/am/pds/PDSHandler;

    .line 892
    .line 893
    const-wide/32 v2, 0x493e0

    .line 894
    .line 895
    .line 896
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/pds/PDSHandler;->sendFirstTriggerMsgToMainHandler(IJ)V

    .line 897
    .line 898
    .line 899
    :cond_23
    :goto_1b
    return-void

    .line 900
    :catchall_3
    move-exception v0

    .line 901
    move-object v1, v0

    .line 902
    monitor-exit v2

    .line 903
    throw v1
.end method
