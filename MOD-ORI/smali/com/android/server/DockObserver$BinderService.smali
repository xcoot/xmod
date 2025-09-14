.class public final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

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
    .locals 11

    .line 1
    const-string p1, " last uevent device: "

    .line 2
    .line 3
    const-string v0, "  actual state: "

    .line 4
    .line 5
    const-string v1, "  previous state: "

    .line 6
    .line 7
    const-string v2, "  reported state: "

    .line 8
    .line 9
    const-string v3, "Bad value: "

    .line 10
    .line 11
    const-string v4, "Unknown set option: "

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 14
    .line 15
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-string v6, "DockObserver"

    .line 20
    .line 21
    invoke-static {v5, v6, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 29
    .line 30
    .line 31
    move-result-wide v5

    .line 32
    :try_start_0
    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 33
    .line 34
    iget-object v7, v7, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz p3, :cond_5

    .line 39
    .line 40
    :try_start_1
    array-length v9, p3

    .line 41
    if-eqz v9, :cond_5

    .line 42
    .line 43
    const-string v9, "-a"

    .line 44
    .line 45
    aget-object v10, p3, v8

    .line 46
    .line 47
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    if-eqz v9, :cond_1

    .line 52
    .line 53
    goto/16 :goto_0

    .line 54
    .line 55
    :cond_1
    array-length p1, p3

    .line 56
    const/4 v0, 0x3

    .line 57
    const/4 v1, 0x1

    .line 58
    if-ne p1, v0, :cond_3

    .line 59
    .line 60
    const-string/jumbo p1, "set"

    .line 61
    .line 62
    .line 63
    aget-object v0, p3, v8

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    aget-object p1, p3, v1

    .line 72
    .line 73
    const/4 v0, 0x2

    .line 74
    aget-object p3, p3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    .line 76
    :try_start_2
    const-string/jumbo v0, "state"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 86
    .line 87
    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    .line 88
    .line 89
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto/16 :goto_4

    .line 100
    .line 101
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :catch_0
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_3

    .line 134
    .line 135
    :cond_3
    array-length p1, p3

    .line 136
    if-ne p1, v1, :cond_4

    .line 137
    .line 138
    const-string/jumbo p1, "reset"

    .line 139
    .line 140
    .line 141
    aget-object p3, p3, v8

    .line 142
    .line 143
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 150
    .line 151
    iput-boolean v8, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    .line 152
    .line 153
    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 154
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 156
    .line 157
    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :cond_4
    const-string p0, "Dump current dock state, or:"

    .line 161
    .line 162
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string p0, "  set state <value>"

    .line 166
    .line 167
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string p0, "  reset"

    .line 171
    .line 172
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_3

    .line 176
    .line 177
    :cond_5
    :goto_0
    const-string p3, "Current Dock Observer Service state:"

    .line 178
    .line 179
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object p3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 183
    .line 184
    iget-boolean p3, p3, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    .line 185
    .line 186
    if-eqz p3, :cond_6

    .line 187
    .line 188
    const-string p3, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    .line 189
    .line 190
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 199
    .line 200
    iget v2, v2, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 201
    .line 202
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    new-instance p3, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 218
    .line 219
    iget v1, v1, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 220
    .line 221
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p3

    .line 228
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-instance p3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 237
    .line 238
    iget v0, v0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 239
    .line 240
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object p3

    .line 247
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    new-instance p3, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 256
    .line 257
    iget p1, p1, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    .line 258
    .line 259
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 270
    .line 271
    iget-object p1, p1, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 272
    .line 273
    if-eqz p1, :cond_8

    .line 274
    .line 275
    const-string p1, " == Latest states from Driver =="

    .line 276
    .line 277
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    move p1, v8

    .line 281
    :goto_1
    const/16 p3, 0xa

    .line 282
    .line 283
    if-ge p1, p3, :cond_7

    .line 284
    .line 285
    new-instance p3, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v0, "   Time: "

    .line 291
    .line 292
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 296
    .line 297
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 298
    .line 299
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    .line 300
    .line 301
    aget-wide v0, v0, p1

    .line 302
    .line 303
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    const-string v0, " State: "

    .line 307
    .line 308
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 312
    .line 313
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 314
    .line 315
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    .line 316
    .line 317
    aget v0, v0, p1

    .line 318
    .line 319
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v0, " UsbpdIds: "

    .line 323
    .line 324
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    .line 332
    .line 333
    aget-object v0, v0, p1

    .line 334
    .line 335
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object p3

    .line 342
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    add-int/lit8 p1, p1, 0x1

    .line 346
    .line 347
    goto :goto_1

    .line 348
    :cond_7
    const-string p1, " == Latest states to Apps =="

    .line 349
    .line 350
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    :goto_2
    if-ge v8, p3, :cond_9

    .line 354
    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string v0, "  Time: "

    .line 361
    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 366
    .line 367
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 368
    .line 369
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    .line 370
    .line 371
    aget-wide v0, v0, v8

    .line 372
    .line 373
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v0, " State: "

    .line 377
    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 382
    .line 383
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 384
    .line 385
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->report:[I

    .line 386
    .line 387
    aget v0, v0, v8

    .line 388
    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    const-string v0, " UsbpdIds: "

    .line 393
    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 398
    .line 399
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 400
    .line 401
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    .line 402
    .line 403
    aget-object v0, v0, v8

    .line 404
    .line 405
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    add-int/lit8 v8, v8, 0x1

    .line 416
    .line 417
    goto :goto_2

    .line 418
    :cond_8
    const-string p0, " Cannot log latest events!"

    .line 419
    .line 420
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    :cond_9
    :goto_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :goto_4
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 429
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 430
    :catchall_1
    move-exception p0

    .line 431
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 432
    .line 433
    .line 434
    throw p0
.end method
