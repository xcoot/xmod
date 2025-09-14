.class public final Lcom/android/server/tv/TvInputManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 15
    .line 16
    const-string p1, "android.intent.extra.user_handle"

    .line 17
    .line 18
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_a

    .line 26
    .line 27
    :cond_0
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v0, :cond_a

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 37
    .line 38
    const-string p1, "android.intent.extra.user_handle"

    .line 39
    .line 40
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter v0

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->getUserStateLocked(I)Lcom/android/server/tv/TvInputManagerService$UserState;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    if-nez p2, :cond_1

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    goto/16 :goto_a

    .line 55
    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_1
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 60
    .line 61
    check-cast v3, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    move v4, v1

    .line 72
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_5

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Lcom/android/server/tv/TvInputManagerService$SessionState;

    .line 83
    .line 84
    iget-object v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    if-eqz v6, :cond_2

    .line 87
    .line 88
    :try_start_1
    invoke-interface {v6}, Landroid/media/tv/ITvInputSession;->release()V

    .line 89
    .line 90
    .line 91
    iput-object v2, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->currentChannel:Landroid/net/Uri;

    .line 92
    .line 93
    iget-boolean v6, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z

    .line 94
    .line 95
    if-eqz v6, :cond_3

    .line 96
    .line 97
    iput-boolean v1, v5, Lcom/android/server/tv/TvInputManagerService$SessionState;->isCurrent:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    .line 99
    const/4 v4, 0x1

    .line 100
    :cond_3
    if-eqz v4, :cond_2

    .line 101
    .line 102
    :goto_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    goto :goto_2

    .line 108
    :catch_0
    move-exception v5

    .line 109
    :try_start_3
    const-string v6, "TvInputManagerService"

    .line 110
    .line 111
    const-string v7, "error in release"

    .line 112
    .line 113
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 114
    .line 115
    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :goto_2
    if-eqz v4, :cond_4

    .line 120
    .line 121
    :try_start_4
    invoke-virtual {p0, p2}, Lcom/android/server/tv/TvInputManagerService;->notifyCurrentChannelInfosUpdatedLocked(Lcom/android/server/tv/TvInputManagerService$UserState;)V

    .line 122
    .line 123
    .line 124
    :cond_4
    throw p1

    .line 125
    :cond_5
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->sessionStateMap:Ljava/util/Map;

    .line 126
    .line 127
    check-cast v3, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 130
    .line 131
    .line 132
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 133
    .line 134
    check-cast v3, Ljava/util/HashMap;

    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    if-eqz v4, :cond_8

    .line 149
    .line 150
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;

    .line 155
    .line 156
    iget-object v5, v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;->service:Landroid/media/tv/ITvInputService;

    .line 157
    .line 158
    if-eqz v5, :cond_6

    .line 159
    .line 160
    iget-object v6, v4, Lcom/android/server/tv/TvInputManagerService$ServiceState;->callback:Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    .line 162
    if-eqz v6, :cond_7

    .line 163
    .line 164
    :try_start_5
    invoke-interface {v5, v6}, Landroid/media/tv/ITvInputService;->unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_4

    .line 168
    :catch_1
    move-exception v5

    .line 169
    :try_start_6
    const-string v6, "TvInputManagerService"

    .line 170
    .line 171
    const-string v7, "error in unregisterCallback"

    .line 172
    .line 173
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .line 175
    .line 176
    :cond_7
    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/server/tv/TvInputManagerService;->unbindService(Lcom/android/server/tv/TvInputManagerService$ServiceState;)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_8
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->serviceStateMap:Ljava/util/Map;

    .line 181
    .line 182
    check-cast v3, Ljava/util/HashMap;

    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 185
    .line 186
    .line 187
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->inputMap:Ljava/util/Map;

    .line 188
    .line 189
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 190
    .line 191
    .line 192
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->packageSet:Ljava/util/Set;

    .line 193
    .line 194
    check-cast v3, Ljava/util/HashSet;

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 197
    .line 198
    .line 199
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->contentRatingSystemList:Ljava/util/List;

    .line 200
    .line 201
    check-cast v3, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 204
    .line 205
    .line 206
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->clientStateMap:Ljava/util/Map;

    .line 207
    .line 208
    check-cast v3, Ljava/util/HashMap;

    .line 209
    .line 210
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 211
    .line 212
    .line 213
    iget-object v3, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 214
    .line 215
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->kill()V

    .line 216
    .line 217
    .line 218
    iput-object v2, p2, Lcom/android/server/tv/TvInputManagerService$UserState;->mainSessionToken:Landroid/os/IBinder;

    .line 219
    .line 220
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 221
    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    check-cast p2, Ljava/util/HashSet;

    .line 227
    .line 228
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 232
    .line 233
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 234
    .line 235
    .line 236
    iget p2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 237
    .line 238
    if-ne p1, p2, :cond_9

    .line 239
    .line 240
    invoke-virtual {p0, v1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 241
    .line 242
    .line 243
    :cond_9
    monitor-exit v0

    .line 244
    goto/16 :goto_a

    .line 245
    .line 246
    :goto_5
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 247
    throw p0

    .line 248
    :cond_a
    const-string v0, "android.intent.action.USER_STARTED"

    .line 249
    .line 250
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-eqz v0, :cond_e

    .line 255
    .line 256
    const-string p1, "android.intent.extra.user_handle"

    .line 257
    .line 258
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 263
    .line 264
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 265
    .line 266
    monitor-enter v0

    .line 267
    :try_start_7
    iget p2, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 268
    .line 269
    if-eq p1, p2, :cond_d

    .line 270
    .line 271
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 272
    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast p2, Ljava/util/HashSet;

    .line 278
    .line 279
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result p2

    .line 283
    if-eqz p2, :cond_b

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_b
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    .line 287
    .line 288
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    iget-object v1, p0, Lcom/android/server/tv/TvInputManagerService;->mUserManager:Landroid/os/UserManager;

    .line 293
    .line 294
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    if-eqz p2, :cond_c

    .line 303
    .line 304
    if-eqz v1, :cond_c

    .line 305
    .line 306
    iget p2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 307
    .line 308
    iget v1, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 309
    .line 310
    if-ne p2, v1, :cond_c

    .line 311
    .line 312
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 313
    .line 314
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    check-cast p2, Ljava/util/HashSet;

    .line 319
    .line 320
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, p1, v2}, Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->buildTvContentRatingSystemListLocked(I)V

    .line 327
    .line 328
    .line 329
    goto :goto_6

    .line 330
    :catchall_2
    move-exception p0

    .line 331
    goto :goto_8

    .line 332
    :cond_c
    :goto_6
    monitor-exit v0

    .line 333
    goto :goto_a

    .line 334
    :cond_d
    :goto_7
    monitor-exit v0

    .line 335
    goto :goto_a

    .line 336
    :goto_8
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 337
    throw p0

    .line 338
    :cond_e
    const-string v0, "android.intent.action.USER_STOPPED"

    .line 339
    .line 340
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    move-result p1

    .line 344
    if-eqz p1, :cond_10

    .line 345
    .line 346
    const-string p1, "android.intent.extra.user_handle"

    .line 347
    .line 348
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService$2;->this$0:Lcom/android/server/tv/TvInputManagerService;

    .line 353
    .line 354
    iget-object p2, p0, Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;

    .line 355
    .line 356
    monitor-enter p2

    .line 357
    :try_start_8
    iget v0, p0, Lcom/android/server/tv/TvInputManagerService;->mCurrentUserId:I

    .line 358
    .line 359
    if-ne p1, v0, :cond_f

    .line 360
    .line 361
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->switchUser(I)V

    .line 366
    .line 367
    .line 368
    monitor-exit p2

    .line 369
    goto :goto_a

    .line 370
    :catchall_3
    move-exception p0

    .line 371
    goto :goto_9

    .line 372
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->releaseSessionOfUserLocked(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputManagerService;->unbindServiceOfUserLocked(I)V

    .line 376
    .line 377
    .line 378
    iget-object p0, p0, Lcom/android/server/tv/TvInputManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 379
    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    check-cast p0, Ljava/util/HashSet;

    .line 385
    .line 386
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    monitor-exit p2

    .line 390
    goto :goto_a

    .line 391
    :goto_9
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 392
    throw p0

    .line 393
    :cond_10
    :goto_a
    return-void
.end method
