.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

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
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const-string v0, "exitReason: "

    .line 9
    .line 10
    const-string v1, "Wallpaper onServiceDisconnected : "

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 18
    .line 19
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 20
    .line 21
    if-ne p0, v4, :cond_5

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 24
    .line 25
    const-string v4, "WallpaperManagerService"

    .line 26
    .line 27
    new-instance v5, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v4, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 43
    .line 44
    iget-boolean v4, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    .line 45
    .line 46
    if-nez v4, :cond_6

    .line 47
    .line 48
    iget v4, v1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 51
    .line 52
    iget v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 53
    .line 54
    if-ne v4, v6, :cond_6

    .line 55
    .line 56
    if-eqz v3, :cond_6

    .line 57
    .line 58
    iget-object v4, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 61
    .line 62
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 63
    .line 64
    invoke-virtual {v4, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_6

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 77
    .line 78
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_6

    .line 83
    .line 84
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 87
    .line 88
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_6

    .line 93
    .line 94
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 95
    .line 96
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 97
    .line 98
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const/4 v4, 0x1

    .line 103
    const/4 v5, 0x0

    .line 104
    invoke-virtual {v1, v3, v5, v4}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-nez v3, :cond_0

    .line 115
    .line 116
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getReason()I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_0
    :goto_0
    const-string v1, "WallpaperManagerService"

    .line 131
    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    const/4 v0, 0x3

    .line 148
    if-ne v5, v0, :cond_3

    .line 149
    .line 150
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    .line 151
    .line 152
    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 153
    .line 154
    .line 155
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 156
    .line 157
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 158
    .line 159
    invoke-virtual {v3, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 160
    .line 161
    .line 162
    iget-wide v5, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 163
    .line 164
    long-to-double v5, v5

    .line 165
    iget-wide v7, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 166
    .line 167
    long-to-double v7, v7

    .line 168
    div-double/2addr v5, v7

    .line 169
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 170
    .line 171
    mul-double/2addr v5, v7

    .line 172
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    .line 173
    .line 174
    cmpg-double v1, v5, v7

    .line 175
    .line 176
    const-wide/16 v5, 0x1388

    .line 177
    .line 178
    if-gez v1, :cond_1

    .line 179
    .line 180
    const-string v1, "WallpaperManagerService"

    .line 181
    .line 182
    const-string v3, "Rebind is delayed due to lmk"

    .line 183
    .line 184
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 188
    .line 189
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 196
    .line 197
    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    .line 199
    .line 200
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_1
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    .line 204
    .line 205
    if-gtz v1, :cond_2

    .line 206
    .line 207
    const-string v1, "WallpaperManagerService"

    .line 208
    .line 209
    const-string v3, "Reverting to built-in wallpaper due to lmk!"

    .line 210
    .line 211
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 215
    .line 216
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 217
    .line 218
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 219
    .line 220
    invoke-virtual {v1, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 221
    .line 222
    .line 223
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    .line 224
    .line 225
    monitor-exit v2

    .line 226
    goto :goto_2

    .line 227
    :cond_2
    sub-int/2addr v1, v4

    .line 228
    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mLmkLimitRebindRetries:I

    .line 229
    .line 230
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 231
    .line 232
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 233
    .line 234
    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 239
    .line 240
    invoke-virtual {v0, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 241
    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 245
    .line 246
    iget-wide v0, v0, Lcom/android/server/wallpaper/WallpaperData;->lastDiedTime:J

    .line 247
    .line 248
    const-wide/16 v3, 0x0

    .line 249
    .line 250
    cmp-long v3, v0, v3

    .line 251
    .line 252
    if-eqz v3, :cond_4

    .line 253
    .line 254
    const-wide/16 v3, 0x2710

    .line 255
    .line 256
    add-long/2addr v0, v3

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 258
    .line 259
    .line 260
    move-result-wide v3

    .line 261
    cmp-long v0, v0, v3

    .line 262
    .line 263
    if-lez v0, :cond_4

    .line 264
    .line 265
    const-string v0, "WallpaperManagerService"

    .line 266
    .line 267
    const-string v1, "Reverting to built-in wallpaper!"

    .line 268
    .line 269
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 273
    .line 274
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 275
    .line 276
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 277
    .line 278
    invoke-virtual {v0, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 279
    .line 280
    .line 281
    goto :goto_1

    .line 282
    :cond_4
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 283
    .line 284
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 285
    .line 286
    .line 287
    move-result-wide v3

    .line 288
    iput-wide v3, v0, Lcom/android/server/wallpaper/WallpaperData;->lastDiedTime:J

    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->tryToRebind()V

    .line 291
    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_5
    const-string p0, "WallpaperManagerService"

    .line 295
    .line 296
    const-string v0, "Wallpaper changed during disconnect tracking; ignoring"

    .line 297
    .line 298
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .line 300
    .line 301
    :cond_6
    :goto_1
    monitor-exit v2

    .line 302
    :goto_2
    return-void

    .line 303
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    throw p0

    .line 305
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->tryToRebind()V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :pswitch_1
    const-string v0, "Wallpaper reconnect timed out for "

    .line 310
    .line 311
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 312
    .line 313
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 314
    .line 315
    monitor-enter v1

    .line 316
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 317
    .line 318
    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 319
    .line 320
    if-eqz v3, :cond_7

    .line 321
    .line 322
    const-string p0, "WallpaperManagerService"

    .line 323
    .line 324
    const-string v0, "Ignoring relaunch timeout during shutdown"

    .line 325
    .line 326
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .line 328
    .line 329
    monitor-exit v1

    .line 330
    goto :goto_4

    .line 331
    :catchall_1
    move-exception p0

    .line 332
    goto :goto_5

    .line 333
    :cond_7
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 334
    .line 335
    iget-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    .line 336
    .line 337
    if-nez v4, :cond_8

    .line 338
    .line 339
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 340
    .line 341
    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 342
    .line 343
    if-ne v3, v2, :cond_8

    .line 344
    .line 345
    const-string v2, "WallpaperManagerService"

    .line 346
    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 353
    .line 354
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 355
    .line 356
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v0, ", reverting to built-in wallpaper!"

    .line 360
    .line 361
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v0

    .line 368
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 372
    .line 373
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 374
    .line 375
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 376
    .line 377
    invoke-virtual {v0, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 378
    .line 379
    .line 380
    :cond_8
    monitor-exit v1

    .line 381
    :goto_4
    return-void

    .line 382
    :goto_5
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    throw p0

    .line 384
    nop

    .line 385
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
