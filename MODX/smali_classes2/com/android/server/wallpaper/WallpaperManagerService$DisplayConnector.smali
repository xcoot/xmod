.class final Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mDimensionsChanged:Z

.field public final mDisplayId:I

.field public mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field public mPaddingChanged:Z

.field public final mToken:Landroid/os/Binder;

.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 5
    .line 6
    new-instance p1, Landroid/os/Binder;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v13, p1

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 8
    .line 9
    const-string v15, "WallpaperManagerService"

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "WallpaperService is not connected yet"

    .line 14
    .line 15
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v12, Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 20
    .line 21
    invoke-direct {v12, v15}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "WPMS.connectLocked-"

    .line 27
    .line 28
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v2, v14, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v12, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 44
    .line 45
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v11, 0x1

    .line 50
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    if-eq v2, v11, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 58
    .line 59
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    .line 70
    .line 71
    invoke-virtual {v0, v2}, Lcom/samsung/server/wallpaper/VirtualDisplayMode;->isVirtualWallpaperDisplay(I)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    const-string v4, "Adding window token: "

    .line 81
    .line 82
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v4, " , wallpaper = "

    .line 91
    .line 92
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 106
    .line 107
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 108
    .line 109
    const/16 v5, 0x7dd

    .line 110
    .line 111
    const/4 v6, 0x0

    .line 112
    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 116
    .line 117
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 118
    .line 119
    iget v5, v14, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 120
    .line 121
    invoke-virtual {v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->isVisibleWhichWhenKeyguardLocked(I)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 126
    .line 127
    .line 128
    iget v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 129
    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    const-string v5, "getDisplayAddressByWhich: which = "

    .line 133
    .line 134
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-static {v15, v4}, Lcom/samsung/server/wallpaper/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 148
    .line 149
    const/16 v16, 0x0

    .line 150
    .line 151
    if-eqz v4, :cond_6

    .line 152
    .line 153
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 154
    .line 155
    if-eqz v4, :cond_3

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_3
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerGlobal;->getPrimaryPhysicalDisplayId()J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    if-eqz v7, :cond_4

    .line 171
    .line 172
    invoke-static {v4, v5}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    goto :goto_1

    .line 177
    :cond_4
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_6

    .line 182
    .line 183
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    array-length v7, v0

    .line 188
    move/from16 v8, v16

    .line 189
    .line 190
    :goto_0
    if-ge v8, v7, :cond_6

    .line 191
    .line 192
    aget-wide v9, v0, v8

    .line 193
    .line 194
    cmp-long v17, v9, v4

    .line 195
    .line 196
    if-eqz v17, :cond_5

    .line 197
    .line 198
    invoke-static {v9, v10}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    goto :goto_1

    .line 203
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    .line 207
    .line 208
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 209
    .line 210
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 211
    .line 212
    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperDisplayAddress(Landroid/os/IBinder;Landroid/view/DisplayAddress;)V

    .line 213
    .line 214
    .line 215
    :cond_7
    invoke-static {}, Lcom/android/window/flags/Flags;->multiCrop()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_8

    .line 220
    .line 221
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 222
    .line 223
    iget-object v4, v14, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 224
    .line 225
    invoke-virtual {v0, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_8

    .line 230
    .line 231
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 232
    .line 233
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 234
    .line 235
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 236
    .line 237
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static/range {p2 .. p2}, Lcom/android/server/wallpaper/WallpaperCropper;->getRelativeCropHints(Lcom/android/server/wallpaper/WallpaperData;)Landroid/util/SparseArray;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperCropHints(Landroid/os/IBinder;Landroid/util/SparseArray;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_8
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 249
    .line 250
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 251
    .line 252
    new-instance v5, Landroid/util/SparseArray;

    .line 253
    .line 254
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowManagerInternal;->setWallpaperCropHints(Landroid/os/IBinder;Landroid/util/SparseArray;)V

    .line 258
    .line 259
    .line 260
    :goto_2
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 261
    .line 262
    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    :try_start_0
    iget-object v2, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 267
    .line 268
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 269
    .line 270
    iget v7, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 271
    .line 272
    iget v8, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 273
    .line 274
    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 275
    .line 276
    iget v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 277
    .line 278
    iget v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 279
    .line 280
    iget-object v6, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    .line 282
    const/16 v5, 0x7dd

    .line 283
    .line 284
    const/16 v17, 0x0

    .line 285
    .line 286
    move-object/from16 v3, p1

    .line 287
    .line 288
    move-object/from16 v18, v6

    .line 289
    .line 290
    move/from16 v6, v17

    .line 291
    .line 292
    move/from16 v17, v11

    .line 293
    .line 294
    move v11, v0

    .line 295
    move-object/from16 v19, v12

    .line 296
    .line 297
    move-object/from16 v12, v18

    .line 298
    .line 299
    :try_start_1
    invoke-interface/range {v2 .. v12}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;IILandroid/app/WallpaperInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    .line 301
    .line 302
    goto :goto_5

    .line 303
    :catch_0
    move-exception v0

    .line 304
    goto :goto_3

    .line 305
    :catch_1
    move-exception v0

    .line 306
    move/from16 v17, v11

    .line 307
    .line 308
    move-object/from16 v19, v12

    .line 309
    .line 310
    :goto_3
    const-string v2, "Failed attaching wallpaper on display"

    .line 311
    .line 312
    invoke-static {v15, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .line 314
    .line 315
    iget-boolean v0, v14, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    .line 316
    .line 317
    if-nez v0, :cond_b

    .line 318
    .line 319
    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 320
    .line 321
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 322
    .line 323
    .line 324
    move-result v0

    .line 325
    add-int/lit8 v0, v0, -0x1

    .line 326
    .line 327
    :goto_4
    if-ltz v0, :cond_a

    .line 328
    .line 329
    iget-object v2, v13, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 330
    .line 331
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 336
    .line 337
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 338
    .line 339
    if-eqz v2, :cond_9

    .line 340
    .line 341
    add-int/lit8 v16, v16, 0x1

    .line 342
    .line 343
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 344
    .line 345
    goto :goto_4

    .line 346
    :cond_a
    if-nez v16, :cond_b

    .line 347
    .line 348
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->CONNECT_LOCKED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 349
    .line 350
    iput-object v0, v14, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 351
    .line 352
    const/4 v4, 0x0

    .line 353
    const/4 v6, 0x0

    .line 354
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 355
    .line 356
    const/4 v2, 0x0

    .line 357
    const/4 v3, 0x0

    .line 358
    const/4 v7, 0x0

    .line 359
    move-object/from16 v5, p2

    .line 360
    .line 361
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    .line 362
    .line 363
    .line 364
    :cond_b
    :goto_5
    invoke-virtual/range {v19 .. v19}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 365
    .line 366
    .line 367
    return-void
.end method

.method public final disconnectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Removing window token: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " , mDisplayId = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 19
    .line 20
    const-string v2, "WallpaperManagerService"

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 40
    .line 41
    invoke-interface {p1, v0}, Landroid/service/wallpaper/IWallpaperService;->detach(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    const-string v0, "connection.mService.destroy() threw a RemoteException"

    .line 47
    .line 48
    invoke-static {v2, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 52
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 53
    .line 54
    return-void
.end method

.method public final ensureStatusHandled()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDisplayId:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDimensionsChanged:Z

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "WallpaperManagerService"

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 19
    .line 20
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 21
    .line 22
    iget v5, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 23
    .line 24
    invoke-interface {v1, v4, v5}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    const-string v4, "Failed to set wallpaper dimensions"

    .line 30
    .line 31
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mDimensionsChanged:Z

    .line 35
    .line 36
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mPaddingChanged:Z

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-interface {v1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception v0

    .line 49
    const-string v1, "Failed to set wallpaper padding"

    .line 50
    .line 51
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    .line 53
    .line 54
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mPaddingChanged:Z

    .line 55
    .line 56
    :cond_1
    return-void
.end method
