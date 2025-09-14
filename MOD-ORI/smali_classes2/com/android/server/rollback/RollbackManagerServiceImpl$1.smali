.class public final Lcom/android/server/rollback/RollbackManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

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
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 12
    .line 13
    iget-wide v0, p1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    sub-long/2addr v2, v4

    .line 24
    iput-wide v2, p1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 27
    .line 28
    iget-wide p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    .line 29
    .line 30
    sub-long/2addr p1, v0

    .line 31
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 32
    .line 33
    check-cast p0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/server/rollback/Rollback;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 55
    .line 56
    invoke-virtual {v1, p1, p2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0}, Lcom/android/server/rollback/Rollback;->assertInWorkerThread()V

    .line 61
    .line 62
    .line 63
    iput-object v1, v0, Lcom/android/server/rollback/Rollback;->mTimestamp:Ljava/time/Instant;

    .line 64
    .line 65
    iget-object v1, v0, Lcom/android/server/rollback/Rollback;->mBackupDir:Ljava/io/File;

    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/android/server/rollback/RollbackStore;->saveRollback(Lcom/android/server/rollback/Rollback;Ljava/io/File;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void

    .line 72
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 82
    .line 83
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const-string v1, "RollbackManager"

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    sget-boolean v2, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 100
    .line 101
    if-eqz v2, :cond_1

    .line 102
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v3, "broadcast=ACTION_PACKAGE_REPLACED pkg="

    .line 106
    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_1
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 121
    .line 122
    invoke-virtual {v2, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 126
    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_3

    .line 132
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const-string p2, "broadcast=ACTION_PACKAGE_FULLY_REMOVED pkg="

    .line 142
    .line 143
    invoke-static {p2, p1, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 149
    .line 150
    .line 151
    new-instance p2, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    const-string v0, "Package "

    .line 154
    .line 155
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v0, " removed"

    .line 162
    .line 163
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-virtual {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->expireRollbackForPackageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    return-void

    .line 174
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    const-string v0, "android.intent.action.USER_ADDED"

    .line 184
    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    const-string v0, "android.intent.extra.user_handle"

    .line 190
    .line 191
    const/4 v1, -0x1

    .line 192
    if-eqz p1, :cond_5

    .line 193
    .line 194
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    if-ne p1, v1, :cond_4

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_4
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 202
    .line 203
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    const-string p1, "android.intent.action.USER_REMOVED"

    .line 212
    .line 213
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-eqz p1, :cond_9

    .line 222
    .line 223
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-ne p1, v1, :cond_6

    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_6
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 231
    .line 232
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mUserBroadcastReceivers:Landroid/util/ArrayMap;

    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p2

    .line 250
    check-cast p2, Landroid/util/Pair;

    .line 251
    .line 252
    if-eqz p2, :cond_8

    .line 253
    .line 254
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 255
    .line 256
    if-eqz v0, :cond_8

    .line 257
    .line 258
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 259
    .line 260
    if-nez p2, :cond_7

    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_7
    check-cast v0, Landroid/content/Context;

    .line 264
    .line 265
    check-cast p2, Landroid/content/BroadcastReceiver;

    .line 266
    .line 267
    invoke-virtual {v0, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 268
    .line 269
    .line 270
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mUserBroadcastReceivers:Landroid/util/ArrayMap;

    .line 271
    .line 272
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 273
    .line 274
    .line 275
    move-result p1

    .line 276
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_8
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string p2, "No receiver found for the user"

    .line 287
    .line 288
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p0

    .line 298
    const-string p1, "RollbackManager"

    .line 299
    .line 300
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    :cond_9
    :goto_2
    return-void

    .line 304
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 305
    .line 306
    invoke-virtual {p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    const-string v0, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    .line 314
    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result p1

    .line 319
    if-eqz p1, :cond_b

    .line 320
    .line 321
    const-string p1, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    .line 322
    .line 323
    const/4 v0, -0x1

    .line 324
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 325
    .line 326
    .line 327
    move-result p1

    .line 328
    sget-boolean p2, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 329
    .line 330
    if-eqz p2, :cond_a

    .line 331
    .line 332
    const-string p2, "broadcast=ACTION_CANCEL_ENABLE_ROLLBACK id="

    .line 333
    .line 334
    const-string v0, "RollbackManager"

    .line 335
    .line 336
    invoke-static {p1, p2, v0}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_a
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 340
    .line 341
    invoke-virtual {p2, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    if-eqz p1, :cond_b

    .line 346
    .line 347
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    .line 348
    .line 349
    .line 350
    move-result p2

    .line 351
    if-eqz p2, :cond_b

    .line 352
    .line 353
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 354
    .line 355
    iget-object p2, p2, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 356
    .line 357
    check-cast p2, Ljava/util/ArrayList;

    .line 358
    .line 359
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 363
    .line 364
    const-string p2, "Rollback canceled"

    .line 365
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    :cond_b
    return-void

    .line 370
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 371
    .line 372
    invoke-virtual {p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p1

    .line 379
    const-string v0, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    .line 380
    .line 381
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    if-eqz p1, :cond_e

    .line 386
    .line 387
    const-string p1, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    .line 388
    .line 389
    const/4 v0, -0x1

    .line 390
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 391
    .line 392
    .line 393
    move-result p1

    .line 394
    const-string v1, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    .line 395
    .line 396
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 397
    .line 398
    .line 399
    move-result p2

    .line 400
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 401
    .line 402
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 403
    .line 404
    .line 405
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    .line 406
    .line 407
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->size()I

    .line 408
    .line 409
    .line 410
    move-result v1

    .line 411
    if-nez v1, :cond_c

    .line 412
    .line 413
    goto :goto_3

    .line 414
    :cond_c
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    .line 415
    .line 416
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->removeFirst()J

    .line 417
    .line 418
    .line 419
    move-result-wide v1

    .line 420
    const-wide/16 v3, 0x0

    .line 421
    .line 422
    cmp-long v3, v1, v3

    .line 423
    .line 424
    if-gtz v3, :cond_d

    .line 425
    .line 426
    goto :goto_3

    .line 427
    :cond_d
    iget-object v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 428
    .line 429
    new-instance v4, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;

    .line 430
    .line 431
    const/4 v5, 0x1

    .line 432
    invoke-direct {v4, v0, v1, v2, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;JI)V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    .line 437
    .line 438
    :goto_3
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 439
    .line 440
    iget-object v0, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 441
    .line 442
    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;

    .line 443
    .line 444
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;II)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    .line 449
    .line 450
    :cond_e
    return-void

    .line 451
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
