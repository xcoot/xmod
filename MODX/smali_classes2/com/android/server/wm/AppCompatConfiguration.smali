.class public final Lcom/android/server/wm/AppCompatConfiguration;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

.field public final mContext:Landroid/content/Context;

.field public mDefaultMinAspectRatioForUnresizableApps:F

.field public mDefaultPositionForHorizontalReachability:I

.field public mDefaultPositionForVerticalReachability:I

.field public final mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

.field public mFixedOrientationLetterboxAspectRatio:F

.field public mIsAutomaticReachabilityInBookModeEnabled:Z

.field public mIsCameraCompatRefreshCycleThroughStopEnabled:Z

.field public final mIsCameraCompatSplitScreenAspectRatioEnabled:Z

.field public mIsCameraCompatTreatmentRefreshEnabled:Z

.field public mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

.field public mIsEducationEnabled:Z

.field public mIsHorizontalReachabilityEnabled:Z

.field public final mIsPolicyForIgnoringRequestedOrientationEnabled:Z

.field public mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

.field public mIsVerticalReachabilityEnabled:Z

.field public mLetterboxActivityCornersRadius:I

.field public mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

.field public mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

.field public final mLetterboxBackgroundType:I

.field public mLetterboxBackgroundTypeOverride:I

.field public mLetterboxBackgroundWallpaperBlurRadiusPx:I

.field public mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field public mLetterboxBookModePositionMultiplier:F

.field public mLetterboxHorizontalPositionMultiplier:F

.field public mLetterboxTabletopModePositionMultiplier:F

.field public mLetterboxVerticalPositionMultiplier:F

.field public final mPresetManager:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;

.field public final mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field public final mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field public mTranslucentLetterboxingOverrideEnabled:Z

.field public mUserAppAspectRatioFullscreenOverrideEnabled:Z

.field public mUserAppAspectRatioSettingsOverrideEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppCompatConfigurationPersister;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    .line 11
    .line 12
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mPresetManager:Lcom/android/server/wm/MultiTaskingAppCompatConfiguration$PresetManager;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x10500e7

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const v2, 0x10e00c4

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    if-eq v1, v0, :cond_2

    .line 55
    .line 56
    const/4 v3, 0x2

    .line 57
    if-eq v1, v3, :cond_2

    .line 58
    .line 59
    const/4 v3, 0x3

    .line 60
    if-ne v1, v3, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v1, v2

    .line 64
    :cond_2
    :goto_1
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const v3, 0x10e00c3

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const v3, 0x10500ee

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const v3, 0x10500ed

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const v3, 0x10500f1

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    const-string/jumbo v3, "mLetterboxHorizontalPositionMultiplier"

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v3}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 123
    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    const v3, 0x10500f5

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    const-string/jumbo v3, "mLetterboxVerticalPositionMultiplier"

    .line 136
    .line 137
    .line 138
    invoke-static {v1, v3}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const v3, 0x10500ef

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBookModePositionMultiplier(F)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const v3, 0x10500f2

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxTabletopModePositionMultiplier(F)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    const v3, 0x11101cf

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const v3, 0x11101d2

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    const v3, 0x11101ca

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 209
    .line 210
    invoke-static {p1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 215
    .line 216
    invoke-static {p1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const v3, 0x11101cd

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    const v3, 0x10500f0

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    iput v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    .line 247
    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    const v3, 0x11101d1

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 260
    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    const v3, 0x11101cb

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 273
    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const v3, 0x11101c0

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    .line 286
    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    const v3, 0x11101d0

    .line 292
    .line 293
    .line 294
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    .line 299
    .line 300
    new-instance v1, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 301
    .line 302
    const v3, 0x10500f4

    .line 303
    .line 304
    .line 305
    invoke-direct {v1, p1, v3}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    .line 306
    .line 307
    .line 308
    iput-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 309
    .line 310
    new-instance v1, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 311
    .line 312
    const v3, 0x10500f3

    .line 313
    .line 314
    .line 315
    invoke-direct {v1, p1, v3}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    .line 316
    .line 317
    .line 318
    iput-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 319
    .line 320
    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 321
    .line 322
    iget-object p2, p2, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 323
    .line 324
    monitor-enter p2

    .line 325
    :try_start_0
    iget-object v1, p2, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    .line 326
    .line 327
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 328
    .line 329
    .line 330
    move-result v1

    .line 331
    if-nez v1, :cond_3

    .line 332
    .line 333
    iget-object v1, p2, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .line 337
    .line 338
    goto :goto_2

    .line 339
    :catchall_0
    move-exception p0

    .line 340
    goto/16 :goto_3

    .line 341
    .line 342
    :cond_3
    :goto_2
    monitor-exit p2

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 344
    .line 345
    .line 346
    move-result-object p2

    .line 347
    new-instance v1, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    .line 348
    .line 349
    invoke-direct {v1, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;-><init>(Ljava/util/concurrent/Executor;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 353
    .line 354
    .line 355
    move-result-object p2

    .line 356
    const v3, 0x11101c1

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 360
    .line 361
    .line 362
    move-result p2

    .line 363
    const-string v3, "enable_compat_camera_treatment"

    .line 364
    .line 365
    invoke-virtual {v1, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    const v3, 0x11101cc

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 376
    .line 377
    .line 378
    move-result p2

    .line 379
    const-string v3, "enable_display_rotation_immersive_app_compat_policy"

    .line 380
    .line 381
    invoke-virtual {v1, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    .line 382
    .line 383
    .line 384
    const-string p2, "allow_ignore_orientation_request"

    .line 385
    .line 386
    invoke-virtual {v1, p2, v0, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    const v3, 0x11101bb

    .line 394
    .line 395
    .line 396
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 397
    .line 398
    .line 399
    move-result p2

    .line 400
    const-string v3, "enable_compat_fake_focus"

    .line 401
    .line 402
    invoke-virtual {v1, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 406
    .line 407
    .line 408
    move-result-object p2

    .line 409
    const v3, 0x11101ce

    .line 410
    .line 411
    .line 412
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 413
    .line 414
    .line 415
    move-result p2

    .line 416
    const-string v3, "enable_letterbox_translucent_activity"

    .line 417
    .line 418
    invoke-virtual {v1, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 422
    .line 423
    .line 424
    move-result-object p2

    .line 425
    const v3, 0x1110037

    .line 426
    .line 427
    .line 428
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 429
    .line 430
    .line 431
    move-result p2

    .line 432
    const-string v3, "enable_app_compat_aspect_ratio_user_settings"

    .line 433
    .line 434
    invoke-virtual {v1, v3, v0, p2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    .line 435
    .line 436
    .line 437
    const-string p2, "enable_letterbox_background_wallpaper"

    .line 438
    .line 439
    invoke-virtual {v1, p2, v2, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 443
    .line 444
    .line 445
    move-result-object p1

    .line 446
    const p2, 0x1110036

    .line 447
    .line 448
    .line 449
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 450
    .line 451
    .line 452
    move-result p1

    .line 453
    const-string p2, "enable_app_compat_user_aspect_ratio_fullscreen"

    .line 454
    .line 455
    invoke-virtual {v1, p2, v0, p1}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)V

    .line 456
    .line 457
    .line 458
    new-instance p1, Lcom/android/server/wm/SynchedDeviceConfig;

    .line 459
    .line 460
    iget-object p2, v1, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 461
    .line 462
    iget-object v0, v1, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mDeviceConfigEntries:Ljava/util/Map;

    .line 463
    .line 464
    iget-object v1, v1, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->mNamespace:Ljava/lang/String;

    .line 465
    .line 466
    invoke-direct {p1, v1, p2, v0}, Lcom/android/server/wm/SynchedDeviceConfig;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/util/Map;)V

    .line 467
    .line 468
    .line 469
    new-instance v2, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;

    .line 470
    .line 471
    invoke-direct {v2, p1}, Lcom/android/server/wm/SynchedDeviceConfig$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SynchedDeviceConfig;)V

    .line 472
    .line 473
    .line 474
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 475
    .line 476
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 477
    .line 478
    .line 479
    invoke-static {v1, p2, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 480
    .line 481
    .line 482
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 483
    .line 484
    return-void

    .line 485
    :goto_3
    monitor-exit p2

    .line 486
    throw p0
.end method

.method public static assertValidMultiplier(FLjava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p0, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, p0, v0

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Trying to set "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, " out of bounds: "

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public static letterboxBackgroundTypeToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_2

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_0

    .line 11
    .line 12
    const-string/jumbo v0, "unknown="

    .line 13
    .line 14
    .line 15
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    const-string p0, "LETTERBOX_BACKGROUND_WALLPAPER"

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_1
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const-string p0, "LETTERBOX_BACKGROUND_SOLID_COLOR"

    .line 30
    .line 31
    return-object p0
.end method

.method public static letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_RIGHT"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    const-string v1, "Unexpected letterbox position type: "

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_CENTER"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_LEFT"

    .line 28
    .line 29
    return-object p0
.end method

.method public static letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_BOTTOM"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 13
    .line 14
    const-string v1, "Unexpected letterbox position type: "

    .line 15
    .line 16
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    throw v0

    .line 24
    :cond_1
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_CENTER"

    .line 25
    .line 26
    return-object p0

    .line 27
    :cond_2
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_TOP"

    .line 28
    .line 29
    return-object p0
.end method

.method public static readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const p1, 0x10e00c5

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const p1, 0x10e00c6

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    if-eq p0, p1, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p0, v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p0, p1

    .line 28
    :cond_2
    :goto_1
    return p0
.end method

.method public static readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const p1, 0x10e00c7

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const p1, 0x10e00c8

    .line 12
    .line 13
    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    if-eq p0, p1, :cond_2

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p0, v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move p0, p1

    .line 28
    :cond_2
    :goto_1
    return p0
.end method


# virtual methods
.method public final getHorizontalMultiplierForReachability(Z)F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    if-eq p0, p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    const/high16 p0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 19
    .line 20
    const-string v0, "Unexpected letterbox position type: "

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final getLetterboxBackgroundColor()Landroid/graphics/Color;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const v0, 0x106020d

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public final getLetterboxBackgroundType()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 8
    .line 9
    const-string v1, "enable_letterbox_background_wallpaper"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 p0, 0x3

    .line 18
    :goto_0
    move v0, p0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    return v0
.end method

.method public final getVerticalMultiplierForReachability(Z)F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_2

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    if-eq p0, p1, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x2

    .line 13
    if-ne p0, p1, :cond_0

    .line 14
    .line 15
    const/high16 p0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    return p0

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 19
    .line 20
    const-string v0, "Unexpected letterbox position type: "

    .line 21
    .line 22
    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    .line 31
    .line 32
    return p0

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    return p0
.end method

.method public final isTranslucentLetterboxingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 6
    .line 7
    const-string v0, "enable_letterbox_translucent_activity"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public final isUserAppAspectRatioFullscreenEnabled()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 12
    .line 13
    const-string v0, "enable_app_compat_user_aspect_ratio_fullscreen"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    :cond_0
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 p0, 0x0

    .line 24
    :goto_0
    return p0
.end method

.method public final isUserAppAspectRatioSettingsEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    .line 6
    .line 7
    const-string v0, "enable_app_compat_aspect_ratio_user_settings"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
.end method

.method public setLetterboxBookModePositionMultiplier(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "mLetterboxBookModePositionMultiplier"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    .line 8
    .line 9
    return-void
.end method

.method public setLetterboxTabletopModePositionMultiplier(F)V
    .locals 1

    .line 1
    const-string/jumbo v0, "mLetterboxTabletopModePositionMultiplier"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    .line 8
    .line 9
    return-void
.end method
