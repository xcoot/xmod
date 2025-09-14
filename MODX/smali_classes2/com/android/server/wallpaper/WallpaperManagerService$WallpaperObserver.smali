.class public final Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mSemObserver:Ljava/lang/Object;

.field public final mUserId:I

.field public final mWallpaper:Ljava/lang/Object;

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 2
    iget v0, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 3
    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    .line 4
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "wallpaper_orig"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "wallpaper_lock_orig"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;

    iget p2, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    move-result-object p2

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-direct {v2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-direct {v1, v0, p2, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SemWallpaperObserver;-><init>(Ljava/io/File;Ljava/io/File;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 9
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 10
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget p2, p2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object p1

    .line 11
    new-instance p2, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p2, p1}, Lcom/android/server/wallpaper/WallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperData;)V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Ljava/lang/Object;

    .line 12
    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 13
    const-string p0, "WallpaperDestinationChangeHandler: mode = "

    const-string p1, "WallpaperManagerService"

    .line 14
    invoke-static {p3, p0, p1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Ljava/lang/Object;

    .line 23
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 24
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public static print(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperData;I)V
    .locals 4

    .line 1
    const-string v0, " User "

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 9
    .line 10
    .line 11
    const-string v0, ": id="

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 19
    .line 20
    .line 21
    const-string v0, ", hash=@"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 31
    .line 32
    .line 33
    const-string v0, "  mWhich="

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "  mCropHint="

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    const-string v0, "  mName="

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->name:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "  mMode="

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 69
    .line 70
    .line 71
    const-string p2, "  mSystemWasBoth="

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-boolean p2, p1, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 77
    .line 78
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 79
    .line 80
    .line 81
    const-string p2, "  mAllowBackup="

    .line 82
    .line 83
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-boolean p2, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 87
    .line 88
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    .line 90
    .line 91
    const-string p2, "  getWallpaperFile()="

    .line 92
    .line 93
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/4 p2, 0x0

    .line 97
    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    .line 103
    const-string/jumbo v0, "null"

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_1

    .line 123
    .line 124
    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    if-eqz p2, :cond_1

    .line 137
    .line 138
    const-string v0, "  file width="

    .line 139
    .line 140
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 148
    .line 149
    .line 150
    const-string v0, "  file height="

    .line 151
    .line 152
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    .line 164
    .line 165
    :cond_1
    const-string p2, "  getCropFile()="

    .line 166
    .line 167
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p2

    .line 181
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    if-eqz p2, :cond_2

    .line 200
    .line 201
    const-string v0, "  cropFile width="

    .line 202
    .line 203
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 211
    .line 212
    .line 213
    const-string v0, "  cropFile height="

    .line 214
    .line 215
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    .line 227
    .line 228
    :cond_2
    const-string p2, "  mWallpaperComponent="

    .line 229
    .line 230
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 234
    .line 235
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    const-string p2, "  wallpaperObserver="

    .line 239
    .line 240
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperObserver:Landroid/os/FileObserver;

    .line 244
    .line 245
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 249
    .line 250
    if-eqz p2, :cond_4

    .line 251
    .line 252
    const-string v0, "  Wallpaper connection "

    .line 253
    .line 254
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    const-string v0, ":"

    .line 261
    .line 262
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 266
    .line 267
    if-eqz v0, :cond_3

    .line 268
    .line 269
    const-string v0, "    mInfo.component="

    .line 270
    .line 271
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 275
    .line 276
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    :cond_3
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;

    .line 284
    .line 285
    const/4 v1, 0x2

    .line 286
    invoke-direct {v0, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;-><init>(ILjava/io/PrintWriter;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 290
    .line 291
    .line 292
    const-string v0, "    mService="

    .line 293
    .line 294
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 298
    .line 299
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 300
    .line 301
    .line 302
    const-string p2, "    mLastDiedTime="

    .line 303
    .line 304
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget-wide v0, p1, Lcom/android/server/wallpaper/WallpaperData;->lastDiedTime:J

    .line 308
    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 310
    .line 311
    .line 312
    move-result-wide v2

    .line 313
    sub-long/2addr v0, v2

    .line 314
    invoke-virtual {p0, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 315
    .line 316
    .line 317
    :cond_4
    const-string p2, "  mSemWallpaperData="

    .line 318
    .line 319
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 323
    .line 324
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/wallpaper/WallpaperData;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 10
    .line 11
    if-eqz v1, :cond_9

    .line 12
    .line 13
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 14
    .line 15
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v3, Lcom/android/server/wallpaper/WallpaperData;

    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 25
    .line 26
    if-eqz v1, :cond_8

    .line 27
    .line 28
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 29
    .line 30
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 31
    .line 32
    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 39
    .line 40
    iget v5, v0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 41
    .line 42
    invoke-virtual {v1, v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 49
    .line 50
    if-eqz v5, :cond_2

    .line 51
    .line 52
    iget-object p0, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 53
    .line 54
    iput-object p0, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 55
    .line 56
    iput-object v5, v1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 57
    .line 58
    if-eqz v5, :cond_0

    .line 59
    .line 60
    iput-object v1, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 61
    .line 62
    :cond_0
    iput-boolean v4, v1, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 63
    .line 64
    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 67
    .line 68
    .line 69
    iget-object p0, v1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 70
    .line 71
    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 72
    .line 73
    iget v4, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 74
    .line 75
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 76
    .line 77
    invoke-virtual {v2, v3, v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 78
    .line 79
    .line 80
    iget p0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 81
    .line 82
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-eqz p0, :cond_1

    .line 87
    .line 88
    iput-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastSubLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :cond_1
    iput-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_2
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 97
    .line 98
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 99
    .line 100
    invoke-virtual {v1, v3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    if-eqz v1, :cond_3

    .line 105
    .line 106
    or-int/lit8 v3, p0, 0x3

    .line 107
    .line 108
    iput v3, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 109
    .line 110
    invoke-virtual {v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 114
    .line 115
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 116
    .line 117
    invoke-virtual {v1, v3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-eqz p0, :cond_9

    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 124
    .line 125
    const/4 v3, -0x1

    .line 126
    iput v3, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 133
    .line 134
    iget v5, v0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 135
    .line 136
    invoke-virtual {v1, v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    if-eqz p0, :cond_6

    .line 141
    .line 142
    iget-object v1, v3, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 143
    .line 144
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 145
    .line 146
    if-eqz v1, :cond_5

    .line 147
    .line 148
    iput-object p0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 149
    .line 150
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 151
    .line 152
    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 153
    .line 154
    invoke-virtual {v2, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 158
    .line 159
    iget v3, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 160
    .line 161
    iget v4, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 162
    .line 163
    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 164
    .line 165
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_6
    const-string v1, "WallpaperManagerService"

    .line 170
    .line 171
    const-string v3, "lockWp is null."

    .line 172
    .line 173
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    :goto_0
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 177
    .line 178
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    iput-object p0, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastSubLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 185
    .line 186
    goto :goto_1

    .line 187
    :cond_7
    iput-object p0, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastLockWallpaper:Lcom/android/server/wallpaper/WallpaperData;

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_8
    iget v1, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 191
    .line 192
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eqz v1, :cond_9

    .line 197
    .line 198
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 199
    .line 200
    iget v5, v0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 201
    .line 202
    invoke-virtual {v1, v5, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 207
    .line 208
    if-eqz v1, :cond_9

    .line 209
    .line 210
    iget v5, v1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 211
    .line 212
    iget v3, v3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 213
    .line 214
    if-ne v5, v3, :cond_9

    .line 215
    .line 216
    or-int/lit8 p0, p0, 0x1

    .line 217
    .line 218
    iput p0, v1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 219
    .line 220
    iput-boolean v4, v1, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 221
    .line 222
    invoke-virtual {v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 223
    .line 224
    .line 225
    :cond_9
    :goto_1
    iget p0, v0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 226
    .line 227
    invoke-virtual {v2, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "WallpaperDataManager"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "Home Wallpaper"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x2

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    const-string v0, "Lock Wallpaper"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-ge v1, v2, :cond_2

    .line 38
    .line 39
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v2, Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/server/wallpaper/WallpaperData;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget v4, v2, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 58
    .line 59
    sub-int/2addr v3, v4

    .line 60
    invoke-static {p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->print(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperData;I)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const-string p0, ""

    .line 70
    .line 71
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    throw p0
.end method

.method public get(II)Lcom/android/server/wallpaper/WallpaperData;
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentImplicitMode()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/util/SparseArray;

    .line 21
    .line 22
    const/16 v1, 0x8

    .line 23
    .line 24
    if-ne p2, v1, :cond_1

    .line 25
    .line 26
    if-lez p1, :cond_1

    .line 27
    .line 28
    const-string p1, "WallpaperManagerService"

    .line 29
    .line 30
    const-string v1, "get, dex mode support only user = 0"

    .line 31
    .line 32
    invoke-static {p1, v1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    add-int/2addr p1, p2

    .line 40
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/android/server/wallpaper/WallpaperData;

    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object p0

    .line 48
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p0
.end method

.method public put(IILcom/android/server/wallpaper/WallpaperData;)V
    .locals 4

    .line 1
    if-ltz p1, :cond_6

    .line 2
    .line 3
    const/16 v0, 0x96

    .line 4
    .line 5
    if-le p1, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa0

    .line 8
    .line 9
    if-lt p1, v0, :cond_6

    .line 10
    .line 11
    :cond_0
    const/16 v0, 0x5f

    .line 12
    .line 13
    if-le p1, v0, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x63

    .line 16
    .line 17
    if-ge p1, v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_1
    const-string v0, "WallpaperManagerService"

    .line 22
    .line 23
    const-string/jumbo v1, "put, userId:"

    .line 24
    .line 25
    .line 26
    const-string v2, ", mode:"

    .line 27
    .line 28
    const-string v3, ", data:"

    .line 29
    .line 30
    invoke-static {p1, p2, v1, v2, v3}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ", hash:"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    .line 62
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentImplicitMode()I

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Landroid/util/SparseArray;

    .line 76
    .line 77
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    if-lez p1, :cond_3

    .line 84
    .line 85
    const-string p0, "WallpaperManagerService"

    .line 86
    .line 87
    const-string/jumbo p1, "put, dex mode support only user = 0"

    .line 88
    .line 89
    .line 90
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    :cond_4
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 103
    .line 104
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 105
    .line 106
    or-int/2addr p0, p2

    .line 107
    iput p0, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 108
    .line 109
    add-int/2addr p1, p2

    .line 110
    invoke-virtual {v1, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    iget-object p0, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 115
    .line 116
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 117
    .line 118
    const/4 p1, 0x0

    .line 119
    invoke-virtual {p3, p1}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_5

    .line 128
    .line 129
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 130
    .line 131
    .line 132
    move-result p0

    .line 133
    if-eqz p0, :cond_5

    .line 134
    .line 135
    if-eqz p1, :cond_5

    .line 136
    .line 137
    const-string/jumbo p0, "wallpaper_orig"

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-eqz p0, :cond_5

    .line 149
    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string p1, "\nUnexpected file assignment detected!\n"

    .line 153
    .line 154
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-static {}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCallStackString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putLog(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :cond_5
    return-void

    .line 172
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    throw p0

    .line 174
    :cond_6
    :goto_1
    const-string p0, "WallpaperManagerService"

    .line 175
    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    const-string/jumbo p3, "put, invalid userId = "

    .line 179
    .line 180
    .line 181
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method public remove(II)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentImplicitMode()I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mSemObserver:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/util/SparseArray;

    .line 21
    .line 22
    add-int/2addr p1, p2

    .line 23
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

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
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0
.end method
