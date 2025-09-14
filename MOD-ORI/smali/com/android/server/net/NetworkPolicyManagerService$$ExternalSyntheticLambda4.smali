.class public final synthetic Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/util/concurrent/CountDownLatch;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string/jumbo v0, "systemReady"

    .line 11
    .line 12
    .line 13
    const-wide/32 v3, 0x200000

    .line 14
    .line 15
    .line 16
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v0, -0x2

    .line 28
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    const/4 v8, 0x0

    .line 36
    :try_start_1
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 37
    .line 38
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    .line 39
    .line 40
    .line 41
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw v0

    .line 51
    :catch_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    move v0, v8

    .line 55
    :goto_0
    if-nez v0, :cond_1

    .line 56
    .line 57
    const-string v0, "NetworkPolicy"

    .line 58
    .line 59
    const-string v1, "bandwidth controls disabled, unable to enforce policy"

    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 62
    .line 63
    .line 64
    :cond_0
    :goto_1
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 68
    .line 69
    .line 70
    goto/16 :goto_b

    .line 71
    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto/16 :goto_e

    .line 74
    .line 75
    :cond_1
    :try_start_3
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 76
    .line 77
    invoke-interface {v0}, Landroid/os/INetworkManagementService;->buildFirewall()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catch_1
    move-exception v0

    .line 82
    :try_start_4
    const-string v6, "NetworkPolicy"

    .line 83
    .line 84
    const-string/jumbo v7, "buildFirewall exception"

    .line 85
    .line 86
    .line 87
    invoke-static {v6, v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    :goto_2
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSupportSmartManagerForChina:Z

    .line 91
    .line 92
    if-eqz v0, :cond_2

    .line 93
    .line 94
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$20;

    .line 95
    .line 96
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 97
    .line 98
    const/4 v7, 0x1

    .line 99
    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;I)V

    .line 100
    .line 101
    .line 102
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mOffPeakContentObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

    .line 103
    .line 104
    :cond_2
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 111
    .line 112
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 113
    .line 114
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    .line 121
    .line 122
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 123
    .line 124
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 131
    .line 132
    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 133
    .line 134
    invoke-static {}, Lcom/android/server/net/Flags;->useMeteredFirewallChains()Z

    .line 135
    .line 136
    .line 137
    const/4 v0, 0x1

    .line 138
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUseMeteredFirewallChains:Z

    .line 139
    .line 140
    invoke-static {}, Lcom/android/server/net/Flags;->useDifferentDelaysForBackgroundChain()Z

    .line 141
    .line 142
    .line 143
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 144
    .line 145
    const-string v7, "activity"

    .line 146
    .line 147
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    check-cast v6, Landroid/app/ActivityManager;

    .line 152
    .line 153
    if-nez v6, :cond_3

    .line 154
    .line 155
    const-string v6, "NetworkPolicy"

    .line 156
    .line 157
    const-string/jumbo v7, "registerProcessListener activityManager is null"

    .line 158
    .line 159
    .line 160
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_3
    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$23;

    .line 165
    .line 166
    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$23;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v6, v7}, Landroid/app/ActivityManager;->semRegisterProcessListener(Landroid/app/ActivityManager$SemProcessListener;)V

    .line 170
    .line 171
    .line 172
    :goto_3
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 173
    .line 174
    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 175
    :try_start_5
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 176
    .line 177
    monitor-enter v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 178
    :try_start_6
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveAllowlistUL()V

    .line 179
    .line 180
    .line 181
    const-class v9, Landroid/os/PowerManagerInternal;

    .line 182
    .line 183
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    check-cast v9, Landroid/os/PowerManagerInternal;

    .line 188
    .line 189
    iput-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 190
    .line 191
    new-instance v10, Lcom/android/server/net/NetworkPolicyManagerService$1;

    .line 192
    .line 193
    const/4 v11, 0x0

    .line 194
    invoke-direct {v10, v1, v11}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v9, v10}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 198
    .line 199
    .line 200
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 201
    .line 202
    const/4 v10, 0x6

    .line 203
    invoke-virtual {v9, v10}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 204
    .line 205
    .line 206
    move-result-object v9

    .line 207
    iget-boolean v9, v9, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 208
    .line 209
    iput-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 210
    .line 211
    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;

    .line 212
    .line 213
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    new-instance v12, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;

    .line 216
    .line 217
    invoke-direct {v12, v1}, Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v9, v11, v12}, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService$$ExternalSyntheticLambda8;)V

    .line 221
    .line 222
    .line 223
    iget-object v9, v9, Lcom/android/server/net/NetworkPolicyManagerService$RestrictedModeObserver;->mContext:Landroid/content/Context;

    .line 224
    .line 225
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 226
    .line 227
    .line 228
    move-result-object v9

    .line 229
    const-string/jumbo v11, "restricted_networking_mode"

    .line 230
    .line 231
    .line 232
    invoke-static {v9, v11, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 233
    .line 234
    .line 235
    move-result v9

    .line 236
    if-eqz v9, :cond_4

    .line 237
    .line 238
    move v9, v0

    .line 239
    goto :goto_4

    .line 240
    :cond_4
    move v9, v8

    .line 241
    :goto_4
    iput-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictedNetworkingMode:Z

    .line 242
    .line 243
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 244
    .line 245
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 248
    .line 249
    .line 250
    move-result-object v9

    .line 251
    const-string v11, "android.software.device_admin"

    .line 252
    .line 253
    invoke-virtual {v9, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    move-result v9

    .line 257
    if-eqz v9, :cond_5

    .line 258
    .line 259
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 260
    .line 261
    const-string v11, "Wait for admin data"

    .line 262
    .line 263
    const-wide/16 v12, 0x2710

    .line 264
    .line 265
    invoke-static {v9, v12, v13, v11}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_5
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 269
    .line 270
    .line 271
    iget-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 272
    .line 273
    iput-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 274
    .line 275
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 276
    .line 277
    const/16 v11, 0xa

    .line 278
    .line 279
    invoke-virtual {v9, v11}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    iget-boolean v9, v9, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 284
    .line 285
    iput-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundLowPowerMode:Z

    .line 286
    .line 287
    if-eqz v9, :cond_6

    .line 288
    .line 289
    iget-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 290
    .line 291
    if-nez v9, :cond_6

    .line 292
    .line 293
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 294
    .line 295
    goto :goto_5

    .line 296
    :catchall_2
    move-exception v0

    .line 297
    goto/16 :goto_c

    .line 298
    .line 299
    :cond_6
    :goto_5
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 300
    .line 301
    new-instance v11, Lcom/android/server/net/NetworkPolicyManagerService$1;

    .line 302
    .line 303
    const/4 v12, 0x1

    .line 304
    invoke-direct {v11, v1, v12}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v11}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 308
    .line 309
    .line 310
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->mIsDisabledDataSaver:Z

    .line 311
    .line 312
    if-eqz v9, :cond_7

    .line 313
    .line 314
    move v13, v8

    .line 315
    goto :goto_9

    .line 316
    :cond_7
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 317
    .line 318
    invoke-virtual {v9}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    .line 319
    .line 320
    .line 321
    move-result-object v9

    .line 322
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 323
    .line 324
    .line 325
    move-result v11

    .line 326
    move v12, v8

    .line 327
    move v13, v12

    .line 328
    :goto_6
    if-ge v12, v11, :cond_a

    .line 329
    .line 330
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v14

    .line 334
    check-cast v14, Landroid/content/pm/UserInfo;

    .line 335
    .line 336
    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    .line 337
    .line 338
    invoke-virtual {v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundAllowlistUidsUL(I)Z

    .line 339
    .line 340
    .line 341
    move-result v14

    .line 342
    if-nez v14, :cond_9

    .line 343
    .line 344
    if-eqz v13, :cond_8

    .line 345
    .line 346
    goto :goto_7

    .line 347
    :cond_8
    move v13, v8

    .line 348
    goto :goto_8

    .line 349
    :cond_9
    :goto_7
    move v13, v0

    .line 350
    :goto_8
    add-int/lit8 v12, v12, 0x1

    .line 351
    .line 352
    goto :goto_6

    .line 353
    :cond_a
    :goto_9
    if-eqz v13, :cond_b

    .line 354
    .line 355
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 356
    .line 357
    .line 358
    :cond_b
    invoke-static {}, Lcom/android/server/net/Flags;->networkBlockedForTopSleepingAndAbove()Z

    .line 359
    .line 360
    .line 361
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 362
    .line 363
    invoke-virtual {v1, v10, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 364
    .line 365
    .line 366
    iget-boolean v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 367
    .line 368
    const-string/jumbo v10, "init_service"

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v10, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Ljava/lang/String;Z)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 378
    .line 379
    .line 380
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 381
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 382
    :try_start_8
    sget-object v6, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallPoliciesLock:Ljava/lang/Object;

    .line 383
    .line 384
    monitor-enter v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 385
    :try_start_9
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->readFirewallPolicyAL()V

    .line 386
    .line 387
    .line 388
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 389
    :try_start_a
    iget-boolean v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mBackgroundNetworkRestricted:Z

    .line 390
    .line 391
    if-eqz v6, :cond_c

    .line 392
    .line 393
    const/4 v6, -0x1

    .line 394
    goto :goto_a

    .line 395
    :cond_c
    const/4 v6, 0x5

    .line 396
    :goto_a
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 397
    .line 398
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Lcom/android/server/net/NetworkPolicyManagerService$4;

    .line 399
    .line 400
    const-string v10, "android"

    .line 401
    .line 402
    const/16 v11, 0x23

    .line 403
    .line 404
    invoke-virtual {v7, v9, v11, v6, v10}, Landroid/app/ActivityManagerInternal;->registerNetworkPolicyUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 408
    .line 409
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Lcom/android/server/net/NetworkPolicyManagerService$13;

    .line 410
    .line 411
    invoke-interface {v6, v7}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 412
    .line 413
    .line 414
    :catch_2
    :try_start_b
    new-instance v6, Landroid/content/IntentFilter;

    .line 415
    .line 416
    const-string v7, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    .line 417
    .line 418
    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 422
    .line 423
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveAllowlistReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 424
    .line 425
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 426
    .line 427
    const/4 v11, 0x0

    .line 428
    invoke-virtual {v7, v9, v6, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 429
    .line 430
    .line 431
    new-instance v6, Landroid/content/IntentFilter;

    .line 432
    .line 433
    const-string v7, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 434
    .line 435
    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 439
    .line 440
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 441
    .line 442
    const-string v10, "android.permission.NETWORK_STACK"

    .line 443
    .line 444
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 445
    .line 446
    invoke-virtual {v7, v9, v6, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 447
    .line 448
    .line 449
    new-instance v6, Landroid/content/IntentFilter;

    .line 450
    .line 451
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 452
    .line 453
    .line 454
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    .line 455
    .line 456
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    const-string/jumbo v7, "package"

    .line 460
    .line 461
    .line 462
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 466
    .line 467
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 468
    .line 469
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 470
    .line 471
    invoke-virtual {v7, v9, v6, v11, v10}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 472
    .line 473
    .line 474
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 475
    .line 476
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 477
    .line 478
    new-instance v9, Landroid/content/IntentFilter;

    .line 479
    .line 480
    const-string v10, "android.intent.action.UID_REMOVED"

    .line 481
    .line 482
    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 486
    .line 487
    invoke-virtual {v6, v7, v9, v11, v10}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 488
    .line 489
    .line 490
    new-instance v6, Landroid/content/IntentFilter;

    .line 491
    .line 492
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 493
    .line 494
    .line 495
    const-string v7, "android.intent.action.USER_ADDED"

    .line 496
    .line 497
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    const-string v7, "android.intent.action.USER_REMOVED"

    .line 501
    .line 502
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 503
    .line 504
    .line 505
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 506
    .line 507
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 508
    .line 509
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 510
    .line 511
    invoke-virtual {v7, v9, v6, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 512
    .line 513
    .line 514
    new-instance v6, Landroid/content/IntentFilter;

    .line 515
    .line 516
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 517
    .line 518
    .line 519
    const-string/jumbo v7, "com.samsung.intent.action.OMC_CHANGED"

    .line 520
    .line 521
    .line 522
    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 526
    .line 527
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDisabledDataSaverReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 528
    .line 529
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 530
    .line 531
    invoke-virtual {v7, v9, v6, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 532
    .line 533
    .line 534
    new-instance v6, Landroid/os/HandlerExecutor;

    .line 535
    .line 536
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 537
    .line 538
    invoke-direct {v6, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 539
    .line 540
    .line 541
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 542
    .line 543
    new-instance v7, Landroid/net/NetworkTemplate$Builder;

    .line 544
    .line 545
    invoke-direct {v7, v0}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 546
    .line 547
    .line 548
    invoke-virtual {v7}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 549
    .line 550
    .line 551
    move-result-object v13

    .line 552
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 553
    .line 554
    const-wide/16 v14, 0x0

    .line 555
    .line 556
    move-object/from16 v16, v6

    .line 557
    .line 558
    move-object/from16 v17, v7

    .line 559
    .line 560
    invoke-virtual/range {v12 .. v17}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 561
    .line 562
    .line 563
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/app/usage/NetworkStatsManager;

    .line 564
    .line 565
    new-instance v7, Landroid/net/NetworkTemplate$Builder;

    .line 566
    .line 567
    const/4 v9, 0x4

    .line 568
    invoke-direct {v7, v9}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v7}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    .line 572
    .line 573
    .line 574
    move-result-object v13

    .line 575
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsCallback:Lcom/android/server/net/NetworkPolicyManagerService$StatsCallback;

    .line 576
    .line 577
    const-wide/16 v14, 0x0

    .line 578
    .line 579
    move-object/from16 v16, v6

    .line 580
    .line 581
    move-object/from16 v17, v7

    .line 582
    .line 583
    invoke-virtual/range {v12 .. v17}, Landroid/app/usage/NetworkStatsManager;->registerUsageCallback(Landroid/net/NetworkTemplate;JLjava/util/concurrent/Executor;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V

    .line 584
    .line 585
    .line 586
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 587
    .line 588
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 589
    .line 590
    new-instance v10, Landroid/content/IntentFilter;

    .line 591
    .line 592
    const-string/jumbo v12, "com.android.server.net.action.SNOOZE_WARNING"

    .line 593
    .line 594
    .line 595
    invoke-direct {v10, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 596
    .line 597
    .line 598
    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    .line 599
    .line 600
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 601
    .line 602
    invoke-virtual {v7, v9, v10, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 603
    .line 604
    .line 605
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 606
    .line 607
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 608
    .line 609
    new-instance v10, Landroid/content/IntentFilter;

    .line 610
    .line 611
    const-string/jumbo v12, "com.android.server.net.action.SNOOZE_RAPID"

    .line 612
    .line 613
    .line 614
    invoke-direct {v10, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    const-string v12, "android.permission.MANAGE_NETWORK_POLICY"

    .line 618
    .line 619
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 620
    .line 621
    invoke-virtual {v7, v9, v10, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 622
    .line 623
    .line 624
    new-instance v7, Landroid/content/IntentFilter;

    .line 625
    .line 626
    const-string v9, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 627
    .line 628
    invoke-direct {v7, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 632
    .line 633
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 634
    .line 635
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 636
    .line 637
    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 638
    .line 639
    .line 640
    new-instance v7, Landroid/content/IntentFilter;

    .line 641
    .line 642
    const-string v9, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 643
    .line 644
    invoke-direct {v7, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 648
    .line 649
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 650
    .line 651
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 652
    .line 653
    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 654
    .line 655
    .line 656
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/ConnectivityManager;

    .line 657
    .line 658
    new-instance v9, Landroid/net/NetworkRequest$Builder;

    .line 659
    .line 660
    invoke-direct {v9}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 661
    .line 662
    .line 663
    invoke-virtual {v9}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    .line 664
    .line 665
    .line 666
    move-result-object v9

    .line 667
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Lcom/android/server/net/NetworkPolicyManagerService$12;

    .line 668
    .line 669
    invoke-virtual {v7, v9, v10}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 670
    .line 671
    .line 672
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 673
    .line 674
    new-instance v9, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;

    .line 675
    .line 676
    invoke-direct {v9, v1}, Lcom/android/server/net/NetworkPolicyManagerService$NetPolicyAppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 677
    .line 678
    .line 679
    invoke-interface {v7, v9}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 680
    .line 681
    .line 682
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 683
    .line 684
    monitor-enter v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 685
    :try_start_c
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V

    .line 686
    .line 687
    .line 688
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 689
    :try_start_d
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 690
    .line 691
    const-class v9, Landroid/telephony/SubscriptionManager;

    .line 692
    .line 693
    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    move-result-object v7

    .line 697
    check-cast v7, Landroid/telephony/SubscriptionManager;

    .line 698
    .line 699
    new-instance v9, Landroid/os/HandlerExecutor;

    .line 700
    .line 701
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 702
    .line 703
    invoke-direct {v9, v10}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 704
    .line 705
    .line 706
    new-instance v10, Lcom/android/server/net/NetworkPolicyManagerService$3;

    .line 707
    .line 708
    invoke-direct {v10, v1}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v7, v9, v10}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 712
    .line 713
    .line 714
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 715
    .line 716
    const-class v9, Landroid/telephony/TelephonyManager;

    .line 717
    .line 718
    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    move-result-object v7

    .line 722
    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 723
    .line 724
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveDataSubIdListener:Lcom/android/server/net/NetworkPolicyManagerService$ActiveDataSubIdListener;

    .line 725
    .line 726
    invoke-virtual {v7, v6, v9}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 727
    .line 728
    .line 729
    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 730
    .line 731
    .line 732
    new-instance v2, Landroid/content/IntentFilter;

    .line 733
    .line 734
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 735
    .line 736
    .line 737
    const-string v6, "android.os.action.CHARGING"

    .line 738
    .line 739
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 740
    .line 741
    .line 742
    const-string v6, "android.os.action.DISCHARGING"

    .line 743
    .line 744
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 748
    .line 749
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mChargingStateReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 750
    .line 751
    invoke-virtual {v6, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 752
    .line 753
    .line 754
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 755
    .line 756
    const-string/jumbo v6, "phone"

    .line 757
    .line 758
    .line 759
    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 764
    .line 765
    iput-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 766
    .line 767
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

    .line 768
    .line 769
    invoke-direct {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 770
    .line 771
    .line 772
    iput-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCallAttributesListener:Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

    .line 773
    .line 774
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 775
    .line 776
    if-eqz v2, :cond_d

    .line 777
    .line 778
    new-instance v6, Landroid/os/HandlerExecutor;

    .line 779
    .line 780
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 781
    .line 782
    invoke-direct {v6, v7}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 783
    .line 784
    .line 785
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCallAttributesListener:Lcom/android/server/net/NetworkPolicyManagerService$CallAttributesListener;

    .line 786
    .line 787
    invoke-virtual {v2, v6, v7}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 788
    .line 789
    .line 790
    :cond_d
    const-wide/16 v6, 0x0

    .line 791
    .line 792
    iput-wide v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->preTotalBytes:J

    .line 793
    .line 794
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->isKorOperator()Z

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    if-eqz v2, :cond_0

    .line 799
    .line 800
    const-string v2, "NetworkPolicy"

    .line 801
    .line 802
    const-string/jumbo v6, "initTetheringWarningObserver"

    .line 803
    .line 804
    .line 805
    invoke-static {v2, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    .line 807
    .line 808
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$20;

    .line 809
    .line 810
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 811
    .line 812
    const/4 v7, 0x0

    .line 813
    invoke-direct {v2, v1, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;I)V

    .line 814
    .line 815
    .line 816
    iput-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

    .line 817
    .line 818
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 819
    .line 820
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    const-string/jumbo v6, "tethering_data_warning_sim_slot_0"

    .line 825
    .line 826
    .line 827
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 828
    .line 829
    .line 830
    move-result-object v6

    .line 831
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

    .line 832
    .line 833
    invoke-virtual {v2, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 834
    .line 835
    .line 836
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 837
    .line 838
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 839
    .line 840
    .line 841
    move-result-object v2

    .line 842
    const-string/jumbo v6, "tethering_data_warning_sim_slot_1"

    .line 843
    .line 844
    .line 845
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 846
    .line 847
    .line 848
    move-result-object v6

    .line 849
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningObserver:Lcom/android/server/net/NetworkPolicyManagerService$20;

    .line 850
    .line 851
    invoke-virtual {v2, v6, v0, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 852
    .line 853
    .line 854
    new-instance v11, Landroid/content/IntentFilter;

    .line 855
    .line 856
    const-string/jumbo v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 857
    .line 858
    .line 859
    invoke-direct {v11, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 860
    .line 861
    .line 862
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 863
    .line 864
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDdsChangedReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 865
    .line 866
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 867
    .line 868
    const/4 v14, 0x2

    .line 869
    const/4 v12, 0x0

    .line 870
    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 871
    .line 872
    .line 873
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 874
    .line 875
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 876
    .line 877
    .line 878
    move-result-object v6

    .line 879
    const-string/jumbo v7, "tethering_data_warning_sim_slot_0"

    .line 880
    .line 881
    .line 882
    invoke-virtual {v1, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    .line 883
    .line 884
    .line 885
    move-result-wide v7

    .line 886
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 887
    .line 888
    .line 889
    move-result-object v7

    .line 890
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringWarningBytes:Ljava/util/concurrent/ConcurrentHashMap;

    .line 894
    .line 895
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 896
    .line 897
    .line 898
    move-result-object v0

    .line 899
    const-string/jumbo v6, "tethering_data_warning_sim_slot_1"

    .line 900
    .line 901
    .line 902
    invoke-virtual {v1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTetheringWarningBytes(Ljava/lang/String;)J

    .line 903
    .line 904
    .line 905
    move-result-wide v6

    .line 906
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 907
    .line 908
    .line 909
    move-result-object v6

    .line 910
    invoke-virtual {v2, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 914
    .line 915
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Lcom/android/server/net/NetworkPolicyManagerService$5;

    .line 916
    .line 917
    new-instance v9, Landroid/content/IntentFilter;

    .line 918
    .line 919
    const-string/jumbo v0, "com.android.server.net.action.SNOOZE_TETHERING_WARNING"

    .line 920
    .line 921
    .line 922
    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    const-string v10, "android.permission.MANAGE_NETWORK_POLICY"

    .line 926
    .line 927
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 928
    .line 929
    const/4 v12, 0x2

    .line 930
    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 931
    .line 932
    .line 933
    const-wide/16 v6, -0x1

    .line 934
    .line 935
    iput-wide v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mTetheringNotiSnooze:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 936
    .line 937
    goto/16 :goto_1

    .line 938
    .line 939
    :goto_b
    return-void

    .line 940
    :catchall_3
    move-exception v0

    .line 941
    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 942
    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 943
    :catchall_4
    move-exception v0

    .line 944
    :try_start_10
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 945
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 946
    :catchall_5
    move-exception v0

    .line 947
    goto :goto_d

    .line 948
    :goto_c
    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 949
    :try_start_13
    throw v0

    .line 950
    :goto_d
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 951
    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 952
    :goto_e
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 953
    .line 954
    .line 955
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 956
    .line 957
    .line 958
    throw v0
.end method
