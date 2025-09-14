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

    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string p1, " last uevent device: "

    .line 3
    const-string v0, "  actual state: "

    .line 5
    const-string v1, "  previous state: "

    .line 7
    const-string v2, "  reported state: "

    .line 9
    const-string v3, "Bad value: "

    .line 11
    const-string v4, "Unknown set option: "

    .line 13
    iget-object v5, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 15
    invoke-virtual {v5}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 18
    move-result-object v5

    .line 19
    const-string v6, "DockObserver"

    .line 21
    invoke-static {v5, v6, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v5

    .line 32
    :try_start_0
    iget-object v7, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 34
    iget-object v7, v7, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 36
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    const/4 v8, 0x0

    .line 38
    if-eqz p3, :cond_5

    .line 40
    :try_start_1
    array-length v9, p3

    .line 41
    if-eqz v9, :cond_5

    .line 43
    const-string v9, "-a"

    .line 45
    aget-object v10, p3, v8

    .line 47
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v9

    .line 51
    if-eqz v9, :cond_1

    .line 53
    goto/16 :goto_0

    .line 55
    :cond_1
    array-length p1, p3

    .line 56
    const/4 v0, 0x3

    .line 57
    const/4 v1, 0x1

    .line 58
    if-ne p1, v0, :cond_3

    .line 60
    const-string/jumbo p1, "set"

    .line 63
    aget-object v0, p3, v8

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_3

    .line 71
    aget-object p1, p3, v1

    .line 73
    const/4 v0, 0x2

    .line 74
    aget-object p3, p3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    const-string/jumbo v0, "state"

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_2

    .line 85
    iget-object p0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 87
    iput-boolean v1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    .line 89
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 92
    move-result p1

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 96
    goto/16 :goto_3

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    goto/16 :goto_4

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    goto/16 :goto_3

    .line 118
    :catch_0
    :try_start_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    goto/16 :goto_3

    .line 135
    :cond_3
    array-length p1, p3

    .line 136
    if-ne p1, v1, :cond_4

    .line 138
    const-string/jumbo p1, "reset"

    .line 141
    aget-object p3, p3, v8

    .line 143
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result p1

    .line 147
    if-eqz p1, :cond_4

    .line 149
    iget-object p0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 151
    iput-boolean v8, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    .line 153
    iget p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    .line 158
    goto/16 :goto_3

    .line 160
    :cond_4
    const-string p0, "Dump current dock state, or:"

    .line 162
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    const-string p0, "  set state <value>"

    .line 167
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    const-string p0, "  reset"

    .line 172
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    goto/16 :goto_3

    .line 177
    :cond_5
    :goto_0
    const-string p3, "Current Dock Observer Service state:"

    .line 179
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    iget-object p3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 184
    iget-boolean p3, p3, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    .line 186
    if-eqz p3, :cond_6

    .line 188
    const-string p3, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    .line 190
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {p3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 200
    iget v2, v2, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 202
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p3

    .line 209
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    new-instance p3, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 219
    iget v1, v1, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 221
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p3

    .line 228
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    new-instance p3, Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 238
    iget v0, v0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 240
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object p3

    .line 247
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance p3, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 257
    iget p1, p1, Lcom/android/server/DockObserver;->mLastUeventDevice:I

    .line 259
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 271
    iget-object p1, p1, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 273
    if-eqz p1, :cond_8

    .line 275
    const-string p1, " == Latest states from Driver =="

    .line 277
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    move p1, v8

    .line 281
    :goto_1
    const/16 p3, 0xa

    .line 283
    if-ge p1, p3, :cond_7

    .line 285
    new-instance p3, Ljava/lang/StringBuilder;

    .line 287
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    const-string v0, "   Time: "

    .line 292
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 297
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 299
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    .line 301
    aget-wide v0, v0, p1

    .line 303
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 306
    const-string v0, " State: "

    .line 308
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 313
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 315
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    .line 317
    aget v0, v0, p1

    .line 319
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    const-string v0, " UsbpdIds: "

    .line 324
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 329
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 331
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    .line 333
    aget-object v0, v0, p1

    .line 335
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    move-result-object p3

    .line 342
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    add-int/lit8 p1, p1, 0x1

    .line 347
    goto :goto_1

    .line 348
    :cond_7
    const-string p1, " == Latest states to Apps =="

    .line 350
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    :goto_2
    if-ge v8, p3, :cond_9

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    .line 357
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    const-string v0, "  Time: "

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 367
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 369
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    .line 371
    aget-wide v0, v0, v8

    .line 373
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 376
    const-string v0, " State: "

    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 383
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 385
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->report:[I

    .line 387
    aget v0, v0, v8

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    const-string v0, " UsbpdIds: "

    .line 394
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    .line 399
    iget-object v0, v0, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 401
    iget-object v0, v0, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    .line 403
    aget-object v0, v0, v8

    .line 405
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    add-int/lit8 v8, v8, 0x1

    .line 417
    goto :goto_2

    .line 418
    :cond_8
    const-string p0, " Cannot log latest events!"

    .line 420
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    :cond_9
    :goto_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

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

    .line 434
    throw p0
.end method
