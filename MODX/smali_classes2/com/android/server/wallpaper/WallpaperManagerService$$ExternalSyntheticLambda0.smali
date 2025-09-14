.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 8
    .line 9
    packed-switch v4, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget-boolean v0, Lcom/android/server/wallpaper/WallpaperManagerService;->SHIPPED:Z

    .line 13
    .line 14
    invoke-virtual {p0, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 23
    .line 24
    invoke-virtual {v4, v5, v2, v6, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 39
    .line 40
    .line 41
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 42
    .line 43
    iput v3, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 44
    .line 45
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/app/SemWallpaperResourcesInfo;->isSupportCMF()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_5

    .line 52
    .line 53
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 54
    .line 55
    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 56
    .line 57
    iget-object v5, v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    const-string v6, "cmf_color_code"

    .line 64
    .line 65
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string v7, "getDefaultDeviceColor : "

    .line 72
    .line 73
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const-string v7, "CMFWallpaper"

    .line 84
    .line 85
    invoke-static {v7, v6}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-eqz v6, :cond_4

    .line 93
    .line 94
    const-string/jumbo v5, "ril.product_code"

    .line 95
    .line 96
    .line 97
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string/jumbo v8, "rilProductCode = "

    .line 104
    .line 105
    .line 106
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    invoke-static {v7, v6}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    if-eqz v5, :cond_1

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    const/16 v8, 0xa

    .line 126
    .line 127
    if-ge v6, v8, :cond_0

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    const/16 v6, 0x8

    .line 131
    .line 132
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v6

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    :goto_0
    move-object v6, v2

    .line 142
    :goto_1
    iget-object v8, v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->mAlternativeCode:Ljava/lang/String;

    .line 143
    .line 144
    if-eqz v6, :cond_2

    .line 145
    .line 146
    new-instance v9, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string/jumbo v10, "rilProductCode=\'"

    .line 149
    .line 150
    .line 151
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v5, "\', colorCode="

    .line 158
    .line 159
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-static {v7, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4, v6, v8}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    iget-object v6, v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->mHandler:Lcom/samsung/server/wallpaper/CMFWallpaper$1;

    .line 177
    .line 178
    const/16 v7, 0x3f5

    .line 179
    .line 180
    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    iput-object v5, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 185
    .line 186
    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_2
    iget-object v5, v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    .line 191
    .line 192
    if-eqz v5, :cond_3

    .line 193
    .line 194
    :goto_2
    move-object v5, v2

    .line 195
    goto :goto_3

    .line 196
    :cond_3
    new-instance v5, Lcom/samsung/server/wallpaper/CMFWallpaper$3;

    .line 197
    .line 198
    invoke-direct {v5, v4}, Lcom/samsung/server/wallpaper/CMFWallpaper$3;-><init>(Lcom/samsung/server/wallpaper/CMFWallpaper;)V

    .line 199
    .line 200
    .line 201
    iput-object v5, v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    .line 202
    .line 203
    const-string v6, "ColorCodePollingThread"

    .line 204
    .line 205
    invoke-virtual {v5, v6}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    iget-object v5, v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->mColorCodePollingThread:Ljava/lang/Thread;

    .line 209
    .line 210
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 211
    .line 212
    .line 213
    goto :goto_2

    .line 214
    :goto_3
    invoke-virtual {v4, v5, v8}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getProperColorCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    :cond_4
    invoke-static {v5}, Lcom/samsung/server/wallpaper/CMFWallpaper$ProductFeatures;->getFeatureBasedColor(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    iput-object v6, v4, Lcom/samsung/server/wallpaper/CMFWallpaper;->mDeviceColor:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v4, v5}, Lcom/samsung/server/wallpaper/CMFWallpaper;->setLegacyDeviceColor(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    :cond_5
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 228
    .line 229
    if-eqz v4, :cond_6

    .line 230
    .line 231
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 232
    .line 233
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 234
    .line 235
    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/SubDisplayMode;->updateLidStateFromInputManager()V

    .line 236
    .line 237
    .line 238
    :cond_6
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIsWallpaperInitialized:Landroid/util/SparseArray;

    .line 239
    .line 240
    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperFileExists(I)Z

    .line 241
    .line 242
    .line 243
    move-result v6

    .line 244
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 245
    .line 246
    .line 247
    move-result-object v6

    .line 248
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 252
    .line 253
    iget-object v6, v5, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 254
    .line 255
    monitor-enter v6

    .line 256
    :try_start_0
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 257
    .line 258
    invoke-virtual {v5, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->loadSettingsLockedForSnapshot(I)V

    .line 259
    .line 260
    .line 261
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 262
    const/4 v5, 0x3

    .line 263
    const/4 v6, 0x4

    .line 264
    invoke-virtual {p0, v3, v5, v6, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    .line 265
    .line 266
    .line 267
    const/4 v7, 0x5

    .line 268
    invoke-virtual {p0, v3, v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 269
    .line 270
    .line 271
    const/16 v8, 0x10

    .line 272
    .line 273
    const/16 v9, 0x11

    .line 274
    .line 275
    if-eqz v4, :cond_7

    .line 276
    .line 277
    sget-boolean v10, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 278
    .line 279
    if-nez v10, :cond_7

    .line 280
    .line 281
    invoke-virtual {p0, v3, v5, v8, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p0, v3, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 285
    .line 286
    .line 287
    :cond_7
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 288
    .line 289
    if-eqz v5, :cond_8

    .line 290
    .line 291
    invoke-virtual {p0, v3, v1, v8, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {p0, v3, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 295
    .line 296
    .line 297
    :cond_8
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    .line 298
    .line 299
    if-eqz v5, :cond_9

    .line 300
    .line 301
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    .line 302
    .line 303
    invoke-virtual {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->isVirtualWallpaperDisplay(I)Z

    .line 304
    .line 305
    .line 306
    move-result v5

    .line 307
    if-eqz v5, :cond_9

    .line 308
    .line 309
    const/16 v5, 0x20

    .line 310
    .line 311
    invoke-virtual {p0, v3, v1, v5, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    .line 312
    .line 313
    .line 314
    const/16 v5, 0x21

    .line 315
    .line 316
    invoke-virtual {p0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 317
    .line 318
    .line 319
    :cond_9
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 320
    .line 321
    invoke-virtual {v5, v3, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    const-string v10, "WallpaperManagerService"

    .line 326
    .line 327
    const-string/jumbo v11, "systemReady: initImageWallpaperCropFile - 1"

    .line 328
    .line 329
    .line 330
    invoke-static {v10, v11}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v7, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 334
    .line 335
    .line 336
    if-eqz v4, :cond_a

    .line 337
    .line 338
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 339
    .line 340
    invoke-virtual {v4, v3, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    const-string/jumbo v5, "systemReady: initImageWallpaperCropFile - 2"

    .line 345
    .line 346
    .line 347
    invoke-static {v10, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0, v9, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->initImageWallpaperCropFile(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 351
    .line 352
    .line 353
    :cond_a
    const-string v4, "android.intent.action.USER_REMOVED"

    .line 354
    .line 355
    invoke-static {v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 356
    .line 357
    .line 358
    move-result-object v4

    .line 359
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 360
    .line 361
    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    .line 362
    .line 363
    invoke-direct {v7, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v5, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 367
    .line 368
    .line 369
    new-instance v4, Landroid/content/IntentFilter;

    .line 370
    .line 371
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    .line 372
    .line 373
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 377
    .line 378
    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    .line 379
    .line 380
    invoke-direct {v7, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v5, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    .line 385
    .line 386
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 387
    .line 388
    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 389
    .line 390
    iget-object v5, v4, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    .line 391
    .line 392
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 393
    .line 394
    .line 395
    move-result-object v5

    .line 396
    iput-object v5, v4, Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    .line 397
    .line 398
    new-instance v5, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;

    .line 399
    .line 400
    invoke-direct {v5, v4}, Lcom/samsung/server/wallpaper/LegibilityColor$SettingsObserver;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;)V

    .line 401
    .line 402
    .line 403
    iget-object v7, v4, Lcom/samsung/server/wallpaper/LegibilityColor;->mContentResolver:Landroid/content/ContentResolver;

    .line 404
    .line 405
    const-string v9, "accelerometer_rotation"

    .line 406
    .line 407
    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    invoke-virtual {v7, v9, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v4, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    .line 415
    .line 416
    .line 417
    move-result v5

    .line 418
    iput-boolean v5, v4, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    .line 419
    .line 420
    invoke-virtual {v4, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->allowScreenRotate(I)Z

    .line 421
    .line 422
    .line 423
    move-result v5

    .line 424
    iput-boolean v5, v4, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    .line 425
    .line 426
    new-instance v4, Landroid/content/IntentFilter;

    .line 427
    .line 428
    const-string v5, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 429
    .line 430
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 434
    .line 435
    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    .line 436
    .line 437
    invoke-direct {v7, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v5, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    .line 442
    .line 443
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$6;

    .line 448
    .line 449
    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$6;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 450
    .line 451
    .line 452
    invoke-interface {v0, v4, v10}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    .line 454
    .line 455
    goto :goto_4

    .line 456
    :catch_0
    move-exception v0

    .line 457
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 458
    .line 459
    .line 460
    :goto_4
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 461
    .line 462
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 463
    .line 464
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    .line 466
    .line 467
    const-string v4, "OMCWallpaper"

    .line 468
    .line 469
    const-string/jumbo v5, "registerOMCWallpaperUpdatedReceiver"

    .line 470
    .line 471
    .line 472
    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    new-instance v5, Landroid/content/IntentFilter;

    .line 476
    .line 477
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 478
    .line 479
    .line 480
    const-string v7, "com.samsung.intent.action.RSCUPDATE_START"

    .line 481
    .line 482
    invoke-virtual {v5, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    new-instance v7, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;

    .line 486
    .line 487
    invoke-direct {v7, v0}, Lcom/samsung/server/wallpaper/OMCWallpaper$OMCWallpaperUpdatedReceiver;-><init>(Lcom/samsung/server/wallpaper/OMCWallpaper;)V

    .line 488
    .line 489
    .line 490
    iget-object v0, v0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    .line 491
    .line 492
    invoke-virtual {v0, v7, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 493
    .line 494
    .line 495
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 496
    .line 497
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 498
    .line 499
    .line 500
    move-result v5

    .line 501
    invoke-virtual {v0, v5, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    const/4 v5, -0x1

    .line 506
    if-eqz v0, :cond_c

    .line 507
    .line 508
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 509
    .line 510
    iget v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 511
    .line 512
    if-ne v0, v5, :cond_b

    .line 513
    .line 514
    goto :goto_5

    .line 515
    :cond_b
    move v1, v3

    .line 516
    :cond_c
    :goto_5
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 517
    .line 518
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 519
    .line 520
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 521
    .line 522
    .line 523
    const-string v0, "checkTSSActivation"

    .line 524
    .line 525
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    new-instance v0, Ljava/io/File;

    .line 529
    .line 530
    new-instance v7, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    .line 534
    .line 535
    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 536
    .line 537
    .line 538
    move-result-object v9

    .line 539
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    const-string v9, "/wallpaper_status"

    .line 543
    .line 544
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v7

    .line 551
    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 555
    .line 556
    .line 557
    move-result v7

    .line 558
    if-eqz v7, :cond_d

    .line 559
    .line 560
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-static {v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 568
    goto :goto_6

    .line 569
    :catch_1
    move-object v0, v2

    .line 570
    goto :goto_6

    .line 571
    :cond_d
    const-string v0, "false"

    .line 572
    .line 573
    :goto_6
    const-string/jumbo v7, "mdc.singlesku.activated"

    .line 574
    .line 575
    .line 576
    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v7

    .line 580
    new-instance v10, Ljava/lang/StringBuilder;

    .line 581
    .line 582
    const-string v11, "checkTSSActivation, old= "

    .line 583
    .line 584
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    const-string v11, ", new="

    .line 591
    .line 592
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 599
    .line 600
    .line 601
    move-result-object v10

    .line 602
    invoke-static {v4, v10}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 606
    .line 607
    .line 608
    move-result v10

    .line 609
    if-nez v10, :cond_11

    .line 610
    .line 611
    iget-object v0, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 612
    .line 613
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 614
    .line 615
    invoke-static {v0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 616
    .line 617
    .line 618
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 619
    .line 620
    if-eqz v1, :cond_e

    .line 621
    .line 622
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 623
    .line 624
    if-nez v1, :cond_e

    .line 625
    .line 626
    invoke-static {v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mhandleOMCWallpaperUpdatedLocked(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 627
    .line 628
    .line 629
    :cond_e
    const-string/jumbo v0, "saveTSSActivation, "

    .line 630
    .line 631
    .line 632
    invoke-virtual {v0, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    new-instance v0, Ljava/io/File;

    .line 640
    .line 641
    new-instance v1, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .line 645
    .line 646
    invoke-static {v3}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 647
    .line 648
    .line 649
    move-result-object v3

    .line 650
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    .line 662
    .line 663
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 664
    .line 665
    .line 666
    goto :goto_7

    .line 667
    :catch_2
    move-exception v1

    .line 668
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 669
    .line 670
    .line 671
    :goto_7
    :try_start_4
    new-instance v1, Ljava/io/FileOutputStream;

    .line 672
    .line 673
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 674
    .line 675
    .line 676
    :try_start_5
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 677
    .line 678
    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 683
    .line 684
    .line 685
    const-string/jumbo v0, "save done"

    .line 686
    .line 687
    .line 688
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 689
    .line 690
    .line 691
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 692
    .line 693
    .line 694
    goto :goto_9

    .line 695
    :catch_3
    move-exception v0

    .line 696
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 697
    .line 698
    .line 699
    goto :goto_9

    .line 700
    :catchall_0
    move-exception p0

    .line 701
    move-object v2, v1

    .line 702
    goto :goto_a

    .line 703
    :catch_4
    move-exception v0

    .line 704
    move-object v2, v1

    .line 705
    goto :goto_8

    .line 706
    :catchall_1
    move-exception p0

    .line 707
    goto :goto_a

    .line 708
    :catch_5
    move-exception v0

    .line 709
    :goto_8
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 710
    .line 711
    .line 712
    if-eqz v2, :cond_f

    .line 713
    .line 714
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 715
    .line 716
    .line 717
    :cond_f
    :goto_9
    invoke-virtual {p0, v7}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    .line 718
    .line 719
    .line 720
    goto :goto_c

    .line 721
    :goto_a
    if-eqz v2, :cond_10

    .line 722
    .line 723
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 724
    .line 725
    .line 726
    goto :goto_b

    .line 727
    :catch_6
    move-exception v0

    .line 728
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 729
    .line 730
    .line 731
    :cond_10
    :goto_b
    throw p0

    .line 732
    :cond_11
    const-string/jumbo v2, "true"

    .line 733
    .line 734
    .line 735
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    if-eqz v2, :cond_12

    .line 740
    .line 741
    iget-object v2, p0, Lcom/samsung/server/wallpaper/OMCWallpaper;->mContext:Landroid/content/Context;

    .line 742
    .line 743
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 744
    .line 745
    .line 746
    move-result-object v2

    .line 747
    const-string/jumbo v3, "tss_activated"

    .line 748
    .line 749
    .line 750
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 751
    .line 752
    .line 753
    move-result v2

    .line 754
    if-eqz v1, :cond_12

    .line 755
    .line 756
    if-ne v2, v5, :cond_12

    .line 757
    .line 758
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/OMCWallpaper;->saveTSSActivationSettings(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    :cond_12
    :goto_c
    return-void

    .line 762
    :catchall_2
    move-exception p0

    .line 763
    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 764
    throw p0

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
