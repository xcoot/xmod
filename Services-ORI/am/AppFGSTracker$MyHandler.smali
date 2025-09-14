.class public final Lcom/android/server/am/AppFGSTracker$MyHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mTracker:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppFGSTracker;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_f

    .line 9
    .line 10
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 11
    .line 12
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v8, p0

    .line 15
    check-cast v8, Ljava/lang/String;

    .line 16
    .line 17
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 18
    .line 19
    iget p0, p1, Landroid/os/Message;->arg2:I

    .line 20
    .line 21
    iget-object v0, v3, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v0

    .line 24
    :try_start_0
    iget-object p1, v3, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 25
    .line 26
    invoke-virtual {p1, v4, v8}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/util/SparseBooleanArray;

    .line 31
    .line 32
    if-eqz p1, :cond_4

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-gez p0, :cond_0

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_1

    .line 46
    .line 47
    monitor-exit v0

    .line 48
    goto/16 :goto_f

    .line 49
    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_2

    .line 52
    :cond_1
    invoke-virtual {p1, p0, v2}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    sub-int/2addr p0, v1

    .line 60
    :goto_0
    if-ltz p0, :cond_3

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    monitor-exit v0

    .line 69
    goto/16 :goto_f

    .line 70
    .line 71
    :cond_2
    add-int/lit8 p0, p0, -0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v6

    .line 78
    const/16 v5, 0x8

    .line 79
    .line 80
    const/4 v9, 0x0

    .line 81
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 82
    .line 83
    .line 84
    monitor-exit v0

    .line 85
    goto/16 :goto_f

    .line 86
    .line 87
    :cond_4
    :goto_1
    monitor-exit v0

    .line 88
    goto/16 :goto_f

    .line 89
    .line 90
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p0

    .line 92
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 93
    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 95
    .line 96
    move-object v6, v0

    .line 97
    check-cast v6, Ljava/lang/String;

    .line 98
    .line 99
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 100
    .line 101
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 102
    .line 103
    iget-object v8, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter v8

    .line 106
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 107
    .line 108
    invoke-virtual {v3, v0, v6}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    check-cast v3, Landroid/util/SparseBooleanArray;

    .line 113
    .line 114
    if-eqz v3, :cond_a

    .line 115
    .line 116
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-gez p1, :cond_5

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_5
    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_6

    .line 128
    .line 129
    monitor-exit v8

    .line 130
    goto/16 :goto_f

    .line 131
    .line 132
    :catchall_1
    move-exception p0

    .line 133
    goto :goto_6

    .line 134
    :cond_6
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    sub-int/2addr v4, v1

    .line 139
    :goto_3
    if-ltz v4, :cond_8

    .line 140
    .line 141
    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    if-eqz v5, :cond_7

    .line 146
    .line 147
    move v2, v1

    .line 148
    goto :goto_4

    .line 149
    :cond_7
    add-int/lit8 v4, v4, -0x1

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_8
    :goto_4
    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->setValueAt(IZ)V

    .line 153
    .line 154
    .line 155
    if-nez v2, :cond_9

    .line 156
    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 158
    .line 159
    .line 160
    move-result-wide v4

    .line 161
    const/16 v3, 0x8

    .line 162
    .line 163
    const/4 v7, 0x1

    .line 164
    move-object v1, p0

    .line 165
    move v2, v0

    .line 166
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 167
    .line 168
    .line 169
    :cond_9
    monitor-exit v8

    .line 170
    goto/16 :goto_f

    .line 171
    .line 172
    :cond_a
    :goto_5
    monitor-exit v8

    .line 173
    goto/16 :goto_f

    .line 174
    .line 175
    :goto_6
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    throw p0

    .line 177
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 178
    .line 179
    invoke-static {p0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mcheckLongRunningFgs(Lcom/android/server/am/AppFGSTracker;)V

    .line 180
    .line 181
    .line 182
    goto/16 :goto_f

    .line 183
    .line 184
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    .line 186
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 187
    .line 188
    iget-object v3, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 189
    .line 190
    iget-object p0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 191
    .line 192
    move-object v8, p0

    .line 193
    check-cast v8, Ljava/lang/String;

    .line 194
    .line 195
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 196
    .line 197
    iget p0, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 198
    .line 199
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v0, Ljava/lang/Boolean;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    iget-object v10, v3, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 208
    .line 209
    monitor-enter v10

    .line 210
    :try_start_2
    iget-object v5, v3, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 211
    .line 212
    invoke-virtual {v5, v4, v8}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    check-cast v5, Landroid/util/SparseBooleanArray;

    .line 217
    .line 218
    if-nez v0, :cond_c

    .line 219
    .line 220
    if-nez v5, :cond_b

    .line 221
    .line 222
    new-instance v5, Landroid/util/SparseBooleanArray;

    .line 223
    .line 224
    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 225
    .line 226
    .line 227
    iget-object v0, v3, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 228
    .line 229
    invoke-virtual {v0, v8, v4, v5}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 230
    .line 231
    .line 232
    goto :goto_7

    .line 233
    :catchall_2
    move-exception p0

    .line 234
    goto :goto_c

    .line 235
    :cond_b
    :goto_7
    invoke-virtual {v5, p0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 236
    .line 237
    .line 238
    goto :goto_a

    .line 239
    :cond_c
    if-eqz v5, :cond_11

    .line 240
    .line 241
    invoke-virtual {v5, p0}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 242
    .line 243
    .line 244
    move-result p0

    .line 245
    if-ltz p0, :cond_11

    .line 246
    .line 247
    invoke-virtual {v5, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    invoke-virtual {v5, p0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    .line 255
    .line 256
    .line 257
    move-result p0

    .line 258
    if-nez p0, :cond_e

    .line 259
    .line 260
    iget-object p0, v3, Lcom/android/server/am/AppFGSTracker;->mFGSNotificationIDs:Lcom/android/server/am/UidProcessMap;

    .line 261
    .line 262
    iget-object v2, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 263
    .line 264
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 265
    .line 266
    .line 267
    move-result v2

    .line 268
    if-gez v2, :cond_d

    .line 269
    .line 270
    goto :goto_8

    .line 271
    :cond_d
    iget-object v6, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 272
    .line 273
    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    check-cast v6, Landroid/util/ArrayMap;

    .line 278
    .line 279
    if-eqz v6, :cond_e

    .line 280
    .line 281
    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    if-eqz v6, :cond_e

    .line 289
    .line 290
    iget-object p0, p0, Lcom/android/server/am/UidProcessMap;->mMap:Landroid/util/SparseArray;

    .line 291
    .line 292
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 293
    .line 294
    .line 295
    :cond_e
    :goto_8
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    .line 296
    .line 297
    .line 298
    move-result p0

    .line 299
    sub-int/2addr p0, v1

    .line 300
    :goto_9
    if-ltz p0, :cond_10

    .line 301
    .line 302
    invoke-virtual {v5, p0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    if-eqz v1, :cond_f

    .line 307
    .line 308
    monitor-exit v10

    .line 309
    goto :goto_b

    .line 310
    :cond_f
    add-int/lit8 p0, p0, -0x1

    .line 311
    .line 312
    goto :goto_9

    .line 313
    :cond_10
    if-eqz v0, :cond_11

    .line 314
    .line 315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 316
    .line 317
    .line 318
    move-result-wide v6

    .line 319
    const/16 v5, 0x8

    .line 320
    .line 321
    const/4 v9, 0x0

    .line 322
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(IIJLjava/lang/String;Z)V

    .line 323
    .line 324
    .line 325
    :cond_11
    :goto_a
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 326
    :goto_b
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 327
    .line 328
    .line 329
    goto :goto_f

    .line 330
    :goto_c
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 331
    throw p0

    .line 332
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 333
    .line 334
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 335
    .line 336
    check-cast v0, Ljava/lang/String;

    .line 337
    .line 338
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 339
    .line 340
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 341
    .line 342
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 343
    .line 344
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 345
    .line 346
    check-cast v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 347
    .line 348
    iget-boolean v2, v2, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    .line 349
    .line 350
    if-nez v2, :cond_12

    .line 351
    .line 352
    goto :goto_f

    .line 353
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 354
    .line 355
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 356
    .line 357
    check-cast v2, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;

    .line 358
    .line 359
    iget-object v2, v2, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    .line 360
    .line 361
    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 362
    .line 363
    invoke-virtual {v2, v1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    .line 364
    .line 365
    .line 366
    move-result v2

    .line 367
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 368
    .line 369
    .line 370
    move-result-wide v3

    .line 371
    iget-object v5, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    .line 372
    .line 373
    monitor-enter v5

    .line 374
    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 375
    .line 376
    invoke-virtual {v6, v1, v0}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    .line 377
    .line 378
    .line 379
    move-result-object v6

    .line 380
    check-cast v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 381
    .line 382
    if-nez v6, :cond_13

    .line 383
    .line 384
    new-instance v6, Lcom/android/server/am/AppFGSTracker$PackageDurations;

    .line 385
    .line 386
    iget-object v7, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 387
    .line 388
    iget-object v7, v7, Lcom/android/server/am/BaseAppStateTracker$Injector;->mAppStatePolicy:Lcom/android/server/am/BaseAppStatePolicy;

    .line 389
    .line 390
    check-cast v7, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;

    .line 391
    .line 392
    invoke-direct {v6, v1, v0, v7, p0}, Lcom/android/server/am/AppFGSTracker$PackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;Lcom/android/server/am/AppFGSTracker;)V

    .line 393
    .line 394
    .line 395
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 396
    .line 397
    invoke-virtual {p0, v0, v1, v6}, Lcom/android/server/am/UidProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)V

    .line 398
    .line 399
    .line 400
    goto :goto_d

    .line 401
    :catchall_3
    move-exception p0

    .line 402
    goto :goto_e

    .line 403
    :cond_13
    :goto_d
    invoke-virtual {v6, p1, v3, v4}, Lcom/android/server/am/AppFGSTracker$PackageDurations;->setForegroundServiceType(IJ)V

    .line 404
    .line 405
    .line 406
    iput v2, v6, Lcom/android/server/am/BaseAppStateEvents;->mExemptReason:I

    .line 407
    .line 408
    monitor-exit v5

    .line 409
    goto :goto_f

    .line 410
    :goto_e
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 411
    throw p0

    .line 412
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 413
    .line 414
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    .line 416
    check-cast v0, Ljava/lang/String;

    .line 417
    .line 418
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 419
    .line 420
    invoke-static {p0, v0, p1, v2}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IZ)V

    .line 421
    .line 422
    .line 423
    goto :goto_f

    .line 424
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$MyHandler;->mTracker:Lcom/android/server/am/AppFGSTracker;

    .line 425
    .line 426
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 427
    .line 428
    check-cast v0, Ljava/lang/String;

    .line 429
    .line 430
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 431
    .line 432
    invoke-static {p0, v0, p1, v1}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$mhandleForegroundServicesChanged(Lcom/android/server/am/AppFGSTracker;Ljava/lang/String;IZ)V

    .line 433
    .line 434
    .line 435
    :goto_f
    return-void

    .line 436
    nop

    .line 437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
