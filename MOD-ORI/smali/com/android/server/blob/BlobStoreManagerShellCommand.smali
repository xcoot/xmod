.class public final Lcom/android/server/blob/BlobStoreManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 12

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    sparse-switch v4, :sswitch_data_0

    .line 21
    .line 22
    .line 23
    :goto_0
    move v4, v0

    .line 24
    goto :goto_1

    .line 25
    :sswitch_0
    const-string/jumbo v4, "idle-maintenance"

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-nez v4, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v4, 0x4

    .line 36
    goto :goto_1

    .line 37
    :sswitch_1
    const-string/jumbo v4, "query-blob-existence"

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 v4, 0x3

    .line 48
    goto :goto_1

    .line 49
    :sswitch_2
    const-string/jumbo v4, "clear-all-blobs"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const/4 v4, 0x2

    .line 60
    goto :goto_1

    .line 61
    :sswitch_3
    const-string/jumbo v4, "clear-all-sessions"

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    if-nez v4, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    move v4, v2

    .line 72
    goto :goto_1

    .line 73
    :sswitch_4
    const-string/jumbo v4, "delete-blob"

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-nez v4, :cond_5

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    move v4, v1

    .line 84
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    return p0

    .line 92
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 95
    .line 96
    monitor-enter p1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->handleIdleMaintenanceLocked()V

    .line 98
    .line 99
    .line 100
    monitor-exit p1

    .line 101
    return v1

    .line 102
    :catchall_0
    move-exception p0

    .line 103
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    throw p0

    .line 105
    :pswitch_1
    new-instance p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    .line 106
    .line 107
    invoke-direct {p1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v3, p1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-gez v4, :cond_6

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_6
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    .line 118
    .line 119
    iget-wide v4, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->blobId:J

    .line 120
    .line 121
    iget p1, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 122
    .line 123
    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 124
    .line 125
    monitor-enter v6

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 127
    .line 128
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    move v7, v1

    .line 133
    :goto_2
    if-ge v7, v0, :cond_8

    .line 134
    .line 135
    iget-object v8, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 136
    .line 137
    invoke-virtual {v8, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    check-cast v8, Lcom/android/server/blob/BlobMetadata;

    .line 142
    .line 143
    iget-wide v9, v8, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 144
    .line 145
    cmp-long v9, v9, v4

    .line 146
    .line 147
    if-eqz v9, :cond_7

    .line 148
    .line 149
    add-int/2addr v7, v2

    .line 150
    goto :goto_2

    .line 151
    :cond_7
    invoke-virtual {v8, p1}, Lcom/android/server/blob/BlobMetadata;->hasACommitterInUser(I)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    monitor-exit v6

    .line 156
    goto :goto_3

    .line 157
    :catchall_1
    move-exception p0

    .line 158
    goto :goto_5

    .line 159
    :cond_8
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    move p0, v1

    .line 161
    :goto_3
    invoke-virtual {v3, p0}, Ljava/io/PrintWriter;->println(I)V

    .line 162
    .line 163
    .line 164
    move v0, v1

    .line 165
    :goto_4
    return v0

    .line 166
    :goto_5
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    throw p0

    .line 168
    :pswitch_2
    new-instance p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    .line 169
    .line 170
    invoke-direct {p1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>()V

    .line 171
    .line 172
    .line 173
    iput v0, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 174
    .line 175
    invoke-virtual {p0, v3, p1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    if-gez v2, :cond_9

    .line 180
    .line 181
    goto :goto_6

    .line 182
    :cond_9
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    .line 183
    .line 184
    iget p1, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 185
    .line 186
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 187
    .line 188
    monitor-enter v4

    .line 189
    :try_start_3
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 190
    .line 191
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;

    .line 196
    .line 197
    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/blob/BlobStoreManagerService;II)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v0, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 204
    .line 205
    .line 206
    monitor-exit v4

    .line 207
    move v0, v1

    .line 208
    :goto_6
    return v0

    .line 209
    :catchall_2
    move-exception p0

    .line 210
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 211
    throw p0

    .line 212
    :pswitch_3
    new-instance p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    .line 213
    .line 214
    invoke-direct {p1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>()V

    .line 215
    .line 216
    .line 217
    iput v0, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 218
    .line 219
    invoke-virtual {p0, v3, p1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-gez v3, :cond_a

    .line 224
    .line 225
    goto :goto_b

    .line 226
    :cond_a
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    .line 227
    .line 228
    iget p1, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 229
    .line 230
    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 231
    .line 232
    monitor-enter v4

    .line 233
    :try_start_4
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 234
    .line 235
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    move v5, v1

    .line 240
    :goto_7
    if-ge v5, v3, :cond_d

    .line 241
    .line 242
    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 243
    .line 244
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 245
    .line 246
    .line 247
    move-result v6

    .line 248
    if-eq p1, v0, :cond_b

    .line 249
    .line 250
    if-eq p1, v6, :cond_b

    .line 251
    .line 252
    goto :goto_9

    .line 253
    :cond_b
    iget-object v6, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 254
    .line 255
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v6

    .line 259
    check-cast v6, Landroid/util/LongSparseArray;

    .line 260
    .line 261
    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    .line 262
    .line 263
    .line 264
    move-result v7

    .line 265
    move v8, v1

    .line 266
    :goto_8
    if-ge v8, v7, :cond_c

    .line 267
    .line 268
    iget-object v9, p0, Lcom/android/server/blob/BlobStoreManagerService;->mActiveBlobIds:Landroid/util/ArraySet;

    .line 269
    .line 270
    invoke-virtual {v6, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v10

    .line 274
    check-cast v10, Lcom/android/server/blob/BlobStoreSession;

    .line 275
    .line 276
    iget-wide v10, v10, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 277
    .line 278
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 279
    .line 280
    .line 281
    move-result-object v10

    .line 282
    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    add-int/2addr v8, v2

    .line 286
    goto :goto_8

    .line 287
    :catchall_3
    move-exception p0

    .line 288
    goto :goto_c

    .line 289
    :cond_c
    :goto_9
    add-int/2addr v5, v2

    .line 290
    goto :goto_7

    .line 291
    :cond_d
    if-ne p1, v0, :cond_e

    .line 292
    .line 293
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 294
    .line 295
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 296
    .line 297
    .line 298
    goto :goto_a

    .line 299
    :cond_e
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mSessions:Landroid/util/SparseArray;

    .line 300
    .line 301
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 302
    .line 303
    .line 304
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    .line 305
    .line 306
    .line 307
    monitor-exit v4

    .line 308
    move v0, v1

    .line 309
    :goto_b
    return v0

    .line 310
    :goto_c
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 311
    throw p0

    .line 312
    :pswitch_4
    new-instance p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;

    .line 313
    .line 314
    invoke-direct {p1}, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;-><init>()V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p0, v3, p1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;->parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I

    .line 318
    .line 319
    .line 320
    move-result v2

    .line 321
    if-gez v2, :cond_f

    .line 322
    .line 323
    goto :goto_e

    .line 324
    :cond_f
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerShellCommand;->mService:Lcom/android/server/blob/BlobStoreManagerService;

    .line 325
    .line 326
    iget-object v2, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    .line 327
    .line 328
    iget-object v3, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->digest:[B

    .line 329
    .line 330
    iget-object v4, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->label:Ljava/lang/CharSequence;

    .line 331
    .line 332
    iget-wide v5, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->expiryTimeMillis:J

    .line 333
    .line 334
    iget-object v7, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->tag:Ljava/lang/String;

    .line 335
    .line 336
    invoke-static/range {v2 .. v7}, Landroid/app/blob/BlobHandle;->create(Ljava/lang/String;[BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    iget p1, p1, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 341
    .line 342
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    .line 343
    .line 344
    monitor-enter v2

    .line 345
    :try_start_5
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 346
    .line 347
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    check-cast v3, Lcom/android/server/blob/BlobMetadata;

    .line 352
    .line 353
    if-nez v3, :cond_10

    .line 354
    .line 355
    monitor-exit v2

    .line 356
    goto :goto_d

    .line 357
    :catchall_4
    move-exception p0

    .line 358
    goto :goto_f

    .line 359
    :cond_10
    invoke-virtual {v3, p1}, Lcom/android/server/blob/BlobMetadata;->removeDataForUser(I)V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v3, v1}, Lcom/android/server/blob/BlobMetadata;->shouldBeDeleted(Z)Z

    .line 363
    .line 364
    .line 365
    move-result p1

    .line 366
    if-eqz p1, :cond_11

    .line 367
    .line 368
    invoke-virtual {p0, v3}, Lcom/android/server/blob/BlobStoreManagerService;->deleteBlobLocked(Lcom/android/server/blob/BlobMetadata;)V

    .line 369
    .line 370
    .line 371
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    .line 372
    .line 373
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    .line 377
    .line 378
    .line 379
    monitor-exit v2

    .line 380
    :goto_d
    move v0, v1

    .line 381
    :goto_e
    return v0

    .line 382
    :goto_f
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 383
    throw p0

    .line 384
    nop

    .line 385
    :sswitch_data_0
    .sparse-switch
        -0x45a66181 -> :sswitch_4
        -0x39e20d37 -> :sswitch_3
        -0xf634e36 -> :sswitch_2
        0x2a7987b7 -> :sswitch_1
        0x6ef5269a -> :sswitch_0
    .end sparse-switch

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "BlobStore service (blob_store) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "help"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "    Print this help text."

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "clear-all-sessions [-u | --user USER_ID]"

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "    Remove all sessions."

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "    Options:"

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v1, "      -u or --user: specify which user\'s sessions to be removed."

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v1, "                    If not specified, sessions in all users are removed."

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v1, "clear-all-blobs [-u | --user USER_ID]"

    .line 54
    .line 55
    .line 56
    const-string v2, "    Remove all blobs."

    .line 57
    .line 58
    const-string v3, "      -u or --user: specify which user\'s blobs to be removed."

    .line 59
    .line 60
    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v1, "                    If not specified, blobs in all users are removed."

    .line 64
    .line 65
    const-string/jumbo v2, "delete-blob [-u | --user USER_ID] [--digest DIGEST] [--expiry EXPIRY_TIME] [--label LABEL] [--tag TAG]"

    .line 66
    .line 67
    .line 68
    const-string v3, "    Delete a blob."

    .line 69
    .line 70
    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v0, "      -u or --user: specify which user\'s blobs to be removed;"

    .line 74
    .line 75
    const-string v2, "      --digest: Base64 encoded digest of the blob to delete."

    .line 76
    .line 77
    const-string v3, "      --expiry: Expiry time of the blob to delete, in milliseconds."

    .line 78
    .line 79
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "      --label: Label of the blob to delete."

    .line 83
    .line 84
    const-string v1, "      --tag: Tag of the blob to delete."

    .line 85
    .line 86
    const-string/jumbo v2, "idle-maintenance"

    .line 87
    .line 88
    .line 89
    const-string v3, "    Run idle maintenance which takes care of removing stale data."

    .line 90
    .line 91
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string/jumbo v0, "query-blob-existence [-b BLOB_ID] [-u | --user USER_ID]"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "    Prints 1 if blob exists, otherwise 0."

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public final parseOptions(Ljava/io/PrintWriter;Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    if-eqz v2, :cond_8

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    sparse-switch v3, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    :goto_1
    move v3, v1

    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :sswitch_0
    const-string v3, "--user"

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v3, 0x7

    .line 29
    goto :goto_2

    .line 30
    :sswitch_1
    const-string v3, "--algo"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v3, 0x6

    .line 40
    goto :goto_2

    .line 41
    :sswitch_2
    const-string v3, "--expiry"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const/4 v3, 0x5

    .line 51
    goto :goto_2

    .line 52
    :sswitch_3
    const-string v3, "--digest"

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 v3, 0x4

    .line 62
    goto :goto_2

    .line 63
    :sswitch_4
    const-string v3, "--tag"

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_4

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const/4 v3, 0x3

    .line 73
    goto :goto_2

    .line 74
    :sswitch_5
    const-string v3, "-u"

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_5

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_5
    const/4 v3, 0x2

    .line 84
    goto :goto_2

    .line 85
    :sswitch_6
    const-string v3, "-b"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_6

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_6
    const/4 v3, 0x1

    .line 95
    goto :goto_2

    .line 96
    :sswitch_7
    const-string v3, "--label"

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_7

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_7
    move v3, v0

    .line 106
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 107
    .line 108
    .line 109
    const-string p0, "Error: unknown option \'"

    .line 110
    .line 111
    const-string p2, "\'"

    .line 112
    .line 113
    invoke-static {p1, p0, v2, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    iput-object v2, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->algorithm:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    iput-wide v2, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->expiryTimeMillis:J

    .line 133
    .line 134
    goto/16 :goto_0

    .line 135
    .line 136
    :pswitch_2
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    iput-object v2, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->digest:[B

    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :pswitch_3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    iput-object v2, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->tag:Ljava/lang/String;

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :pswitch_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    iput v2, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 177
    .line 178
    .line 179
    move-result-wide v2

    .line 180
    iput-wide v2, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->blobId:J

    .line 181
    .line 182
    goto/16 :goto_0

    .line 183
    .line 184
    :pswitch_6
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    iput-object v2, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->label:Ljava/lang/CharSequence;

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_8
    iget p0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 193
    .line 194
    const/4 p1, -0x2

    .line 195
    if-ne p0, p1, :cond_9

    .line 196
    .line 197
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 198
    .line 199
    .line 200
    move-result p0

    .line 201
    iput p0, p2, Lcom/android/server/blob/BlobStoreManagerShellCommand$ParsedArgs;->userId:I

    .line 202
    .line 203
    :cond_9
    return v0

    .line 204
    nop

    .line 205
    :sswitch_data_0
    .sparse-switch
        -0x609e02ac -> :sswitch_7
        0x5d5 -> :sswitch_6
        0x5e8 -> :sswitch_5
        0x29055fa -> :sswitch_4
        0x3fa9eb64 -> :sswitch_3
        0x42364ad3 -> :sswitch_2
        0x4f71eff3 -> :sswitch_1
        0x4f7b216b -> :sswitch_0
    .end sparse-switch

    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
