.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

.field public final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field public final mLock:Ljava/lang/Object;

.field public final mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

.field public final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

.field public final mPackageMonitor:Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;

.field public mPrevStartedUserId:I

.field public final mService:Lcom/android/server/om/OverlayManagerService$2;

.field public final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field public final mSettingsFile:Lcom/android/server/om/ResilientAtomicFile;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;

.field public final mUserUnlockerReceiver:Lcom/android/server/om/OverlayManagerService$1;

.field public final mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-string v8, "Committed restored color theme : "

    .line 6
    .line 7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    new-instance v9, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v9, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v1, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 20
    .line 21
    .line 22
    const/4 v2, -0x1

    .line 23
    iput v2, v0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iput-object v2, v0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 27
    .line 28
    new-instance v11, Lcom/android/server/om/OverlayManagerService$1;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-direct {v11, v0, v2}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;I)V

    .line 32
    .line 33
    .line 34
    new-instance v6, Lcom/android/server/om/OverlayManagerService$2;

    .line 35
    .line 36
    invoke-direct {v6, v0}, Lcom/android/server/om/OverlayManagerService$2;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 37
    .line 38
    .line 39
    iput-object v6, v0, Lcom/android/server/om/OverlayManagerService;->mService:Lcom/android/server/om/OverlayManagerService$2;

    .line 40
    .line 41
    const-wide/32 v4, 0x4000000

    .line 42
    .line 43
    .line 44
    :try_start_0
    const-string v2, "OMS#OverlayManagerService"

    .line 45
    .line 46
    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v2, Ljava/io/File;

    .line 50
    .line 51
    const-string/jumbo v3, "overlays.xml"

    .line 52
    .line 53
    .line 54
    const-string v10, "/data/system/"

    .line 55
    .line 56
    invoke-direct {v2, v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v3, Ljava/io/File;

    .line 60
    .line 61
    const-string/jumbo v12, "overlays-backup.xml"

    .line 62
    .line 63
    .line 64
    invoke-direct {v3, v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v12, Ljava/io/File;

    .line 68
    .line 69
    const-string/jumbo v13, "overlays.xml.reservecopy"

    .line 70
    .line 71
    .line 72
    invoke-direct {v12, v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v10, Lcom/android/server/om/ResilientAtomicFile;

    .line 76
    .line 77
    invoke-direct {v10, v2, v3, v12, v0}, Lcom/android/server/om/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lcom/android/server/om/OverlayManagerService;)V

    .line 78
    .line 79
    .line 80
    iput-object v10, v0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Lcom/android/server/om/ResilientAtomicFile;

    .line 81
    .line 82
    new-instance v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 83
    .line 84
    invoke-direct {v3, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    iput-object v3, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 88
    .line 89
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput-object v2, v0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 94
    .line 95
    new-instance v2, Lcom/android/server/om/IdmapManager;

    .line 96
    .line 97
    sget-object v10, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 98
    .line 99
    if-nez v10, :cond_0

    .line 100
    .line 101
    new-instance v10, Lcom/android/server/om/IdmapDaemon;

    .line 102
    .line 103
    invoke-direct {v10}, Lcom/android/server/om/IdmapDaemon;-><init>()V

    .line 104
    .line 105
    .line 106
    sput-object v10, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 107
    .line 108
    :cond_0
    sget-object v10, Lcom/android/server/om/IdmapDaemon;->sInstance:Lcom/android/server/om/IdmapDaemon;

    .line 109
    .line 110
    invoke-direct {v2, v10, v3}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/om/IdmapDaemon;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;)V

    .line 111
    .line 112
    .line 113
    new-instance v12, Lcom/android/server/om/OverlayManagerSettings;

    .line 114
    .line 115
    invoke-direct {v12}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    .line 116
    .line 117
    .line 118
    iput-object v12, v0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 119
    .line 120
    new-instance v10, Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 121
    .line 122
    invoke-static {}, Lcom/android/internal/content/om/OverlayConfig;->getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;

    .line 123
    .line 124
    .line 125
    move-result-object v17

    .line 126
    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v18

    .line 130
    move-object v13, v10

    .line 131
    move-object v14, v3

    .line 132
    move-object v15, v2

    .line 133
    move-object/from16 v16, v12

    .line 134
    .line 135
    invoke-direct/range {v13 .. v18}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/content/om/OverlayConfig;[Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iput-object v10, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 139
    .line 140
    new-instance v13, Lcom/android/server/om/OverlayActorEnforcer;

    .line 141
    .line 142
    invoke-direct {v13, v3}, Lcom/android/server/om/OverlayActorEnforcer;-><init>(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;)V

    .line 143
    .line 144
    .line 145
    iput-object v13, v0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    .line 146
    .line 147
    new-instance v13, Landroid/os/HandlerThread;

    .line 148
    .line 149
    const-string v14, "OverlayManager"

    .line 150
    .line 151
    invoke-direct {v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 158
    .line 159
    .line 160
    move-result-object v13

    .line 161
    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 162
    .line 163
    const/4 v14, 0x1

    .line 164
    invoke-virtual {v1, v7, v13, v15, v14}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 165
    .line 166
    .line 167
    new-instance v1, Landroid/content/IntentFilter;

    .line 168
    .line 169
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v13, "android.intent.action.USER_ADDED"

    .line 173
    .line 174
    invoke-virtual {v1, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    const-string v13, "android.intent.action.USER_REMOVED"

    .line 178
    .line 179
    invoke-virtual {v1, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    new-instance v4, Lcom/android/server/om/OverlayManagerService$1;

    .line 187
    .line 188
    const/4 v5, 0x1

    .line 189
    invoke-direct {v4, v0, v5}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;I)V

    .line 190
    .line 191
    .line 192
    const/16 v18, 0x0

    .line 193
    .line 194
    const/16 v19, 0x0

    .line 195
    .line 196
    move v5, v14

    .line 197
    move-object v14, v13

    .line 198
    move-object v13, v15

    .line 199
    move-object v15, v4

    .line 200
    move-object/from16 v16, v13

    .line 201
    .line 202
    move-object/from16 v17, v1

    .line 203
    .line 204
    invoke-virtual/range {v14 .. v19}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 205
    .line 206
    .line 207
    new-instance v13, Landroid/content/IntentFilter;

    .line 208
    .line 209
    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 210
    .line 211
    .line 212
    const-string v1, "android.intent.action.USER_UNLOCKED"

    .line 213
    .line 214
    invoke-virtual {v13, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 222
    .line 223
    const/4 v14, 0x0

    .line 224
    const/4 v15, 0x0

    .line 225
    move-object/from16 v20, v10

    .line 226
    .line 227
    move-object v10, v1

    .line 228
    move-object v1, v12

    .line 229
    move-object v12, v4

    .line 230
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 231
    .line 232
    .line 233
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    .line 234
    .line 235
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 240
    .line 241
    new-instance v10, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;

    .line 242
    .line 243
    invoke-direct {v10, v0}, Lcom/android/server/om/OverlayManagerService$UserLifecycleListener;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v4, v10}, Lcom/android/server/pm/UserManagerInternal;->addUserLifecycleListener(Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 250
    .line 251
    .line 252
    new-instance v10, Lcom/android/server/om/OverlayManagerServiceExt;

    .line 253
    .line 254
    new-instance v11, Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;

    .line 255
    .line 256
    invoke-direct {v11, v0}, Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 257
    .line 258
    .line 259
    move-object v12, v1

    .line 260
    move-object v1, v10

    .line 261
    move-object v13, v2

    .line 262
    move-object/from16 v2, p1

    .line 263
    .line 264
    const-wide/32 v14, 0x4000000

    .line 265
    .line 266
    .line 267
    move-object v4, v12

    .line 268
    move v14, v5

    .line 269
    move-object v5, v13

    .line 270
    move-object v13, v6

    .line 271
    move-object v6, v11

    .line 272
    invoke-direct/range {v1 .. v6}, Lcom/android/server/om/OverlayManagerServiceExt;-><init>(Landroid/content/Context;Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;Lcom/android/server/om/OverlayManagerSettings;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerService$PackageUpdateHelper;)V

    .line 273
    .line 274
    .line 275
    iput-object v10, v0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 276
    .line 277
    move-object/from16 v1, v20

    .line 278
    .line 279
    iput-object v10, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayManagerExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 280
    .line 281
    new-instance v1, Lcom/android/server/om/OverlayManagerSettingsHelper;

    .line 282
    .line 283
    invoke-direct {v1, v12}, Lcom/android/server/om/OverlayManagerSettingsHelper;-><init>(Lcom/android/server/om/OverlayManagerSettings;)V

    .line 284
    .line 285
    .line 286
    invoke-static {v7, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->getInstance(Landroid/content/Context;Lcom/android/server/om/OverlayManagerSettingsHelper;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    iput-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 291
    .line 292
    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->initWallpaperTheme()Landroid/content/om/OverlayManagerTransaction;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 297
    .line 298
    .line 299
    move-result-object v3

    .line 300
    const v4, 0x104002a

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-static {v3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v3

    .line 311
    new-instance v4, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;

    .line 312
    .line 313
    const/4 v5, 0x0

    .line 314
    invoke-direct {v4, v3, v5}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v12, v4}, Lcom/android/server/om/OverlayManagerSettings;->removeIf(Ljava/util/function/Predicate;)Ljava/util/List;

    .line 318
    .line 319
    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    .line 321
    .line 322
    .line 323
    const/4 v3, 0x0

    .line 324
    invoke-virtual {v0, v3, v14}, Lcom/android/server/om/OverlayManagerService;->onStartUser(IZ)V

    .line 325
    .line 326
    .line 327
    const-string/jumbo v4, "overlay"

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v4, v13}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 331
    .line 332
    .line 333
    const-class v4, Lcom/android/server/om/OverlayManagerService;

    .line 334
    .line 335
    invoke-virtual {v0, v4, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-static/range {p1 .. p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->isFotaUpgrade(Landroid/content/Context;)Z

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    if-eqz v4, :cond_2

    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->getColorThemeState()I

    .line 345
    .line 346
    .line 347
    move-result v4

    .line 348
    if-ne v4, v14, :cond_1

    .line 349
    .line 350
    goto :goto_0

    .line 351
    :cond_1
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    :try_start_1
    invoke-virtual {v0, v3}, Lcom/android/server/om/OverlayManagerService;->unregisterColorThemeGG(Z)Ljava/util/Set;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    invoke-virtual {v0, v3, v14}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V

    .line 357
    .line 358
    .line 359
    monitor-exit v9

    .line 360
    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    .line 362
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :try_start_2
    throw v0

    .line 364
    :catchall_1
    move-exception v0

    .line 365
    const-wide/32 v1, 0x4000000

    .line 366
    .line 367
    .line 368
    goto :goto_3

    .line 369
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->getColorThemeState()I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-ne v1, v14, :cond_3

    .line 374
    .line 375
    goto :goto_1

    .line 376
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->unregisterUnusedPaletteOverlays()V

    .line 377
    .line 378
    .line 379
    :goto_1
    if-eqz v2, :cond_4

    .line 380
    .line 381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 382
    .line 383
    .line 384
    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 385
    :try_start_3
    invoke-virtual {v13, v2}, Landroid/content/om/IOverlayManager$Stub;->commit(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 386
    .line 387
    .line 388
    goto :goto_2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    move-object v1, v0

    .line 391
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 392
    .line 393
    const-string v2, "failed initWallpaperTheme, wallpaper theming will not working, ex = "

    .line 394
    .line 395
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    const-string v1, "SWT_OverlayManager"

    .line 406
    .line 407
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .line 409
    .line 410
    :goto_2
    const-string v0, "SWT_OverlayManager"

    .line 411
    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 418
    .line 419
    .line 420
    move-result-wide v5

    .line 421
    sub-long/2addr v5, v3

    .line 422
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    const-string/jumbo v2, "ms"

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 436
    .line 437
    .line 438
    :cond_4
    const-wide/32 v1, 0x4000000

    .line 439
    .line 440
    .line 441
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 442
    .line 443
    .line 444
    return-void

    .line 445
    :goto_3
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 446
    .line 447
    .line 448
    throw v0
.end method

.method public static broadcastActionOverlayChangedPublic(Ljava/util/Set;I)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;

    .line 10
    .line 11
    invoke-direct {v1, p1, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda1;-><init>(ILandroid/app/ActivityManagerInternal;)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 7

    .line 1
    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, ";"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    array-length v2, v0

    .line 29
    const/4 v3, 0x0

    .line 30
    move v4, v3

    .line 31
    :goto_0
    if-ge v4, v2, :cond_2

    .line 32
    .line 33
    aget-object v5, v0, v4

    .line 34
    .line 35
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-array v0, v3, [Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, [Ljava/lang/String;

    .line 54
    .line 55
    return-object v0
.end method


# virtual methods
.method public final disableDynamicContrast(Z)V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget v4, v1, v3

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const-string v5, "contrast_level"

    .line 24
    .line 25
    const/high16 v6, -0x40800000    # -1.0f

    .line 26
    .line 27
    invoke-static {v0, v5, v6, v4}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_1
    const-string/jumbo v5, "theme_customization_overlay_packages"

    .line 34
    .line 35
    .line 36
    const-string v6, ""

    .line 37
    .line 38
    invoke-static {v0, v5, v6, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v2, "disableDynamicContrast posted delay, due: "

    .line 47
    .line 48
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const-string v1, "OverlayManager"

    .line 59
    .line 60
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda5;

    .line 68
    .line 69
    invoke-direct {v1, p0, p1}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/om/OverlayManagerService;Z)V

    .line 70
    .line 71
    .line 72
    const-wide/16 p0, 0x3e8

    .line 73
    .line 74
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mService:Lcom/android/server/om/OverlayManagerService$2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/om/IOverlayManager$Stub;->getAllOverlays(I)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mService:Lcom/android/server/om/OverlayManagerService$2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    const/4 p0, 0x0

    .line 9
    return-object p0
.end method

.method public getTargetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceExt;->getTargetPath(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    monitor-exit v0

    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    const/4 p0, 0x0

    .line 18
    return-object p0

    .line 19
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final initIfNeeded()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/os/UserManager;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/UserManager;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const/4 v3, 0x0

    .line 25
    :goto_0
    if-ge v3, v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 40
    .line 41
    if-eqz v4, :cond_0

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 44
    .line 45
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Landroid/content/pm/UserInfo;

    .line 50
    .line 51
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {p0, v4}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    goto :goto_2

    .line 63
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    monitor-exit v1

    .line 67
    return-void

    .line 68
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p0
.end method

.method public final onStart()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onStartUser(IZ)V
    .locals 7

    .line 1
    const-string v0, "[onStartUser] newUserId : "

    .line 2
    .line 3
    const-string/jumbo v1, "onStartUser - Error in starting localeoverlaymanager: "

    .line 4
    .line 5
    .line 6
    const-string v2, "OMS#onStartUser "

    .line 7
    .line 8
    iget v3, p0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    .line 9
    .line 10
    if-ne p1, v3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string v3, "OverlayManager"

    .line 14
    .line 15
    const-string v4, "Updating overlays for starting user "

    .line 16
    .line 17
    invoke-static {p1, v4, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-wide/32 v3, 0x4000000

    .line 21
    .line 22
    .line 23
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->createLocaleOverlayPreferenceDir(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-static {v2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, p1}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->checkSanityOfOverlays(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    :catch_0
    move-exception v2

    .line 63
    :try_start_2
    const-string v5, "OverlayManager"

    .line 64
    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 81
    .line 82
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :try_start_3
    const-string v2, "OMS_DEBUG"

    .line 84
    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 101
    .line 102
    if-eqz v0, :cond_2

    .line 103
    .line 104
    iput-boolean p2, v0, Lcom/android/server/om/OverlayManagerServiceExt;->mIsInitOnBoot:Z

    .line 105
    .line 106
    :cond_2
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p2, v0}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V

    .line 114
    .line 115
    .line 116
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 117
    .line 118
    if-eqz p2, :cond_3

    .line 119
    .line 120
    iput-boolean v0, p2, Lcom/android/server/om/OverlayManagerServiceExt;->mIsInitOnBoot:Z

    .line 121
    .line 122
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 124
    .line 125
    .line 126
    iput p1, p0, Lcom/android/server/om/OverlayManagerService;->mPrevStartedUserId:I

    .line 127
    .line 128
    return-void

    .line 129
    :catchall_1
    move-exception p0

    .line 130
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 131
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 133
    .line 134
    .line 135
    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->onStartUser(IZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 4

    .line 1
    const-class p0, Lcom/android/server/UiModeManagerService$LocalService;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/UiModeManagerService$LocalService;

    .line 8
    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-string/jumbo p2, "onEarlySwitchUser : "

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mSetupWizardObserver:Lcom/android/server/UiModeManagerService$9;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->verifySetupWizardCompleted()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1, v2, v3, p1}, Lcom/android/server/UiModeManagerService;->updateNightModeFromSettingsLocked(Landroid/content/Context;Landroid/content/res/Resources;I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->resetNightModeOverrideLocked()Z

    .line 67
    .line 68
    .line 69
    sget-object v1, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 77
    .line 78
    iget-object p2, p2, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 79
    .line 80
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p2, " userID : "

    .line 84
    .line 85
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 99
    .line 100
    const/4 p2, 0x0

    .line 101
    invoke-virtual {p1, p2, p2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 105
    .line 106
    iget-object v1, p1, Lcom/android/server/UiModeManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mCustomTimeListener:Lcom/android/server/UiModeManagerService$$ExternalSyntheticLambda2;

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 114
    .line 115
    iget-object v1, p1, Lcom/android/server/UiModeManagerService;->mNightMode:Lcom/android/server/UiModeManagerService$1;

    .line 116
    .line 117
    iget v1, v1, Lcom/android/server/UiModeManagerService$1;->mNightModeValue:I

    .line 118
    .line 119
    const/4 v2, 0x3

    .line 120
    if-ne v1, v2, :cond_0

    .line 121
    .line 122
    iget-boolean p2, p1, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    .line 123
    .line 124
    if-nez p2, :cond_1

    .line 125
    .line 126
    new-instance p2, Landroid/content/IntentFilter;

    .line 127
    .line 128
    const-string v1, "android.intent.action.TIME_SET"

    .line 129
    .line 130
    invoke-direct {p2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 134
    .line 135
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Lcom/android/server/UiModeManagerService$2;

    .line 143
    .line 144
    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 148
    .line 149
    const/4 p1, 0x1

    .line 150
    iput-boolean p1, p0, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto :goto_1

    .line 155
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .line 157
    if-eqz v1, :cond_1

    .line 158
    .line 159
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object p1, p1, Lcom/android/server/UiModeManagerService;->mOnTimeChangedHandler:Lcom/android/server/UiModeManagerService$2;

    .line 164
    .line 165
    invoke-virtual {v1, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    .line 167
    .line 168
    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$LocalService;->this$0:Lcom/android/server/UiModeManagerService;

    .line 169
    .line 170
    iput-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mIsNightModeRegistered:Z

    .line 171
    .line 172
    :cond_1
    :goto_0
    monitor-exit v0

    .line 173
    goto :goto_2

    .line 174
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    throw p0

    .line 176
    :cond_2
    :goto_2
    return-void
.end method

.method public final persistSettingsLocked()V
    .locals 3

    .line 1
    const-string v0, "OverlayManager"

    .line 2
    .line 3
    const-string v1, "Writing overlay settings"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Lcom/android/server/om/ResilientAtomicFile;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/om/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 16
    .line 17
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :try_start_1
    iget-object v1, v1, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->persist(Ljava/util/ArrayList;Ljava/io/OutputStream;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :try_start_2
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Lcom/android/server/om/ResilientAtomicFile;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/android/server/om/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 36
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 37
    :goto_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Lcom/android/server/om/ResilientAtomicFile;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/om/ResilientAtomicFile;->mMainOutStream:Ljava/io/FileOutputStream;

    .line 40
    .line 41
    if-ne v2, v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/server/om/ResilientAtomicFile;->close()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v2, "Failed to clean up mangled file: "

    .line 65
    .line 66
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, p0, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "ResilientAtomicFile"

    .line 79
    .line 80
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_0
    const-string p0, "OverlayManager"

    .line 84
    .line 85
    const-string v0, "failed to persist overlay state"

    .line 86
    .line 87
    invoke-static {p0, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void

    .line 91
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 92
    .line 93
    const-string v0, "Invalid incoming stream."

    .line 94
    .line 95
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final restoreSettings()V
    .locals 10

    .line 1
    const-wide/32 v0, 0x4000000

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v2, "OMS#restoreSettings"

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 12
    :try_start_1
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Lcom/android/server/om/ResilientAtomicFile;

    .line 13
    .line 14
    iget-object v4, v3, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    iget-object v4, v3, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_1

    .line 29
    .line 30
    iget-object v3, v3, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_4

    .line 46
    .line 47
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 48
    :try_start_2
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Lcom/android/server/om/ResilientAtomicFile;

    .line 49
    .line 50
    invoke-virtual {v4}, Lcom/android/server/om/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    if-nez v3, :cond_2

    .line 55
    .line 56
    const-string v4, "OverlayManager"

    .line 57
    .line 58
    const-string/jumbo v5, "settings file recovery failure"

    .line 59
    .line 60
    .line 61
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    .line 63
    .line 64
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :catch_0
    move-exception v4

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    :try_start_4
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 72
    .line 73
    iget-object v5, v4, Lcom/android/server/om/OverlayManagerSettings;->mItemsLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    :try_start_5
    iget-object v4, v4, Lcom/android/server/om/OverlayManagerSettings;->mItems:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-static {v4, v3}, Lcom/android/server/om/OverlayManagerSettings$Serializer;->restore(Ljava/util/ArrayList;Ljava/io/InputStream;)V

    .line 79
    .line 80
    .line 81
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 82
    :try_start_6
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 83
    .line 84
    const/4 v5, 0x1

    .line 85
    invoke-virtual {v4, v5, v5, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    check-cast v4, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    new-array v5, v5, [I

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    move v7, v6

    .line 99
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-ge v7, v8, :cond_3

    .line 104
    .line 105
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    check-cast v8, Landroid/content/pm/UserInfo;

    .line 110
    .line 111
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    aput v8, v5, v7

    .line 120
    .line 121
    add-int/lit8 v7, v7, 0x1

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 125
    .line 126
    .line 127
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    array-length v7, v4

    .line 134
    :goto_2
    if-ge v6, v7, :cond_7

    .line 135
    .line 136
    aget v8, v4, v6

    .line 137
    .line 138
    invoke-static {v5, v8}, Ljava/util/Arrays;->binarySearch([II)I

    .line 139
    .line 140
    .line 141
    move-result v9

    .line 142
    if-gez v9, :cond_4

    .line 143
    .line 144
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 145
    .line 146
    invoke-virtual {v9, v8}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 147
    .line 148
    .line 149
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catchall_1
    move-exception v4

    .line 153
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 154
    :try_start_8
    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 155
    :goto_3
    :try_start_9
    const-string v5, "OverlayManager"

    .line 156
    .line 157
    const-string v6, "failed to restore overlay state"

    .line 158
    .line 159
    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .line 161
    .line 162
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Lcom/android/server/om/ResilientAtomicFile;

    .line 163
    .line 164
    iget-object v6, v5, Lcom/android/server/om/ResilientAtomicFile;->mFile:Ljava/io/File;

    .line 165
    .line 166
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    if-nez v6, :cond_5

    .line 171
    .line 172
    iget-object v6, v5, Lcom/android/server/om/ResilientAtomicFile;->mTemporaryBackup:Ljava/io/File;

    .line 173
    .line 174
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_5

    .line 179
    .line 180
    iget-object v5, v5, Lcom/android/server/om/ResilientAtomicFile;->mReserveCopy:Ljava/io/File;

    .line 181
    .line 182
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    if-eqz v5, :cond_6

    .line 187
    .line 188
    :cond_5
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Lcom/android/server/om/ResilientAtomicFile;

    .line 189
    .line 190
    invoke-virtual {v5, v3, v4}, Lcom/android/server/om/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 191
    .line 192
    .line 193
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 194
    .line 195
    .line 196
    :cond_7
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 197
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :goto_4
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 202
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 203
    :catchall_2
    move-exception p0

    .line 204
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 205
    .line 206
    .line 207
    throw p0
.end method

.method public final setDynamicContrastToStandard()V
    .locals 7

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_0

    .line 18
    .line 19
    aget v4, v1, v3

    .line 20
    .line 21
    const-string v5, "contrast_level"

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-static {v0, v5, v6, v4}, Landroid/provider/Settings$Secure;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string/jumbo v2, "setDynamicContrastToStandard posted delay, due: "

    .line 34
    .line 35
    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "OverlayManager"

    .line 47
    .line 48
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda6;

    .line 56
    .line 57
    invoke-direct {v1, p0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 58
    .line 59
    .line 60
    const-wide/16 v2, 0x3e8

    .line 61
    .line 62
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    .line 64
    .line 65
    :cond_0
    return-void
.end method

.method public final unregisterColorThemeGG(Z)Ljava/util/Set;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/util/Pair;

    .line 28
    .line 29
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, Landroid/content/om/OverlayIdentifier;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string v5, "com.android.systemui"

    .line 38
    .line 39
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v6, Landroid/content/om/OverlayIdentifier;

    .line 42
    .line 43
    invoke-virtual {v6}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 52
    .line 53
    const-string/jumbo v5, "neutral"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-nez v5, :cond_1

    .line 61
    .line 62
    const-string v5, "accent"

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    if-nez p1, :cond_0

    .line 71
    .line 72
    const-string v5, "dynamic"

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_0

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 84
    .line 85
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v3, Landroid/content/om/OverlayIdentifier;

    .line 88
    .line 89
    invoke-virtual {v4, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v2, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    monitor-exit v0

    .line 99
    return-object v2

    .line 100
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0
.end method

.method public final unregisterUnusedPaletteOverlays()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/util/Pair;

    .line 27
    .line 28
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v3, Landroid/content/om/OverlayIdentifier;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    const-string v4, "SemWT_"

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_0

    .line 45
    .line 46
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 47
    .line 48
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Landroid/content/om/OverlayIdentifier;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public updatePackageCache(Ljava/lang/String;I)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1
    const-string v0, "OverlayManager"

    .line 2
    .line 3
    const-string/jumbo v1, "updatePackageCache() called with: packageName = ["

    .line 4
    .line 5
    .line 6
    const-string v2, "], userId = ["

    .line 7
    .line 8
    const-string v3, "]"

    .line 9
    .line 10
    invoke-static {p2, v1, p1, v2, v3}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 23
    .line 24
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 25
    .line 26
    .line 27
    monitor-exit v0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw p0

    .line 32
    :cond_0
    :goto_0
    return-void
.end method

.method public final updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 5
    new-instance v2, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/util/SparseArray;)V

    invoke-static {p1, v2}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 8
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    .line 9
    invoke-virtual {p0, v4, v5, v2}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(ILjava/util/Collection;Z)Ljava/util/List;

    move-result-object v5

    .line 10
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final updatePackageManagerLocked(ILjava/util/Collection;Z)Ljava/util/List;
    .locals 10

    .line 11
    const-string v0, "OMS#updatePackageManagerLocked "

    const-wide/32 v1, 0x4000000

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 12
    const-string v0, "OverlayManager"

    const-string v3, "Update package manager about changed overlays"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 14
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 15
    const-string v3, "android"

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p3, :cond_0

    .line 16
    move-object p2, v0

    check-cast p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    .line 19
    new-instance v4, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p3}, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda45;-><init>(ILjava/lang/Object;)V

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->forEachPackageState(Lcom/android/server/pm/Computer;Ljava/util/function/Consumer;)V

    move-object p2, p3

    .line 20
    :cond_0
    new-instance p3, Landroid/util/ArrayMap;

    .line 21
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {p3, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 22
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v5, "android"

    const/4 v6, 0x0

    .line 24
    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(ILjava/lang/String;Z)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v4

    .line 25
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 26
    new-instance v7, Landroid/content/pm/overlay/OverlayPaths$Builder;

    invoke-direct {v7}, Landroid/content/pm/overlay/OverlayPaths$Builder;-><init>()V

    .line 27
    const-string v8, "android"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 28
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const/4 v9, 0x1

    invoke-virtual {v8, p1, v6, v9}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(ILjava/lang/String;Z)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v8

    .line 29
    invoke-static {v8, v8, v6, p1}, Lcom/android/server/om/OverlayPolicyManager;->filterByPolicy(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v8

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_1
    const/4 v8, 0x0

    .line 30
    :goto_1
    invoke-static {v4, v8, v6, p1}, Lcom/android/server/om/OverlayPolicyManager;->filterByPolicy(Landroid/content/pm/overlay/OverlayPaths;Landroid/content/pm/overlay/OverlayPaths;Ljava/lang/String;I)Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v9

    .line 31
    invoke-virtual {v7, v9}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 32
    invoke-virtual {v7, v8}, Landroid/content/pm/overlay/OverlayPaths$Builder;->addAll(Landroid/content/pm/overlay/OverlayPaths;)Landroid/content/pm/overlay/OverlayPaths$Builder;

    .line 33
    invoke-virtual {v7}, Landroid/content/pm/overlay/OverlayPaths$Builder;->build()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 36
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 37
    invoke-virtual {v0, p1, p3, p0, v3}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V

    .line 38
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    const-string v4, "OverlayManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-> Updating overlay: target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " overlays=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 43
    const-string v4, "OverlayManager"

    const-string v5, "Failed to change enabled overlays for %s user %d"

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-static {v5, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    .line 46
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1

    .line 48
    :goto_3
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 49
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 50
    throw p0
.end method

.method public final updateTargetPackagesLocked(Ljava/util/Set;Z)V
    .locals 11

    .line 1
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->persistSettingsLocked()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda2;-><init>(Landroid/util/SparseArray;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1, v1}, Lcom/android/internal/util/CollectionUtils;->forEach(Ljava/util/Set;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    :goto_0
    if-ge v2, p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    move-object v9, v3

    .line 37
    check-cast v9, Landroid/util/ArraySet;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-virtual {p0, v7, v9, v1}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(ILjava/util/Collection;Z)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    move-object v3, v6

    .line 48
    check-cast v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    new-instance v10, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;

    .line 62
    .line 63
    move-object v4, v10

    .line 64
    move-object v5, p0

    .line 65
    move v8, p2

    .line 66
    invoke-direct/range {v4 .. v9}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;Ljava/util/List;IZLandroid/util/ArraySet;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-void
.end method
