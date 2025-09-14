.class public final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private final handleMessage$com$android$server$am$ActivityManagerService$UiHandler(Landroid/os/Message;)V
    .locals 8

    .line 1
    const-string v0, "App already has strict mode dialog: "

    .line 2
    .line 3
    iget v1, p1, Landroid/os/Message;->what:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eq v1, v2, :cond_20

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    if-eq v1, v3, :cond_1f

    .line 10
    .line 11
    const/4 v3, 0x6

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eq v1, v3, :cond_1b

    .line 14
    .line 15
    const/16 v3, 0x1a

    .line 16
    .line 17
    if-eq v1, v3, :cond_17

    .line 18
    .line 19
    const/16 v0, 0x44

    .line 20
    .line 21
    if-eq v1, v0, :cond_16

    .line 22
    .line 23
    const/16 v0, 0x46

    .line 24
    .line 25
    if-eq v1, v0, :cond_15

    .line 26
    .line 27
    const/16 v0, 0x1f

    .line 28
    .line 29
    if-eq v1, v0, :cond_14

    .line 30
    .line 31
    const/16 v0, 0x20

    .line 32
    .line 33
    if-eq v1, v0, :cond_11

    .line 34
    .line 35
    const/16 v0, 0x50

    .line 36
    .line 37
    if-eq v1, v0, :cond_8

    .line 38
    .line 39
    const/16 v0, 0x51

    .line 40
    .line 41
    if-eq v1, v0, :cond_0

    .line 42
    .line 43
    goto/16 :goto_e

    .line 44
    .line 45
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 48
    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v0, Landroid/os/IBinder;

    .line 52
    .line 53
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    :goto_0
    add-int/lit8 v3, v1, -0x1

    .line 62
    .line 63
    if-lez v1, :cond_7

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 66
    .line 67
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 72
    .line 73
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    .line 74
    .line 75
    invoke-interface {v5, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    iget-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 82
    .line 83
    if-eqz v0, :cond_7

    .line 84
    .line 85
    array-length v3, v0

    .line 86
    if-nez v3, :cond_1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_1
    array-length v3, v0

    .line 90
    sub-int/2addr v3, v2

    .line 91
    new-array v3, v3, [I

    .line 92
    .line 93
    iput-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 94
    .line 95
    move v3, v4

    .line 96
    :goto_1
    array-length v5, v0

    .line 97
    if-ge v4, v5, :cond_7

    .line 98
    .line 99
    if-nez v3, :cond_4

    .line 100
    .line 101
    aget v5, v0, v4

    .line 102
    .line 103
    if-ne v5, p1, :cond_2

    .line 104
    .line 105
    move v3, v2

    .line 106
    goto :goto_2

    .line 107
    :cond_2
    array-length v6, v0

    .line 108
    sub-int/2addr v6, v2

    .line 109
    if-ne v4, v6, :cond_3

    .line 110
    .line 111
    iput-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_3
    iget-object v6, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 115
    .line 116
    aput v5, v6, v4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 120
    .line 121
    add-int/lit8 v6, v4, -0x1

    .line 122
    .line 123
    aget v7, v0, v4

    .line 124
    .line 125
    aput v7, v5, v6

    .line 126
    .line 127
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    if-nez v3, :cond_6

    .line 131
    .line 132
    const-string v1, "ActivityManager"

    .line 133
    .line 134
    const-string v5, "Unable to find UidObserver by token"

    .line 135
    .line 136
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :cond_6
    move v1, v3

    .line 140
    goto :goto_0

    .line 141
    :cond_7
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 142
    .line 143
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_e

    .line 147
    .line 148
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    .line 151
    .line 152
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 153
    .line 154
    check-cast v0, Landroid/os/IBinder;

    .line 155
    .line 156
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 157
    .line 158
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 159
    .line 160
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    :goto_4
    add-int/lit8 v3, v1, -0x1

    .line 165
    .line 166
    if-lez v1, :cond_10

    .line 167
    .line 168
    iget-object v1, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 169
    .line 170
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    check-cast v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;

    .line 175
    .line 176
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    .line 177
    .line 178
    invoke-interface {v5, v0}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_e

    .line 183
    .line 184
    iget-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 185
    .line 186
    if-nez v0, :cond_9

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_9
    array-length v3, v0

    .line 190
    add-int/2addr v3, v2

    .line 191
    new-array v3, v3, [I

    .line 192
    .line 193
    iput-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 194
    .line 195
    move v3, v4

    .line 196
    :goto_5
    array-length v5, v0

    .line 197
    if-ge v4, v5, :cond_d

    .line 198
    .line 199
    if-nez v3, :cond_c

    .line 200
    .line 201
    aget v5, v0, v4

    .line 202
    .line 203
    if-ge v5, p1, :cond_a

    .line 204
    .line 205
    iget-object v6, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 206
    .line 207
    aput v5, v6, v4

    .line 208
    .line 209
    goto :goto_6

    .line 210
    :cond_a
    if-ne v5, p1, :cond_b

    .line 211
    .line 212
    iput-object v0, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_b
    iget-object v3, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 216
    .line 217
    aput p1, v3, v4

    .line 218
    .line 219
    add-int/lit8 v5, v4, 0x1

    .line 220
    .line 221
    aget v6, v0, v4

    .line 222
    .line 223
    aput v6, v3, v5

    .line 224
    .line 225
    move v3, v2

    .line 226
    goto :goto_6

    .line 227
    :cond_c
    iget-object v5, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 228
    .line 229
    add-int/lit8 v6, v4, 0x1

    .line 230
    .line 231
    aget v7, v0, v4

    .line 232
    .line 233
    aput v7, v5, v6

    .line 234
    .line 235
    :goto_6
    add-int/lit8 v4, v4, 0x1

    .line 236
    .line 237
    goto :goto_5

    .line 238
    :cond_d
    if-nez v3, :cond_10

    .line 239
    .line 240
    iget-object v1, v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    .line 241
    .line 242
    array-length v0, v0

    .line 243
    aput p1, v1, v0

    .line 244
    .line 245
    goto :goto_7

    .line 246
    :cond_e
    if-nez v3, :cond_f

    .line 247
    .line 248
    const-string v1, "ActivityManager"

    .line 249
    .line 250
    const-string v5, "Unable to find UidObserver by token"

    .line 251
    .line 252
    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    :cond_f
    move v1, v3

    .line 256
    goto :goto_4

    .line 257
    :cond_10
    :goto_7
    iget-object p0, p0, Lcom/android/server/am/UidObserverController;->mUidObservers:Landroid/os/RemoteCallbackList;

    .line 258
    .line 259
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_e

    .line 263
    .line 264
    :cond_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 265
    .line 266
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 271
    .line 272
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 273
    .line 274
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    :catch_0
    :cond_12
    :goto_8
    if-lez v1, :cond_13

    .line 279
    .line 280
    add-int/lit8 v1, v1, -0x1

    .line 281
    .line 282
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 283
    .line 284
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    check-cast v2, Landroid/app/IProcessObserver;

    .line 289
    .line 290
    if-eqz v2, :cond_12

    .line 291
    .line 292
    :try_start_0
    invoke-interface {v2, v0, p1}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .line 294
    .line 295
    goto :goto_8

    .line 296
    :cond_13
    iget-object p0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 297
    .line 298
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_e

    .line 302
    .line 303
    :cond_14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 304
    .line 305
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 306
    .line 307
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->dispatchProcessesChanged()V

    .line 308
    .line 309
    .line 310
    goto/16 :goto_e

    .line 311
    .line 312
    :cond_15
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 313
    .line 314
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 315
    .line 316
    check-cast p1, Ljava/lang/String;

    .line 317
    .line 318
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    .line 319
    .line 320
    monitor-enter v0

    .line 321
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    .line 322
    .line 323
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 324
    if-eqz p0, :cond_22

    .line 325
    .line 326
    check-cast p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;

    .line 327
    .line 328
    monitor-enter p0

    .line 329
    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 330
    .line 331
    .line 332
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 334
    .line 335
    const-string v2, "# "

    .line 336
    .line 337
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 341
    .line 342
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyUidObserver;->mPw:Ljava/io/PrintWriter;

    .line 346
    .line 347
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 348
    .line 349
    .line 350
    :try_start_4
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 351
    .line 352
    .line 353
    monitor-exit p0

    .line 354
    goto/16 :goto_e

    .line 355
    .line 356
    :catchall_0
    move-exception p1

    .line 357
    goto :goto_9

    .line 358
    :catchall_1
    move-exception p1

    .line 359
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 360
    .line 361
    .line 362
    throw p1

    .line 363
    :goto_9
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    throw p1

    .line 365
    :catchall_2
    move-exception p0

    .line 366
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 367
    throw p0

    .line 368
    :cond_16
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 369
    .line 370
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->pushTempAllowlist()V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_e

    .line 374
    .line 375
    :cond_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    .line 377
    check-cast p1, Ljava/util/HashMap;

    .line 378
    .line 379
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 380
    .line 381
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 382
    .line 383
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 384
    .line 385
    .line 386
    monitor-enter v1

    .line 387
    :try_start_6
    const-string v2, "app"

    .line 388
    .line 389
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 394
    .line 395
    if-nez v2, :cond_18

    .line 396
    .line 397
    const-string p0, "ActivityManager"

    .line 398
    .line 399
    const-string p1, "App not found when showing strict mode dialog."

    .line 400
    .line 401
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .line 403
    .line 404
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 405
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 406
    .line 407
    .line 408
    goto/16 :goto_e

    .line 409
    .line 410
    :catchall_3
    move-exception p0

    .line 411
    goto :goto_b

    .line 412
    :cond_18
    :try_start_7
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 413
    .line 414
    iget-object v3, v3, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 415
    .line 416
    iget-object v3, v3, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 417
    .line 418
    if-eqz v3, :cond_19

    .line 419
    .line 420
    const-string p0, "ActivityManager"

    .line 421
    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .line 436
    .line 437
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 438
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 439
    .line 440
    .line 441
    return-void

    .line 442
    :cond_19
    :try_start_8
    const-string/jumbo v0, "result"

    .line 443
    .line 444
    .line 445
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    check-cast p1, Lcom/android/server/am/AppErrorResult;

    .line 450
    .line 451
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 452
    .line 453
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->showStrictModeViolationDialog()Z

    .line 456
    .line 457
    .line 458
    move-result v0

    .line 459
    if-eqz v0, :cond_1a

    .line 460
    .line 461
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 462
    .line 463
    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 464
    .line 465
    invoke-virtual {v0, p1}, Lcom/android/server/am/ErrorDialogController;->showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V

    .line 466
    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_1a
    invoke-virtual {p1, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 470
    .line 471
    .line 472
    :goto_a
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 473
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 474
    .line 475
    .line 476
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 477
    .line 478
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_e

    .line 482
    .line 483
    :goto_b
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 484
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 485
    .line 486
    .line 487
    throw p0

    .line 488
    :cond_1b
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 489
    .line 490
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 491
    .line 492
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 493
    .line 494
    .line 495
    monitor-enter v0

    .line 496
    :try_start_a
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    .line 499
    .line 500
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 501
    .line 502
    if-eqz p1, :cond_1c

    .line 503
    .line 504
    iget-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    .line 505
    .line 506
    if-nez p1, :cond_1e

    .line 507
    .line 508
    iget-object p1, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 509
    .line 510
    iget-object p1, p1, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 511
    .line 512
    invoke-virtual {p1, v2}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    check-cast v1, Ljava/util/ArrayList;

    .line 517
    .line 518
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    check-cast v1, Landroid/content/Context;

    .line 523
    .line 524
    new-instance v3, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 525
    .line 526
    iget-object v4, p1, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 527
    .line 528
    iget-object v5, p1, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 529
    .line 530
    invoke-direct {v3, v5, v1, v4}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 531
    .line 532
    .line 533
    iput-object v3, p1, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 534
    .line 535
    iget-object v1, v5, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 536
    .line 537
    new-instance v3, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    .line 538
    .line 539
    const/4 v4, 0x0

    .line 540
    invoke-direct {v3, v4, p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    .line 545
    .line 546
    iput-boolean v2, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    .line 547
    .line 548
    goto :goto_c

    .line 549
    :catchall_4
    move-exception p0

    .line 550
    goto :goto_d

    .line 551
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 552
    .line 553
    iget-object p0, p0, Lcom/android/server/am/ProcessErrorStateRecord;->mDialogController:Lcom/android/server/am/ErrorDialogController;

    .line 554
    .line 555
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 556
    .line 557
    if-nez p1, :cond_1d

    .line 558
    .line 559
    goto :goto_c

    .line 560
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 561
    .line 562
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 563
    .line 564
    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    .line 565
    .line 566
    const/4 v3, 0x2

    .line 567
    invoke-direct {v2, v3, p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 571
    .line 572
    .line 573
    const/4 p1, 0x0

    .line 574
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 575
    .line 576
    :cond_1e
    :goto_c
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 577
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 578
    .line 579
    .line 580
    goto :goto_e

    .line 581
    :goto_d
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 582
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 583
    .line 584
    .line 585
    throw p0

    .line 586
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 587
    .line 588
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 589
    .line 590
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    .line 591
    .line 592
    .line 593
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 594
    .line 595
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 596
    .line 597
    .line 598
    goto :goto_e

    .line 599
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 600
    .line 601
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 602
    .line 603
    if-nez v0, :cond_21

    .line 604
    .line 605
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 606
    .line 607
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 608
    .line 609
    if-nez v0, :cond_21

    .line 610
    .line 611
    const-string v0, "ActivityManager"

    .line 612
    .line 613
    const-string v1, "SHOW_ERROR_UI_MSG will deliver again in 5s"

    .line 614
    .line 615
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 619
    .line 620
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 621
    .line 622
    iget v1, p1, Landroid/os/Message;->what:I

    .line 623
    .line 624
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 625
    .line 626
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 627
    .line 628
    .line 629
    move-result-object p1

    .line 630
    const-wide/16 v0, 0x1388

    .line 631
    .line 632
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 633
    .line 634
    .line 635
    goto :goto_e

    .line 636
    :cond_21
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 637
    .line 638
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 639
    .line 640
    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    .line 641
    .line 642
    .line 643
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 644
    .line 645
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 646
    .line 647
    .line 648
    :cond_22
    :goto_e
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget v0, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/4 v1, 0x5

    .line 9
    if-eq v0, v1, :cond_15

    .line 10
    .line 11
    const/16 v1, 0x14

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_14

    .line 15
    .line 16
    const/16 v1, 0x16

    .line 17
    .line 18
    if-eq v0, v1, :cond_13

    .line 19
    .line 20
    const/16 v1, 0x21

    .line 21
    .line 22
    if-eq v0, v1, :cond_12

    .line 23
    .line 24
    const/16 v1, 0x29

    .line 25
    .line 26
    if-eq v0, v1, :cond_f

    .line 27
    .line 28
    const/16 v1, 0x3f

    .line 29
    .line 30
    if-eq v0, v1, :cond_c

    .line 31
    .line 32
    const/16 v1, 0x45

    .line 33
    .line 34
    if-eq v0, v1, :cond_b

    .line 35
    .line 36
    const/16 v1, 0x5a

    .line 37
    .line 38
    if-eq v0, v1, :cond_9

    .line 39
    .line 40
    const/16 v1, 0xc

    .line 41
    .line 42
    if-eq v0, v1, :cond_8

    .line 43
    .line 44
    const/16 v1, 0xd

    .line 45
    .line 46
    if-eq v0, v1, :cond_7

    .line 47
    .line 48
    const/16 v1, 0x42

    .line 49
    .line 50
    if-eq v0, v1, :cond_6

    .line 51
    .line 52
    const/16 v1, 0x43

    .line 53
    .line 54
    if-eq v0, v1, :cond_5

    .line 55
    .line 56
    packed-switch v0, :pswitch_data_1

    .line 57
    .line 58
    .line 59
    packed-switch v0, :pswitch_data_2

    .line 60
    .line 61
    .line 62
    packed-switch v0, :pswitch_data_3

    .line 63
    .line 64
    .line 65
    packed-switch v0, :pswitch_data_4

    .line 66
    .line 67
    .line 68
    packed-switch v0, :pswitch_data_5

    .line 69
    .line 70
    .line 71
    goto/16 :goto_b

    .line 72
    .line 73
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 74
    .line 75
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleFollowUpOomAdjusterUpdate(Lcom/android/server/am/ActivityManagerService;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_b

    .line 79
    .line 80
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 83
    .line 84
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onFgsCrashTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_b

    .line 92
    .line 93
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 96
    .line 97
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onFgsTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 102
    .line 103
    .line 104
    goto/16 :goto_b

    .line 105
    .line 106
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 107
    .line 108
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService;->handleBindApplicationTimeoutHard(Lcom/android/server/am/ProcessRecord;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_b

    .line 116
    .line 117
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 118
    .line 119
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 122
    .line 123
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 124
    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 129
    .line 130
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 131
    .line 132
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 133
    .line 134
    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuDelayTimeForPid(I)J

    .line 137
    .line 138
    .line 139
    move-result-wide v1

    .line 140
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 141
    .line 142
    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuDelayTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    sub-long v5, v1, v3

    .line 149
    .line 150
    const-wide/16 v7, 0x0

    .line 151
    .line 152
    int-to-long v9, p1

    .line 153
    invoke-static/range {v5 .. v10}, Landroid/util/MathUtils;->constrain(JJJ)J

    .line 154
    .line 155
    .line 156
    move-result-wide v1

    .line 157
    const-wide/16 v3, 0x0

    .line 158
    .line 159
    cmp-long p1, v1, v3

    .line 160
    .line 161
    if-nez p1, :cond_0

    .line 162
    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityManagerService;->handleBindApplicationTimeoutHard(Lcom/android/server/am/ProcessRecord;)V

    .line 164
    .line 165
    .line 166
    goto/16 :goto_b

    .line 167
    .line 168
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string v3, "Extending process start timeout by "

    .line 171
    .line 172
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string/jumbo v3, "ms for "

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string v3, "ActivityManager"

    .line 192
    .line 193
    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v3, "bindApplicationTimeSoft "

    .line 199
    .line 200
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 204
    .line 205
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string v3, "("

    .line 209
    .line 210
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 214
    .line 215
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, ")"

    .line 219
    .line 220
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    const-wide/16 v3, 0x40

    .line 228
    .line 229
    invoke-static {v3, v4, p1}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 233
    .line 234
    const/16 v3, 0x53

    .line 235
    .line 236
    invoke-virtual {p1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$UiHandler;

    .line 241
    .line 242
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 243
    .line 244
    .line 245
    goto/16 :goto_b

    .line 246
    .line 247
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 248
    .line 249
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/am/AppProfiler;->mCachedAppsWatermarkData:Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;

    .line 252
    .line 253
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 254
    .line 255
    check-cast p1, Ljava/lang/Long;

    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 258
    .line 259
    .line 260
    move-result-wide v0

    .line 261
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppProfiler$CachedAppsWatermarkData;->updateCachedAppsSnapshot(J)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_b

    .line 265
    .line 266
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 267
    .line 268
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 269
    .line 270
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 271
    .line 272
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 273
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsAnrTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 275
    .line 276
    .line 277
    goto/16 :goto_b

    .line 278
    .line 279
    :pswitch_7
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 280
    .line 281
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 282
    .line 283
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 286
    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsProcstateTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_b

    .line 291
    .line 292
    :pswitch_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 293
    .line 294
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 295
    .line 296
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 299
    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->onShortFgsTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_b

    .line 304
    .line 305
    :pswitch_9
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 306
    .line 307
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBindServiceEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 308
    .line 309
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;

    .line 310
    .line 311
    const/4 v1, 0x1

    .line 312
    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/Message;I)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 316
    .line 317
    .line 318
    goto/16 :goto_b

    .line 319
    .line 320
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 321
    .line 322
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mBroadcastEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 323
    .line 324
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;

    .line 325
    .line 326
    const/4 v1, 0x0

    .line 327
    invoke-direct {v0, p1, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda1;-><init>(Landroid/os/Message;I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 331
    .line 332
    .line 333
    goto/16 :goto_b

    .line 334
    .line 335
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 336
    .line 337
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 338
    .line 339
    .line 340
    monitor-enter v0

    .line 341
    :try_start_0
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 342
    .line 343
    check-cast p0, Lcom/android/server/am/ContentProviderRecord;

    .line 344
    .line 345
    invoke-virtual {p0, v2}, Lcom/android/server/am/ContentProviderRecord;->onProviderPublishStatusLocked(Z)V

    .line 346
    .line 347
    .line 348
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 350
    .line 351
    .line 352
    goto/16 :goto_b

    .line 353
    .line 354
    :catchall_0
    move-exception p0

    .line 355
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 357
    .line 358
    .line 359
    throw p0

    .line 360
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 361
    .line 362
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mhandleBinderHeavyHitterAutoSamplerTimeOut(Lcom/android/server/am/ActivityManagerService;)V

    .line 363
    .line 364
    .line 365
    goto/16 :goto_b

    .line 366
    .line 367
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 368
    .line 369
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 370
    .line 371
    .line 372
    monitor-enter v0

    .line 373
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast p1, Landroid/os/AppZygote;

    .line 376
    .line 377
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 378
    .line 379
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 380
    .line 381
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 382
    .line 383
    .line 384
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_b

    .line 389
    .line 390
    :catchall_1
    move-exception p0

    .line 391
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 392
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 393
    .line 394
    .line 395
    throw p0

    .line 396
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 397
    .line 398
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_b

    .line 402
    .line 403
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    .line 405
    move-object v1, p1

    .line 406
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 407
    .line 408
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 409
    .line 410
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 411
    .line 412
    .line 413
    monitor-enter v8

    .line 414
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 415
    .line 416
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mCpHelper:Lcom/android/server/am/ContentProviderHelper;

    .line 417
    .line 418
    const/4 p1, 0x1

    .line 419
    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/ContentProviderHelper;->cleanupAppInLaunchingProvidersLocked(Lcom/android/server/am/ProcessRecord;Z)Z

    .line 420
    .line 421
    .line 422
    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 423
    .line 424
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 425
    .line 426
    const-string/jumbo v6, "timeout publishing content providers"

    .line 427
    .line 428
    .line 429
    const/4 v4, 0x7

    .line 430
    const/4 v5, 0x0

    .line 431
    const/4 v7, 0x1

    .line 432
    const/4 v2, 0x0

    .line 433
    const/4 v3, 0x1

    .line 434
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;Z)Z

    .line 435
    .line 436
    .line 437
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 438
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 439
    .line 440
    .line 441
    goto/16 :goto_b

    .line 442
    .line 443
    :catchall_2
    move-exception p0

    .line 444
    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 445
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 446
    .line 447
    .line 448
    throw p0

    .line 449
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 450
    .line 451
    check-cast p1, Landroid/app/IUiAutomationConnection;

    .line 452
    .line 453
    :try_start_6
    invoke-interface {p1}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 454
    .line 455
    .line 456
    goto :goto_0

    .line 457
    :catch_0
    const-string p1, "ActivityManager"

    .line 458
    .line 459
    const-string v0, "Error shutting down UiAutomationConnection"

    .line 460
    .line 461
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    .line 463
    .line 464
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 465
    .line 466
    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z

    .line 467
    .line 468
    goto/16 :goto_b

    .line 469
    .line 470
    :pswitch_11
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 471
    .line 472
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 473
    .line 474
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast p1, Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppProfiler;->handleAbortDumpHeap(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_b

    .line 482
    .line 483
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 484
    .line 485
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 486
    .line 487
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->handlePostDumpHeapNotification()V

    .line 488
    .line 489
    .line 490
    goto/16 :goto_b

    .line 491
    .line 492
    :pswitch_13
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 493
    .line 494
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast p1, [B

    .line 497
    .line 498
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 499
    .line 500
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 501
    .line 502
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 503
    .line 504
    .line 505
    monitor-enter v1

    .line 506
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 507
    .line 508
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 509
    .line 510
    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 511
    :goto_1
    :try_start_8
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 512
    .line 513
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 514
    .line 515
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService$PidMap;->mPidMap:Ljava/lang/Object;

    .line 516
    .line 517
    check-cast v4, Landroid/util/SparseArray;

    .line 518
    .line 519
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 520
    .line 521
    .line 522
    move-result v4

    .line 523
    if-ge v2, v4, :cond_2

    .line 524
    .line 525
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 526
    .line 527
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    .line 528
    .line 529
    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 534
    .line 535
    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 536
    .line 537
    if-ne v4, v0, :cond_1

    .line 538
    .line 539
    if-eqz v5, :cond_1

    .line 540
    .line 541
    :try_start_9
    invoke-interface {v5, p1}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 542
    .line 543
    .line 544
    goto :goto_2

    .line 545
    :catchall_3
    move-exception p0

    .line 546
    goto :goto_3

    .line 547
    :catch_1
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 548
    .line 549
    goto :goto_1

    .line 550
    :cond_2
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 551
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 552
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_b

    .line 556
    .line 557
    :catchall_4
    move-exception p0

    .line 558
    goto :goto_4

    .line 559
    :goto_3
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 560
    :try_start_d
    throw p0

    .line 561
    :goto_4
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 562
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 563
    .line 564
    .line 565
    throw p0

    .line 566
    :pswitch_14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 567
    .line 568
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 569
    .line 570
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->setAllHttpProxy()V

    .line 571
    .line 572
    .line 573
    goto/16 :goto_b

    .line 574
    .line 575
    :pswitch_15
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 576
    .line 577
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 578
    .line 579
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 580
    .line 581
    .line 582
    monitor-enter p1

    .line 583
    :try_start_e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 584
    .line 585
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 586
    .line 587
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 588
    .line 589
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    add-int/lit8 v0, v0, -0x1

    .line 594
    .line 595
    :goto_5
    if-ltz v0, :cond_4

    .line 596
    .line 597
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 598
    .line 599
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 604
    .line 605
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 606
    .line 607
    if-eqz v2, :cond_3

    .line 608
    .line 609
    :try_start_f
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 610
    .line 611
    .line 612
    goto :goto_6

    .line 613
    :catch_2
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    const-string v3, "Failed to clear dns cache for: "

    .line 616
    .line 617
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 621
    .line 622
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 623
    .line 624
    const-string v3, "ActivityManager"

    .line 625
    .line 626
    invoke-static {v2, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    :cond_3
    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 630
    .line 631
    goto :goto_5

    .line 632
    :cond_4
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 633
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_b

    .line 637
    .line 638
    :catchall_5
    move-exception p0

    .line 639
    :try_start_11
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 640
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 641
    .line 642
    .line 643
    throw p0

    .line 644
    :pswitch_16
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 645
    .line 646
    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mcheckExcessivePowerUsage(Lcom/android/server/am/ActivityManagerService;)V

    .line 647
    .line 648
    .line 649
    const/16 p1, 0x1b

    .line 650
    .line 651
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 659
    .line 660
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 661
    .line 662
    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    .line 663
    .line 664
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 665
    .line 666
    .line 667
    goto/16 :goto_b

    .line 668
    .line 669
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 670
    .line 671
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 672
    .line 673
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 674
    .line 675
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 676
    .line 677
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 678
    .line 679
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 680
    .line 681
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 682
    .line 683
    check-cast v1, Lcom/android/internal/os/TimeoutRecord;

    .line 684
    .line 685
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 686
    .line 687
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAnrHelper:Lcom/android/server/am/AnrHelper;

    .line 688
    .line 689
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/internal/os/TimeoutRecord;)V

    .line 690
    .line 691
    .line 692
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 693
    .line 694
    .line 695
    goto/16 :goto_b

    .line 696
    .line 697
    :cond_6
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 698
    .line 699
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 700
    .line 701
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    .line 703
    check-cast p1, Lcom/android/server/am/ServiceRecord;

    .line 704
    .line 705
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 706
    .line 707
    .line 708
    goto/16 :goto_b

    .line 709
    .line 710
    :cond_7
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 711
    .line 712
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 713
    .line 714
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 715
    .line 716
    .line 717
    monitor-enter v0

    .line 718
    :try_start_12
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 719
    .line 720
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 721
    .line 722
    new-instance p1, Lcom/android/server/am/ActivityManagerService$MainHandler$$ExternalSyntheticLambda0;

    .line 723
    .line 724
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 725
    .line 726
    .line 727
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(Ljava/util/function/Consumer;Z)V

    .line 728
    .line 729
    .line 730
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 731
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_b

    .line 735
    .line 736
    :catchall_6
    move-exception p0

    .line 737
    :try_start_13
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 738
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 739
    .line 740
    .line 741
    throw p0

    .line 742
    :cond_8
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 743
    .line 744
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 745
    .line 746
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 747
    .line 748
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 749
    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 751
    .line 752
    .line 753
    goto/16 :goto_b

    .line 754
    .line 755
    :cond_9
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 756
    .line 757
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 758
    .line 759
    if-nez v0, :cond_a

    .line 760
    .line 761
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 762
    .line 763
    const-string v1, "APP_LAUNCH"

    .line 764
    .line 765
    invoke-static {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    iput-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 770
    .line 771
    :cond_a
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 772
    .line 773
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 774
    .line 775
    if-eqz p1, :cond_16

    .line 776
    .line 777
    const/16 v0, 0x12

    .line 778
    .line 779
    invoke-virtual {p1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 780
    .line 781
    .line 782
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 783
    .line 784
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDvfsMgr:Lcom/samsung/android/os/SemDvfsManager;

    .line 785
    .line 786
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 787
    .line 788
    .line 789
    goto/16 :goto_b

    .line 790
    .line 791
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 792
    .line 793
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 794
    .line 795
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 796
    .line 797
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    .line 798
    .line 799
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 800
    .line 801
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 802
    .line 803
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 804
    .line 805
    check-cast v1, Ljava/lang/String;

    .line 806
    .line 807
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 808
    .line 809
    check-cast v2, Landroid/content/ComponentName;

    .line 810
    .line 811
    iget-object v3, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 812
    .line 813
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 814
    .line 815
    iget v5, v0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 816
    .line 817
    iget-object p0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 818
    .line 819
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 820
    .line 821
    iget v7, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 822
    .line 823
    const-string p0, "Context.startForegroundService() did not then call Service.startForeground(): "

    .line 824
    .line 825
    invoke-static {p0, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v8

    .line 829
    invoke-static {v2}, Landroid/app/RemoteServiceException$ForegroundServiceDidNotStartInTimeException;->createExtrasForService(Landroid/content/ComponentName;)Landroid/os/Bundle;

    .line 830
    .line 831
    .line 832
    move-result-object v11

    .line 833
    const/4 v9, 0x0

    .line 834
    const/4 v10, 0x1

    .line 835
    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ActivityManagerService;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 836
    .line 837
    .line 838
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 839
    .line 840
    .line 841
    goto/16 :goto_b

    .line 842
    .line 843
    :cond_c
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 844
    .line 845
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 846
    .line 847
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 848
    .line 849
    .line 850
    monitor-enter v0

    .line 851
    :try_start_14
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 852
    .line 853
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 854
    .line 855
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 856
    .line 857
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 858
    .line 859
    .line 860
    move-result p1

    .line 861
    add-int/lit8 p1, p1, -0x1

    .line 862
    .line 863
    :goto_7
    if-ltz p1, :cond_e

    .line 864
    .line 865
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 866
    .line 867
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 872
    .line 873
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 874
    .line 875
    if-eqz v2, :cond_d

    .line 876
    .line 877
    :try_start_15
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 878
    .line 879
    .line 880
    goto :goto_8

    .line 881
    :catch_3
    :try_start_16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 882
    .line 883
    const-string v3, "Failed to handle trust storage update for: "

    .line 884
    .line 885
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 889
    .line 890
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 891
    .line 892
    const-string v3, "ActivityManager"

    .line 893
    .line 894
    invoke-static {v2, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    :cond_d
    :goto_8
    add-int/lit8 p1, p1, -0x1

    .line 898
    .line 899
    goto :goto_7

    .line 900
    :cond_e
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 901
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 902
    .line 903
    .line 904
    goto/16 :goto_b

    .line 905
    .line 906
    :catchall_7
    move-exception p0

    .line 907
    :try_start_17
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 908
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 909
    .line 910
    .line 911
    throw p0

    .line 912
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 913
    .line 914
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 915
    .line 916
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 917
    .line 918
    .line 919
    monitor-enter v0

    .line 920
    :try_start_18
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 921
    .line 922
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 923
    .line 924
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 925
    .line 926
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 927
    .line 928
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 929
    .line 930
    .line 931
    move-result v1

    .line 932
    add-int/lit8 v1, v1, -0x1

    .line 933
    .line 934
    :goto_9
    if-ltz v1, :cond_11

    .line 935
    .line 936
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 937
    .line 938
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 939
    .line 940
    .line 941
    move-result-object v2

    .line 942
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 943
    .line 944
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 945
    .line 946
    if-eqz v3, :cond_10

    .line 947
    .line 948
    :try_start_19
    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    .line 949
    .line 950
    .line 951
    goto :goto_a

    .line 952
    :catch_4
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 953
    .line 954
    const-string v4, "Failed to update preferences for: "

    .line 955
    .line 956
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 957
    .line 958
    .line 959
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 960
    .line 961
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 962
    .line 963
    const-string v4, "ActivityManager"

    .line 964
    .line 965
    invoke-static {v3, v2, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    :cond_10
    :goto_a
    add-int/lit8 v1, v1, -0x1

    .line 969
    .line 970
    goto :goto_9

    .line 971
    :cond_11
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 972
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 973
    .line 974
    .line 975
    goto :goto_b

    .line 976
    :catchall_8
    move-exception p0

    .line 977
    :try_start_1b
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 978
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 979
    .line 980
    .line 981
    throw p0

    .line 982
    :cond_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 983
    .line 984
    check-cast p1, Ljava/util/ArrayList;

    .line 985
    .line 986
    new-instance v0, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    .line 987
    .line 988
    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;Ljava/util/ArrayList;)V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 992
    .line 993
    .line 994
    goto :goto_b

    .line 995
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 996
    .line 997
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 998
    .line 999
    .line 1000
    monitor-enter v0

    .line 1001
    :try_start_1c
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1002
    .line 1003
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 1004
    .line 1005
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1006
    .line 1007
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1008
    .line 1009
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1010
    .line 1011
    move-object v7, v1

    .line 1012
    check-cast v7, Ljava/lang/String;

    .line 1013
    .line 1014
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1015
    .line 1016
    move-object v8, v1

    .line 1017
    check-cast v8, Ljava/lang/String;

    .line 1018
    .line 1019
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 1020
    .line 1021
    check-cast v1, Ljava/lang/Integer;

    .line 1022
    .line 1023
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1024
    .line 1025
    .line 1026
    move-result v4

    .line 1027
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1028
    .line 1029
    .line 1030
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1031
    .line 1032
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    .line 1033
    .line 1034
    const/4 v6, 0x0

    .line 1035
    const/4 v5, 0x0

    .line 1036
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerServiceExt;->forceStopPackageLocked(IIIZZLjava/lang/String;Ljava/lang/String;)Z

    .line 1037
    .line 1038
    .line 1039
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 1040
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1041
    .line 1042
    .line 1043
    goto :goto_b

    .line 1044
    :catchall_9
    move-exception p0

    .line 1045
    :try_start_1d
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 1046
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1047
    .line 1048
    .line 1049
    throw p0

    .line 1050
    :cond_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1051
    .line 1052
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .line 1053
    .line 1054
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1055
    .line 1056
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1057
    .line 1058
    .line 1059
    monitor-enter v0

    .line 1060
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1061
    .line 1062
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->handleProcessStartOrKillTimeoutLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 1063
    .line 1064
    .line 1065
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 1066
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1067
    .line 1068
    .line 1069
    goto :goto_b

    .line 1070
    :catchall_a
    move-exception p0

    .line 1071
    :try_start_1f
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    .line 1072
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1073
    .line 1074
    .line 1075
    throw p0

    .line 1076
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1077
    .line 1078
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1079
    .line 1080
    .line 1081
    monitor-enter v0

    .line 1082
    :try_start_20
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1083
    .line 1084
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 1085
    .line 1086
    invoke-virtual {p0}, Lcom/android/server/am/AppProfiler;->performAppGcsIfAppropriateLocked()V

    .line 1087
    .line 1088
    .line 1089
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    .line 1090
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1091
    .line 1092
    .line 1093
    :cond_16
    :goto_b
    return-void

    .line 1094
    :catchall_b
    move-exception p0

    .line 1095
    :try_start_21
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    .line 1096
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1097
    .line 1098
    .line 1099
    throw p0

    .line 1100
    :pswitch_17
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$UiHandler;->handleMessage$com$android$server$am$ActivityManagerService$UiHandler(Landroid/os/Message;)V

    .line 1101
    .line 1102
    .line 1103
    return-void

    .line 1104
    nop

    .line 1105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch

    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    :pswitch_data_1
    .packed-switch 0x1b
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    :pswitch_data_2
    .packed-switch 0x31
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    :pswitch_data_3
    .packed-switch 0x38
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    :pswitch_data_4
    .packed-switch 0x47
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    :pswitch_data_5
    .packed-switch 0x52
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
