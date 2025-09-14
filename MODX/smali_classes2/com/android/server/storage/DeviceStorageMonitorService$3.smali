.class public final Lcom/android/server/storage/DeviceStorageMonitorService$3;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "DeviceStorageMonitorService"

    .line 8
    .line 9
    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    .line 22
    .line 23
    const-string v1, "  "

    .line 24
    .line 25
    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p2, 0x0

    .line 29
    if-eqz p3, :cond_2

    .line 30
    .line 31
    array-length v1, p3

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    const-string v1, "-a"

    .line 35
    .line 36
    aget-object v2, p3, p2

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance v2, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    .line 46
    .line 47
    invoke-direct {v2, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Lcom/android/server/storage/DeviceStorageMonitorService$3;

    .line 51
    .line 52
    new-instance v9, Landroid/os/ResultReceiver;

    .line 53
    .line 54
    const/4 p0, 0x0

    .line 55
    invoke-direct {v9, p0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 56
    .line 57
    .line 58
    const/4 v8, 0x0

    .line 59
    const/4 v4, 0x0

    .line 60
    const/4 v6, 0x0

    .line 61
    move-object v5, p1

    .line 62
    move-object v7, p3

    .line 63
    invoke-virtual/range {v2 .. v9}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 64
    .line 65
    .line 66
    goto/16 :goto_6

    .line 67
    .line 68
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-class v2, Landroid/os/storage/StorageManager;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/os/storage/StorageManager;

    .line 79
    .line 80
    const-string v2, "Known volumes:"

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 86
    .line 87
    .line 88
    move v2, p2

    .line 89
    :goto_1
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 90
    .line 91
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const-string v4, "level"

    .line 96
    .line 97
    const-string v5, ":"

    .line 98
    .line 99
    const-string v6, "Default:"

    .line 100
    .line 101
    if-ge v2, v3, :cond_6

    .line 102
    .line 103
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 104
    .line 105
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Ljava/util/UUID;

    .line 110
    .line 111
    iget-object v7, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 118
    .line 119
    sget-object v8, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 120
    .line 121
    invoke-virtual {v8, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_3

    .line 126
    .line 127
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 150
    .line 151
    .line 152
    iget v5, v7, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 153
    .line 154
    invoke-static {v5}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smlevelToString(I)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 159
    .line 160
    .line 161
    iget-wide v4, v7, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 162
    .line 163
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    const-string v5, "lastUsableBytes"

    .line 168
    .line 169
    invoke-virtual {v0, v5, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 184
    .line 185
    .line 186
    move-result v5

    .line 187
    if-eqz v5, :cond_5

    .line 188
    .line 189
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v5

    .line 193
    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 194
    .line 195
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v5

    .line 203
    invoke-static {v5}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-eqz v5, :cond_4

    .line 212
    .line 213
    const-string v3, "lowBytes="

    .line 214
    .line 215
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v6}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    .line 219
    .line 220
    .line 221
    move-result-wide v3

    .line 222
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    .line 223
    .line 224
    .line 225
    const-string v3, " fullBytes="

    .line 226
    .line 227
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, v6}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    .line 231
    .line 232
    .line 233
    move-result-wide v3

    .line 234
    invoke-virtual {v0, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(J)V

    .line 235
    .line 236
    .line 237
    const-string/jumbo v3, "path="

    .line 238
    .line 239
    .line 240
    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 247
    .line 248
    .line 249
    add-int/lit8 v2, v2, 0x1

    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    .line 254
    .line 255
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-ge p2, v1, :cond_c

    .line 260
    .line 261
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    .line 262
    .line 263
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Ljava/util/UUID;

    .line 268
    .line 269
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    .line 270
    .line 271
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v2

    .line 275
    check-cast v2, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    .line 276
    .line 277
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    .line 278
    .line 279
    invoke-virtual {v3, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_7

    .line 284
    .line 285
    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 308
    .line 309
    .line 310
    iget v1, v2, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    .line 311
    .line 312
    const/4 v2, -0x1

    .line 313
    if-eq v1, v2, :cond_b

    .line 314
    .line 315
    if-eqz v1, :cond_a

    .line 316
    .line 317
    const/4 v2, 0x1

    .line 318
    if-eq v1, v2, :cond_9

    .line 319
    .line 320
    const/4 v2, 0x2

    .line 321
    if-eq v1, v2, :cond_8

    .line 322
    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    goto :goto_5

    .line 328
    :cond_8
    const-string v1, "FN_FULL"

    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_9
    const-string v1, "FN_LOW"

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_a
    const-string v1, "FN_NORMAL"

    .line 335
    .line 336
    goto :goto_5

    .line 337
    :cond_b
    const-string v1, "FN_UNKNOWN"

    .line 338
    .line 339
    :goto_5
    invoke-virtual {v0, v4, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 346
    .line 347
    .line 348
    add-int/lit8 p2, p2, 0x1

    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 355
    .line 356
    .line 357
    iget-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 358
    .line 359
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    const-string/jumbo v1, "mSeq"

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 371
    .line 372
    .line 373
    iget p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 374
    .line 375
    invoke-static {p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-$$Nest$smlevelToString(I)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    const-string v1, "mForceState"

    .line 380
    .line 381
    invoke-virtual {v0, v1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 382
    .line 383
    .line 384
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 388
    .line 389
    .line 390
    const-string p2, "Storage info : "

    .line 391
    .line 392
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    const-string v1, "  mRomTotalBytes : "

    .line 398
    .line 399
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 403
    .line 404
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 415
    .line 416
    .line 417
    new-instance p2, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    const-string v1, "  mFullBytes : "

    .line 420
    .line 421
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    .line 425
    .line 426
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p2

    .line 433
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    new-instance p2, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v1, "  mLowBytes : "

    .line 439
    .line 440
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    .line 444
    .line 445
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object p2

    .line 452
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    .line 456
    .line 457
    const-string v1, "  mWarningBytes : "

    .line 458
    .line 459
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mWarningBytes:J

    .line 463
    .line 464
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object p2

    .line 471
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 472
    .line 473
    .line 474
    new-instance p2, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    const-string v1, "  mCautionBytes : "

    .line 477
    .line 478
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mCautionBytes:J

    .line 482
    .line 483
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 484
    .line 485
    .line 486
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object p2

    .line 490
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    new-instance p2, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    const-string v1, "  mExhaustionBytes : "

    .line 496
    .line 497
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    .line 501
    .line 502
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object p2

    .line 509
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    new-instance p2, Ljava/lang/StringBuilder;

    .line 513
    .line 514
    const-string v1, "  mTotalBytes : "

    .line 515
    .line 516
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    .line 520
    .line 521
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 529
    .line 530
    .line 531
    new-instance p2, Ljava/lang/StringBuilder;

    .line 532
    .line 533
    const-string v1, "  mUsableBytes : "

    .line 534
    .line 535
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 539
    .line 540
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 541
    .line 542
    .line 543
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object p2

    .line 547
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 551
    .line 552
    .line 553
    new-instance p2, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    const-string v1, "  mFullFileNodes : "

    .line 556
    .line 557
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 558
    .line 559
    .line 560
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    .line 561
    .line 562
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object p2

    .line 569
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    new-instance p2, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    const-string v1, "  mLowFileNodes : "

    .line 575
    .line 576
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    .line 580
    .line 581
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object p2

    .line 588
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    new-instance p2, Ljava/lang/StringBuilder;

    .line 592
    .line 593
    const-string v1, "  mTotalFileNode : "

    .line 594
    .line 595
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    .line 599
    .line 600
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p2

    .line 607
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    new-instance p2, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    const-string v1, "  mUsableFileNode : "

    .line 613
    .line 614
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 618
    .line 619
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object p2

    .line 626
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 630
    .line 631
    .line 632
    const-string p2, "Log history : "

    .line 633
    .line 634
    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalLog:Landroid/util/LocalLog;

    .line 638
    .line 639
    invoke-virtual {p0, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 640
    .line 641
    .line 642
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 643
    .line 644
    .line 645
    :goto_6
    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$3;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    move-object v7, p6

    .line 15
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 16
    .line 17
    .line 18
    return-void
.end method
