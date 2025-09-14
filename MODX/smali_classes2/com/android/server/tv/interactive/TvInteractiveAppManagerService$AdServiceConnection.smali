.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic $r8$classId:I

.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 1
    iget p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 22
    .line 23
    iget-object p2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 26
    .line 27
    .line 28
    monitor-exit p1

    .line 29
    goto/16 :goto_b

    .line 30
    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto/16 :goto_c

    .line 33
    .line 34
    :cond_0
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 37
    .line 38
    check-cast v0, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 45
    .line 46
    invoke-static {p2}, Landroid/media/tv/interactive/ITvInteractiveAppService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 51
    .line 52
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    .line 53
    .line 54
    if-nez p2, :cond_1

    .line 55
    .line 56
    new-instance p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    .line 57
    .line 58
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 61
    .line 62
    iget v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 63
    .line 64
    invoke-direct {p2, v1, v2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 65
    .line 66
    .line 67
    iput-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    :try_start_1
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 70
    .line 71
    invoke-interface {v1, p2}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerCallback(Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception p2

    .line 76
    :try_start_2
    const-string v1, "TvInteractiveAppManagerService"

    .line 77
    .line 78
    const-string v2, "error in registerCallback"

    .line 79
    .line 80
    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    .line 84
    .line 85
    check-cast p2, Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-nez p2, :cond_3

    .line 92
    .line 93
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkInfo:Ljava/util/List;

    .line 94
    .line 95
    check-cast p2, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/util/Pair;

    .line 112
    .line 113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 114
    .line 115
    .line 116
    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    :try_start_3
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v4, Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-eqz v4, :cond_2

    .line 126
    .line 127
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 128
    .line 129
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 130
    .line 131
    check-cast v5, Landroid/media/tv/interactive/AppLinkInfo;

    .line 132
    .line 133
    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->registerAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    goto :goto_5

    .line 139
    :catch_1
    move-exception v4

    .line 140
    goto :goto_4

    .line 141
    :cond_2
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 142
    .line 143
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 144
    .line 145
    check-cast v5, Landroid/media/tv/interactive/AppLinkInfo;

    .line 146
    .line 147
    invoke-interface {v4, v5}, Landroid/media/tv/interactive/ITvInteractiveAppService;->unregisterAppLinkInfo(Landroid/media/tv/interactive/AppLinkInfo;)V

    .line 148
    .line 149
    .line 150
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 151
    .line 152
    .line 153
    :goto_3
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :goto_4
    :try_start_5
    const-string v5, "TvInteractiveAppManagerService"

    .line 158
    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v7, "error in notifyAppLinkInfo("

    .line 165
    .line 166
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ") when onServiceConnected"

    .line 173
    .line 174
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-static {v5, v1, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    .line 183
    .line 184
    goto :goto_3

    .line 185
    :goto_5
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    .line 187
    .line 188
    throw p0

    .line 189
    :cond_3
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 190
    .line 191
    check-cast p2, Ljava/util/ArrayList;

    .line 192
    .line 193
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-nez p2, :cond_4

    .line 198
    .line 199
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 200
    .line 201
    check-cast p2, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-eqz v1, :cond_4

    .line 212
    .line 213
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Landroid/os/Bundle;

    .line 218
    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 220
    .line 221
    .line 222
    move-result-wide v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 223
    :try_start_7
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 224
    .line 225
    invoke-interface {v4, v1}, Landroid/media/tv/interactive/ITvInteractiveAppService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 226
    .line 227
    .line 228
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 229
    .line 230
    .line 231
    :goto_7
    :try_start_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :catchall_2
    move-exception p0

    .line 236
    goto :goto_8

    .line 237
    :catch_2
    move-exception v4

    .line 238
    :try_start_9
    const-string v5, "TvInteractiveAppManagerService"

    .line 239
    .line 240
    new-instance v6, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v7, "error in sendAppLinkCommand("

    .line 246
    .line 247
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v1, ") when onServiceConnected"

    .line 254
    .line 255
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {v5, v1, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 263
    .line 264
    .line 265
    goto :goto_7

    .line 266
    :goto_8
    :try_start_a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 267
    .line 268
    .line 269
    throw p0

    .line 270
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    .line 271
    .line 272
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .line 274
    .line 275
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mSessionTokens:Ljava/util/List;

    .line 276
    .line 277
    check-cast v1, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    :cond_5
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_6

    .line 288
    .line 289
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    check-cast v2, Landroid/os/IBinder;

    .line 294
    .line 295
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 296
    .line 297
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 298
    .line 299
    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 300
    .line 301
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/interactive/ITvInteractiveAppService;Landroid/os/IBinder;I)Z

    .line 302
    .line 303
    .line 304
    move-result v3

    .line 305
    if-nez v3, :cond_5

    .line 306
    .line 307
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 312
    .line 313
    .line 314
    move-result-object p2

    .line 315
    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_7

    .line 320
    .line 321
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    check-cast v0, Landroid/os/IBinder;

    .line 326
    .line 327
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 328
    .line 329
    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 330
    .line 331
    invoke-virtual {v1, v2, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeSessionStateLocked$1(ILandroid/os/IBinder;)V

    .line 332
    .line 333
    .line 334
    goto :goto_a

    .line 335
    :cond_7
    monitor-exit p1

    .line 336
    :goto_b
    return-void

    .line 337
    :goto_c
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 338
    throw p0

    .line 339
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 340
    .line 341
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 342
    .line 343
    monitor-enter p1

    .line 344
    :try_start_b
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 345
    .line 346
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 347
    .line 348
    invoke-virtual {v0, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    if-nez v0, :cond_8

    .line 353
    .line 354
    iget-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 355
    .line 356
    iget-object p2, p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mContext:Landroid/content/Context;

    .line 357
    .line 358
    invoke-virtual {p2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 359
    .line 360
    .line 361
    monitor-exit p1

    .line 362
    goto/16 :goto_13

    .line 363
    .line 364
    :catchall_3
    move-exception p0

    .line 365
    goto/16 :goto_14

    .line 366
    .line 367
    :cond_8
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 368
    .line 369
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 370
    .line 371
    check-cast v0, Ljava/util/HashMap;

    .line 372
    .line 373
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 378
    .line 379
    invoke-static {p2}, Landroid/media/tv/ad/ITvAdService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ad/ITvAdService;

    .line 380
    .line 381
    .line 382
    move-result-object p2

    .line 383
    iput-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    .line 384
    .line 385
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    .line 386
    .line 387
    if-nez p2, :cond_9

    .line 388
    .line 389
    new-instance p2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    .line 390
    .line 391
    invoke-direct {p2}, Landroid/media/tv/ad/ITvAdServiceCallback$Stub;-><init>()V

    .line 392
    .line 393
    .line 394
    iput-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 395
    .line 396
    :try_start_c
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    .line 397
    .line 398
    invoke-interface {v1, p2}, Landroid/media/tv/ad/ITvAdService;->registerCallback(Landroid/media/tv/ad/ITvAdServiceCallback;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 399
    .line 400
    .line 401
    goto :goto_d

    .line 402
    :catch_3
    move-exception p2

    .line 403
    :try_start_d
    const-string v1, "TvInteractiveAppManagerService"

    .line 404
    .line 405
    const-string v2, "error in registerCallback"

    .line 406
    .line 407
    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .line 409
    .line 410
    :cond_9
    :goto_d
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 411
    .line 412
    check-cast p2, Ljava/util/ArrayList;

    .line 413
    .line 414
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 415
    .line 416
    .line 417
    move-result p2

    .line 418
    if-nez p2, :cond_a

    .line 419
    .line 420
    iget-object p2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 421
    .line 422
    check-cast p2, Ljava/util/ArrayList;

    .line 423
    .line 424
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 425
    .line 426
    .line 427
    move-result-object p2

    .line 428
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 429
    .line 430
    .line 431
    move-result v1

    .line 432
    if-eqz v1, :cond_a

    .line 433
    .line 434
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    check-cast v1, Landroid/os/Bundle;

    .line 439
    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 441
    .line 442
    .line 443
    move-result-wide v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 444
    :try_start_e
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    .line 445
    .line 446
    invoke-interface {v4, v1}, Landroid/media/tv/ad/ITvAdService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 447
    .line 448
    .line 449
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 450
    .line 451
    .line 452
    :goto_f
    :try_start_f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 453
    .line 454
    .line 455
    goto :goto_e

    .line 456
    :catchall_4
    move-exception p0

    .line 457
    goto :goto_10

    .line 458
    :catch_4
    move-exception v4

    .line 459
    :try_start_10
    const-string v5, "TvInteractiveAppManagerService"

    .line 460
    .line 461
    new-instance v6, Ljava/lang/StringBuilder;

    .line 462
    .line 463
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    .line 465
    .line 466
    const-string v7, "error in sendAppLinkCommand("

    .line 467
    .line 468
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const-string v1, ") when onServiceConnected"

    .line 475
    .line 476
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    invoke-static {v5, v1, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 484
    .line 485
    .line 486
    goto :goto_f

    .line 487
    :goto_10
    :try_start_11
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 488
    .line 489
    .line 490
    throw p0

    .line 491
    :cond_a
    new-instance p2, Ljava/util/ArrayList;

    .line 492
    .line 493
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .line 495
    .line 496
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    .line 497
    .line 498
    check-cast v1, Ljava/util/ArrayList;

    .line 499
    .line 500
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    :cond_b
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 505
    .line 506
    .line 507
    move-result v2

    .line 508
    if-eqz v2, :cond_c

    .line 509
    .line 510
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    check-cast v2, Landroid/os/IBinder;

    .line 515
    .line 516
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 517
    .line 518
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    .line 519
    .line 520
    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 521
    .line 522
    invoke-static {v3, v4, v2, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateAdSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdService;Landroid/os/IBinder;I)Z

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    if-nez v3, :cond_b

    .line 527
    .line 528
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    goto :goto_11

    .line 532
    :cond_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 533
    .line 534
    .line 535
    move-result-object p2

    .line 536
    :goto_12
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    if-eqz v0, :cond_d

    .line 541
    .line 542
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    check-cast v0, Landroid/os/IBinder;

    .line 547
    .line 548
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 549
    .line 550
    iget v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 551
    .line 552
    invoke-virtual {v1, v2, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    .line 553
    .line 554
    .line 555
    goto :goto_12

    .line 556
    :cond_d
    monitor-exit p1

    .line 557
    :goto_13
    return-void

    .line 558
    :goto_14
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 559
    throw p0

    .line 560
    nop

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mServiceStateMap:Ljava/util/Map;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 30
    .line 31
    check-cast p1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    iput-boolean v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mReconnecting:Z

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mBound:Z

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    iput-object v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mService:Landroid/media/tv/interactive/ITvInteractiveAppService;

    .line 49
    .line 50
    iput-object v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 53
    .line 54
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 55
    .line 56
    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;Ljava/lang/String;I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_1

    .line 62
    :cond_0
    :goto_0
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v2, "Mismatched ComponentName: "

    .line 71
    .line 72
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 76
    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, " (expected), "

    .line 81
    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p0, " (actual)."

    .line 89
    .line 90
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 110
    .line 111
    iget-object v0, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 112
    .line 113
    monitor-enter v0

    .line 114
    :try_start_1
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 115
    .line 116
    iget v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object p1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 125
    .line 126
    check-cast p1, Ljava/util/HashMap;

    .line 127
    .line 128
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 133
    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    iput-boolean v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    .line 138
    .line 139
    const/4 v1, 0x0

    .line 140
    iput-boolean v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mBound:Z

    .line 141
    .line 142
    const/4 v1, 0x0

    .line 143
    iput-object v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    .line 144
    .line 145
    iput-object v1, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mCallback:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceCallback;

    .line 146
    .line 147
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 148
    .line 149
    iget p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mUserId:I

    .line 150
    .line 151
    invoke-virtual {v2, p1, v1, p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->abortPendingCreateAdSessionRequestsLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :catchall_1
    move-exception p0

    .line 156
    goto :goto_3

    .line 157
    :cond_2
    :goto_2
    monitor-exit v0

    .line 158
    return-void

    .line 159
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    throw p0

    .line 161
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v2, "Mismatched ComponentName: "

    .line 166
    .line 167
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceConnection;->mComponent:Landroid/content/ComponentName;

    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string p0, " (expected), "

    .line 176
    .line 177
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p0, " (actual)."

    .line 184
    .line 185
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw v0

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
