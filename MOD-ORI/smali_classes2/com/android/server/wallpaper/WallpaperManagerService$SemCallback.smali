.class public final Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;
    .locals 10

    .line 1
    const-string v0, "calcSemWallpaperColors: mode mismatched. which="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 18
    .line 19
    invoke-virtual {v2, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getSourceWhich(II)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const-string v3, "WallpaperManagerService"

    .line 24
    .line 25
    const-string v4, "calcSemWallpaperColors: which = "

    .line 26
    .line 27
    const-string v5, ", sourceWhich = "

    .line 28
    .line 29
    const-string v6, ", rotation = "

    .line 30
    .line 31
    invoke-static {p1, v2, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v3, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 46
    .line 47
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v3

    .line 50
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 51
    .line 52
    invoke-virtual {v4, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x0

    .line 57
    if-nez v4, :cond_0

    .line 58
    .line 59
    const-string p0, "WallpaperManagerService"

    .line 60
    .line 61
    const-string p1, "calcSemWallpaperColors: failed to get source wallpaper data"

    .line 62
    .line 63
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    monitor-exit v3

    .line 67
    return-object v5

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto/16 :goto_4

    .line 70
    .line 71
    :cond_0
    iget-object v6, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 72
    .line 73
    iget v6, v6, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 74
    .line 75
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 76
    .line 77
    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 78
    .line 79
    iget-object v7, v7, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLiveWallpaperHelper:Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;

    .line 80
    .line 81
    invoke-virtual {v7, v4}, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->supportsSamsungLiveWallpaperProvider(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 86
    .line 87
    iget v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 88
    .line 89
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    invoke-static {v4}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-eq v8, v9, :cond_1

    .line 98
    .line 99
    const-string v8, "WallpaperManagerService"

    .line 100
    .line 101
    new-instance v9, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, ", semData.which"

    .line 110
    .line 111
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v8, v0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v0, 0x0

    .line 126
    if-eqz v7, :cond_5

    .line 127
    .line 128
    const/16 v3, 0x5a

    .line 129
    .line 130
    if-ne p2, v3, :cond_2

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    const/16 v3, 0xb4

    .line 135
    .line 136
    if-ne p2, v3, :cond_3

    .line 137
    .line 138
    const/4 v3, 0x2

    .line 139
    goto :goto_0

    .line 140
    :cond_3
    const/16 v3, 0x10e

    .line 141
    .line 142
    if-ne p2, v3, :cond_4

    .line 143
    .line 144
    const/4 v3, 0x3

    .line 145
    goto :goto_0

    .line 146
    :cond_4
    move v3, v0

    .line 147
    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getSourceWhich(I)I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 152
    .line 153
    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 154
    .line 155
    invoke-virtual {v7, v4, v1, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getThumbnailFile(III)Ljava/io/File;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    if-eqz v3, :cond_5

    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_5

    .line 166
    .line 167
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 172
    .line 173
    .line 174
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    goto :goto_1

    .line 176
    :catch_0
    move-exception v1

    .line 177
    move-object v3, v5

    .line 178
    goto :goto_2

    .line 179
    :cond_5
    move-object v3, v5

    .line 180
    :goto_1
    if-nez v3, :cond_6

    .line 181
    .line 182
    const/4 v4, 0x7

    .line 183
    if-ne v6, v4, :cond_6

    .line 184
    .line 185
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 186
    .line 187
    invoke-virtual {v4, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-eqz v1, :cond_6

    .line 192
    .line 193
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 194
    .line 195
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v1, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 206
    .line 207
    if-eqz v1, :cond_6

    .line 208
    .line 209
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v1, v4, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 218
    .line 219
    .line 220
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    goto :goto_3

    .line 222
    :catch_1
    move-exception v1

    .line 223
    :goto_2
    const-string v4, "WallpaperManagerService"

    .line 224
    .line 225
    new-instance v6, Ljava/lang/StringBuilder;

    .line 226
    .line 227
    const-string v7, "calcSemWallpaperColors: e="

    .line 228
    .line 229
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    invoke-static {v4, v1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    .line 243
    .line 244
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_7

    .line 249
    .line 250
    const-string v0, "WallpaperManagerService"

    .line 251
    .line 252
    const-string v1, "calcSemWallpaperColors: sourceWhich="

    .line 253
    .line 254
    const-string v4, ", bitmap="

    .line 255
    .line 256
    invoke-static {v2, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    const-string/jumbo v2, "x"

    .line 268
    .line 269
    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 274
    .line 275
    .line 276
    move-result v2

    .line 277
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 288
    .line 289
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 290
    .line 291
    invoke-static {p0, v3, p1, p2, v5}, Landroid/app/SemWallpaperColors;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II[Landroid/graphics/Rect;)Landroid/app/SemWallpaperColors;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 296
    .line 297
    .line 298
    return-object p0

    .line 299
    :cond_7
    const-string p0, "WallpaperManagerService"

    .line 300
    .line 301
    new-instance p2, Ljava/lang/StringBuilder;

    .line 302
    .line 303
    const-string v1, "calcSemWallpaperColors: sourceWhich="

    .line 304
    .line 305
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    const-string v1, ", noBitmap"

    .line 312
    .line 313
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p2

    .line 320
    invoke-static {p0, p2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    new-instance p0, Landroid/app/SemWallpaperColors$Builder;

    .line 324
    .line 325
    invoke-direct {p0}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    .line 326
    .line 327
    .line 328
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    .line 329
    .line 330
    .line 331
    move-result p1

    .line 332
    invoke-virtual {p0, p1}, Landroid/app/SemWallpaperColors$Builder;->setWhich(I)Landroid/app/SemWallpaperColors$Builder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    .line 339
    .line 340
    .line 341
    move-result-object p0

    .line 342
    return-object p0

    .line 343
    :goto_4
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 344
    throw p0
.end method

.method public final handleWallpaperBindingTimeout()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 16
    .line 17
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 21
    .line 22
    .line 23
    move-result-object v8

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 39
    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;->isBinderAlive()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string p0, "WallpaperManagerService"

    .line 52
    .line 53
    const-string/jumbo v0, "wallpaper binded already!"

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    :goto_0
    const-string v0, "WallpaperManagerService"

    .line 61
    .line 62
    const-string/jumbo v1, "trying to bind wallpaperComponent with timeout"

    .line 63
    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 69
    .line 70
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v1

    .line 73
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 74
    .line 75
    iget-object v5, v8, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 76
    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v9, 0x0

    .line 79
    const/4 v10, 0x0

    .line 80
    const/4 v6, 0x1

    .line 81
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    .line 82
    .line 83
    .line 84
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 86
    .line 87
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 90
    .line 91
    iput-boolean v3, v0, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    .line 92
    .line 93
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;

    .line 94
    .line 95
    const/16 v0, 0x3f1

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    .line 99
    .line 100
    const-wide/16 v1, 0x7d0

    .line 101
    .line 102
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 103
    .line 104
    .line 105
    :goto_1
    return-void

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw p0

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 111
    throw p0
.end method

.method public final notifySemWallpaperColors(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const-string p0, "WallpaperManagerService"

    .line 19
    .line 20
    const-string/jumbo p1, "notifySemWallpaperColors, wallpaper == null"

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 34
    .line 35
    .line 36
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final onBindWallpaperRequested(II)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    const-string/jumbo v9, "onBindWallpaperRequested: which = "

    .line 8
    .line 9
    .line 10
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 24
    .line 25
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v7, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 30
    .line 31
    .line 32
    move-result-object v15

    .line 33
    const-string v1, "WallpaperManagerService"

    .line 34
    .line 35
    const-string/jumbo v2, "onBindWallpaperRequested: userId = "

    .line 36
    .line 37
    .line 38
    const-string v3, ", which = "

    .line 39
    .line 40
    const-string v4, " , wallpaper = "

    .line 41
    .line 42
    invoke-static {v7, v8, v2, v3, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    if-nez v15, :cond_1

    .line 57
    .line 58
    const-string v0, "WallpaperManagerService"

    .line 59
    .line 60
    const-string/jumbo v1, "onBindWallpaperRequested: wallpaper is null."

    .line 61
    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    iget v10, v15, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 68
    .line 69
    iget-object v11, v15, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 70
    .line 71
    new-instance v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 72
    .line 73
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 74
    .line 75
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-direct {v14, v1, v15, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V

    .line 80
    .line 81
    .line 82
    iget-object v1, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 83
    .line 84
    iget-object v6, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 85
    .line 86
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 87
    .line 88
    iget v4, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 89
    .line 90
    move-object v1, v2

    .line 91
    move/from16 v2, p1

    .line 92
    .line 93
    move/from16 v3, p2

    .line 94
    .line 95
    move-object v5, v11

    .line 96
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->invokePrepare(IIILandroid/content/ComponentName;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget-object v2, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 101
    .line 102
    iget v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 103
    .line 104
    const/4 v3, 0x7

    .line 105
    if-ne v2, v3, :cond_4

    .line 106
    .line 107
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    iget-object v2, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 113
    .line 114
    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 115
    .line 116
    const-string v3, "contentAttributes"

    .line 117
    .line 118
    if-nez v2, :cond_3

    .line 119
    .line 120
    if-nez v1, :cond_2

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    .line 124
    .line 125
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 126
    .line 127
    .line 128
    iget-object v4, v15, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 129
    .line 130
    iput-object v2, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :goto_1
    if-eqz v1, :cond_4

    .line 137
    .line 138
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-nez v4, :cond_4

    .line 143
    .line 144
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    :cond_4
    :goto_2
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 148
    .line 149
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter v1

    .line 152
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 153
    .line 154
    .line 155
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    invoke-static/range {p2 .. p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->canBindComponentNow(I)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-eqz v4, :cond_5

    .line 166
    .line 167
    iput v8, v15, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 168
    .line 169
    const-string v4, "WallpaperManagerService"

    .line 170
    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 187
    .line 188
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 189
    .line 190
    invoke-virtual {v4, v8, v7}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    .line 191
    .line 192
    .line 193
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 194
    .line 195
    .line 196
    move-result v4

    .line 197
    if-eqz v4, :cond_6

    .line 198
    .line 199
    if-gez v10, :cond_6

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperFlagUpdated(II)V

    .line 202
    .line 203
    .line 204
    :cond_5
    move-object v5, v14

    .line 205
    move-object v6, v15

    .line 206
    goto :goto_3

    .line 207
    :catchall_0
    move-exception v0

    .line 208
    goto :goto_5

    .line 209
    :cond_6
    iget-object v10, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 210
    .line 211
    if-nez v11, :cond_7

    .line 212
    .line 213
    iget-object v4, v10, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 214
    .line 215
    move-object v11, v4

    .line 216
    :cond_7
    const/4 v13, 0x0

    .line 217
    const/4 v4, 0x0

    .line 218
    const/16 v16, 0x0

    .line 219
    .line 220
    const/4 v12, 0x1

    .line 221
    move-object v5, v14

    .line 222
    move-object v14, v15

    .line 223
    move-object v6, v15

    .line 224
    move-object v15, v4

    .line 225
    invoke-virtual/range {v10 .. v16}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    .line 227
    .line 228
    :goto_3
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->complete()V

    .line 232
    .line 233
    .line 234
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_8

    .line 239
    .line 240
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 241
    .line 242
    invoke-virtual {v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 243
    .line 244
    .line 245
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 246
    .line 247
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 248
    .line 249
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    invoke-virtual {v2, v7, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 258
    .line 259
    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 260
    .line 261
    .line 262
    goto :goto_4

    .line 263
    :catchall_1
    move-exception v0

    .line 264
    goto :goto_6

    .line 265
    :cond_8
    :goto_4
    monitor-exit v1

    .line 266
    return-void

    .line 267
    :goto_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    .line 269
    .line 270
    throw v0

    .line 271
    :goto_6
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    throw v0
.end method

.method public final onDetachWallpaper(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLastWallpaper(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final onLockWallpaperChanged(IILandroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 16
    .line 17
    iget p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onSetWallpaperComponent(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 8

    .line 1
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    iget v4, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 4
    .line 5
    iget v5, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :goto_0
    move-object v6, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :goto_1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 24
    .line 25
    const-string v1, "isPreloaded"

    .line 26
    .line 27
    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 31
    .line 32
    iget-object v3, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 33
    .line 34
    const-string/jumbo v0, "onSetWallpaperComponent: userId = "

    .line 35
    .line 36
    .line 37
    const-string v1, ", which = "

    .line 38
    .line 39
    const-string v7, ", extras = "

    .line 40
    .line 41
    invoke-static {v5, v4, v0, v1, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", componentName = "

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", isPreloaded = "

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 62
    .line 63
    iget-boolean p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, ", fromForeground = false, reply = null, callingPackage = "

    .line 69
    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "WallpaperManagerService"

    .line 81
    .line 82
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    new-instance p1, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;

    .line 86
    .line 87
    move-object v0, p1

    .line 88
    move-object v1, p0

    .line 89
    invoke-direct/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Landroid/content/ComponentName;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method public final onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 15
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-object v1

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw p0
.end method

.method public final onWallpaperFlagUpdated(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onWallpaperFlagUpdated: which = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "WallpaperManagerService"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 41
    .line 42
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget p1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 58
    .line 59
    or-int/lit8 p1, p1, 0x2

    .line 60
    .line 61
    iput p1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    return-void
.end method

.method public final updateDisplayData()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "WallpaperManagerService"

    .line 8
    .line 9
    const-string/jumbo v0, "updateDisplayData: display helper is not ready yet"

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "WallpaperManagerService"

    .line 17
    .line 18
    const-string/jumbo v1, "updateDisplayData"

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 32
    .line 33
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int/lit8 v2, v2, -0x1

    .line 40
    .line 41
    :goto_0
    if-ltz v2, :cond_1

    .line 42
    .line 43
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 50
    .line 51
    const/4 v4, -0x1

    .line 52
    iput v4, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 53
    .line 54
    iput v4, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 55
    .line 56
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperDisplayHelper:Lcom/android/server/wallpaper/WallpaperDisplayHelper;

    .line 59
    .line 60
    iget v5, v3, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mDisplayId:I

    .line 61
    .line 62
    invoke-virtual {v4, v3, v5}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;I)V

    .line 63
    .line 64
    .line 65
    add-int/lit8 v2, v2, -0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p0
.end method

.method public final updateEvent(ILjava/lang/String;Ljava/io/File;ZZ)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move/from16 v1, p4

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    move/from16 v3, p5

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 12
    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const-string/jumbo v5, "wallpaper_desktop"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0x8

    .line 28
    .line 29
    if-eqz v4, :cond_0

    .line 30
    .line 31
    move v4, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const-string/jumbo v6, "wallpaper_sub_display"

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 45
    .line 46
    const/16 v4, 0x10

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const-string/jumbo v6, "wallpaper_virtual_display"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    const/16 v4, 0x20

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/4 v4, 0x4

    .line 66
    :goto_0
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 69
    .line 70
    iget-object v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v6

    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    :try_start_0
    iget-object v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 78
    .line 79
    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 80
    .line 81
    iget v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 82
    .line 83
    invoke-virtual {v8, v9, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    goto :goto_1

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    goto/16 :goto_11

    .line 90
    .line 91
    :cond_3
    const/4 v8, 0x0

    .line 92
    :goto_1
    if-nez v8, :cond_4

    .line 93
    .line 94
    iget-object v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 97
    .line 98
    iget-object v8, v8, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 99
    .line 100
    iget v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 101
    .line 102
    invoke-virtual {v8, v9, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    if-eqz v8, :cond_5

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 111
    .line 112
    move-object v8, v6

    .line 113
    check-cast v8, Lcom/android/server/wallpaper/WallpaperData;

    .line 114
    .line 115
    :goto_2
    const/16 v6, 0x80

    .line 116
    .line 117
    if-ne v0, v6, :cond_6

    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    goto :goto_3

    .line 121
    :cond_6
    const/4 v6, 0x0

    .line 122
    :goto_3
    if-eq v0, v5, :cond_8

    .line 123
    .line 124
    if-eqz v6, :cond_7

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_7
    const/4 v10, 0x0

    .line 128
    goto :goto_5

    .line 129
    :cond_8
    :goto_4
    const/4 v10, 0x1

    .line 130
    :goto_5
    if-eqz v6, :cond_9

    .line 131
    .line 132
    if-eqz v3, :cond_9

    .line 133
    .line 134
    const/4 v11, 0x1

    .line 135
    goto :goto_6

    .line 136
    :cond_9
    const/4 v11, 0x0

    .line 137
    :goto_6
    if-eqz v6, :cond_a

    .line 138
    .line 139
    if-nez v11, :cond_a

    .line 140
    .line 141
    const/4 v6, 0x1

    .line 142
    goto :goto_7

    .line 143
    :cond_a
    const/4 v6, 0x0

    .line 144
    :goto_7
    iget v12, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 145
    .line 146
    and-int/lit8 v12, v12, 0x2

    .line 147
    .line 148
    if-eqz v12, :cond_b

    .line 149
    .line 150
    const/4 v14, 0x1

    .line 151
    goto :goto_8

    .line 152
    :cond_b
    const/4 v14, 0x0

    .line 153
    :goto_8
    iget-object v12, v8, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 154
    .line 155
    if-eqz v12, :cond_d

    .line 156
    .line 157
    if-ne v0, v5, :cond_d

    .line 158
    .line 159
    iget-boolean v5, v8, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 160
    .line 161
    if-eqz v5, :cond_c

    .line 162
    .line 163
    goto :goto_9

    .line 164
    :cond_c
    const/4 v5, 0x0

    .line 165
    goto :goto_a

    .line 166
    :cond_d
    :goto_9
    const/4 v5, 0x1

    .line 167
    :goto_a
    if-eqz v11, :cond_e

    .line 168
    .line 169
    goto/16 :goto_f

    .line 170
    .line 171
    :cond_e
    if-nez v1, :cond_f

    .line 172
    .line 173
    if-nez v3, :cond_f

    .line 174
    .line 175
    goto/16 :goto_f

    .line 176
    .line 177
    :cond_f
    const-string v12, "WallpaperManagerService"

    .line 178
    .line 179
    const-string v13, "Wallpaper file change: evt="

    .line 180
    .line 181
    const-string v15, " path="

    .line 182
    .line 183
    const-string v9, " sys="

    .line 184
    .line 185
    move-object/from16 v7, p2

    .line 186
    .line 187
    invoke-static {v0, v13, v15, v7, v9}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    const-string v7, " lock="

    .line 192
    .line 193
    const-string v9, " imagePending="

    .line 194
    .line 195
    invoke-static {v0, v1, v7, v3, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    iget-boolean v7, v8, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 199
    .line 200
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v7, " mWhich=0x"

    .line 204
    .line 205
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    iget v7, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 209
    .line 210
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v7

    .line 214
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v7, " written="

    .line 218
    .line 219
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v7, " isMigration="

    .line 226
    .line 227
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v7, " isRestore="

    .line 231
    .line 232
    const-string v9, " isAppliedToLock="

    .line 233
    .line 234
    invoke-static {v0, v11, v7, v6, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    const-string v7, " needsUpdate="

    .line 241
    .line 242
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    .line 254
    .line 255
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 258
    .line 259
    iget-object v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 260
    .line 261
    monitor-enter v7

    .line 262
    :try_start_1
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 265
    .line 266
    invoke-virtual {v0, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 267
    .line 268
    .line 269
    if-eqz v10, :cond_1b

    .line 270
    .line 271
    if-nez v5, :cond_10

    .line 272
    .line 273
    goto/16 :goto_e

    .line 274
    .line 275
    :cond_10
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 276
    .line 277
    if-eqz v0, :cond_11

    .line 278
    .line 279
    const/4 v0, 0x0

    .line 280
    iput-object v0, v8, Lcom/android/server/wallpaper/WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 281
    .line 282
    goto :goto_b

    .line 283
    :catchall_1
    move-exception v0

    .line 284
    goto/16 :goto_10

    .line 285
    .line 286
    :cond_11
    :goto_b
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 287
    .line 288
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 291
    .line 292
    iget v5, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 293
    .line 294
    iget v9, v8, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 295
    .line 296
    invoke-virtual {v0, v5, v9}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    .line 297
    .line 298
    .line 299
    if-eqz v1, :cond_13

    .line 300
    .line 301
    iget v0, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 302
    .line 303
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    if-nez v0, :cond_12

    .line 308
    .line 309
    iget v0, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 310
    .line 311
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-eqz v0, :cond_13

    .line 316
    .line 317
    :cond_12
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 318
    .line 319
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 320
    .line 321
    iget-object v5, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 322
    .line 323
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 324
    .line 325
    iget v9, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 326
    .line 327
    invoke-virtual {v0, v5, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(II)V

    .line 328
    .line 329
    .line 330
    :cond_13
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 333
    .line 334
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 335
    .line 336
    const/4 v9, 0x0

    .line 337
    iput-object v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mPendingMigrationViaStatic:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 338
    .line 339
    invoke-static/range {p3 .. p3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 340
    .line 341
    .line 342
    if-eqz v6, :cond_14

    .line 343
    .line 344
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 347
    .line 348
    iget v6, v8, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 349
    .line 350
    const/4 v9, 0x3

    .line 351
    const/4 v10, 0x1

    .line 352
    invoke-virtual {v0, v6, v9, v4, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IIIZ)V

    .line 353
    .line 354
    .line 355
    :cond_14
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 358
    .line 359
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperCropper:Lcom/android/server/wallpaper/WallpaperCropper;

    .line 360
    .line 361
    invoke-virtual {v0, v8}, Lcom/android/server/wallpaper/WallpaperCropper;->generateCrop(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 362
    .line 363
    .line 364
    const/4 v0, 0x0

    .line 365
    iput-boolean v0, v8, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 366
    .line 367
    if-eqz v1, :cond_15

    .line 368
    .line 369
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;

    .line 370
    .line 371
    const/4 v6, 0x0

    .line 372
    invoke-direct {v1, v2, v8, v6}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;I)V

    .line 373
    .line 374
    .line 375
    sget-object v6, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 376
    .line 377
    iput-object v6, v8, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 378
    .line 379
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 380
    .line 381
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 382
    .line 383
    iget v9, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 384
    .line 385
    or-int/2addr v9, v4

    .line 386
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 387
    .line 388
    .line 389
    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->canBindComponentNow(I)Z

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    if-eqz v6, :cond_15

    .line 394
    .line 395
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 396
    .line 397
    move-object v9, v6

    .line 398
    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 399
    .line 400
    iget-object v10, v9, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 401
    .line 402
    const/4 v11, 0x1

    .line 403
    const/4 v12, 0x0

    .line 404
    const/4 v15, 0x0

    .line 405
    move-object v13, v8

    .line 406
    move v6, v14

    .line 407
    move-object v14, v1

    .line 408
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    .line 409
    .line 410
    .line 411
    goto :goto_c

    .line 412
    :cond_15
    move v6, v14

    .line 413
    :goto_c
    if-eqz v3, :cond_17

    .line 414
    .line 415
    new-instance v14, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;

    .line 416
    .line 417
    const/4 v0, 0x1

    .line 418
    invoke-direct {v14, v2, v8, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;I)V

    .line 419
    .line 420
    .line 421
    sget-object v0, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SET_STATIC:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 422
    .line 423
    iput-object v0, v8, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 424
    .line 425
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 426
    .line 427
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 428
    .line 429
    iget v1, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 430
    .line 431
    or-int/2addr v1, v4

    .line 432
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    .line 434
    .line 435
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->canBindComponentNow(I)Z

    .line 436
    .line 437
    .line 438
    move-result v0

    .line 439
    if-eqz v0, :cond_16

    .line 440
    .line 441
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 442
    .line 443
    move-object v9, v0

    .line 444
    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 445
    .line 446
    iget-object v10, v9, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 447
    .line 448
    const/4 v11, 0x1

    .line 449
    const/4 v12, 0x0

    .line 450
    const/4 v15, 0x0

    .line 451
    move-object v13, v8

    .line 452
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    .line 453
    .line 454
    .line 455
    :cond_16
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 456
    .line 457
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 458
    .line 459
    iget-object v1, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 460
    .line 461
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 462
    .line 463
    or-int/lit8 v3, v4, 0x2

    .line 464
    .line 465
    const/4 v4, 0x0

    .line 466
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 467
    .line 468
    .line 469
    goto :goto_d

    .line 470
    :cond_17
    if-eqz v6, :cond_19

    .line 471
    .line 472
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 473
    .line 474
    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 475
    .line 476
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 477
    .line 478
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    .line 481
    .line 482
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 483
    .line 484
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    if-eqz v1, :cond_19

    .line 489
    .line 490
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 491
    .line 492
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 493
    .line 494
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 495
    .line 496
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 497
    .line 498
    invoke-virtual {v6, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 499
    .line 500
    .line 501
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 502
    .line 503
    const/4 v9, -0x1

    .line 504
    iput v9, v6, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 505
    .line 506
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    .line 507
    .line 508
    .line 509
    iget-object v6, v8, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 510
    .line 511
    invoke-virtual {v6, v0}, Lcom/samsung/server/wallpaper/SemWallpaperData;->getLastCallingPackage(Z)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    invoke-virtual {v1, v6}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 521
    .line 522
    or-int/lit8 v4, v4, 0x2

    .line 523
    .line 524
    const/4 v10, 0x0

    .line 525
    invoke-virtual {v6, v9, v4, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 526
    .line 527
    .line 528
    if-eqz v3, :cond_18

    .line 529
    .line 530
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 531
    .line 532
    iput-object v3, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 533
    .line 534
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 535
    .line 536
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 537
    .line 538
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 539
    .line 540
    iget v4, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 541
    .line 542
    invoke-virtual {v3, v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDisplayId(I)I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    invoke-virtual {v0, v3, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 547
    .line 548
    .line 549
    goto :goto_d

    .line 550
    :cond_18
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 551
    .line 552
    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 553
    .line 554
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 555
    .line 556
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 557
    .line 558
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 559
    .line 560
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 561
    .line 562
    invoke-virtual {v3, v1, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 563
    .line 564
    .line 565
    :cond_19
    :goto_d
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 566
    .line 567
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 568
    .line 569
    iget v1, v8, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 570
    .line 571
    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 572
    .line 573
    .line 574
    if-eqz v5, :cond_1a

    .line 575
    .line 576
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->complete()V

    .line 577
    .line 578
    .line 579
    :cond_1a
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 580
    invoke-static {}, Lcom/android/window/flags/Flags;->offloadColorExtraction()Z

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    if-nez v0, :cond_1c

    .line 585
    .line 586
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 587
    .line 588
    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 589
    .line 590
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 591
    .line 592
    .line 593
    iget v1, v8, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 594
    .line 595
    invoke-virtual {v0, v1, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 596
    .line 597
    .line 598
    goto :goto_f

    .line 599
    :cond_1b
    :goto_e
    :try_start_2
    monitor-exit v7

    .line 600
    :cond_1c
    :goto_f
    return-void

    .line 601
    :goto_10
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 602
    throw v0

    .line 603
    :goto_11
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 604
    throw v0
.end method
