.class public final Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCallback:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;

.field public mContext:Landroid/content/Context;

.field public mProviderRequester:Lcom/samsung/server/wallpaper/ProviderRequester;


# direct methods
.method public static isStockLiveWallpaperComponent(Landroid/content/ComponentName;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    const-string v0, "com.samsung.android.wallpaper.live"

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public static recoverComponentNameIfMissed(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "PreloadedLiveWallpaperHelper"

    .line 7
    .line 8
    const-string/jumbo v1, "recoverComponentNameIfMissed: ComponentName is null. Recovering..."

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    const-string v2, "contentType"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    sparse-switch v3, :sswitch_data_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :sswitch_0
    const-string/jumbo v3, "weather"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_4

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    const/4 v2, 0x2

    .line 60
    goto :goto_0

    .line 61
    :sswitch_1
    const-string v3, "infinity"

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-nez v3, :cond_5

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const/4 v2, 0x1

    .line 71
    goto :goto_0

    .line 72
    :sswitch_2
    const-string v3, "layered"

    .line 73
    .line 74
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_6

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_6
    const/4 v2, 0x0

    .line 82
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 83
    .line 84
    .line 85
    const/4 v2, 0x0

    .line 86
    goto :goto_1

    .line 87
    :pswitch_0
    const-string v2, "com.samsung.android.wallpaper.live.weather.effects.WeatherWallpaperService"

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_1
    const-string v2, "com.samsung.android.wallpaper.live.infinity.InfinityWallpaper"

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :pswitch_2
    const-string v2, "com.samsung.android.wallpaper.live.layered.LayeredWallpaperService"

    .line 94
    .line 95
    :goto_1
    if-eqz v2, :cond_7

    .line 96
    .line 97
    new-instance v0, Landroid/content/ComponentName;

    .line 98
    .line 99
    const-string v1, "com.samsung.android.wallpaper.live"

    .line 100
    .line 101
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_7
    const-string/jumbo p0, "recoverComponentNameIfMissed: Failed to recover ComponentName. contentType = "

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :goto_2
    return-void

    .line 118
    nop

    .line 119
    :sswitch_data_0
    .sparse-switch
        -0x2802e50 -> :sswitch_2
        0xa526a28 -> :sswitch_1
        0x48ec37f4 -> :sswitch_0
    .end sparse-switch

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final fetchThumbnailFile(III)Landroid/os/ParcelFileDescriptor;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-string v5, "PreloadedLiveWallpaperHelper"

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v6, "fetchThumbnailFile : mode is missing. which = "

    .line 20
    .line 21
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v5, v4}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->containsLock(I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    iget-object v6, v0, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->mCallback:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;

    .line 39
    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget-object v7, v6, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 47
    .line 48
    invoke-virtual {v7, v4, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->isSystemAndLockPaired(II)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_1

    .line 53
    .line 54
    or-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v4, v1

    .line 58
    :goto_0
    iget-object v6, v6, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 59
    .line 60
    iget-object v6, v6, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 61
    .line 62
    invoke-virtual {v6, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v0, v6}, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->supportsSamsungLiveWallpaperProvider(Lcom/android/server/wallpaper/WallpaperData;)Z

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    const/4 v8, 0x0

    .line 71
    if-nez v7, :cond_2

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, "fetchThumbnailFile : does not support wallpaper provider. wallpaper = "

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {v5, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-object v8

    .line 91
    :cond_2
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 92
    .line 93
    iget-object v9, v6, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 94
    .line 95
    iget-object v9, v9, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 96
    .line 97
    if-nez v9, :cond_3

    .line 98
    .line 99
    move-object v9, v8

    .line 100
    goto :goto_1

    .line 101
    :cond_3
    const-string/jumbo v10, "serviceSettings"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 109
    .line 110
    .line 111
    move-result-wide v10

    .line 112
    iget v6, v6, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 113
    .line 114
    iget-object v0, v0, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->mProviderRequester:Lcom/samsung/server/wallpaper/ProviderRequester;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {v7}, Lcom/samsung/server/wallpaper/ProviderRequester;->isValidComponentName(Landroid/content/ComponentName;)Z

    .line 120
    .line 121
    .line 122
    move-result v12

    .line 123
    const-string v13, "ProviderRequester"

    .line 124
    .line 125
    if-nez v12, :cond_4

    .line 126
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string/jumbo v2, "requestThumbnail : service component is invalid - "

    .line 130
    .line 131
    .line 132
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-static {v13, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    move-object v0, v8

    .line 146
    goto/16 :goto_3

    .line 147
    .line 148
    :cond_4
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v14

    .line 156
    new-instance v15, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string/jumbo v8, "requestThumbnail : "

    .line 159
    .line 160
    .line 161
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v7, ", id="

    .line 168
    .line 169
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string v7, ", which="

    .line 176
    .line 177
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v7, ", srcWhich="

    .line 181
    .line 182
    const-string v8, ", user="

    .line 183
    .line 184
    invoke-static {v1, v4, v7, v8, v15}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v7, ", rotation="

    .line 191
    .line 192
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    invoke-static {v13, v7}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance v7, Landroid/os/Bundle;

    .line 206
    .line 207
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string/jumbo v8, "wallpaper_id"

    .line 211
    .line 212
    .line 213
    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    const-string/jumbo v6, "which"

    .line 217
    .line 218
    .line 219
    invoke-virtual {v7, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    .line 221
    .line 222
    const-string/jumbo v6, "source_which"

    .line 223
    .line 224
    .line 225
    invoke-virtual {v7, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    .line 227
    .line 228
    const-string/jumbo v4, "user_id"

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    .line 233
    .line 234
    const-string/jumbo v4, "rotation"

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    .line 239
    .line 240
    const-string/jumbo v3, "wallpaper_service_class_name"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v7, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    if-eqz v9, :cond_5

    .line 247
    .line 248
    const-string/jumbo v3, "service_settings"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 252
    .line 253
    .line 254
    :cond_5
    const-string v3, "get_thumbnail"

    .line 255
    .line 256
    invoke-virtual {v0, v2, v12, v3, v7}, Lcom/samsung/server/wallpaper/ProviderRequester;->invokeProviderCall(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    if-eqz v0, :cond_6

    .line 261
    .line 262
    const-string/jumbo v2, "thumbnail_file_descriptor"

    .line 263
    .line 264
    .line 265
    const-class v3, Landroid/os/ParcelFileDescriptor;

    .line 266
    .line 267
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_6
    const/4 v0, 0x0

    .line 275
    :goto_2
    if-nez v0, :cond_7

    .line 276
    .line 277
    const-string/jumbo v2, "requestThumbnail : fd is null"

    .line 278
    .line 279
    .line 280
    invoke-static {v13, v2}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    .line 284
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v2, "fetchThumbnailFile : failed to get remote FD. which="

    .line 288
    .line 289
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-static {v5, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const/4 v0, 0x0

    .line 303
    return-object v0

    .line 304
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 305
    .line 306
    .line 307
    move-result-wide v2

    .line 308
    sub-long/2addr v2, v10

    .line 309
    const-string v4, "fetchThumbnailFile : finished. which="

    .line 310
    .line 311
    const-string v6, ", elapsed="

    .line 312
    .line 313
    invoke-static {v1, v4, v2, v3, v6}, Lcom/android/server/UserspaceRebootLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    const-string/jumbo v2, "ms"

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-static {v5, v1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    return-object v0
.end method

.method public final supportsSamsungLiveWallpaperProvider(Lcom/android/server/wallpaper/WallpaperData;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_6

    .line 7
    .line 8
    if-eq v0, v1, :cond_6

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    if-eq v0, v2, :cond_6

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    if-eq v0, v2, :cond_6

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    if-eq v0, v2, :cond_6

    .line 18
    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    if-eq v0, v2, :cond_6

    .line 22
    .line 23
    const/16 v2, 0x3e8

    .line 24
    .line 25
    if-eq v0, v2, :cond_6

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    return v0

    .line 33
    :cond_0
    invoke-static {p1}, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->isStockLiveWallpaperComponent(Landroid/content/ComponentName;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    return v1

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    .line 48
    return v0

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    :try_start_0
    iget-object v5, p0, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v5, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    goto :goto_1

    .line 64
    :catch_0
    move-exception v5

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    const/4 v5, 0x0

    .line 72
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    if-nez v5, :cond_3

    .line 76
    .line 77
    return v0

    .line 78
    :cond_3
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 89
    .line 90
    invoke-virtual {v2, v3, v4, v0}, Landroid/content/pm/PackageManager;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    iget-object p0, p0, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->mProviderRequester:Lcom/samsung/server/wallpaper/ProviderRequester;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const-string p1, ".provider.sepwallpaper"

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, Landroid/content/pm/ProviderInfo;

    .line 131
    .line 132
    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_4

    .line 139
    .line 140
    return v1

    .line 141
    :cond_5
    return v0

    .line 142
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 143
    .line 144
    .line 145
    throw p0

    .line 146
    :cond_6
    return v1
.end method
