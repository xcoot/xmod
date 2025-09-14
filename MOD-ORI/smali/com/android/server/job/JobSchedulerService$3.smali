.class public final Lcom/android/server/job/JobSchedulerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/job/JobSchedulerService$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

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
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/server/job/JobSchedulerService$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    .line 9
    .line 10
    invoke-virtual {p0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->onReceiveInternal(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const-string v0, "android.intent.action.TIME_SET"

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 29
    .line 30
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 31
    .line 32
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    iget-wide v2, p2, Lcom/android/server/job/JobStore;->mXmlTimestamp:J

    .line 39
    .line 40
    cmp-long p2, v0, v2

    .line 41
    .line 42
    if-ltz p2, :cond_0

    .line 43
    .line 44
    const-string p2, "JobScheduler"

    .line 45
    .line 46
    const-string v0, "RTC now valid; recalculating persisted job windows"

    .line 47
    .line 48
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobTimeUpdater:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda3;

    .line 63
    .line 64
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void

    .line 68
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    const-string v1, "JobScheduler"

    .line 77
    .line 78
    const-string v2, "Receieved: "

    .line 79
    .line 80
    invoke-static {v2, p1, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const/4 v1, 0x0

    .line 95
    :goto_0
    const-string v2, "android.intent.extra.UID"

    .line 96
    .line 97
    const/4 v3, -0x1

    .line 98
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 103
    .line 104
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    const/4 v9, 0x0

    .line 109
    if-eqz v2, :cond_b

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 114
    .line 115
    iget-object v2, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 116
    .line 117
    monitor-enter v2

    .line 118
    :try_start_0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 123
    .line 124
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 125
    .line 126
    .line 127
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 128
    if-eqz v1, :cond_a

    .line 129
    .line 130
    if-eq v8, v3, :cond_a

    .line 131
    .line 132
    const-string p1, "android.intent.extra.changed_component_name_list"

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_1c

    .line 139
    .line 140
    array-length p2, p1

    .line 141
    :goto_1
    if-ge v9, p2, :cond_7

    .line 142
    .line 143
    aget-object v0, p1, v9

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 152
    .line 153
    if-eqz p1, :cond_3

    .line 154
    .line 155
    const-string p2, "JobScheduler"

    .line 156
    .line 157
    const-string v0, "Package state change: "

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_3
    :try_start_1
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    .line 167
    .line 168
    .line 169
    move-result p2

    .line 170
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-interface {v0, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    const/4 v2, 0x2

    .line 179
    if-eq v0, v2, :cond_4

    .line 180
    .line 181
    const/4 v2, 0x3

    .line 182
    if-ne v0, v2, :cond_7

    .line 183
    .line 184
    :cond_4
    if-eqz p1, :cond_5

    .line 185
    .line 186
    const-string p1, "JobScheduler"

    .line 187
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v2, "Removing jobs for package "

    .line 194
    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v2, " in user "

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    :cond_5
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 219
    .line 220
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 221
    .line 222
    monitor-enter p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :try_start_2
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 224
    .line 225
    move-object v2, p2

    .line 226
    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    .line 227
    .line 228
    const-string v7, "app disabled"

    .line 229
    .line 230
    const/4 v5, 0x1

    .line 231
    const/4 v6, 0x7

    .line 232
    move-object v3, v1

    .line 233
    move v4, v8

    .line 234
    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    monitor-exit p1

    .line 238
    goto :goto_2

    .line 239
    :catchall_0
    move-exception p2

    .line 240
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    :try_start_3
    throw p2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 242
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 243
    .line 244
    goto :goto_1

    .line 245
    :catch_0
    :cond_7
    :goto_2
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 246
    .line 247
    if-eqz p1, :cond_8

    .line 248
    .line 249
    const-string p1, "JobScheduler"

    .line 250
    .line 251
    const-string p2, "Something in "

    .line 252
    .line 253
    const-string v0, " changed. Reevaluating controller states."

    .line 254
    .line 255
    invoke-static {p2, v1, v0, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_8
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 259
    .line 260
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 261
    .line 262
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 263
    .line 264
    monitor-enter p1

    .line 265
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 268
    .line 269
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 270
    .line 271
    check-cast p2, Ljava/util/ArrayList;

    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    add-int/lit8 p2, p2, -0x1

    .line 278
    .line 279
    :goto_3
    if-ltz p2, :cond_9

    .line 280
    .line 281
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 282
    .line 283
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 284
    .line 285
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 286
    .line 287
    check-cast v0, Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 294
    .line 295
    invoke-virtual {v0, v8}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    .line 296
    .line 297
    .line 298
    add-int/lit8 p2, p2, -0x1

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :catchall_1
    move-exception p0

    .line 302
    goto :goto_4

    .line 303
    :cond_9
    monitor-exit p1

    .line 304
    goto/16 :goto_f

    .line 305
    .line 306
    :goto_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 307
    throw p0

    .line 308
    :cond_a
    const-string p0, "JobScheduler"

    .line 309
    .line 310
    new-instance p1, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string p2, "PACKAGE_CHANGED for "

    .line 313
    .line 314
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    const-string p2, " / uid "

    .line 321
    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .line 334
    .line 335
    goto/16 :goto_f

    .line 336
    .line 337
    :catchall_2
    move-exception p0

    .line 338
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 339
    throw p0

    .line 340
    :cond_b
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 341
    .line 342
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v2

    .line 346
    if-eqz v2, :cond_c

    .line 347
    .line 348
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 351
    .line 352
    iget-object v2, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 353
    .line 354
    monitor-enter v2

    .line 355
    :try_start_6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 358
    .line 359
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 360
    .line 361
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 362
    .line 363
    .line 364
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 365
    const-string p1, "android.intent.extra.REPLACING"

    .line 366
    .line 367
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 368
    .line 369
    .line 370
    move-result p1

    .line 371
    if-nez p1, :cond_1c

    .line 372
    .line 373
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 374
    .line 375
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 376
    .line 377
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 378
    .line 379
    monitor-enter p1

    .line 380
    :try_start_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 381
    .line 382
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 383
    .line 384
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 385
    .line 386
    invoke-virtual {p0, v8}, Landroid/util/SparseSetArray;->remove(I)V

    .line 387
    .line 388
    .line 389
    monitor-exit p1

    .line 390
    goto/16 :goto_f

    .line 391
    .line 392
    :catchall_3
    move-exception p0

    .line 393
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 394
    throw p0

    .line 395
    :catchall_4
    move-exception p0

    .line 396
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 397
    throw p0

    .line 398
    :cond_c
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 399
    .line 400
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_f

    .line 405
    .line 406
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 407
    .line 408
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 409
    .line 410
    iget-object v2, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 411
    .line 412
    monitor-enter v2

    .line 413
    :try_start_9
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 414
    .line 415
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 416
    .line 417
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 418
    .line 419
    invoke-virtual {p1, v8}, Landroid/util/SparseArray;->remove(I)V

    .line 420
    .line 421
    .line 422
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 423
    if-eqz v0, :cond_d

    .line 424
    .line 425
    const-string p1, "JobScheduler"

    .line 426
    .line 427
    const-string p2, "Removing jobs for "

    .line 428
    .line 429
    const-string v0, " (uid="

    .line 430
    .line 431
    const-string v2, ")"

    .line 432
    .line 433
    invoke-static {v8, p2, v1, v0, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object p2

    .line 437
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .line 439
    .line 440
    :cond_d
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 441
    .line 442
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 443
    .line 444
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 445
    .line 446
    monitor-enter p1

    .line 447
    :try_start_a
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 448
    .line 449
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 450
    .line 451
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 452
    .line 453
    invoke-virtual {p2, v8}, Landroid/util/SparseSetArray;->remove(I)V

    .line 454
    .line 455
    .line 456
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 457
    .line 458
    move-object v2, p2

    .line 459
    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    .line 460
    .line 461
    const-string v7, "app uninstalled"

    .line 462
    .line 463
    const/4 v5, 0x1

    .line 464
    const/4 v6, 0x7

    .line 465
    move-object v3, v1

    .line 466
    move v4, v8

    .line 467
    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    .line 468
    .line 469
    .line 470
    :goto_5
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 471
    .line 472
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 473
    .line 474
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 475
    .line 476
    check-cast p2, Ljava/util/ArrayList;

    .line 477
    .line 478
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 479
    .line 480
    .line 481
    move-result p2

    .line 482
    if-ge v9, p2, :cond_e

    .line 483
    .line 484
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 485
    .line 486
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 487
    .line 488
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 489
    .line 490
    check-cast p2, Ljava/util/ArrayList;

    .line 491
    .line 492
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object p2

    .line 496
    check-cast p2, Lcom/android/server/job/controllers/StateController;

    .line 497
    .line 498
    invoke-virtual {p2, v8, v1}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 499
    .line 500
    .line 501
    add-int/lit8 v9, v9, 0x1

    .line 502
    .line 503
    goto :goto_5

    .line 504
    :catchall_5
    move-exception p0

    .line 505
    goto :goto_6

    .line 506
    :cond_e
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 507
    .line 508
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 509
    .line 510
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    .line 511
    .line 512
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    .line 514
    .line 515
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 516
    .line 517
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 518
    .line 519
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 520
    .line 521
    invoke-virtual {p0, v8, v1}, Lcom/android/server/job/JobConcurrencyManager;->onAppRemovedLocked(ILjava/lang/String;)V

    .line 522
    .line 523
    .line 524
    monitor-exit p1

    .line 525
    goto/16 :goto_f

    .line 526
    .line 527
    :goto_6
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 528
    throw p0

    .line 529
    :catchall_6
    move-exception p0

    .line 530
    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 531
    throw p0

    .line 532
    :cond_f
    const-string v2, "android.intent.action.UID_REMOVED"

    .line 533
    .line 534
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    if-eqz v2, :cond_10

    .line 539
    .line 540
    const-string p1, "android.intent.extra.REPLACING"

    .line 541
    .line 542
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 543
    .line 544
    .line 545
    move-result p1

    .line 546
    if-nez p1, :cond_1c

    .line 547
    .line 548
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 551
    .line 552
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 553
    .line 554
    monitor-enter p1

    .line 555
    :try_start_c
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 558
    .line 559
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    .line 560
    .line 561
    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 562
    .line 563
    .line 564
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 565
    .line 566
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 567
    .line 568
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidCapabilities:Landroid/util/SparseIntArray;

    .line 569
    .line 570
    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 571
    .line 572
    .line 573
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 574
    .line 575
    check-cast p0, Lcom/android/server/job/JobSchedulerService;

    .line 576
    .line 577
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mUidProcStates:Landroid/util/SparseIntArray;

    .line 578
    .line 579
    invoke-virtual {p0, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 580
    .line 581
    .line 582
    monitor-exit p1

    .line 583
    goto/16 :goto_f

    .line 584
    .line 585
    :catchall_7
    move-exception p0

    .line 586
    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 587
    throw p0

    .line 588
    :cond_10
    const-string v2, "android.intent.action.USER_ADDED"

    .line 589
    .line 590
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v2

    .line 594
    if-eqz v2, :cond_12

    .line 595
    .line 596
    const-string p1, "android.intent.extra.user_handle"

    .line 597
    .line 598
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 599
    .line 600
    .line 601
    move-result p1

    .line 602
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 603
    .line 604
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 605
    .line 606
    iget-object v2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 607
    .line 608
    monitor-enter v2

    .line 609
    :goto_7
    :try_start_d
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 610
    .line 611
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 612
    .line 613
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 614
    .line 615
    check-cast p2, Ljava/util/ArrayList;

    .line 616
    .line 617
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 618
    .line 619
    .line 620
    move-result p2

    .line 621
    if-ge v9, p2, :cond_11

    .line 622
    .line 623
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 624
    .line 625
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 626
    .line 627
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 628
    .line 629
    check-cast p2, Ljava/util/ArrayList;

    .line 630
    .line 631
    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    move-result-object p2

    .line 635
    check-cast p2, Lcom/android/server/job/controllers/StateController;

    .line 636
    .line 637
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/StateController;->onUserAddedLocked(I)V

    .line 638
    .line 639
    .line 640
    add-int/lit8 v9, v9, 0x1

    .line 641
    .line 642
    goto :goto_7

    .line 643
    :catchall_8
    move-exception p0

    .line 644
    goto :goto_8

    .line 645
    :cond_11
    monitor-exit v2

    .line 646
    goto/16 :goto_f

    .line 647
    .line 648
    :goto_8
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 649
    throw p0

    .line 650
    :cond_12
    const-string v2, "android.intent.action.USER_REMOVED"

    .line 651
    .line 652
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 653
    .line 654
    .line 655
    move-result v2

    .line 656
    if-eqz v2, :cond_17

    .line 657
    .line 658
    const-string p1, "android.intent.extra.user_handle"

    .line 659
    .line 660
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 661
    .line 662
    .line 663
    move-result p1

    .line 664
    if-eqz v0, :cond_13

    .line 665
    .line 666
    const-string p2, "JobScheduler"

    .line 667
    .line 668
    const-string v0, "Removing jobs for user: "

    .line 669
    .line 670
    invoke-static {p1, v0, p2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    :cond_13
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 674
    .line 675
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 676
    .line 677
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 678
    .line 679
    monitor-enter p2

    .line 680
    :try_start_e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 681
    .line 682
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 683
    .line 684
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mUidToPackageCache:Landroid/util/SparseSetArray;

    .line 685
    .line 686
    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 687
    .line 688
    .line 689
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 690
    .line 691
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 692
    .line 693
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 694
    .line 695
    .line 696
    new-instance v1, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;

    .line 697
    .line 698
    const/4 v2, 0x2

    .line 699
    invoke-direct {v1, p1, v2}, Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda5;-><init>(II)V

    .line 700
    .line 701
    .line 702
    iget-object v2, v0, Lcom/android/server/job/JobSchedulerService;->mCancelJobDueToUserRemovalConsumer:Lcom/android/server/job/JobSchedulerService$$ExternalSyntheticLambda0;

    .line 703
    .line 704
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 705
    .line 706
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/JobStore;->forEachJob(Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 707
    .line 708
    .line 709
    :goto_9
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 710
    .line 711
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 712
    .line 713
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 714
    .line 715
    check-cast v0, Ljava/util/ArrayList;

    .line 716
    .line 717
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 718
    .line 719
    .line 720
    move-result v0

    .line 721
    if-ge v9, v0, :cond_14

    .line 722
    .line 723
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 724
    .line 725
    check-cast v0, Lcom/android/server/job/JobSchedulerService;

    .line 726
    .line 727
    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 728
    .line 729
    check-cast v0, Ljava/util/ArrayList;

    .line 730
    .line 731
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 736
    .line 737
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    .line 738
    .line 739
    .line 740
    add-int/lit8 v9, v9, 0x1

    .line 741
    .line 742
    goto :goto_9

    .line 743
    :catchall_9
    move-exception p0

    .line 744
    goto :goto_d

    .line 745
    :cond_14
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 746
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 747
    .line 748
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 749
    .line 750
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    .line 751
    .line 752
    invoke-virtual {p2, p1}, Lcom/android/server/job/JobConcurrencyManager;->onUserRemoved(I)V

    .line 753
    .line 754
    .line 755
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 756
    .line 757
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 758
    .line 759
    iget-object v0, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 760
    .line 761
    monitor-enter v0

    .line 762
    :try_start_f
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 763
    .line 764
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 765
    .line 766
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 767
    .line 768
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    .line 769
    .line 770
    .line 771
    move-result p2

    .line 772
    add-int/lit8 p2, p2, -0x1

    .line 773
    .line 774
    :goto_a
    if-ltz p2, :cond_16

    .line 775
    .line 776
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 777
    .line 778
    check-cast v1, Lcom/android/server/job/JobSchedulerService;

    .line 779
    .line 780
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 781
    .line 782
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 783
    .line 784
    .line 785
    move-result v1

    .line 786
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 787
    .line 788
    .line 789
    move-result v1

    .line 790
    if-ne p1, v1, :cond_15

    .line 791
    .line 792
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 793
    .line 794
    check-cast v1, Lcom/android/server/job/JobSchedulerService;

    .line 795
    .line 796
    iget-object v1, v1, Lcom/android/server/job/JobSchedulerService;->mPermissionCache:Landroid/util/SparseArray;

    .line 797
    .line 798
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 799
    .line 800
    .line 801
    goto :goto_b

    .line 802
    :catchall_a
    move-exception p0

    .line 803
    goto :goto_c

    .line 804
    :cond_15
    :goto_b
    add-int/lit8 p2, p2, -0x1

    .line 805
    .line 806
    goto :goto_a

    .line 807
    :cond_16
    monitor-exit v0

    .line 808
    goto/16 :goto_f

    .line 809
    .line 810
    :goto_c
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    .line 811
    throw p0

    .line 812
    :goto_d
    :try_start_10
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    .line 813
    throw p0

    .line 814
    :cond_17
    const-string p2, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 815
    .line 816
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result p2

    .line 820
    if-eqz p2, :cond_1a

    .line 821
    .line 822
    if-eq v8, v3, :cond_1c

    .line 823
    .line 824
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 825
    .line 826
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 827
    .line 828
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 829
    .line 830
    monitor-enter p1

    .line 831
    :try_start_11
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 832
    .line 833
    check-cast p2, Lcom/android/server/job/JobSchedulerService;

    .line 834
    .line 835
    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 836
    .line 837
    invoke-virtual {p2, v8}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    .line 838
    .line 839
    .line 840
    move-result-object p2

    .line 841
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 842
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    .line 843
    .line 844
    .line 845
    move-result p1

    .line 846
    add-int/lit8 p1, p1, -0x1

    .line 847
    .line 848
    :goto_e
    if-ltz p1, :cond_1c

    .line 849
    .line 850
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v0

    .line 854
    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    .line 855
    .line 856
    iget-object v0, v0, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 857
    .line 858
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    if-eqz v0, :cond_19

    .line 863
    .line 864
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 865
    .line 866
    if-eqz p1, :cond_18

    .line 867
    .line 868
    const-string p1, "JobScheduler"

    .line 869
    .line 870
    const-string p2, "Restart query: package "

    .line 871
    .line 872
    const-string v0, " at uid "

    .line 873
    .line 874
    const-string v2, " has jobs"

    .line 875
    .line 876
    invoke-static {v8, p2, v1, v0, v2}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 877
    .line 878
    .line 879
    move-result-object p2

    .line 880
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .line 882
    .line 883
    :cond_18
    invoke-virtual {p0, v3}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 884
    .line 885
    .line 886
    goto :goto_f

    .line 887
    :cond_19
    add-int/lit8 p1, p1, -0x1

    .line 888
    .line 889
    goto :goto_e

    .line 890
    :catchall_b
    move-exception p0

    .line 891
    :try_start_12
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    .line 892
    throw p0

    .line 893
    :cond_1a
    const-string p2, "android.intent.action.PACKAGE_RESTARTED"

    .line 894
    .line 895
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    move-result p1

    .line 899
    if-eqz p1, :cond_1c

    .line 900
    .line 901
    if-eq v8, v3, :cond_1c

    .line 902
    .line 903
    if-eqz v0, :cond_1b

    .line 904
    .line 905
    const-string p1, "JobScheduler"

    .line 906
    .line 907
    new-instance p2, Ljava/lang/StringBuilder;

    .line 908
    .line 909
    const-string v0, "Removing jobs for pkg "

    .line 910
    .line 911
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 912
    .line 913
    .line 914
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    const-string v0, " at uid "

    .line 918
    .line 919
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object p2

    .line 929
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .line 931
    .line 932
    :cond_1b
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 933
    .line 934
    check-cast p1, Lcom/android/server/job/JobSchedulerService;

    .line 935
    .line 936
    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    .line 937
    .line 938
    monitor-enter p1

    .line 939
    :try_start_13
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Ljava/lang/Object;

    .line 940
    .line 941
    move-object v2, p0

    .line 942
    check-cast v2, Lcom/android/server/job/JobSchedulerService;

    .line 943
    .line 944
    const-string v7, "app force stopped"

    .line 945
    .line 946
    const/4 v5, 0x0

    .line 947
    const/4 v6, 0x0

    .line 948
    move-object v3, v1

    .line 949
    move v4, v8

    .line 950
    invoke-static/range {v2 .. v7}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZILjava/lang/String;)V

    .line 951
    .line 952
    .line 953
    monitor-exit p1

    .line 954
    goto :goto_f

    .line 955
    :catchall_c
    move-exception p0

    .line 956
    monitor-exit p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    .line 957
    throw p0

    .line 958
    :cond_1c
    :goto_f
    return-void

    .line 959
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
