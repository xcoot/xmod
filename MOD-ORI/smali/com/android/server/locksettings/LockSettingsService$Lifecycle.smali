.class public final Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;


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
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x226

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/server/locksettings/LockSettingsService;->migrateOldDataAfterSystemReady()V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService;->deleteRepairModePersistentDataIfNeeded()V

    .line 16
    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    const/16 v0, 0x208

    .line 21
    .line 22
    if-ne p1, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-lez p1, :cond_c

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/android/server/locksettings/LockSettingsService;->-$$Nest$mgetDarManagerService(Lcom/android/server/locksettings/LockSettingsService;)Ljava/util/Optional;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    new-instance p1, Lcom/android/server/locksettings/LockSettingsService$Lifecycle$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-direct {p1, v0}, Lcom/android/server/locksettings/LockSettingsService$Lifecycle$$ExternalSyntheticLambda0;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    const/16 v0, 0x3e8

    .line 52
    .line 53
    if-ne p1, v0, :cond_c

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsService;->mRebootEscrowManager:Lcom/android/server/locksettings/RebootEscrowManager;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 60
    .line 61
    iget-object p1, v3, Lcom/android/server/locksettings/RebootEscrowManager;->mUserManager:Landroid/os/UserManager;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object p1, v3, Lcom/android/server/locksettings/RebootEscrowManager;->mCallbacks:Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;

    .line 68
    .line 69
    check-cast p1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    .line 70
    .line 71
    iget-object v0, p1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const-string v2, "RebootEscrowManager"

    .line 81
    .line 82
    iget-object v5, v3, Lcom/android/server/locksettings/RebootEscrowManager;->mInjector:Lcom/android/server/locksettings/RebootEscrowManager$Injector;

    .line 83
    .line 84
    iget-object v6, v3, Lcom/android/server/locksettings/RebootEscrowManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {v6, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v6, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    const-string p1, "No reboot escrow data found for system user"

    .line 99
    .line 100
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    goto/16 :goto_2

    .line 108
    .line 109
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    iget-object v9, p1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;->val$storage:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v9, Lcom/android/server/locksettings/LockSettingsService;

    .line 125
    .line 126
    if-eqz v8, :cond_4

    .line 127
    .line 128
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 133
    .line 134
    iget v10, v8, Landroid/content/pm/UserInfo;->id:I

    .line 135
    .line 136
    invoke-virtual {v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 137
    .line 138
    .line 139
    move-result v9

    .line 140
    if-eqz v9, :cond_3

    .line 141
    .line 142
    iget v9, v8, Landroid/content/pm/UserInfo;->id:I

    .line 143
    .line 144
    invoke-virtual {v6, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->getRebootEscrowFile(I)Ljava/io/File;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    invoke-virtual {v6, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->hasFile(Ljava/io/File;)Z

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    if-nez v9, :cond_3

    .line 153
    .line 154
    new-instance v9, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v10, "No reboot escrow data found for user "

    .line 157
    .line 158
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    .line 172
    .line 173
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v8

    .line 177
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    goto :goto_0

    .line 181
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 191
    .line 192
    .line 193
    move-result v7

    .line 194
    if-eqz v7, :cond_8

    .line 195
    .line 196
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, Landroid/content/pm/UserInfo;

    .line 201
    .line 202
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 203
    .line 204
    invoke-virtual {v9, v8}, Lcom/android/server/locksettings/LockSettingsService;->isUserSecure(I)Z

    .line 205
    .line 206
    .line 207
    move-result v8

    .line 208
    if-nez v8, :cond_6

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_6
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    .line 212
    .line 213
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v10

    .line 221
    if-nez v10, :cond_5

    .line 222
    .line 223
    iget-object v10, v5, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 224
    .line 225
    invoke-virtual {v10, v8}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 226
    .line 227
    .line 228
    move-result v8

    .line 229
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    if-eqz v8, :cond_7

    .line 238
    .line 239
    goto :goto_1

    .line 240
    :cond_7
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    const/4 v6, 0x1

    .line 249
    if-eqz v0, :cond_9

    .line 250
    .line 251
    const-string p1, "No reboot escrow data found for users, skipping loading escrow data"

    .line 252
    .line 253
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    const/16 p1, 0xa

    .line 257
    .line 258
    invoke-virtual {v3, p1, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->setLoadEscrowDataErrorCode(ILandroid/os/Handler;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3, v1, v6, p0}, Lcom/android/server/locksettings/RebootEscrowManager;->reportMetricOnRestoreComplete(ZILandroid/os/Handler;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v3}, Lcom/android/server/locksettings/RebootEscrowManager;->clearMetricsStorage()V

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_9
    iget-object v0, v5, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->mContext:Landroid/content/Context;

    .line 269
    .line 270
    const-class v7, Landroid/os/PowerManager;

    .line 271
    .line 272
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Landroid/os/PowerManager;

    .line 277
    .line 278
    invoke-virtual {v0, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    iput-object v0, v3, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 283
    .line 284
    if-eqz v0, :cond_a

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 287
    .line 288
    .line 289
    iget-object v0, v3, Lcom/android/server/locksettings/RebootEscrowManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 290
    .line 291
    invoke-virtual {v5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getWakeLockTimeoutMillis()I

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    int-to-long v6, v2

    .line 296
    invoke-virtual {v0, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 297
    .line 298
    .line 299
    :cond_a
    const-string/jumbo v0, "ota"

    .line 300
    .line 301
    .line 302
    const-string/jumbo v2, "wait_for_internet_ror"

    .line 303
    .line 304
    .line 305
    invoke-static {v0, v2, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-eqz v0, :cond_b

    .line 310
    .line 311
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;

    .line 312
    .line 313
    invoke-direct {v0, v3}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/locksettings/RebootEscrowManager;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v5}, Lcom/android/server/locksettings/RebootEscrowManager$Injector;->getLoadEscrowTimeoutMillis()I

    .line 317
    .line 318
    .line 319
    move-result v1

    .line 320
    int-to-long v1, v1

    .line 321
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 322
    .line 323
    .line 324
    new-instance v6, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;

    .line 325
    .line 326
    const/4 v1, 0x0

    .line 327
    move-object v0, v6

    .line 328
    move-object v2, p0

    .line 329
    move-object v5, p1

    .line 330
    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;-><init>(ILandroid/os/Handler;Lcom/android/server/locksettings/RebootEscrowManager;Ljava/util/List;Ljava/util/List;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    .line 335
    .line 336
    goto :goto_3

    .line 337
    :cond_b
    new-instance v6, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;

    .line 338
    .line 339
    const/4 v1, 0x1

    .line 340
    move-object v0, v6

    .line 341
    move-object v2, p0

    .line 342
    move-object v5, p1

    .line 343
    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/RebootEscrowManager$$ExternalSyntheticLambda2;-><init>(ILandroid/os/Handler;Lcom/android/server/locksettings/RebootEscrowManager;Ljava/util/List;Ljava/util/List;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    .line 348
    .line 349
    :cond_c
    :goto_3
    return-void
.end method

.method public final onStart()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/android/server/locksettings/LockSettingsService$Injector;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v1, v2, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v2}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 21
    .line 22
    const-string/jumbo v1, "lock_settings"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    sget-boolean v0, Lcom/android/server/locksettings/LockSettingsService;->FIX_UNLOCKED_DEVICE_REQUIRED_KEYS:Z

    .line 8
    .line 9
    const-string/jumbo v0, "user started"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsService;->maybeShowEncryptionNotificationForUser(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsService;->onUserStopped(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService;->mHandler:Landroid/os/Handler;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$2;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/android/server/locksettings/LockSettingsService$2;-><init>(Lcom/android/server/locksettings/LockSettingsService;I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
