.class public final Lcom/android/server/pm/UserManagerService$LifeCycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mUms:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x226

    .line 3
    .line 4
    if-ne p1, v1, :cond_a

    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    sget-object v1, Lcom/android/server/pm/UserManagerService;->USER_INFO_DIR:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v2

    .line 21
    :try_start_0
    iget-object v3, p1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    move v5, v4

    .line 29
    :goto_0
    if-ge v5, v3, :cond_5

    .line 30
    .line 31
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 38
    .line 39
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    :try_start_1
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_1

    .line 46
    .line 47
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isInitialized()Z

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    if-nez v7, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_9

    .line 62
    .line 63
    :catch_0
    move-exception v7

    .line 64
    goto :goto_2

    .line 65
    :cond_0
    :goto_1
    const-string v7, "UserManagerService"

    .line 66
    .line 67
    new-instance v8, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v9, "cleanupPartialUsers. set partial user. ID : "

    .line 73
    .line 74
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    .line 78
    .line 79
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :goto_2
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :cond_1
    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->partial:Z

    .line 94
    .line 95
    if-nez v7, :cond_2

    .line 96
    .line 97
    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 98
    .line 99
    if-eqz v7, :cond_4

    .line 100
    .line 101
    :cond_2
    :goto_3
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    .line 102
    .line 103
    if-eqz v7, :cond_4

    .line 104
    .line 105
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object v7, p1, Lcom/android/server/pm/UserManagerService;->mRemovingUserIds:Landroid/util/SparseBooleanArray;

    .line 109
    .line 110
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    .line 111
    .line 112
    invoke-virtual {v7, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    if-nez v7, :cond_3

    .line 117
    .line 118
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    .line 119
    .line 120
    invoke-virtual {p1, v7}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 121
    .line 122
    .line 123
    :cond_3
    iput-boolean v0, v6, Landroid/content/pm/UserInfo;->partial:Z

    .line 124
    .line 125
    :cond_4
    add-int/2addr v5, v0

    .line 126
    goto :goto_0

    .line 127
    :cond_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    move v3, v4

    .line 133
    :goto_4
    if-ge v3, v2, :cond_6

    .line 134
    .line 135
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 140
    .line 141
    const-string v6, "UserManagerService"

    .line 142
    .line 143
    new-instance v7, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v8, "Removing partially created user "

    .line 146
    .line 147
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    .line 151
    .line 152
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v8, " (name="

    .line 156
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v8, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 161
    .line 162
    const-string v9, ")"

    .line 163
    .line 164
    invoke-static {v7, v8, v9, v6}, Lcom/android/server/ProfileService$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 168
    .line 169
    invoke-virtual {p1, v5}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 170
    .line 171
    .line 172
    add-int/2addr v3, v0

    .line 173
    goto :goto_4

    .line 174
    :cond_6
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 175
    .line 176
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_9

    .line 183
    .line 184
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 185
    .line 186
    iget-object v1, p1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 187
    .line 188
    monitor-enter v1

    .line 189
    :try_start_3
    iget-object v2, p1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 190
    .line 191
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    .line 196
    .line 197
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 198
    .line 199
    .line 200
    move v5, v4

    .line 201
    :goto_5
    if-ge v5, v2, :cond_8

    .line 202
    .line 203
    iget-object v6, p1, Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;

    .line 204
    .line 205
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    check-cast v6, Lcom/android/server/pm/UserManagerService$UserData;

    .line 210
    .line 211
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 212
    .line 213
    iget-boolean v7, v6, Landroid/content/pm/UserInfo;->preCreated:Z

    .line 214
    .line 215
    if-eqz v7, :cond_7

    .line 216
    .line 217
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    .line 221
    .line 222
    invoke-virtual {p1, v7}, Lcom/android/server/pm/UserManagerService;->addRemovingUserIdLocked(I)V

    .line 223
    .line 224
    .line 225
    iget v7, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 226
    .line 227
    or-int/lit8 v7, v7, 0x40

    .line 228
    .line 229
    iput v7, v6, Landroid/content/pm/UserInfo;->flags:I

    .line 230
    .line 231
    iput-boolean v0, v6, Landroid/content/pm/UserInfo;->partial:Z

    .line 232
    .line 233
    goto :goto_6

    .line 234
    :catchall_1
    move-exception p0

    .line 235
    goto :goto_8

    .line 236
    :cond_7
    :goto_6
    add-int/2addr v5, v0

    .line 237
    goto :goto_5

    .line 238
    :cond_8
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 239
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    :goto_7
    if-ge v4, v1, :cond_9

    .line 244
    .line 245
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Landroid/content/pm/UserInfo;

    .line 250
    .line 251
    const-string v5, "UserManagerService"

    .line 252
    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    .line 254
    .line 255
    const-string v7, "Removing pre-created user "

    .line 256
    .line 257
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    .line 261
    .line 262
    invoke-static {v6, v7, v5}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 266
    .line 267
    invoke-virtual {p1, v2}, Lcom/android/server/pm/UserManagerService;->removeUserState(I)V

    .line 268
    .line 269
    .line 270
    add-int/2addr v4, v0

    .line 271
    goto :goto_7

    .line 272
    :goto_8
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 273
    throw p0

    .line 274
    :cond_9
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 275
    .line 276
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 277
    .line 278
    const-class v0, Landroid/app/StatsManager;

    .line 279
    .line 280
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    check-cast p1, Landroid/app/StatsManager;

    .line 285
    .line 286
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 287
    .line 288
    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda10;

    .line 289
    .line 290
    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 291
    .line 292
    .line 293
    const/16 v2, 0x27a8

    .line 294
    .line 295
    const/4 v3, 0x0

    .line 296
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 297
    .line 298
    .line 299
    new-instance v1, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda10;

    .line 300
    .line 301
    invoke-direct {v1, p0}, Lcom/android/server/pm/UserManagerService$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/UserManagerService;)V

    .line 302
    .line 303
    .line 304
    const/16 p0, 0x27b0

    .line 305
    .line 306
    invoke-virtual {p1, p0, v3, v0, v1}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 307
    .line 308
    .line 309
    goto :goto_a

    .line 310
    :goto_9
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 311
    throw p0

    .line 312
    :cond_a
    :goto_a
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 6
    .line 7
    const-string/jumbo v1, "user"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    .line 46
    .line 47
    iget-object v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 48
    .line 49
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 50
    .line 51
    invoke-virtual {p1, v2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :goto_0
    iget-object p1, v1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isMaintenanceModeUser(Landroid/content/pm/UserInfo;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    new-instance p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    invoke-direct {p1, v1, p0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    .line 88
    .line 89
    :cond_1
    monitor-exit v0

    .line 90
    return-void

    .line 91
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    throw p0
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const-wide/16 v1, 0x0

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/android/server/pm/UserManagerService$UserData;->startRealtime:J

    .line 21
    .line 22
    iput-wide v1, p0, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p2, Lcom/android/server/pm/UserManagerService$UserData;->mLastEnteredForegroundTimeMillis:J

    .line 28
    .line 29
    iget-object p2, p2, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 30
    .line 31
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Lcom/android/server/pm/UserManagerService;->scheduleWriteUser(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    :goto_0
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isMaintenanceModeUser(Landroid/content/pm/UserInfo;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mCustomInjector:Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/lifecycle/PmCustomInjector;->getMaintenanceModeManager()Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    new-instance p1, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;

    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    invoke-direct {p1, v1, p0}, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/server/pm/mm/MaintenanceModeManager;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/UserManagerService;->mUsersLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/android/server/pm/UserManagerService;->getUserDataLU(I)Lcom/android/server/pm/UserManagerService$UserData;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iput-wide v2, v1, Lcom/android/server/pm/UserManagerService$UserData;->unlockRealtime:J

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_2

    .line 33
    .line 34
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$LifeCycle;->mUms:Lcom/android/server/pm/UserManagerService;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getCommunalProfileIdUnchecked()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const-string p1, "UserManagerService"

    .line 47
    .line 48
    const/16 v0, -0x2710

    .line 49
    .line 50
    if-eq p0, v0, :cond_1

    .line 51
    .line 52
    const-string v0, "Starting the Communal Profile"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->startProfile(I)Z

    .line 62
    .line 63
    .line 64
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_1
    if-nez v0, :cond_2

    .line 72
    .line 73
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    const-string v0, "Failed to start communal profile userId=%d"

    .line 82
    .line 83
    invoke-static {p1, v0, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_1
    const-string p0, "Cannot start Communal Profile because there isn\'t one"

    .line 88
    .line 89
    invoke-static {p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_2
    :goto_2
    return-void

    .line 93
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    throw p0
.end method
