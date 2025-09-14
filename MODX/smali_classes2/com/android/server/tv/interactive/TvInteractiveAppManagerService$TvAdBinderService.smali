.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;
.super Landroid/media/tv/ad/ITvAdManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/tv/ad/ITvAdManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createMediaView(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "createMediaView"

    .line 12
    .line 13
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 27
    .line 28
    invoke-virtual {p0, v0, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->createMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 44
    .line 45
    const-string p2, "error in createMediaView"

    .line 46
    .line 47
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final createSession(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move-object/from16 v4, p2

    .line 6
    .line 7
    move/from16 v8, p4

    .line 8
    .line 9
    move/from16 v1, p5

    .line 10
    .line 11
    const-string v2, "Failed to find state for serviceId="

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    .line 15
    .line 16
    move-result v9

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v5, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 22
    .line 23
    const-string v6, "createSession"

    .line 24
    .line 25
    invoke-static {v5, v3, v9, v1, v6}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v11

    .line 29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    .line 31
    .line 32
    move-result-wide v12

    .line 33
    :try_start_0
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    iget-object v14, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 38
    :try_start_1
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 39
    .line 40
    iget v5, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mCurrentUserId:I

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    if-eq v1, v5, :cond_0

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mRunningProfiles:Ljava/util/Set;

    .line 46
    .line 47
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v3, Ljava/util/HashSet;

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    invoke-static {v7, v4, v6, v6, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 65
    .line 66
    .line 67
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    move-wide/from16 v17, v12

    .line 74
    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_0
    :try_start_2
    iget-object v1, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 78
    .line 79
    invoke-virtual {v1, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 80
    .line 81
    .line 82
    move-result-object v15

    .line 83
    iget-object v1, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 84
    .line 85
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    move-object v10, v1

    .line 90
    check-cast v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    .line 91
    .line 92
    if-nez v10, :cond_1

    .line 93
    .line 94
    const-string v1, "TvInteractiveAppManagerService"

    .line 95
    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    invoke-static {v7, v4, v6, v6, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 117
    .line 118
    .line 119
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_1
    :try_start_3
    iget-object v1, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 125
    .line 126
    iget-object v2, v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    .line 127
    .line 128
    check-cast v1, Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 135
    .line 136
    if-nez v1, :cond_2

    .line 137
    .line 138
    iget-object v1, v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const-wide/16 v2, 0x0

    .line 145
    .line 146
    invoke-static {v1, v2, v3, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUserCached(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 151
    .line 152
    new-instance v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 153
    .line 154
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 155
    .line 156
    iget-object v3, v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    .line 157
    .line 158
    invoke-direct {v1, v2, v3, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 159
    .line 160
    .line 161
    iget-object v2, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 162
    .line 163
    iget-object v3, v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    .line 164
    .line 165
    check-cast v2, Ljava/util/HashMap;

    .line 166
    .line 167
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    :cond_2
    move-object v5, v1

    .line 171
    iget-boolean v1, v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mReconnecting:Z

    .line 172
    .line 173
    if-eqz v1, :cond_3

    .line 174
    .line 175
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 178
    .line 179
    .line 180
    invoke-static {v7, v4, v6, v6, v8}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->sendAdSessionTokenToClientLocked(Landroid/media/tv/ad/ITvAdClient;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/InputChannel;I)V

    .line 181
    .line 182
    .line 183
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :cond_3
    :try_start_4
    new-instance v6, Landroid/os/Binder;

    .line 189
    .line 190
    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    .line 191
    .line 192
    .line 193
    new-instance v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 194
    .line 195
    iget-object v2, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 196
    .line 197
    iget-object v1, v10, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 198
    .line 199
    move-object/from16 v16, v1

    .line 200
    .line 201
    move-object v1, v3

    .line 202
    move-wide/from16 v17, v12

    .line 203
    .line 204
    move-object v12, v3

    .line 205
    move-object v3, v6

    .line 206
    move-object/from16 v4, p2

    .line 207
    .line 208
    move-object v13, v5

    .line 209
    move-object/from16 v5, p3

    .line 210
    .line 211
    move-object v0, v6

    .line 212
    move-object/from16 v6, v16

    .line 213
    .line 214
    move-object/from16 v7, p1

    .line 215
    .line 216
    move/from16 v8, p4

    .line 217
    .line 218
    move-object/from16 v19, v10

    .line 219
    .line 220
    move v10, v11

    .line 221
    :try_start_5
    invoke-direct/range {v1 .. v10}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/media/tv/ad/ITvAdClient;III)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v15, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdSessionStateMap:Ljava/util/Map;

    .line 225
    .line 226
    check-cast v1, Ljava/util/HashMap;

    .line 227
    .line 228
    invoke-virtual {v1, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    iget-object v1, v13, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mSessionTokens:Ljava/util/List;

    .line 232
    .line 233
    check-cast v1, Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    iget-object v1, v13, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    .line 239
    .line 240
    if-eqz v1, :cond_4

    .line 241
    .line 242
    move-object v2, v0

    .line 243
    move-object/from16 v0, p0

    .line 244
    .line 245
    iget-object v3, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 246
    .line 247
    invoke-static {v3, v1, v2, v11}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mcreateAdSessionInternalLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/media/tv/ad/ITvAdService;Landroid/os/IBinder;I)Z

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    if-nez v1, :cond_5

    .line 252
    .line 253
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 254
    .line 255
    invoke-virtual {v0, v11, v2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->removeAdSessionStateLocked(ILandroid/os/IBinder;)V

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :catchall_1
    move-exception v0

    .line 260
    goto :goto_1

    .line 261
    :cond_4
    move-object/from16 v0, p0

    .line 262
    .line 263
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 264
    .line 265
    move-object/from16 v1, v19

    .line 266
    .line 267
    iget-object v1, v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mComponentName:Landroid/content/ComponentName;

    .line 268
    .line 269
    invoke-virtual {v0, v11, v1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 270
    .line 271
    .line 272
    :cond_5
    :goto_0
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 273
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :goto_1
    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 278
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 279
    :catchall_2
    move-exception v0

    .line 280
    goto :goto_2

    .line 281
    :catchall_3
    move-exception v0

    .line 282
    move-wide/from16 v17, v12

    .line 283
    .line 284
    :goto_2
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    .line 286
    .line 287
    throw v0
.end method

.method public final dispatchSurfaceChanged(Landroid/os/IBinder;IIII)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "dispatchSurfaceChanged"

    .line 12
    .line 13
    invoke-static {v1, v2, v0, p5, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p5

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 27
    .line 28
    invoke-virtual {v4, v0, p1, p5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0, p2, p3, p4}, Landroid/media/tv/ad/ITvAdSession;->dispatchSurfaceChanged(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 49
    .line 50
    const-string p2, "error in dispatchSurfaceChanged"

    .line 51
    .line 52
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p0
.end method

.method public final getTvAdServiceList(I)Ljava/util/List;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "getTvAdServiceList"

    .line 12
    .line 13
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 27
    .line 28
    iget-boolean v5, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetAdServiceListCalled:Z

    .line 29
    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-virtual {v4, p1, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->buildTvAdServiceListLocked(I[Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 37
    .line 38
    const/4 v4, 0x1

    .line 39
    iput-boolean v4, p1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mGetAdServiceListCalled:Z

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_2

    .line 44
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :goto_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 92
    .line 93
    .line 94
    throw p0
.end method

.method public final notifyError(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "notifyError"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->notifyError(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in notifyError"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final notifyTvInputSessionData(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "notifyTvInputSessionData"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v1, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->notifyTvInputSessionData(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in notifyTvInputSessionData"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final notifyTvMessage(Landroid/os/IBinder;ILandroid/os/Bundle;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "notifyTvMessage"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v1, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->notifyTvMessage(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in notifyTvMessage"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final registerCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 10
    .line 11
    const-string/jumbo v3, "registerCallback"

    .line 12
    .line 13
    .line 14
    invoke-static {v2, v0, v1, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    const-string p0, "TvInteractiveAppManagerService"

    .line 42
    .line 43
    const-string p1, "client process has already died"

    .line 44
    .line 45
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final relayoutMediaView(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "relayoutMediaView"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->relayoutMediaView(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 45
    .line 46
    const-string p2, "error in relayoutMediaView"

    .line 47
    .line 48
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final releaseSession(Landroid/os/IBinder;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "releaseSession"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mreleaseSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/os/IBinder;II)V

    .line 30
    .line 31
    .line 32
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    throw p0
.end method

.method public final removeMediaView(Landroid/os/IBinder;I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "removeMediaView"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-static {p0}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->removeMediaView()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 45
    .line 46
    const-string p2, "error in removeMediaView"

    .line 47
    .line 48
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method public final resetAdService(Landroid/os/IBinder;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "resetAdService"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->resetAdService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in reset"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final sendAppLinkCommand(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 6

    .line 1
    const-string v0, "failed to sendAppLinkCommand - unknown service id "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const-string/jumbo v4, "sendAppLinkCommand"

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2, v3, p3, v4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 25
    .line 26
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 30
    .line 31
    invoke-virtual {v4, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    iget-object v5, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceMap:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;

    .line 42
    .line 43
    if-nez v5, :cond_0

    .line 44
    .line 45
    const-string p0, "TvInteractiveAppManagerService"

    .line 46
    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_2

    .line 69
    :cond_0
    :try_start_2
    iget-object p1, v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdServiceState;->mInfo:Landroid/media/tv/ad/TvAdServiceInfo;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/media/tv/ad/TvAdServiceInfo;->getComponent()Landroid/content/ComponentName;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 76
    .line 77
    check-cast v0, Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 84
    .line 85
    if-nez v0, :cond_1

    .line 86
    .line 87
    new-instance v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;

    .line 88
    .line 89
    iget-object v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 90
    .line 91
    invoke-direct {v0, v5, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;-><init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V

    .line 92
    .line 93
    .line 94
    iget-object v5, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 95
    .line 96
    check-cast v5, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    iget-object p2, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdServiceStateMap:Ljava/util/Map;

    .line 102
    .line 103
    check-cast p2, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 109
    .line 110
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    iget-object v4, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mService:Landroid/media/tv/ad/ITvAdService;

    .line 115
    .line 116
    if-eqz v4, :cond_2

    .line 117
    .line 118
    invoke-interface {v4, p2}, Landroid/media/tv/ad/ITvAdService;->sendAppLinkCommand(Landroid/os/Bundle;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    iget-object v0, v0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdServiceState;->mPendingAppLinkCommand:Ljava/util/List;

    .line 123
    .line 124
    check-cast v0, Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 130
    .line 131
    invoke-virtual {p0, p3, p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->updateAdServiceConnectionLocked(ILandroid/content/ComponentName;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :goto_2
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 140
    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 141
    :catchall_1
    move-exception p0

    .line 142
    goto :goto_4

    .line 143
    :catch_0
    move-exception p0

    .line 144
    :try_start_5
    const-string p1, "TvInteractiveAppManagerService"

    .line 145
    .line 146
    const-string p2, "error in sendAppLinkCommand"

    .line 147
    .line 148
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :goto_3
    return-void

    .line 153
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    .line 155
    .line 156
    throw p0
.end method

.method public final sendCurrentChannelUri(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "sendCurrentChannelUri"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendCurrentChannelUri(Landroid/net/Uri;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in sendCurrentChannelUri"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final sendCurrentTvInputId(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "sendCurrentTvInputId"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendCurrentTvInputId(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in sendCurrentTvInputId"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final sendCurrentVideoBounds(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "sendCurrentVideoBounds"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendCurrentVideoBounds(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in sendCurrentVideoBounds"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final sendSigningResult(Landroid/os/IBinder;Ljava/lang/String;[BI)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "sendSigningResult"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p4, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p4

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p4}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2, p3}, Landroid/media/tv/ad/ITvAdSession;->sendSigningResult(Ljava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in sendSigningResult"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final sendTrackInfoList(Landroid/os/IBinder;Ljava/util/List;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "sendTrackInfoList"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->sendTrackInfoList(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in sendTrackInfoList"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final setSurface(Landroid/os/IBinder;Landroid/view/Surface;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "setSurface"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p3, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0, p2}, Landroid/media/tv/ad/ITvAdSession;->setSurface(Landroid/view/Surface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p3, "error in setSurface"

    .line 52
    .line 53
    invoke-static {p1, p3, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    if-eqz p2, :cond_0

    .line 58
    .line 59
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 60
    .line 61
    .line 62
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    :catchall_1
    move-exception p0

    .line 69
    if-eqz p2, :cond_1

    .line 70
    .line 71
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method

.method public final startAdService(Landroid/os/IBinder;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "startAdService"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->startAdService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in start"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final stopAdService(Landroid/os/IBinder;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "stopAdService"

    .line 12
    .line 13
    .line 14
    invoke-static {v1, v2, v0, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {v4, v0, p1, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionStateLocked(ILandroid/os/IBinder;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {p1}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getAdSessionLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$AdSessionState;)Landroid/media/tv/ad/ITvAdSession;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-interface {p0}, Landroid/media/tv/ad/ITvAdSession;->stopAdService()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$SessionNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p0

    .line 49
    :try_start_2
    const-string p1, "TvInteractiveAppManagerService"

    .line 50
    .line 51
    const-string p2, "error in stop"

    .line 52
    .line 53
    invoke-static {p1, p2, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    .line 66
    .line 67
    throw p0
.end method

.method public final unregisterCallback(Landroid/media/tv/ad/ITvAdManagerCallback;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string/jumbo v3, "unregisterCallback"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mresolveCallingUserId(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;IIILjava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget-object v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$TvAdBinderService;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mAdCallbacks:Landroid/os/RemoteCallbackList;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 36
    .line 37
    .line 38
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method
