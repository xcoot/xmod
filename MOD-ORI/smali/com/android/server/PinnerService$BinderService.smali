.class public final Lcom/android/server/PinnerService$BinderService;
.super Landroid/app/pinner/IPinnerService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PinnerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/pinner/IPinnerService$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/PinnerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-string v3, "PinnerService"

    .line 10
    .line 11
    invoke-static {v2, v3, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v3, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-object v4, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 29
    .line 30
    monitor-enter v4

    .line 31
    :try_start_0
    iget-object v5, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 32
    .line 33
    iget-object v5, v5, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 34
    .line 35
    invoke-virtual {v5}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    const-wide/16 v8, 0x0

    .line 44
    .line 45
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v10

    .line 49
    const/high16 v11, 0x100000

    .line 50
    .line 51
    if-eqz v10, :cond_3

    .line 52
    .line 53
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    check-cast v10, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    iget-object v13, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 64
    .line 65
    iget-object v13, v13, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    check-cast v13, Lcom/android/server/PinnerService$PinnedApp;

    .line 72
    .line 73
    iget-object v14, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 74
    .line 75
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    invoke-static {v12}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v12

    .line 82
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string v12, " uid="

    .line 86
    .line 87
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget v12, v13, Lcom/android/server/PinnerService$PinnedApp;->uid:I

    .line 91
    .line 92
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 93
    .line 94
    .line 95
    const-string v12, " active="

    .line 96
    .line 97
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-boolean v12, v13, Lcom/android/server/PinnerService$PinnedApp;->active:Z

    .line 101
    .line 102
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 103
    .line 104
    .line 105
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 106
    .line 107
    .line 108
    iget-object v12, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 109
    .line 110
    iget-object v12, v12, Lcom/android/server/PinnerService;->mPinnedApps:Landroid/util/ArrayMap;

    .line 111
    .line 112
    invoke-virtual {v12, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    check-cast v10, Lcom/android/server/PinnerService$PinnedApp;

    .line 117
    .line 118
    iget-object v10, v10, Lcom/android/server/PinnerService$PinnedApp;->mFiles:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 125
    .line 126
    .line 127
    move-result v12

    .line 128
    if-eqz v12, :cond_1

    .line 129
    .line 130
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    check-cast v12, Lcom/android/server/PinnerService$PinnedFile;

    .line 135
    .line 136
    const-string v13, "  "

    .line 137
    .line 138
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v13, "%s pinned:%d bytes (%d MB) pinlist:%b\n"

    .line 142
    .line 143
    iget-object v14, v12, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 144
    .line 145
    iget v15, v12, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 146
    .line 147
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v15

    .line 151
    iget v6, v12, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 152
    .line 153
    div-int/2addr v6, v11

    .line 154
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    iget-boolean v7, v12, Lcom/android/server/PinnerService$PinnedFile;->used_pinlist:Z

    .line 159
    .line 160
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    filled-new-array {v14, v15, v6, v7}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v1, v13, v6}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 169
    .line 170
    .line 171
    iget v6, v12, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 172
    .line 173
    int-to-long v6, v6

    .line 174
    add-long/2addr v8, v6

    .line 175
    invoke-virtual {v2, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    iget-object v6, v12, Lcom/android/server/PinnerService$PinnedFile;->pinnedDeps:Ljava/util/ArrayList;

    .line 179
    .line 180
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v7

    .line 188
    if-eqz v7, :cond_2

    .line 189
    .line 190
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    check-cast v7, Lcom/android/server/PinnerService$PinnedFile;

    .line 195
    .line 196
    const-string v12, "  "

    .line 197
    .line 198
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    const-string v12, "%s pinned:%d bytes (%d MB) pinlist:%b (Dependency)\n"

    .line 202
    .line 203
    iget-object v13, v7, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 204
    .line 205
    iget v14, v7, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 206
    .line 207
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v14

    .line 211
    iget v15, v7, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 212
    .line 213
    div-int/2addr v15, v11

    .line 214
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    .line 216
    .line 217
    move-result-object v15

    .line 218
    iget-boolean v11, v7, Lcom/android/server/PinnerService$PinnedFile;->used_pinlist:Z

    .line 219
    .line 220
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object v11

    .line 224
    filled-new-array {v13, v14, v15, v11}, [Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    invoke-virtual {v1, v12, v11}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 229
    .line 230
    .line 231
    iget v11, v7, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 232
    .line 233
    int-to-long v11, v11

    .line 234
    add-long/2addr v8, v11

    .line 235
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    const/high16 v11, 0x100000

    .line 239
    .line 240
    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    goto/16 :goto_4

    .line 243
    .line 244
    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 245
    .line 246
    .line 247
    iget-object v5, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 248
    .line 249
    iget-object v5, v5, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 250
    .line 251
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v5

    .line 259
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result v6

    .line 263
    if-eqz v6, :cond_5

    .line 264
    .line 265
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    check-cast v6, Lcom/android/server/PinnerService$PinnedFile;

    .line 270
    .line 271
    iget-object v7, v6, Lcom/android/server/PinnerService$PinnedFile;->groupName:Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    if-nez v7, :cond_4

    .line 278
    .line 279
    iget-object v6, v6, Lcom/android/server/PinnerService$PinnedFile;->groupName:Ljava/lang/String;

    .line 280
    .line 281
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    goto :goto_1

    .line 285
    :cond_5
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    const/4 v5, 0x1

    .line 290
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    if-eqz v6, :cond_9

    .line 295
    .line 296
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    check-cast v6, Ljava/lang/String;

    .line 301
    .line 302
    iget-object v7, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 303
    .line 304
    invoke-virtual {v7, v6}, Lcom/android/server/PinnerService;->getAllPinsForGroup(Ljava/lang/String;)Ljava/util/List;

    .line 305
    .line 306
    .line 307
    move-result-object v7

    .line 308
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 309
    .line 310
    .line 311
    move-result-object v7

    .line 312
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 313
    .line 314
    .line 315
    move-result v10

    .line 316
    if-eqz v10, :cond_6

    .line 317
    .line 318
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    check-cast v10, Lcom/android/server/PinnerService$PinnedFile;

    .line 323
    .line 324
    invoke-virtual {v2, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    move-result v11

    .line 328
    if-eqz v11, :cond_7

    .line 329
    .line 330
    goto :goto_2

    .line 331
    :cond_7
    if-eqz v5, :cond_8

    .line 332
    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v11, "Group:"

    .line 339
    .line 340
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 354
    .line 355
    .line 356
    const/4 v5, 0x0

    .line 357
    :cond_8
    const-string v11, "  %s pinned:%d bytes (%d MB) pinlist:%b\n"

    .line 358
    .line 359
    iget-object v12, v10, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 360
    .line 361
    iget v13, v10, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 362
    .line 363
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 364
    .line 365
    .line 366
    move-result-object v13

    .line 367
    iget v14, v10, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 368
    .line 369
    const/high16 v15, 0x100000

    .line 370
    .line 371
    div-int/2addr v14, v15

    .line 372
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    .line 374
    .line 375
    move-result-object v14

    .line 376
    iget-boolean v15, v10, Lcom/android/server/PinnerService$PinnedFile;->used_pinlist:Z

    .line 377
    .line 378
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 379
    .line 380
    .line 381
    move-result-object v15

    .line 382
    filled-new-array {v12, v13, v14, v15}, [Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v12

    .line 386
    invoke-virtual {v1, v11, v12}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 387
    .line 388
    .line 389
    iget v10, v10, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 390
    .line 391
    int-to-long v10, v10

    .line 392
    add-long/2addr v8, v10

    .line 393
    goto :goto_2

    .line 394
    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 395
    .line 396
    .line 397
    iget-object v2, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 398
    .line 399
    iget-wide v5, v2, Lcom/android/server/PinnerService;->mPinAnonAddress:J

    .line 400
    .line 401
    const-wide/16 v10, 0x0

    .line 402
    .line 403
    cmp-long v3, v5, v10

    .line 404
    .line 405
    const-wide/32 v5, 0x100000

    .line 406
    .line 407
    .line 408
    if-eqz v3, :cond_a

    .line 409
    .line 410
    const-string v3, "Pinned anon region: %d (%d MB)\n"

    .line 411
    .line 412
    iget-wide v10, v2, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 413
    .line 414
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 415
    .line 416
    .line 417
    move-result-object v2

    .line 418
    iget-object v7, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 419
    .line 420
    iget-wide v10, v7, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 421
    .line 422
    div-long/2addr v10, v5

    .line 423
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 424
    .line 425
    .line 426
    move-result-object v7

    .line 427
    filled-new-array {v2, v7}, [Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v2

    .line 431
    invoke-virtual {v1, v3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 432
    .line 433
    .line 434
    iget-object v2, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 435
    .line 436
    iget-wide v2, v2, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 437
    .line 438
    add-long/2addr v8, v2

    .line 439
    :cond_a
    const-string v2, "Total pinned: %s bytes (%s MB)\n"

    .line 440
    .line 441
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 442
    .line 443
    .line 444
    move-result-object v3

    .line 445
    div-long/2addr v8, v5

    .line 446
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    filled-new-array {v3, v5}, [Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v3

    .line 454
    invoke-virtual {v1, v2, v3}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 455
    .line 456
    .line 457
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 458
    .line 459
    .line 460
    iget-object v2, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 461
    .line 462
    iget-object v2, v2, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 463
    .line 464
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    if-nez v2, :cond_c

    .line 469
    .line 470
    const-string v2, "Pending repin: "

    .line 471
    .line 472
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    iget-object v2, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 476
    .line 477
    iget-object v2, v2, Lcom/android/server/PinnerService;->mPendingRepin:Landroid/util/ArrayMap;

    .line 478
    .line 479
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 488
    .line 489
    .line 490
    move-result v3

    .line 491
    if-eqz v3, :cond_b

    .line 492
    .line 493
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    check-cast v3, Ljava/lang/Integer;

    .line 498
    .line 499
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    iget-object v5, v0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 504
    .line 505
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 506
    .line 507
    .line 508
    invoke-static {v3}, Lcom/android/server/PinnerService;->getNameForKey(I)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    .line 514
    .line 515
    const/16 v3, 0x20

    .line 516
    .line 517
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 518
    .line 519
    .line 520
    goto :goto_3

    .line 521
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 522
    .line 523
    .line 524
    :cond_c
    monitor-exit v4

    .line 525
    return-void

    .line 526
    :goto_4
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    throw v0
.end method

.method public final getPinnerStats()Ljava/util/List;
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/pinner/IPinnerService$Stub;->getPinnerStats_enforcePermission()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PinnerService;->mPinnedFiles:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/server/PinnerService$PinnedFile;

    .line 37
    .line 38
    new-instance v3, Landroid/app/pinner/PinnedFileStat;

    .line 39
    .line 40
    iget-object v4, v2, Lcom/android/server/PinnerService$PinnedFile;->fileName:Ljava/lang/String;

    .line 41
    .line 42
    iget v5, v2, Lcom/android/server/PinnerService$PinnedFile;->bytesPinned:I

    .line 43
    .line 44
    int-to-long v5, v5

    .line 45
    iget-object v2, v2, Lcom/android/server/PinnerService$PinnedFile;->groupName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-direct {v3, v4, v5, v6, v2}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-wide v1, p0, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 55
    .line 56
    const-wide/16 v3, 0x0

    .line 57
    .line 58
    cmp-long v1, v1, v3

    .line 59
    .line 60
    if-lez v1, :cond_1

    .line 61
    .line 62
    new-instance v1, Landroid/app/pinner/PinnedFileStat;

    .line 63
    .line 64
    const-string v2, "[anon]"

    .line 65
    .line 66
    iget-wide v3, p0, Lcom/android/server/PinnerService;->mCurrentlyPinnedAnonSize:J

    .line 67
    .line 68
    const-string p0, "[anon]"

    .line 69
    .line 70
    invoke-direct {v1, v2, v3, v4, p0}, Landroid/app/pinner/PinnedFileStat;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_1
    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw v0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 2

    .line 1
    array-length p1, p4

    .line 2
    const/4 p3, 0x1

    .line 3
    const/4 p5, -0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    if-ge p1, p3, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/io/PrintWriter;

    .line 8
    .line 9
    new-instance p1, Ljava/io/FileOutputStream;

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 15
    .line 16
    .line 17
    const-string p1, "Command is not given."

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p6, p5, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    aget-object p4, p4, p1

    .line 31
    .line 32
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string/jumbo v1, "repin"

    .line 36
    .line 37
    .line 38
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const-string p0, "Unknown pinner command: "

    .line 45
    .line 46
    const-string p1, ". Supported commands: repin"

    .line 47
    .line 48
    invoke-static {p0, p4, p1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    new-instance p1, Ljava/io/PrintWriter;

    .line 53
    .line 54
    new-instance p3, Ljava/io/FileOutputStream;

    .line 55
    .line 56
    invoke-direct {p3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p1, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p6, p5, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    iget-object p2, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    new-instance p4, Lcom/android/server/PinnerService$$ExternalSyntheticLambda4;

    .line 78
    .line 79
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-static {p4, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 83
    .line 84
    .line 85
    move-result-object p4

    .line 86
    iget-object p2, p2, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 87
    .line 88
    invoke-virtual {p2, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/android/server/PinnerService$BinderService;->this$0:Lcom/android/server/PinnerService;

    .line 92
    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    new-instance p2, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;

    .line 97
    .line 98
    invoke-direct {p2, p3}, Lcom/android/server/PinnerService$$ExternalSyntheticLambda1;-><init>(I)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-static {p2, p0, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    iget-object p0, p0, Lcom/android/server/PinnerService;->mPinnerHandler:Lcom/android/server/PinnerService$PinnerHandler;

    .line 110
    .line 111
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    .line 113
    .line 114
    invoke-virtual {p6, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method
