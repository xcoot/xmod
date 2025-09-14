.class public final Lcom/samsung/server/wallpaper/LegibilityColor$2;
.super Landroid/os/AsyncTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

.field public final synthetic val$landscape:Z

.field public final synthetic val$which:I


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/LegibilityColor;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 2
    .line 3
    iput p2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    const-string p1, "LegibilityColor"

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "extractColor start which = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", landscape = "

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    .line 41
    .line 42
    const/16 v2, 0x5a

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 47
    .line 48
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    new-array p1, v0, [Landroid/app/SemWallpaperColors;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 60
    .line 61
    iget v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 62
    .line 63
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    aput-object v0, p1, v1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    const/4 p1, 0x2

    .line 71
    new-array p1, p1, [Landroid/app/SemWallpaperColors;

    .line 72
    .line 73
    iget-object v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 74
    .line 75
    iget-object v3, v3, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 76
    .line 77
    iget v4, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 78
    .line 79
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    aput-object v2, p1, v1

    .line 84
    .line 85
    iget-object v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 88
    .line 89
    iget v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 90
    .line 91
    const/16 v4, 0x10e

    .line 92
    .line 93
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    aput-object v2, p1, v0

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    new-array p1, v0, [Landroid/app/SemWallpaperColors;

    .line 101
    .line 102
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 105
    .line 106
    iget v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->calcSemWallpaperColors(II)Landroid/app/SemWallpaperColors;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    aput-object v0, p1, v1

    .line 113
    .line 114
    :goto_1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    const-string p1, "LegibilityColor"

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v1, "doInBackground: this task is cancelled, which = "

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 130
    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :cond_3
    const-string v0, "LegibilityColor"

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v3, "extractColor end which = "

    .line 148
    .line 149
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 153
    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    aget-object v0, p1, v1

    .line 165
    .line 166
    if-nez v0, :cond_4

    .line 167
    .line 168
    const-string p0, "LegibilityColor"

    .line 169
    .line 170
    const-string p1, "colors == null, return"

    .line 171
    .line 172
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :cond_4
    iget-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 178
    .line 179
    iget-object v0, v0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 180
    .line 181
    iget v2, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 182
    .line 183
    iget-boolean v3, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$landscape:Z

    .line 184
    .line 185
    const-string/jumbo v4, "saveSemWallpaperColors "

    .line 186
    .line 187
    .line 188
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 189
    .line 190
    iget-object v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 191
    .line 192
    monitor-enter v5

    .line 193
    :try_start_0
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 194
    .line 195
    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    invoke-virtual {v6, v7, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    if-nez v6, :cond_5

    .line 204
    .line 205
    const-string p1, "WallpaperManagerService"

    .line 206
    .line 207
    const-string/jumbo v0, "saveSemWallpaperColors, wallpaper == null"

    .line 208
    .line 209
    .line 210
    invoke-static {p1, v0}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    monitor-exit v5

    .line 214
    goto :goto_3

    .line 215
    :catchall_0
    move-exception p0

    .line 216
    goto :goto_5

    .line 217
    :cond_5
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 218
    .line 219
    if-eqz v3, :cond_6

    .line 220
    .line 221
    iput-object p1, v7, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_6
    aget-object v8, p1, v1

    .line 225
    .line 226
    iput-object v8, v7, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 227
    .line 228
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 229
    .line 230
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 231
    .line 232
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 233
    .line 234
    iget v0, v6, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 235
    .line 236
    iget v6, v7, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 237
    .line 238
    invoke-static {v0, v6, v3}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const-string v3, "WallpaperManagerService"

    .line 243
    .line 244
    new-instance v6, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    const-string v2, ", "

    .line 253
    .line 254
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-static {v3, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    aget-object p1, p1, v1

    .line 268
    .line 269
    invoke-virtual {p1, v0}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    :goto_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :goto_3
    iget-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->this$0:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 274
    .line 275
    iget-object p1, p1, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 276
    .line 277
    iget v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 278
    .line 279
    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 280
    .line 281
    .line 282
    const-string p1, "LegibilityColor"

    .line 283
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string/jumbo v1, "notifyColor end which = "

    .line 287
    .line 288
    .line 289
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    iget p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor$2;->val$which:I

    .line 293
    .line 294
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    :goto_4
    const/4 p0, 0x0

    .line 305
    return-object p0

    .line 306
    :goto_5
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    throw p0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    .line 3
    return-void
.end method
