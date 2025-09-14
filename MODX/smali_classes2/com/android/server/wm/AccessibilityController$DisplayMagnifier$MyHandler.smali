.class public final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroid/os/Looper;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget p1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows(Z)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x2

    .line 27
    if-eq v0, p1, :cond_1

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_1
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 34
    .line 35
    iget-object v0, p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mwriteTraceToFileInternal(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;)V

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0

    .line 51
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 54
    .line 55
    :try_start_1
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    .line 56
    .line 57
    invoke-direct {v1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 58
    .line 59
    .line 60
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 67
    .line 68
    const-wide v3, 0x20b00000002L

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 74
    .line 75
    .line 76
    move-result-wide v3

    .line 77
    iget-wide v5, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 78
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    sub-long/2addr v7, v5

    .line 84
    new-instance v9, Ljava/util/Date;

    .line 85
    .line 86
    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    const-wide/32 v11, 0xf4240

    .line 94
    .line 95
    .line 96
    div-long/2addr v7, v11

    .line 97
    sub-long/2addr v9, v7

    .line 98
    new-instance v7, Ljava/text/SimpleDateFormat;

    .line 99
    .line 100
    const-string v8, "MM-dd HH:mm:ss.SSS"

    .line 101
    .line 102
    invoke-direct {v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-wide v11, 0x10600000001L

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v11, v12, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 111
    .line 112
    .line 113
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v7, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    const-wide v8, 0x10900000002L

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-wide v7, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    .line 134
    .line 135
    invoke-static {v7, v8}, Landroid/accessibilityservice/AccessibilityTrace;->getNamesOfLoggingTypes(J)Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v8

    .line 147
    if-eqz v8, :cond_3

    .line 148
    .line 149
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Ljava/lang/String;

    .line 154
    .line 155
    const-wide v9, 0x20900000003L

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :catch_0
    move-exception p0

    .line 165
    goto/16 :goto_2

    .line 166
    .line 167
    :cond_3
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v7, Ljava/lang/String;

    .line 170
    .line 171
    const-wide v8, 0x10900000006L

    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 180
    .line 181
    check-cast v7, Ljava/lang/String;

    .line 182
    .line 183
    const-wide v8, 0x10900000004L

    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v7, Ljava/lang/String;

    .line 194
    .line 195
    const-wide v8, 0x10900000005L

    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 204
    .line 205
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    const-wide v7, 0x10900000007L

    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 218
    .line 219
    check-cast p1, Ljava/lang/String;

    .line 220
    .line 221
    const-wide v7, 0x10900000008L

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 232
    .line 233
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v2, [Ljava/lang/StackTraceElement;

    .line 236
    .line 237
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v7, Ljava/util/Set;

    .line 240
    .line 241
    invoke-static {p1, v2, v7}, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->-$$Nest$mtoStackTraceString(Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;[Ljava/lang/StackTraceElement;Ljava/util/Set;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    const-wide v7, 0x10900000009L

    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 251
    .line 252
    .line 253
    iget-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p1, [B

    .line 256
    .line 257
    const-wide v7, 0x10b0000000aL

    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    invoke-virtual {v1, v7, v8, p1}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 263
    .line 264
    .line 265
    const-wide v7, 0x10b0000000bL

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 271
    .line 272
    .line 273
    move-result-wide v7

    .line 274
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 277
    .line 278
    iget-object p1, p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 279
    .line 280
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 281
    .line 282
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 283
    .line 284
    .line 285
    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 291
    .line 292
    const/4 v2, 0x0

    .line 293
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->dumpDebugLocked(ILandroid/util/proto/ProtoOutputStream;)V

    .line 294
    .line 295
    .line 296
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 297
    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 301
    .line 302
    .line 303
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 304
    .line 305
    check-cast p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 306
    .line 307
    iget-object p1, p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 308
    .line 309
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 310
    .line 311
    const/4 v0, 0x5

    .line 312
    invoke-virtual {p1, v5, v6, v0}, Landroid/app/ActivityManagerInternal;->getAppProfileStatsForDebugging(JI)Landroid/util/Pair;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 322
    .line 323
    check-cast v2, Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast p1, Ljava/lang/String;

    .line 331
    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    const-wide v5, 0x1090000000cL

    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    invoke-virtual {v1, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 348
    .line 349
    .line 350
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 351
    .line 352
    check-cast p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 353
    .line 354
    iget-object p1, p1, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mLock:Ljava/lang/Object;

    .line 355
    .line 356
    monitor-enter p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 357
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 358
    .line 359
    check-cast p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;

    .line 360
    .line 361
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$AccessibilityTracing;->mBuffer:Lcom/android/internal/util/TraceBuffer;

    .line 362
    .line 363
    invoke-virtual {p0, v1}, Lcom/android/internal/util/TraceBuffer;->add(Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    monitor-exit p1

    .line 367
    goto :goto_3

    .line 368
    :catchall_1
    move-exception p0

    .line 369
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 370
    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 371
    :catchall_2
    move-exception p0

    .line 372
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 373
    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 374
    .line 375
    .line 376
    throw p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 377
    :goto_2
    const-string p1, "AccessibilityTracing"

    .line 378
    .line 379
    const-string v0, "Exception while tracing state"

    .line 380
    .line 381
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .line 383
    .line 384
    :goto_3
    return-void

    .line 385
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 386
    .line 387
    const/4 v1, 0x1

    .line 388
    if-eq v0, v1, :cond_b

    .line 389
    .line 390
    const/4 v2, 0x3

    .line 391
    if-eq v0, v2, :cond_a

    .line 392
    .line 393
    const/4 v2, 0x4

    .line 394
    if-eq v0, v2, :cond_9

    .line 395
    .line 396
    const/4 v2, 0x5

    .line 397
    if-eq v0, v2, :cond_6

    .line 398
    .line 399
    const/4 v2, 0x6

    .line 400
    if-eq v0, v2, :cond_4

    .line 401
    .line 402
    goto/16 :goto_7

    .line 403
    .line 404
    :cond_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 405
    .line 406
    if-ne p1, v1, :cond_5

    .line 407
    .line 408
    goto :goto_4

    .line 409
    :cond_5
    const/4 v1, 0x0

    .line 410
    :goto_4
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 413
    .line 414
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 415
    .line 416
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 417
    .line 418
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 419
    .line 420
    .line 421
    new-instance p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;

    .line 422
    .line 423
    const/4 v0, 0x1

    .line 424
    invoke-direct {p1, v0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda2;-><init>(I)V

    .line 425
    .line 426
    .line 427
    iget v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->mDisplayId:I

    .line 428
    .line 429
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 438
    .line 439
    invoke-static {p1, p0, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 444
    .line 445
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 446
    .line 447
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    .line 449
    .line 450
    goto/16 :goto_7

    .line 451
    .line 452
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 453
    .line 454
    check-cast p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 455
    .line 456
    iget-object p1, p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 457
    .line 458
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 459
    .line 460
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 461
    .line 462
    .line 463
    monitor-enter p1

    .line 464
    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 465
    .line 466
    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->isFullscreenMagnificationActivated()Z

    .line 469
    .line 470
    .line 471
    move-result v0

    .line 472
    if-eqz v0, :cond_8

    .line 473
    .line 474
    invoke-static {}, Lcom/android/window/flags/Flags;->alwaysDrawMagnificationFullscreenBorder()Z

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-nez v0, :cond_7

    .line 479
    .line 480
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 481
    .line 482
    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 483
    .line 484
    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mMagnifiedViewport:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;

    .line 485
    .line 486
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->setMagnifiedRegionBorderShown(ZZ)V

    .line 487
    .line 488
    .line 489
    goto :goto_5

    .line 490
    :catchall_3
    move-exception p0

    .line 491
    goto :goto_6

    .line 492
    :cond_7
    :goto_5
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 493
    .line 494
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 495
    .line 496
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 497
    .line 498
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 499
    .line 500
    .line 501
    :cond_8
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 502
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 503
    .line 504
    .line 505
    goto :goto_7

    .line 506
    :goto_6
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 507
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 508
    .line 509
    .line 510
    throw p0

    .line 511
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 512
    .line 513
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 514
    .line 515
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 516
    .line 517
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 518
    .line 519
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onUserContextChanged()V

    .line 520
    .line 521
    .line 522
    goto :goto_7

    .line 523
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 524
    .line 525
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 526
    .line 527
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 528
    .line 529
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 530
    .line 531
    invoke-virtual {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->onUserContextChanged()V

    .line 532
    .line 533
    .line 534
    goto :goto_7

    .line 535
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    .line 537
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 538
    .line 539
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast p1, Landroid/graphics/Region;

    .line 542
    .line 543
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MyHandler;->this$0:Ljava/lang/Object;

    .line 544
    .line 545
    check-cast p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 546
    .line 547
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->mCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 548
    .line 549
    check-cast p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    .line 550
    .line 551
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    new-instance v0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;

    .line 555
    .line 556
    const/4 v1, 0x2

    .line 557
    invoke-direct {v0, v1}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$$ExternalSyntheticLambda4;-><init>(I)V

    .line 558
    .line 559
    .line 560
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->this$0:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    .line 569
    .line 570
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->mControllerCtx:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;

    .line 571
    .line 572
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ControllerContext;->mHandler:Landroid/os/Handler;

    .line 573
    .line 574
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 575
    .line 576
    .line 577
    invoke-virtual {p1}, Landroid/graphics/Region;->recycle()V

    .line 578
    .line 579
    .line 580
    :goto_7
    return-void

    .line 581
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
