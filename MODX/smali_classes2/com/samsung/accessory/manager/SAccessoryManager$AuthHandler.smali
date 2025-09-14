.class public final Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v0, "SAccessoryManager_SAccessoryManager"

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string/jumbo v2, "processAuthMessage = "

    .line 11
    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v2, p1, Landroid/os/Message;->what:I

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    const/4 v4, 0x3

    .line 20
    const/4 v5, 0x2

    .line 21
    const/4 v6, 0x1

    .line 22
    if-eq v2, v6, :cond_3

    .line 23
    .line 24
    if-eq v2, v5, :cond_2

    .line 25
    .line 26
    if-eq v2, v4, :cond_1

    .line 27
    .line 28
    if-eq v2, v3, :cond_0

    .line 29
    .line 30
    packed-switch v2, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    const-string v2, "MSG_DETACHCHECK"

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_1
    const-string v2, "MSG_AUTH_SESSION_STOPPED"

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    const-string v2, "MSG_AUTH_SESSION_COMPLETE"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_3
    const-string v2, "MSG_AUTH_SESSION_STARTED"

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_4
    const-string v2, "MSG_AUTH_SESSION_STARTING"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v2, "MSG_AUTH_STOP_REQUEST"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string v2, "MSG_AUTH_RESTART"

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string v2, "MSG_AUTH_START_REQUEST_INTERNAL"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    const-string v2, "MSG_AUTH_START_REQUEST"

    .line 60
    .line 61
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    if-eq v0, v6, :cond_f

    .line 68
    .line 69
    if-eq v0, v5, :cond_e

    .line 70
    .line 71
    if-eq v0, v4, :cond_c

    .line 72
    .line 73
    if-eq v0, v3, :cond_a

    .line 74
    .line 75
    packed-switch v0, :pswitch_data_1

    .line 76
    .line 77
    .line 78
    goto/16 :goto_7

    .line 79
    .line 80
    :pswitch_5
    const-string p1, "SAccessoryManager_SAccessoryManager"

    .line 81
    .line 82
    const-string v0, "Check auth chip again. Skip detach process if there is no auth chip in this time"

    .line 83
    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mDetachCheck:Lcom/samsung/accessory/manager/DetachCheck;

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/DetachCheck;->requestStartTypeS()[B

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    if-eqz v0, :cond_4

    .line 94
    .line 95
    array-length v0, v0

    .line 96
    const/16 v2, 0x10

    .line 97
    .line 98
    if-ne v0, v2, :cond_4

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_7

    .line 104
    .line 105
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/DetachCheck;->requestStopTypeS()V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mLocalAuthenticator:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_10

    .line 119
    .line 120
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 125
    .line 126
    instance-of v0, p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 127
    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    const-string v0, "SAccessoryManager_SAccessoryManager"

    .line 131
    .line 132
    const-string/jumbo v2, "there is no authentication chip, so do detach process"

    .line 133
    .line 134
    .line 135
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    check-cast p1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 139
    .line 140
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 141
    .line 142
    .line 143
    move-result-wide v2

    .line 144
    invoke-virtual {p1, v2, v3, v1, v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZZ)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 151
    .line 152
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 153
    .line 154
    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    if-eqz v1, :cond_6

    .line 162
    .line 163
    const-string v1, "SAccessoryManager_SAccessoryManager"

    .line 164
    .line 165
    const-string/jumbo v2, "session removed"

    .line 166
    .line 167
    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :catchall_0
    move-exception p0

    .line 173
    goto :goto_3

    .line 174
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 175
    .line 176
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_7

    .line 181
    .line 182
    iget-object v1, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 183
    .line 184
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_7

    .line 189
    .line 190
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 193
    .line 194
    .line 195
    :cond_7
    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 196
    .line 197
    if-eqz p0, :cond_8

    .line 198
    .line 199
    invoke-interface {p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStopped()V

    .line 200
    .line 201
    .line 202
    :cond_8
    monitor-exit v0

    .line 203
    goto/16 :goto_7

    .line 204
    .line 205
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    throw p0

    .line 207
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 210
    .line 211
    iget-object v0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 212
    .line 213
    if-nez v0, :cond_9

    .line 214
    .line 215
    const-string v0, "SAccessoryManager_SAccessoryManager"

    .line 216
    .line 217
    const-string/jumbo v1, "sendIntentToReceiver"

    .line 218
    .line 219
    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 224
    .line 225
    new-instance v0, Landroid/content/Intent;

    .line 226
    .line 227
    const-string v1, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REPLY"

    .line 228
    .line 229
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 237
    .line 238
    .line 239
    iget-object p1, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    .line 240
    .line 241
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    .line 243
    .line 244
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mContext:Landroid/content/Context;

    .line 245
    .line 246
    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 247
    .line 248
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 249
    .line 250
    .line 251
    goto/16 :goto_7

    .line 252
    .line 253
    :cond_9
    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mResult:Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    .line 254
    .line 255
    invoke-interface {v0, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_7

    .line 259
    .line 260
    :pswitch_8
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    .line 262
    check-cast p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 263
    .line 264
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 265
    .line 266
    if-eqz p0, :cond_10

    .line 267
    .line 268
    invoke-interface {p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarted()V

    .line 269
    .line 270
    .line 271
    goto/16 :goto_7

    .line 272
    .line 273
    :pswitch_9
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 276
    .line 277
    iget-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthResultCallback:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 278
    .line 279
    if-eqz p1, :cond_10

    .line 280
    .line 281
    invoke-interface {p1, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 282
    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 288
    .line 289
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 290
    .line 291
    monitor-enter v0

    .line 292
    :try_start_1
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 293
    .line 294
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result p0

    .line 298
    if-eqz p0, :cond_b

    .line 299
    .line 300
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 301
    :try_start_2
    const-string p0, "SAccessoryManager_AuthenticationSession"

    .line 302
    .line 303
    const-string/jumbo v1, "stopSession"

    .line 304
    .line 305
    .line 306
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 310
    .line 311
    const/16 v1, 0xb

    .line 312
    .line 313
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 314
    .line 315
    .line 316
    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 317
    .line 318
    const/16 v1, 0xc

    .line 319
    .line 320
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    .line 322
    .line 323
    iget-object p0, p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    .line 324
    .line 325
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 326
    .line 327
    .line 328
    :try_start_3
    monitor-exit p1

    .line 329
    goto :goto_4

    .line 330
    :catchall_1
    move-exception p0

    .line 331
    monitor-exit p1

    .line 332
    throw p0

    .line 333
    :cond_b
    const-string p0, "SAccessoryManager_SAccessoryManager"

    .line 334
    .line 335
    const-string p1, "The session does not exist! so can\'t stop the session!"

    .line 336
    .line 337
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    .line 339
    .line 340
    :goto_4
    monitor-exit v0

    .line 341
    goto :goto_7

    .line 342
    :catchall_2
    move-exception p0

    .line 343
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 344
    throw p0

    .line 345
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 346
    .line 347
    check-cast p1, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 348
    .line 349
    iget-object v0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 350
    .line 351
    monitor-enter v0

    .line 352
    :try_start_4
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager;->mSessions:Ljava/util/HashMap;

    .line 353
    .line 354
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result p0

    .line 358
    if-eqz p0, :cond_d

    .line 359
    .line 360
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :catchall_3
    move-exception p0

    .line 365
    goto :goto_6

    .line 366
    :cond_d
    const-string p0, "SAccessoryManager_SAccessoryManager"

    .line 367
    .line 368
    const-string p1, "The session does not exist! so can\'t restart the session!"

    .line 369
    .line 370
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    :goto_5
    monitor-exit v0

    .line 374
    goto :goto_7

    .line 375
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 376
    throw p0

    .line 377
    :cond_e
    invoke-virtual {p0, p1, v6}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    .line 378
    .line 379
    .line 380
    goto :goto_7

    .line 381
    :cond_f
    invoke-virtual {p0, p1, v1}, Lcom/samsung/accessory/manager/SAccessoryManager;->handleAuthStartRequest(Landroid/os/Message;Z)V

    .line 382
    .line 383
    .line 384
    :cond_10
    :goto_7
    return-void

    .line 385
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
