.class public final Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/pm/BackgroundInstallControlService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/server/pm/BackgroundInstallControlService;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    if-eqz v2, :cond_8

    .line 12
    .line 13
    if-eq v2, v6, :cond_1

    .line 14
    .line 15
    if-eq v2, v5, :cond_0

    .line 16
    .line 17
    const-string v0, "BackgroundInstallControlService"

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Unknown message: "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v1, v1, Landroid/os/Message;->what:I

    .line 27
    .line 28
    invoke-static {v2, v1, v0}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto/16 :goto_6

    .line 32
    .line 33
    :cond_0
    iget-object v0, v0, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 34
    .line 35
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    .line 42
    .line 43
    .line 44
    iget-object v3, v0, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 45
    .line 46
    invoke-virtual {v3, v1, v2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/server/pm/BackgroundInstallControlService;->writeBackgroundInstalledPackagesToDisk()V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_1
    iget-object v2, v0, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 55
    .line 56
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 57
    .line 58
    move-object v5, v0

    .line 59
    check-cast v5, Ljava/lang/String;

    .line 60
    .line 61
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    :try_start_0
    iget-object v0, v2, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v0, v5, v6, v1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    .line 73
    .line 74
    .line 75
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    :try_start_1
    iget-object v6, v2, Lcom/android/server/pm/BackgroundInstallControlService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 77
    .line 78
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {v6}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v6}, Landroid/content/pm/InstallSourceInfo;->getInitiatingPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    iget-object v8, v2, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 91
    .line 92
    const-string v9, "android.permission.INSTALL_PACKAGES"

    .line 93
    .line 94
    const-string v10, "default:0"

    .line 95
    .line 96
    iget-object v8, v8, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 97
    .line 98
    invoke-virtual {v8, v7, v9, v10, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    if-eqz v8, :cond_2

    .line 103
    .line 104
    goto/16 :goto_6

    .line 105
    .line 106
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v8

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v10

    .line 114
    const-string v12, "BackgroundInstallControlService"

    .line 115
    .line 116
    const-string v13, "Package\'s historical install session not found, falling back to appInfo.createTimestamp: "

    .line 117
    .line 118
    iget-wide v14, v0, Landroid/content/pm/ApplicationInfo;->createTimestamp:J

    .line 119
    .line 120
    :try_start_2
    invoke-virtual {v2, v1, v5}, Lcom/android/server/pm/BackgroundInstallControlService;->getLatestInstallSession(ILjava/lang/String;)Ljava/util/Optional;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/util/Optional;->isEmpty()Z

    .line 125
    .line 126
    .line 127
    move-result v16

    .line 128
    if-eqz v16, :cond_3

    .line 129
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    goto :goto_0

    .line 148
    :cond_3
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getCreatedMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    goto :goto_1

    .line 159
    :goto_0
    const-string v13, "Retrieval of install time from historical session failed, falling back to appInfo.createTimestamp"

    .line 160
    .line 161
    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    :goto_1
    sub-long/2addr v10, v14

    .line 172
    sub-long/2addr v8, v10

    .line 173
    invoke-static {v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->isInstalledByAdb(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-nez v0, :cond_12

    .line 178
    .line 179
    iget-object v0, v2, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 180
    .line 181
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Ljava/util/TreeSet;

    .line 186
    .line 187
    if-nez v0, :cond_4

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_4
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-eqz v6, :cond_7

    .line 199
    .line 200
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v6

    .line 204
    check-cast v6, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    .line 205
    .line 206
    iget-wide v10, v6, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->startTimeStampMillis:J

    .line 207
    .line 208
    cmp-long v7, v10, v8

    .line 209
    .line 210
    if-lez v7, :cond_6

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_6
    iget-wide v6, v6, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->endTimeStampMillis:J

    .line 214
    .line 215
    cmp-long v10, v6, v3

    .line 216
    .line 217
    if-eqz v10, :cond_12

    .line 218
    .line 219
    cmp-long v6, v8, v6

    .line 220
    .line 221
    if-gtz v6, :cond_5

    .line 222
    .line 223
    goto/16 :goto_6

    .line 224
    .line 225
    :cond_7
    :goto_3
    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundInstallControlService;->initBackgroundInstalledPackages()V

    .line 226
    .line 227
    .line 228
    iget-object v0, v2, Lcom/android/server/pm/BackgroundInstallControlService;->mBackgroundInstalledPackages:Landroid/util/SparseSetArray;

    .line 229
    .line 230
    invoke-virtual {v0, v1, v5}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    iget-object v0, v2, Lcom/android/server/pm/BackgroundInstallControlService;->mCallbackHelper:Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    new-instance v3, Landroid/os/Bundle;

    .line 239
    .line 240
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string/jumbo v4, "packageName"

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    const-string/jumbo v4, "userId"

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    .line 254
    .line 255
    iget-object v1, v0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 256
    .line 257
    monitor-enter v1

    .line 258
    :try_start_3
    iget-object v4, v0, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;->mHandler:Landroid/os/Handler;

    .line 259
    .line 260
    new-instance v5, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;

    .line 261
    .line 262
    invoke-direct {v5, v0, v3}, Lcom/android/server/pm/BackgroundInstallControlCallbackHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/BackgroundInstallControlCallbackHelper;Landroid/os/Bundle;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    .line 267
    .line 268
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    invoke-virtual {v2}, Lcom/android/server/pm/BackgroundInstallControlService;->writeBackgroundInstalledPackagesToDisk()V

    .line 270
    .line 271
    .line 272
    goto/16 :goto_6

    .line 273
    .line 274
    :catchall_0
    move-exception v0

    .line 275
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    throw v0

    .line 277
    :catch_1
    const-string v0, "BackgroundInstallControlService"

    .line 278
    .line 279
    const-string v1, "Package\'s installer not found "

    .line 280
    .line 281
    invoke-static {v1, v5, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    goto/16 :goto_6

    .line 285
    .line 286
    :catch_2
    const-string v0, "BackgroundInstallControlService"

    .line 287
    .line 288
    const-string v1, "Package\'s appInfo not found "

    .line 289
    .line 290
    invoke-static {v1, v5, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    goto/16 :goto_6

    .line 294
    .line 295
    :cond_8
    iget-object v0, v0, Lcom/android/server/pm/BackgroundInstallControlService$EventHandler;->mService:Lcom/android/server/pm/BackgroundInstallControlService;

    .line 296
    .line 297
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    .line 299
    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    .line 300
    .line 301
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 302
    .line 303
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    .line 305
    .line 306
    iget v7, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 307
    .line 308
    const/16 v8, 0x17

    .line 309
    .line 310
    if-eq v7, v6, :cond_9

    .line 311
    .line 312
    if-eq v7, v5, :cond_9

    .line 313
    .line 314
    if-eq v7, v8, :cond_9

    .line 315
    .line 316
    goto/16 :goto_6

    .line 317
    .line 318
    :cond_9
    iget-object v7, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 319
    .line 320
    iget-object v9, v0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 321
    .line 322
    invoke-virtual {v9, v1, v7}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v9

    .line 326
    if-eqz v9, :cond_a

    .line 327
    .line 328
    goto :goto_4

    .line 329
    :cond_a
    iget-object v9, v0, Lcom/android/server/pm/BackgroundInstallControlService;->mPermissionManager:Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    .line 330
    .line 331
    iget-object v9, v9, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    .line 332
    .line 333
    const-string v10, "android.permission.INSTALL_PACKAGES"

    .line 334
    .line 335
    const-string v11, "default:0"

    .line 336
    .line 337
    invoke-virtual {v9, v7, v10, v11, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 338
    .line 339
    .line 340
    move-result v7

    .line 341
    if-nez v7, :cond_12

    .line 342
    .line 343
    :goto_4
    iget-object v7, v0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 344
    .line 345
    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 346
    .line 347
    invoke-virtual {v7, v1, v9}, Landroid/util/SparseArrayMap;->contains(ILjava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v7

    .line 351
    if-nez v7, :cond_b

    .line 352
    .line 353
    iget-object v7, v0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 354
    .line 355
    iget-object v9, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 356
    .line 357
    new-instance v10, Ljava/util/TreeSet;

    .line 358
    .line 359
    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v7, v1, v9, v10}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    :cond_b
    iget-object v0, v0, Lcom/android/server/pm/BackgroundInstallControlService;->mInstallerForegroundTimeFrames:Landroid/util/SparseArrayMap;

    .line 366
    .line 367
    iget-object v7, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    check-cast v0, Ljava/util/TreeSet;

    .line 374
    .line 375
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_c

    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    check-cast v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    .line 386
    .line 387
    iget-wide v9, v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->endTimeStampMillis:J

    .line 388
    .line 389
    cmp-long v1, v9, v3

    .line 390
    .line 391
    if-eqz v1, :cond_e

    .line 392
    .line 393
    :cond_c
    iget v1, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 394
    .line 395
    if-eq v1, v6, :cond_d

    .line 396
    .line 397
    goto :goto_6

    .line 398
    :cond_d
    new-instance v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    .line 399
    .line 400
    iget-wide v3, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 401
    .line 402
    invoke-direct {v1, v3, v4}, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;-><init>(J)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    :cond_e
    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    check-cast v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;

    .line 413
    .line 414
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    iget v3, v2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 418
    .line 419
    if-eq v3, v6, :cond_10

    .line 420
    .line 421
    if-eq v3, v5, :cond_f

    .line 422
    .line 423
    if-eq v3, v8, :cond_f

    .line 424
    .line 425
    goto :goto_5

    .line 426
    :cond_f
    iget-object v3, v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->activities:Ljava/util/Set;

    .line 427
    .line 428
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 429
    .line 430
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    check-cast v3, Landroid/util/ArraySet;

    .line 435
    .line 436
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eqz v3, :cond_11

    .line 441
    .line 442
    iget-object v3, v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->activities:Ljava/util/Set;

    .line 443
    .line 444
    iget v4, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 445
    .line 446
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 447
    .line 448
    .line 449
    move-result-object v4

    .line 450
    check-cast v3, Landroid/util/ArraySet;

    .line 451
    .line 452
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    iget-object v3, v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->activities:Ljava/util/Set;

    .line 456
    .line 457
    check-cast v3, Landroid/util/ArraySet;

    .line 458
    .line 459
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 460
    .line 461
    .line 462
    move-result v3

    .line 463
    if-nez v3, :cond_11

    .line 464
    .line 465
    iget-wide v2, v2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 466
    .line 467
    iput-wide v2, v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->endTimeStampMillis:J

    .line 468
    .line 469
    goto :goto_5

    .line 470
    :cond_10
    iget-object v1, v1, Lcom/android/server/pm/BackgroundInstallControlService$ForegroundTimeFrame;->activities:Ljava/util/Set;

    .line 471
    .line 472
    iget v2, v2, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 473
    .line 474
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 475
    .line 476
    .line 477
    move-result-object v2

    .line 478
    check-cast v1, Landroid/util/ArraySet;

    .line 479
    .line 480
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    :cond_11
    :goto_5
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    const/16 v2, 0xa

    .line 488
    .line 489
    if-le v1, v2, :cond_12

    .line 490
    .line 491
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    :cond_12
    :goto_6
    return-void
.end method
