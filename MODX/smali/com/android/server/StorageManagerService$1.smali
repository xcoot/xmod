.class public final Lcom/android/server/StorageManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/StorageManagerService$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/server/StorageManagerService$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    const-string p1, "StorageManagerService"

    .line 8
    const-string v0, "Monitored package uninstalled: "

    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    :try_start_0
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    const-string v2, "android.intent.extra.REPLACING"

    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_0

    .line 39
    sget-object v2, Lcom/android/server/StorageManagerService;->PASS_CLIENTS:Ljava/util/List;

    .line 41
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 49
    iget v2, v2, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 51
    if-nez v2, :cond_0

    .line 53
    const-string v2, "android.intent.extra.UID"

    .line 55
    const/4 v3, -0x1

    .line 56
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 59
    move-result p2

    .line 60
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 62
    iget-object v2, v2, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 64
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 66
    iget p0, p0, Lcom/android/server/StorageManagerService;->mCurrentUserId:I

    .line 68
    invoke-interface {v2, v1, p0, p2}, Landroid/os/IVold;->destroyPassStorage(Ljava/lang/String;II)I

    .line 71
    move-result p0

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v0, ", uid: "

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string p2, ", result: "

    .line 90
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 100
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 109
    :pswitch_0
    const-string/jumbo p1, "mPolicyReceiver :: "

    .line 112
    const-string p2, "StorageManagerService"

    .line 114
    invoke-static {p2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 119
    const/4 p1, 0x1

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/StorageManagerService;->isMountDisallowedByEAS(Z)Z

    .line 123
    move-result v0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    const-string v2, "applyCurrentSdCardPolicy :: "

    .line 131
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    invoke-static {p2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-ne v0, p1, :cond_6

    .line 146
    const/4 v0, 0x0

    .line 147
    :goto_1
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 149
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 152
    move-result v1

    .line 153
    if-ge v0, v1, :cond_6

    .line 155
    iget-object v1, p0, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 157
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroid/os/storage/VolumeInfo;

    .line 163
    iget-object v2, v1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 165
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    .line 168
    move-result-object v3

    .line 169
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    .line 172
    move-result v4

    .line 173
    const/4 v5, 0x2

    .line 174
    if-ne v4, v5, :cond_1

    .line 176
    goto :goto_4

    .line 177
    :cond_1
    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    .line 180
    move-result-object v4

    .line 181
    if-nez v4, :cond_2

    .line 183
    goto :goto_4

    .line 184
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 186
    const-string/jumbo v5, "removable storage path :: "

    .line 189
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    move-result-object v2

    .line 199
    invoke-static {p2, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :try_start_1
    iget v1, v1, Landroid/os/storage/VolumeInfo;->state:I

    .line 204
    if-ne v1, p1, :cond_5

    .line 206
    const/16 v1, 0x1e

    .line 208
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->findVolumeByIdOrThrow(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    .line 215
    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    if-ne v2, p1, :cond_4

    .line 218
    add-int/lit8 v2, v1, -0x1

    .line 220
    if-ltz v1, :cond_3

    .line 222
    const-wide/16 v4, 0x3e8

    .line 224
    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 227
    move v1, v2

    .line 228
    goto :goto_2

    .line 229
    :catch_1
    move-exception v1

    .line 230
    goto :goto_3

    .line 231
    :catch_2
    move-exception v1

    .line 232
    :try_start_3
    const-string v4, "Interrupted while waiting for media"

    .line 234
    invoke-static {p2, v4, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    :cond_3
    move v1, v2

    .line 238
    :cond_4
    if-nez v1, :cond_5

    .line 240
    const-string v1, "Timed out waiting for media to check"

    .line 242
    invoke-static {p2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    .line 248
    goto :goto_4

    .line 249
    :goto_3
    const-string/jumbo v2, "volume removed, while waiting "

    .line 252
    invoke-static {p2, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 257
    goto :goto_1

    .line 258
    :cond_6
    return-void

    .line 259
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 262
    move-result-object p1

    .line 263
    const-string v0, "android.intent.extra.user_handle"

    .line 265
    const/4 v1, -0x1

    .line 266
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 269
    move-result p2

    .line 270
    const/4 v0, 0x0

    .line 271
    if-ltz p2, :cond_7

    .line 273
    const/4 v2, 0x1

    .line 274
    goto :goto_5

    .line 275
    :cond_7
    move v2, v0

    .line 276
    :goto_5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 279
    :try_start_4
    const-string v2, "android.intent.action.USER_ADDED"

    .line 281
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    move-result v2

    .line 285
    if-eqz v2, :cond_9

    .line 287
    iget-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 289
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mContext:Landroid/content/Context;

    .line 291
    const-class v0, Landroid/os/UserManager;

    .line 293
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 296
    move-result-object p1

    .line 297
    check-cast p1, Landroid/os/UserManager;

    .line 299
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    .line 302
    move-result v0

    .line 303
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    .line 310
    move-result v2

    .line 311
    if-eqz v2, :cond_8

    .line 313
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 315
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 317
    iget p1, p1, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 319
    invoke-interface {p0, p2, v0, p1}, Landroid/os/IVold;->onUserAdded(III)V

    .line 322
    goto :goto_a

    .line 323
    :catch_3
    move-exception p0

    .line 324
    goto :goto_9

    .line 325
    :cond_8
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 327
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 329
    invoke-interface {p0, p2, v0, v1}, Landroid/os/IVold;->onUserAdded(III)V

    .line 332
    goto :goto_a

    .line 333
    :cond_9
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 335
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 338
    move-result p1

    .line 339
    if-eqz p1, :cond_c

    .line 341
    iget-object p1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 343
    iget-object p1, p1, Lcom/android/server/StorageManagerService;->mLock:Ljava/lang/Object;

    .line 345
    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 346
    :try_start_5
    iget-object v1, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 348
    iget-object v1, v1, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 350
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 353
    move-result v1

    .line 354
    :goto_6
    if-ge v0, v1, :cond_b

    .line 356
    iget-object v2, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 358
    iget-object v2, v2, Lcom/android/server/StorageManagerService;->mVolumes:Landroid/util/ArrayMap;

    .line 360
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 363
    move-result-object v2

    .line 364
    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 366
    iget v3, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 368
    if-ne v3, p2, :cond_a

    .line 370
    const/16 v3, -0x2710

    .line 372
    iput v3, v2, Landroid/os/storage/VolumeInfo;->mountUserId:I

    .line 374
    iget-object v3, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 376
    iget-object v3, v3, Lcom/android/server/StorageManagerService;->mHandler:Lcom/android/server/StorageManagerService$Callbacks;

    .line 378
    const/16 v4, 0x8

    .line 380
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 383
    move-result-object v2

    .line 384
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 387
    goto :goto_7

    .line 388
    :catchall_0
    move-exception p0

    .line 389
    goto :goto_8

    .line 390
    :cond_a
    :goto_7
    add-int/lit8 v0, v0, 0x1

    .line 392
    goto :goto_6

    .line 393
    :cond_b
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 394
    :try_start_6
    iget-object p0, p0, Lcom/android/server/StorageManagerService$1;->this$0:Lcom/android/server/StorageManagerService;

    .line 396
    iget-object p0, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 398
    invoke-interface {p0, p2}, Landroid/os/IVold;->onUserRemoved(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 401
    goto :goto_a

    .line 402
    :goto_8
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 403
    :try_start_8
    throw p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 404
    :goto_9
    const-string p1, "StorageManagerService"

    .line 406
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    :cond_c
    :goto_a
    return-void

    .line 410
    nop

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
