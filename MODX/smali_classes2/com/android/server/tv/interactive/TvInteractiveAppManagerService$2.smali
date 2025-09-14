.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

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
    .locals 7

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
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

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
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser$1(I)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_8

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
    if-eqz v0, :cond_8

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 36
    .line 37
    const-string p1, "android.intent.extra.user_handle"

    .line 38
    .line 39
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 44
    .line 45
    monitor-enter v0

    .line 46
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    if-nez p2, :cond_1

    .line 51
    .line 52
    monitor-exit v0

    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    .line 59
    .line 60
    check-cast v2, Ljava/util/HashMap;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;

    .line 81
    .line 82
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionState;->mSession:Landroid/media/tv/interactive/ITvInteractiveAppSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    if-eqz v3, :cond_2

    .line 85
    .line 86
    :try_start_1
    invoke-interface {v3}, Landroid/media/tv/interactive/ITvInteractiveAppSession;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    .line 91
    :try_start_2
    const-string v4, "TvInteractiveAppManagerService"

    .line 92
    .line 93
    const-string v5, "error in release"

    .line 94
    .line 95
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mSessionStateMap:Ljava/util/Map;

    .line 100
    .line 101
    check-cast v2, Ljava/util/HashMap;

    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 104
    .line 105
    .line 106
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 107
    .line 108
    check-cast v2, Ljava/util/HashMap;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_6

    .line 123
    .line 124
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    check-cast v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 129
    .line 130
    iget-object v4, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 131
    .line 132
    if-eqz v4, :cond_4

    .line 133
    .line 134
    iget-object v5, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    .line 136
    if-eqz v5, :cond_5

    .line 137
    .line 138
    :try_start_3
    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_1
    move-exception v4

    .line 143
    :try_start_4
    const-string v5, "TvInteractiveAppManagerService"

    .line 144
    .line 145
    const-string v6, "error in unregisterCallback"

    .line 146
    .line 147
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .line 149
    .line 150
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 151
    .line 152
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mConnection:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;

    .line 153
    .line 154
    invoke-virtual {v4, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_6
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 159
    .line 160
    check-cast v2, Ljava/util/HashMap;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 163
    .line 164
    .line 165
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mIAppMap:Ljava/util/Map;

    .line 166
    .line 167
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 168
    .line 169
    .line 170
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mPackageSet:Ljava/util/Set;

    .line 171
    .line 172
    check-cast v2, Ljava/util/HashSet;

    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 175
    .line 176
    .line 177
    iget-object v2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mClientStateMap:Ljava/util/Map;

    .line 178
    .line 179
    check-cast v2, Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 182
    .line 183
    .line 184
    iget-object p2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 185
    .line 186
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->kill()V

    .line 187
    .line 188
    .line 189
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 190
    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast p2, Ljava/util/HashSet;

    .line 196
    .line 197
    invoke-virtual {p2, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 201
    .line 202
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 203
    .line 204
    .line 205
    iget p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 206
    .line 207
    if-ne p1, p2, :cond_7

    .line 208
    .line 209
    invoke-virtual {p0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser$1(I)V

    .line 210
    .line 211
    .line 212
    :cond_7
    monitor-exit v0

    .line 213
    goto/16 :goto_8

    .line 214
    .line 215
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    throw p0

    .line 217
    :cond_8
    const-string v0, "android.intent.action.USER_STARTED"

    .line 218
    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eqz v0, :cond_c

    .line 224
    .line 225
    const-string p1, "android.intent.extra.user_handle"

    .line 226
    .line 227
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 228
    .line 229
    .line 230
    move-result p1

    .line 231
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 232
    .line 233
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 234
    .line 235
    monitor-enter v0

    .line 236
    :try_start_5
    iget p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 237
    .line 238
    if-eq p1, p2, :cond_b

    .line 239
    .line 240
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 241
    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast p2, Ljava/util/HashSet;

    .line 247
    .line 248
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    if-eqz p2, :cond_9

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_9
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    .line 256
    .line 257
    invoke-virtual {p2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mUserManager:Landroid/os/UserManager;

    .line 262
    .line 263
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    if-eqz p2, :cond_a

    .line 272
    .line 273
    if-eqz v1, :cond_a

    .line 274
    .line 275
    iget p2, v1, Landroid/content/pm/UserInfo;->id:I

    .line 276
    .line 277
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 278
    .line 279
    if-ne p2, v1, :cond_a

    .line 280
    .line 281
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 282
    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast p2, Ljava/util/HashSet;

    .line 288
    .line 289
    invoke-virtual {p2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    const/4 p2, 0x0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvInteractiveAppServiceListLocked(I[Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildAppLinkInfoLocked(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvAdServiceListLocked(I[Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :catchall_1
    move-exception p0

    .line 304
    goto :goto_6

    .line 305
    :cond_a
    :goto_4
    monitor-exit v0

    .line 306
    goto :goto_8

    .line 307
    :cond_b
    :goto_5
    monitor-exit v0

    .line 308
    goto :goto_8

    .line 309
    :goto_6
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 310
    throw p0

    .line 311
    :cond_c
    const-string v0, "android.intent.action.USER_STOPPED"

    .line 312
    .line 313
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 314
    .line 315
    .line 316
    move-result p1

    .line 317
    if-eqz p1, :cond_e

    .line 318
    .line 319
    const-string p1, "android.intent.extra.user_handle"

    .line 320
    .line 321
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 322
    .line 323
    .line 324
    move-result p1

    .line 325
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$2;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 326
    .line 327
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 328
    .line 329
    monitor-enter p2

    .line 330
    :try_start_6
    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 331
    .line 332
    if-ne p1, v0, :cond_d

    .line 333
    .line 334
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 335
    .line 336
    .line 337
    move-result p1

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->switchUser$1(I)V

    .line 339
    .line 340
    .line 341
    monitor-exit p2

    .line 342
    goto :goto_8

    .line 343
    :catchall_2
    move-exception p0

    .line 344
    goto :goto_7

    .line 345
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->releaseSessionOfUserLocked$1(I)V

    .line 346
    .line 347
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->unbindServiceOfUserLocked$1(I)V

    .line 349
    .line 350
    .line 351
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 352
    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 354
    .line 355
    .line 356
    move-result-object p1

    .line 357
    check-cast p0, Ljava/util/HashSet;

    .line 358
    .line 359
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 360
    .line 361
    .line 362
    monitor-exit p2

    .line 363
    goto :goto_8

    .line 364
    :goto_7
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 365
    throw p0

    .line 366
    :cond_e
    :goto_8
    return-void
.end method
