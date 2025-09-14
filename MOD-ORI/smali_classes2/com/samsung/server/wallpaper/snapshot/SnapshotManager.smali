.class public final Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

.field public final mContext:Landroid/content/Context;

.field public final mSnapshotRepositories:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final addHistory(II)V
    .locals 2

    .line 13
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 14
    new-instance p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 16
    iput v0, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    .line 17
    iput p2, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 19
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 20
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 21
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 22
    iput-object p2, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    .line 23
    const-string p2, "No snapshot"

    iput-object p2, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->desc:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->addHistory(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V

    return-void
.end method

.method public final addHistory(IIILjava/util/Map;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    move-result-object p0

    .line 2
    new-instance p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;

    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p2, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    .line 5
    iput p3, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    .line 7
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 8
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object p2

    .line 9
    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 10
    iput-object p2, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    .line 11
    iput-object p4, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->results:Ljava/util/Map;

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->addHistory(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;)V

    return-void
.end method

.method public final addSnapshot(Landroid/content/Context;IIILcom/android/server/wallpaper/WallpaperData;)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move-object/from16 v4, p5

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    invoke-virtual {v6, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    const-string v10, "]"

    .line 20
    .line 21
    const-string v11, "SnapshotManager"

    .line 22
    .line 23
    if-nez v7, :cond_1

    .line 24
    .line 25
    iget-object v7, v6, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 26
    .line 27
    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/16 v12, 0x64

    .line 32
    .line 33
    if-lt v7, v12, :cond_0

    .line 34
    .line 35
    const-string v7, "add: Maximum number of snapshot is reached."

    .line 36
    .line 37
    invoke-static {v11, v7}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v7, -0x4

    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_0
    new-instance v7, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 44
    .line 45
    iget v12, v6, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->userId:I

    .line 46
    .line 47
    invoke-direct {v7, v12, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;-><init>(II)V

    .line 48
    .line 49
    .line 50
    iget-object v12, v6, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 51
    .line 52
    invoke-virtual {v12, v7}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v7, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 56
    .line 57
    .line 58
    move-result v12

    .line 59
    if-eqz v12, :cond_2

    .line 60
    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v12, "add: Already has WallpaperData for which ["

    .line 64
    .line 65
    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v12, "]."

    .line 72
    .line 73
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-static {v11, v7}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const/4 v7, -0x3

    .line 84
    goto/16 :goto_4

    .line 85
    .line 86
    :cond_2
    invoke-virtual {v7, v2, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 87
    .line 88
    .line 89
    invoke-static/range {p3 .. p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    iget-object v13, v7, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 94
    .line 95
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v14

    .line 99
    check-cast v13, Ljava/util/HashMap;

    .line 100
    .line 101
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v13

    .line 105
    check-cast v13, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 106
    .line 107
    if-nez v13, :cond_3

    .line 108
    .line 109
    new-instance v13, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 110
    .line 111
    invoke-direct {v13}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v14, v7, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 115
    .line 116
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v15

    .line 120
    check-cast v14, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_3
    new-instance v14, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    sget-object v15, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    .line 131
    .line 132
    invoke-static {v12}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    sget-object v15, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    .line 137
    .line 138
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    check-cast v15, Ljava/util/HashMap;

    .line 143
    .line 144
    invoke-virtual {v15, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    check-cast v12, [Ljava/lang/String;

    .line 149
    .line 150
    array-length v15, v12

    .line 151
    const/4 v8, 0x0

    .line 152
    :goto_0
    if-ge v8, v15, :cond_6

    .line 153
    .line 154
    aget-object v9, v12, v8

    .line 155
    .line 156
    const-string/jumbo v5, "setSettingsData: name = "

    .line 157
    .line 158
    .line 159
    move-object/from16 v16, v12

    .line 160
    .line 161
    const-string v12, ", value = "

    .line 162
    .line 163
    invoke-static {v5, v9, v12}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    move/from16 v17, v15

    .line 172
    .line 173
    iget v15, v7, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->userId:I

    .line 174
    .line 175
    move-object/from16 v18, v7

    .line 176
    .line 177
    const/4 v7, -0x1

    .line 178
    invoke-static {v12, v9, v7, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 179
    .line 180
    .line 181
    move-result v12

    .line 182
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    invoke-static {v11, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v5, "lockscreen_wallpaper"

    .line 193
    .line 194
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v5

    .line 198
    if-nez v5, :cond_5

    .line 199
    .line 200
    const-string v5, "lockscreen_wallpaper_sub"

    .line 201
    .line 202
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eqz v5, :cond_4

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-static {v5, v9, v7, v15}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    invoke-virtual {v14, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    :goto_1
    const/4 v5, 0x1

    .line 225
    goto :goto_3

    .line 226
    :cond_5
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string/jumbo v7, "setSettingsData: Skip ["

    .line 229
    .line 230
    .line 231
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-static {v11, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :goto_3
    add-int/2addr v8, v5

    .line 249
    move-object/from16 v12, v16

    .line 250
    .line 251
    move/from16 v15, v17

    .line 252
    .line 253
    move-object/from16 v7, v18

    .line 254
    .line 255
    goto :goto_0

    .line 256
    :cond_6
    iput-object v14, v13, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    .line 257
    .line 258
    move v7, v3

    .line 259
    :goto_4
    if-gez v7, :cond_8

    .line 260
    .line 261
    const/4 v5, -0x3

    .line 262
    if-eq v7, v5, :cond_7

    .line 263
    .line 264
    invoke-virtual {v6, v3, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    .line 265
    .line 266
    .line 267
    :cond_7
    return v7

    .line 268
    :cond_8
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 269
    .line 270
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 271
    .line 272
    const/4 v7, -0x2

    .line 273
    const-string v8, "addSnapshot: Failed to copy backup file."

    .line 274
    .line 275
    const-string v9, "SnapshotHelper"

    .line 276
    .line 277
    const-string v12, ", backupWallpaper ["

    .line 278
    .line 279
    const-string v13, ", key = "

    .line 280
    .line 281
    const-string v14, ", which = "

    .line 282
    .line 283
    if-eqz v5, :cond_d

    .line 284
    .line 285
    const/4 v15, 0x1

    .line 286
    if-eq v5, v15, :cond_d

    .line 287
    .line 288
    const/4 v15, 0x4

    .line 289
    if-eq v5, v15, :cond_d

    .line 290
    .line 291
    const/4 v15, 0x7

    .line 292
    if-eq v5, v15, :cond_9

    .line 293
    .line 294
    const/16 v15, 0x8

    .line 295
    .line 296
    if-eq v5, v15, :cond_d

    .line 297
    .line 298
    goto/16 :goto_6

    .line 299
    .line 300
    :cond_9
    sget-boolean v5, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    .line 301
    .line 302
    if-eqz v5, :cond_10

    .line 303
    .line 304
    invoke-static/range {p5 .. p5}, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->recoverComponentNameIfMissed(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 305
    .line 306
    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    const-string/jumbo v15, "saveBackupFileForLiveWallpaper: userId = "

    .line 310
    .line 311
    .line 312
    invoke-direct {v5, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    invoke-static {v9, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 347
    .line 348
    if-nez v4, :cond_a

    .line 349
    .line 350
    const-string/jumbo v0, "saveBackupFileForLiveWallpaper: ComponentName is missed."

    .line 351
    .line 352
    .line 353
    invoke-static {v9, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-static {v11, v8}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v6, v3, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    .line 360
    .line 361
    .line 362
    return v7

    .line 363
    :cond_a
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    const-string v5, "com.samsung.android.wallpaper.live"

    .line 368
    .line 369
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v5

    .line 373
    if-nez v5, :cond_b

    .line 374
    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    .line 376
    .line 377
    const-string/jumbo v5, "saveBackupFileForLiveWallpaper: Package name is not [com.samsung.android.wallpaper.live], packageName = ["

    .line 378
    .line 379
    .line 380
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    invoke-static {v9, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    goto/16 :goto_6

    .line 397
    .line 398
    :cond_b
    const/4 v4, 0x0

    .line 399
    invoke-static {v2, v1, v4}, Lcom/samsung/server/wallpaper/AssetFileManager;->getBaseAssetDir(IIZ)Ljava/io/File;

    .line 400
    .line 401
    .line 402
    move-result-object v5

    .line 403
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 404
    .line 405
    .line 406
    move-result v5

    .line 407
    if-nez v5, :cond_c

    .line 408
    .line 409
    const-string/jumbo v2, "saveBackupFileForLiveWallpaper: No assets."

    .line 410
    .line 411
    .line 412
    invoke-static {v9, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_6

    .line 416
    .line 417
    :cond_c
    invoke-static {v2, v1, v4}, Lcom/samsung/server/wallpaper/AssetFileManager;->getBaseAssetDir(IIZ)Ljava/io/File;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-static {v1, v3, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperAssetsDir(III)Ljava/io/File;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    invoke-static {v4, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 426
    .line 427
    .line 428
    goto :goto_6

    .line 429
    :cond_d
    const-string/jumbo v5, "saveBackupFile: userId = "

    .line 430
    .line 431
    .line 432
    invoke-static {v1, v2, v5, v14, v13}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    .line 434
    .line 435
    move-result-object v5

    .line 436
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v5

    .line 452
    invoke-static {v9, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    .line 454
    .line 455
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 456
    .line 457
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 458
    .line 459
    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-static {v1, v3, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    .line 464
    .line 465
    .line 466
    move-result-object v10

    .line 467
    new-instance v12, Ljava/lang/StringBuilder;

    .line 468
    .line 469
    const-string/jumbo v13, "saveBackupFile: sourceFile = "

    .line 470
    .line 471
    .line 472
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v12

    .line 482
    invoke-static {v9, v12}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    if-eqz v5, :cond_f

    .line 486
    .line 487
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 488
    .line 489
    .line 490
    move-result v12

    .line 491
    if-nez v12, :cond_e

    .line 492
    .line 493
    goto :goto_5

    .line 494
    :cond_e
    new-instance v12, Ljava/lang/StringBuilder;

    .line 495
    .line 496
    const-string/jumbo v13, "saveBackupFile: targetFile = "

    .line 497
    .line 498
    .line 499
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    invoke-static {v9, v12}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v4, v10}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 513
    .line 514
    .line 515
    invoke-static {v5, v10}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    if-nez v4, :cond_10

    .line 520
    .line 521
    const-string/jumbo v0, "saveBackupFile: Failed to copy file."

    .line 522
    .line 523
    .line 524
    invoke-static {v9, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-static {v11, v8}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v6, v3, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->remove(II)V

    .line 531
    .line 532
    .line 533
    return v7

    .line 534
    :cond_f
    :goto_5
    const/4 v2, 0x0

    .line 535
    invoke-virtual {v4, v2}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 536
    .line 537
    .line 538
    const-string/jumbo v2, "saveBackupFile: sourceFile is not exist."

    .line 539
    .line 540
    .line 541
    invoke-static {v9, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    .line 543
    .line 544
    :cond_10
    :goto_6
    iget-object v0, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    .line 545
    .line 546
    invoke-virtual {v0, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 547
    .line 548
    .line 549
    return v3
.end method

.method public final getPairedDlsSnapshotKey(II)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const-string v3, "SnapshotManager"

    .line 19
    .line 20
    if-eq v1, v2, :cond_1

    .line 21
    .line 22
    const-string p0, "getPairedDlsSnapshotKey: Number of whiches is not 1."

    .line 23
    .line 24
    invoke-static {v3, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    .line 40
    .line 41
    if-nez v2, :cond_2

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_4

    .line 56
    .line 57
    const/4 p2, 0x6

    .line 58
    :goto_0
    move v1, p2

    .line 59
    goto :goto_1

    .line 60
    :cond_4
    const/16 p2, 0x12

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :goto_1
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 86
    .line 87
    iget-object p2, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    .line 88
    .line 89
    const-string v2, "com.samsung.android.dynamiclock"

    .line 90
    .line 91
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    if-eqz p2, :cond_5

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    iget-boolean p2, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->isFromPairedService:Z

    .line 104
    .line 105
    if-eqz p2, :cond_5

    .line 106
    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string p2, "getPairedDlsSnapshotKey: key = "

    .line 110
    .line 111
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget p1, p1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {v3, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    return p1

    .line 127
    :cond_6
    return v0
.end method

.method public final getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mSnapshotRepositories:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method

.method public final getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final loadSettingsLockedForSnapshot(I)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v2, p1

    .line 4
    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    iget-object v5, v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 11
    .line 12
    if-eqz v5, :cond_0

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/util/LinkedList;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v5, v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    const-string v6, " "

    .line 20
    .line 21
    const-string v7, "failed parsing "

    .line 22
    .line 23
    new-instance v8, Ljava/io/File;

    .line 24
    .line 25
    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v9

    .line 29
    const-string/jumbo v10, "wallpaper_backup_info.xml"

    .line 30
    .line 31
    .line 32
    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    new-instance v9, Lcom/android/internal/util/JournaledFile;

    .line 40
    .line 41
    new-instance v10, Ljava/io/File;

    .line 42
    .line 43
    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance v11, Ljava/io/File;

    .line 47
    .line 48
    const-string v12, ".tmp"

    .line 49
    .line 50
    invoke-static {v8, v12}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v9, v10, v11}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v9}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    const-string v11, "SnapshotHelper"

    .line 69
    .line 70
    if-nez v9, :cond_1

    .line 71
    .line 72
    const-string v1, "loadSettingsLockedForSnapshot: Backup data doesn\'t exist."

    .line 73
    .line 74
    invoke-static {v11, v1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    const/4 v10, -0x1

    .line 78
    goto/16 :goto_23

    .line 79
    .line 80
    :cond_1
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const v9, 0x104064e

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_52
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_51
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_50
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_49

    .line 96
    .line 97
    :try_start_1
    invoke-direct {v13, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4e
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_49

    .line 98
    .line 99
    .line 100
    :try_start_2
    invoke-static {v13}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 101
    .line 102
    .line 103
    move-result-object v14

    .line 104
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    .line 105
    .line 106
    .line 107
    move-result v15
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_48
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_46
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_45
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_44
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_43

    .line 108
    move/from16 v16, v3

    .line 109
    .line 110
    const/4 v9, 0x0

    .line 111
    const/4 v10, 0x0

    .line 112
    const/16 v17, 0x0

    .line 113
    .line 114
    const/16 v18, 0x0

    .line 115
    .line 116
    :goto_0
    if-eq v15, v3, :cond_13

    .line 117
    .line 118
    const-string v12, "Backup"

    .line 119
    .line 120
    const/4 v3, 0x2

    .line 121
    if-ne v15, v3, :cond_f

    .line 122
    .line 123
    :try_start_3
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    .line 128
    .line 129
    .line 130
    move-result v21
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2b

    .line 131
    sparse-switch v21, :sswitch_data_0

    .line 132
    .line 133
    .line 134
    goto/16 :goto_1

    .line 135
    .line 136
    :sswitch_0
    :try_start_4
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-eqz v12, :cond_2

    .line 141
    .line 142
    const/4 v12, 0x0

    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :catch_0
    move-exception v0

    .line 146
    move-object v1, v0

    .line 147
    move-object/from16 v19, v6

    .line 148
    .line 149
    move-object v12, v13

    .line 150
    goto/16 :goto_1b

    .line 151
    .line 152
    :catch_1
    move-exception v0

    .line 153
    move-object v1, v0

    .line 154
    move-object v5, v6

    .line 155
    move-object v12, v13

    .line 156
    goto/16 :goto_1d

    .line 157
    .line 158
    :catch_2
    move-exception v0

    .line 159
    move-object v1, v0

    .line 160
    move-object v5, v6

    .line 161
    move-object v12, v13

    .line 162
    goto/16 :goto_1e

    .line 163
    .line 164
    :catch_3
    move-exception v0

    .line 165
    move-object v1, v0

    .line 166
    move-object v5, v6

    .line 167
    move-object v12, v13

    .line 168
    goto/16 :goto_1f

    .line 169
    .line 170
    :catch_4
    move-exception v0

    .line 171
    move-object v1, v0

    .line 172
    move-object v5, v6

    .line 173
    move-object v12, v13

    .line 174
    goto/16 :goto_20

    .line 175
    .line 176
    :catch_5
    move-exception v0

    .line 177
    move-object v1, v0

    .line 178
    move-object v12, v13

    .line 179
    goto/16 :goto_21

    .line 180
    .line 181
    :sswitch_1
    const-string v12, "kwpSettings"

    .line 182
    .line 183
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    if-eqz v12, :cond_2

    .line 188
    .line 189
    const/4 v12, 0x4

    .line 190
    goto :goto_2

    .line 191
    :sswitch_2
    const-string v12, "kwp"

    .line 192
    .line 193
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v12

    .line 197
    if-eqz v12, :cond_2

    .line 198
    .line 199
    const/4 v12, 0x2

    .line 200
    goto :goto_2

    .line 201
    :sswitch_3
    const-string/jumbo v12, "wp"

    .line 202
    .line 203
    .line 204
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v12

    .line 208
    if-eqz v12, :cond_2

    .line 209
    .line 210
    const/4 v12, 0x1

    .line 211
    goto :goto_2

    .line 212
    :sswitch_4
    const-string/jumbo v12, "wpSettings"

    .line 213
    .line 214
    .line 215
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v12
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 219
    if-eqz v12, :cond_2

    .line 220
    .line 221
    const/4 v12, 0x3

    .line 222
    goto :goto_2

    .line 223
    :sswitch_5
    :try_start_5
    const-string v12, "History"

    .line 224
    .line 225
    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v12
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2b

    .line 229
    if-eqz v12, :cond_2

    .line 230
    .line 231
    const/4 v12, 0x5

    .line 232
    goto :goto_2

    .line 233
    :cond_2
    :goto_1
    const/4 v12, -0x1

    .line 234
    :goto_2
    if-eqz v12, :cond_d

    .line 235
    .line 236
    iget-object v15, v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 237
    .line 238
    const/4 v3, 0x1

    .line 239
    if-eq v12, v3, :cond_a

    .line 240
    .line 241
    const/4 v3, 0x2

    .line 242
    if-eq v12, v3, :cond_9

    .line 243
    .line 244
    const/4 v3, 0x3

    .line 245
    if-eq v12, v3, :cond_4

    .line 246
    .line 247
    const/4 v3, 0x4

    .line 248
    if-eq v12, v3, :cond_4

    .line 249
    .line 250
    const/4 v3, 0x5

    .line 251
    if-eq v12, v3, :cond_3

    .line 252
    .line 253
    :goto_3
    move-object/from16 v19, v6

    .line 254
    .line 255
    move-object/from16 v21, v13

    .line 256
    .line 257
    move-object/from16 v12, v17

    .line 258
    .line 259
    move/from16 v6, v18

    .line 260
    .line 261
    const/4 v13, 0x1

    .line 262
    goto/16 :goto_10

    .line 263
    .line 264
    :cond_3
    :try_start_6
    invoke-static {v14, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->parseSnapshotHistory(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 265
    .line 266
    .line 267
    goto :goto_3

    .line 268
    :cond_4
    :try_start_7
    new-instance v3, Ljava/util/HashMap;

    .line 269
    .line 270
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_2b

    .line 271
    .line 272
    .line 273
    :try_start_8
    const-string/jumbo v12, "which"

    .line 274
    .line 275
    .line 276
    const/4 v1, 0x0

    .line 277
    invoke-interface {v14, v1, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v12

    .line 281
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_0

    .line 285
    goto :goto_4

    .line 286
    :catch_6
    move-exception v0

    .line 287
    move-object v1, v0

    .line 288
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_2f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_2b

    .line 289
    .line 290
    .line 291
    move/from16 v1, v16

    .line 292
    .line 293
    :goto_4
    :try_start_a
    sget-object v12, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    .line 294
    .line 295
    invoke-static {v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 296
    .line 297
    .line 298
    move-result v12

    .line 299
    sget-object v19, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->settingsData:Ljava/util/Map;

    .line 300
    .line 301
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    .line 303
    .line 304
    move-result-object v12
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_29
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_28
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_27
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_25

    .line 305
    move-object/from16 v21, v13

    .line 306
    .line 307
    :try_start_b
    move-object/from16 v13, v19

    .line 308
    .line 309
    check-cast v13, Ljava/util/HashMap;

    .line 310
    .line 311
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v12

    .line 315
    check-cast v12, [Ljava/lang/String;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_22
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_21
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1f

    .line 316
    .line 317
    :try_start_c
    array-length v13, v12
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1a

    .line 318
    move-object/from16 v19, v6

    .line 319
    .line 320
    const/4 v6, 0x0

    .line 321
    :goto_5
    if-ge v6, v13, :cond_5

    .line 322
    .line 323
    move/from16 v20, v13

    .line 324
    .line 325
    :try_start_d
    aget-object v13, v12, v6
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_7

    .line 326
    .line 327
    move-object/from16 v22, v12

    .line 328
    .line 329
    const/4 v12, 0x0

    .line 330
    :try_start_e
    invoke-interface {v14, v12, v13}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v23

    .line 334
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result v12

    .line 338
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 339
    .line 340
    .line 341
    move-result-object v12

    .line 342
    invoke-virtual {v3, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_7

    .line 343
    .line 344
    .line 345
    :goto_6
    const/4 v13, 0x1

    .line 346
    goto :goto_c

    .line 347
    :catch_7
    move-exception v0

    .line 348
    :goto_7
    move-object v1, v0

    .line 349
    move-object/from16 v12, v21

    .line 350
    .line 351
    goto/16 :goto_1b

    .line 352
    .line 353
    :catch_8
    move-exception v0

    .line 354
    :goto_8
    move-object v1, v0

    .line 355
    move-object/from16 v5, v19

    .line 356
    .line 357
    move-object/from16 v12, v21

    .line 358
    .line 359
    goto/16 :goto_1d

    .line 360
    .line 361
    :catch_9
    move-exception v0

    .line 362
    :goto_9
    move-object v1, v0

    .line 363
    move-object/from16 v5, v19

    .line 364
    .line 365
    move-object/from16 v12, v21

    .line 366
    .line 367
    goto/16 :goto_1f

    .line 368
    .line 369
    :catch_a
    move-exception v0

    .line 370
    :goto_a
    move-object v1, v0

    .line 371
    move-object/from16 v5, v19

    .line 372
    .line 373
    move-object/from16 v12, v21

    .line 374
    .line 375
    goto/16 :goto_20

    .line 376
    .line 377
    :catch_b
    move-exception v0

    .line 378
    :goto_b
    move-object v1, v0

    .line 379
    move-object/from16 v12, v21

    .line 380
    .line 381
    goto/16 :goto_21

    .line 382
    .line 383
    :catch_c
    move-exception v0

    .line 384
    move-object v12, v0

    .line 385
    :try_start_f
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 386
    .line 387
    .line 388
    goto :goto_6

    .line 389
    :goto_c
    add-int/2addr v6, v13

    .line 390
    move/from16 v13, v20

    .line 391
    .line 392
    move-object/from16 v12, v22

    .line 393
    .line 394
    goto :goto_5

    .line 395
    :catch_d
    move-exception v0

    .line 396
    :goto_d
    move-object v1, v0

    .line 397
    move-object/from16 v5, v19

    .line 398
    .line 399
    move-object/from16 v12, v21

    .line 400
    .line 401
    goto/16 :goto_1e

    .line 402
    .line 403
    :cond_5
    const/4 v13, 0x1

    .line 404
    if-eqz v10, :cond_7

    .line 405
    .line 406
    iget v6, v10, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 407
    .line 408
    const/4 v12, -0x1

    .line 409
    if-ne v6, v12, :cond_6

    .line 410
    .line 411
    iput v1, v10, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_7

    .line 412
    .line 413
    :cond_6
    :try_start_10
    iget-object v6, v10, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 414
    .line 415
    iput v1, v6, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_19
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_14

    .line 416
    .line 417
    move/from16 v6, v18

    .line 418
    .line 419
    :try_start_11
    invoke-static {v2, v6, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    .line 420
    .line 421
    .line 422
    move-result-object v12

    .line 423
    invoke-virtual {v10, v12}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_7

    .line 424
    .line 425
    .line 426
    :try_start_12
    check-cast v15, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 427
    .line 428
    invoke-virtual {v15, v1, v2, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestInitializeThumnailFile(IILcom/android/server/wallpaper/WallpaperData;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_12} :catch_e

    .line 429
    .line 430
    .line 431
    :goto_e
    move-object/from16 v12, v17

    .line 432
    .line 433
    goto :goto_f

    .line 434
    :catch_e
    move-exception v0

    .line 435
    goto :goto_7

    .line 436
    :catch_f
    move-exception v0

    .line 437
    goto :goto_8

    .line 438
    :catch_10
    move-exception v0

    .line 439
    goto :goto_d

    .line 440
    :catch_11
    move-exception v0

    .line 441
    goto :goto_9

    .line 442
    :catch_12
    move-exception v0

    .line 443
    goto :goto_a

    .line 444
    :catch_13
    move-exception v0

    .line 445
    goto :goto_b

    .line 446
    :catch_14
    move-exception v0

    .line 447
    goto :goto_7

    .line 448
    :catch_15
    move-exception v0

    .line 449
    goto :goto_8

    .line 450
    :catch_16
    move-exception v0

    .line 451
    goto :goto_d

    .line 452
    :catch_17
    move-exception v0

    .line 453
    goto :goto_9

    .line 454
    :catch_18
    move-exception v0

    .line 455
    goto :goto_a

    .line 456
    :catch_19
    move-exception v0

    .line 457
    goto :goto_b

    .line 458
    :cond_7
    move/from16 v6, v18

    .line 459
    .line 460
    goto :goto_e

    .line 461
    :goto_f
    if-eqz v12, :cond_8

    .line 462
    .line 463
    :try_start_13
    invoke-virtual {v12, v1, v10}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setWallpaperData(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v12, v1, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setSettingsData(ILjava/util/HashMap;)V

    .line 467
    .line 468
    .line 469
    :cond_8
    :goto_10
    move/from16 v18, v6

    .line 470
    .line 471
    move-object/from16 v17, v12

    .line 472
    .line 473
    const/4 v3, 0x0

    .line 474
    goto/16 :goto_14

    .line 475
    .line 476
    :catch_1a
    move-exception v0

    .line 477
    move-object/from16 v19, v6

    .line 478
    .line 479
    goto/16 :goto_7

    .line 480
    .line 481
    :catch_1b
    move-exception v0

    .line 482
    move-object/from16 v19, v6

    .line 483
    .line 484
    goto/16 :goto_8

    .line 485
    .line 486
    :catch_1c
    move-exception v0

    .line 487
    move-object/from16 v19, v6

    .line 488
    .line 489
    goto :goto_d

    .line 490
    :catch_1d
    move-exception v0

    .line 491
    move-object/from16 v19, v6

    .line 492
    .line 493
    goto/16 :goto_9

    .line 494
    .line 495
    :catch_1e
    move-exception v0

    .line 496
    move-object/from16 v19, v6

    .line 497
    .line 498
    goto/16 :goto_a

    .line 499
    .line 500
    :catch_1f
    move-exception v0

    .line 501
    move-object/from16 v19, v6

    .line 502
    .line 503
    goto/16 :goto_7

    .line 504
    .line 505
    :catch_20
    move-exception v0

    .line 506
    move-object/from16 v19, v6

    .line 507
    .line 508
    goto/16 :goto_8

    .line 509
    .line 510
    :catch_21
    move-exception v0

    .line 511
    move-object/from16 v19, v6

    .line 512
    .line 513
    goto :goto_d

    .line 514
    :catch_22
    move-exception v0

    .line 515
    move-object/from16 v19, v6

    .line 516
    .line 517
    goto/16 :goto_9

    .line 518
    .line 519
    :catch_23
    move-exception v0

    .line 520
    move-object/from16 v19, v6

    .line 521
    .line 522
    goto/16 :goto_a

    .line 523
    .line 524
    :catch_24
    move-exception v0

    .line 525
    goto/16 :goto_b

    .line 526
    .line 527
    :catch_25
    move-exception v0

    .line 528
    move-object/from16 v19, v6

    .line 529
    .line 530
    move-object/from16 v21, v13

    .line 531
    .line 532
    goto/16 :goto_7

    .line 533
    .line 534
    :catch_26
    move-exception v0

    .line 535
    move-object/from16 v19, v6

    .line 536
    .line 537
    move-object/from16 v21, v13

    .line 538
    .line 539
    goto/16 :goto_8

    .line 540
    .line 541
    :catch_27
    move-exception v0

    .line 542
    move-object/from16 v19, v6

    .line 543
    .line 544
    move-object/from16 v21, v13

    .line 545
    .line 546
    goto/16 :goto_d

    .line 547
    .line 548
    :catch_28
    move-exception v0

    .line 549
    move-object/from16 v19, v6

    .line 550
    .line 551
    move-object/from16 v21, v13

    .line 552
    .line 553
    goto/16 :goto_9

    .line 554
    .line 555
    :catch_29
    move-exception v0

    .line 556
    move-object/from16 v19, v6

    .line 557
    .line 558
    move-object/from16 v21, v13

    .line 559
    .line 560
    goto/16 :goto_a

    .line 561
    .line 562
    :catch_2a
    move-exception v0

    .line 563
    move-object/from16 v21, v13

    .line 564
    .line 565
    goto/16 :goto_b

    .line 566
    .line 567
    :catch_2b
    move-exception v0

    .line 568
    move-object/from16 v19, v6

    .line 569
    .line 570
    move-object/from16 v21, v13

    .line 571
    .line 572
    goto/16 :goto_7

    .line 573
    .line 574
    :catch_2c
    move-exception v0

    .line 575
    move-object/from16 v19, v6

    .line 576
    .line 577
    move-object/from16 v21, v13

    .line 578
    .line 579
    goto/16 :goto_8

    .line 580
    .line 581
    :catch_2d
    move-exception v0

    .line 582
    move-object/from16 v19, v6

    .line 583
    .line 584
    move-object/from16 v21, v13

    .line 585
    .line 586
    goto/16 :goto_d

    .line 587
    .line 588
    :catch_2e
    move-exception v0

    .line 589
    move-object/from16 v19, v6

    .line 590
    .line 591
    move-object/from16 v21, v13

    .line 592
    .line 593
    goto/16 :goto_9

    .line 594
    .line 595
    :catch_2f
    move-exception v0

    .line 596
    move-object/from16 v19, v6

    .line 597
    .line 598
    move-object/from16 v21, v13

    .line 599
    .line 600
    goto/16 :goto_a

    .line 601
    .line 602
    :catch_30
    move-exception v0

    .line 603
    move-object/from16 v21, v13

    .line 604
    .line 605
    goto/16 :goto_b

    .line 606
    .line 607
    :cond_9
    move-object/from16 v19, v6

    .line 608
    .line 609
    move-object/from16 v21, v13

    .line 610
    .line 611
    move-object/from16 v12, v17

    .line 612
    .line 613
    move/from16 v6, v18

    .line 614
    .line 615
    const/4 v13, 0x1

    .line 616
    new-instance v10, Lcom/android/server/wallpaper/WallpaperData;

    .line 617
    .line 618
    const/4 v1, 0x2

    .line 619
    invoke-direct {v10, v2, v1}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 620
    .line 621
    .line 622
    const/4 v3, 0x0

    .line 623
    invoke-virtual {v10, v3}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_13} :catch_7

    .line 624
    .line 625
    .line 626
    :try_start_14
    iget-object v1, v10, Lcom/android/server/wallpaper/WallpaperData;->mCropFiles:Landroid/util/SparseArray;

    .line 627
    .line 628
    iget v13, v10, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 629
    .line 630
    invoke-virtual {v1, v13, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_36
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_35
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_34
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_33
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_32
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_14} :catch_31

    .line 631
    .line 632
    .line 633
    :try_start_15
    check-cast v15, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 634
    .line 635
    invoke-virtual {v15, v14, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestParseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_15} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_15} :catch_e

    .line 636
    .line 637
    .line 638
    move/from16 v18, v6

    .line 639
    .line 640
    move-object/from16 v17, v12

    .line 641
    .line 642
    const/4 v3, 0x0

    .line 643
    const/16 v16, 0x2

    .line 644
    .line 645
    goto/16 :goto_14

    .line 646
    .line 647
    :catch_31
    move-exception v0

    .line 648
    goto/16 :goto_7

    .line 649
    .line 650
    :catch_32
    move-exception v0

    .line 651
    goto/16 :goto_8

    .line 652
    .line 653
    :catch_33
    move-exception v0

    .line 654
    goto/16 :goto_d

    .line 655
    .line 656
    :catch_34
    move-exception v0

    .line 657
    goto/16 :goto_9

    .line 658
    .line 659
    :catch_35
    move-exception v0

    .line 660
    goto/16 :goto_a

    .line 661
    .line 662
    :catch_36
    move-exception v0

    .line 663
    goto/16 :goto_b

    .line 664
    .line 665
    :cond_a
    move-object/from16 v19, v6

    .line 666
    .line 667
    move-object/from16 v21, v13

    .line 668
    .line 669
    move-object/from16 v12, v17

    .line 670
    .line 671
    move/from16 v6, v18

    .line 672
    .line 673
    :try_start_16
    new-instance v10, Lcom/android/server/wallpaper/WallpaperData;

    .line 674
    .line 675
    move/from16 v3, v16

    .line 676
    .line 677
    invoke-direct {v10, v2, v3}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 678
    .line 679
    .line 680
    const/4 v1, 0x0

    .line 681
    invoke-virtual {v10, v1}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_16} :catch_7

    .line 682
    .line 683
    .line 684
    :try_start_17
    iget-object v13, v10, Lcom/android/server/wallpaper/WallpaperData;->mCropFiles:Landroid/util/SparseArray;

    .line 685
    .line 686
    move/from16 v16, v3

    .line 687
    .line 688
    iget v3, v10, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 689
    .line 690
    invoke-virtual {v13, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_3b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_39
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_38
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_17 .. :try_end_17} :catch_37

    .line 691
    .line 692
    .line 693
    :try_start_18
    check-cast v15, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 694
    .line 695
    invoke-virtual {v15, v14, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestParseWallpaperAttributes(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperData;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_11
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_10
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_18 .. :try_end_18} :catch_e

    .line 696
    .line 697
    .line 698
    :try_start_19
    const-string v3, "component"

    .line 699
    .line 700
    invoke-interface {v14, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v3

    .line 704
    if-eqz v3, :cond_b

    .line 705
    .line 706
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 707
    .line 708
    .line 709
    move-result-object v1

    .line 710
    goto :goto_11

    .line 711
    :cond_b
    const/4 v1, 0x0

    .line 712
    :goto_11
    iput-object v1, v10, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 713
    .line 714
    iget-object v1, v10, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 715
    .line 716
    if-eqz v1, :cond_c

    .line 717
    .line 718
    const-string v3, "android"

    .line 719
    .line 720
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 725
    .line 726
    .line 727
    move-result v1

    .line 728
    if-eqz v1, :cond_8

    .line 729
    .line 730
    :cond_c
    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 731
    .line 732
    goto/16 :goto_10

    .line 733
    .line 734
    :catch_37
    move-exception v0

    .line 735
    goto/16 :goto_7

    .line 736
    .line 737
    :catch_38
    move-exception v0

    .line 738
    goto/16 :goto_8

    .line 739
    .line 740
    :catch_39
    move-exception v0

    .line 741
    goto/16 :goto_d

    .line 742
    .line 743
    :catch_3a
    move-exception v0

    .line 744
    goto/16 :goto_9

    .line 745
    .line 746
    :catch_3b
    move-exception v0

    .line 747
    goto/16 :goto_a

    .line 748
    .line 749
    :catch_3c
    move-exception v0

    .line 750
    goto/16 :goto_b

    .line 751
    .line 752
    :cond_d
    move-object/from16 v19, v6

    .line 753
    .line 754
    move-object/from16 v21, v13

    .line 755
    .line 756
    const-string v1, "key"

    .line 757
    .line 758
    const/4 v3, 0x0

    .line 759
    invoke-interface {v14, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    move-result v1

    .line 767
    new-instance v6, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 768
    .line 769
    invoke-direct {v6, v2, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;-><init>(II)V

    .line 770
    .line 771
    .line 772
    const-string/jumbo v12, "source"

    .line 773
    .line 774
    .line 775
    invoke-interface {v14, v3, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v12
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_19} :catch_7

    .line 779
    :try_start_1a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 780
    .line 781
    .line 782
    move-result v13

    .line 783
    if-eqz v13, :cond_e

    .line 784
    .line 785
    goto :goto_12

    .line 786
    :cond_e
    iput-object v12, v6, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_42
    .catch Ljava/lang/NullPointerException; {:try_start_1a .. :try_end_1a} :catch_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_40
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_3f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1a .. :try_end_1a} :catch_3d

    .line 787
    .line 788
    :goto_12
    move/from16 v18, v1

    .line 789
    .line 790
    move-object/from16 v17, v6

    .line 791
    .line 792
    goto :goto_14

    .line 793
    :catch_3d
    move-exception v0

    .line 794
    goto/16 :goto_7

    .line 795
    .line 796
    :catch_3e
    move-exception v0

    .line 797
    goto/16 :goto_8

    .line 798
    .line 799
    :catch_3f
    move-exception v0

    .line 800
    goto/16 :goto_d

    .line 801
    .line 802
    :catch_40
    move-exception v0

    .line 803
    goto/16 :goto_9

    .line 804
    .line 805
    :catch_41
    move-exception v0

    .line 806
    goto/16 :goto_a

    .line 807
    .line 808
    :catch_42
    move-exception v0

    .line 809
    goto/16 :goto_b

    .line 810
    .line 811
    :cond_f
    move-object/from16 v19, v6

    .line 812
    .line 813
    move-object/from16 v21, v13

    .line 814
    .line 815
    move-object/from16 v13, v17

    .line 816
    .line 817
    move/from16 v6, v18

    .line 818
    .line 819
    const/4 v1, 0x3

    .line 820
    const/4 v3, 0x0

    .line 821
    if-ne v15, v1, :cond_12

    .line 822
    .line 823
    :try_start_1b
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v1

    .line 827
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result v1

    .line 831
    if-eqz v1, :cond_11

    .line 832
    .line 833
    invoke-virtual {v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    .line 834
    .line 835
    .line 836
    move-result v1

    .line 837
    const/16 v12, 0x64

    .line 838
    .line 839
    if-ge v1, v12, :cond_11

    .line 840
    .line 841
    invoke-virtual {v4, v13}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->add(Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)V

    .line 842
    .line 843
    .line 844
    if-le v9, v6, :cond_10

    .line 845
    .line 846
    goto :goto_13

    .line 847
    :cond_10
    move v9, v6

    .line 848
    :cond_11
    :goto_13
    move/from16 v18, v6

    .line 849
    .line 850
    move-object/from16 v17, v13

    .line 851
    .line 852
    goto :goto_14

    .line 853
    :cond_12
    const/4 v1, 0x4

    .line 854
    if-ne v15, v1, :cond_11

    .line 855
    .line 856
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    new-instance v12, Ljava/lang/StringBuilder;

    .line 861
    .line 862
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 863
    .line 864
    .line 865
    const-string v15, "loadSettingsLockedForSnapshot: text = "

    .line 866
    .line 867
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    .line 869
    .line 870
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v1

    .line 877
    invoke-static {v11, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .line 879
    .line 880
    goto :goto_13

    .line 881
    :goto_14
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    .line 882
    .line 883
    .line 884
    move-result v15
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1b .. :try_end_1b} :catch_7

    .line 885
    move-object/from16 v1, p0

    .line 886
    .line 887
    move-object/from16 v6, v19

    .line 888
    .line 889
    move-object/from16 v13, v21

    .line 890
    .line 891
    const/4 v3, 0x1

    .line 892
    goto/16 :goto_0

    .line 893
    .line 894
    :cond_13
    move-object/from16 v21, v13

    .line 895
    .line 896
    move v10, v9

    .line 897
    goto/16 :goto_22

    .line 898
    .line 899
    :catch_43
    move-exception v0

    .line 900
    move-object/from16 v19, v6

    .line 901
    .line 902
    move-object/from16 v21, v13

    .line 903
    .line 904
    move-object v1, v0

    .line 905
    move-object/from16 v12, v21

    .line 906
    .line 907
    :goto_15
    const/4 v9, 0x0

    .line 908
    goto/16 :goto_1b

    .line 909
    .line 910
    :catch_44
    move-exception v0

    .line 911
    move-object/from16 v19, v6

    .line 912
    .line 913
    move-object/from16 v21, v13

    .line 914
    .line 915
    move-object v1, v0

    .line 916
    move-object/from16 v5, v19

    .line 917
    .line 918
    move-object/from16 v12, v21

    .line 919
    .line 920
    :goto_16
    const/4 v9, 0x0

    .line 921
    goto/16 :goto_1d

    .line 922
    .line 923
    :catch_45
    move-exception v0

    .line 924
    move-object/from16 v19, v6

    .line 925
    .line 926
    move-object/from16 v21, v13

    .line 927
    .line 928
    move-object v1, v0

    .line 929
    move-object/from16 v5, v19

    .line 930
    .line 931
    move-object/from16 v12, v21

    .line 932
    .line 933
    :goto_17
    const/4 v9, 0x0

    .line 934
    goto/16 :goto_1e

    .line 935
    .line 936
    :catch_46
    move-exception v0

    .line 937
    move-object/from16 v19, v6

    .line 938
    .line 939
    move-object/from16 v21, v13

    .line 940
    .line 941
    move-object v1, v0

    .line 942
    move-object/from16 v5, v19

    .line 943
    .line 944
    move-object/from16 v12, v21

    .line 945
    .line 946
    :goto_18
    const/4 v9, 0x0

    .line 947
    goto/16 :goto_1f

    .line 948
    .line 949
    :catch_47
    move-exception v0

    .line 950
    move-object/from16 v19, v6

    .line 951
    .line 952
    move-object/from16 v21, v13

    .line 953
    .line 954
    move-object v1, v0

    .line 955
    move-object/from16 v5, v19

    .line 956
    .line 957
    move-object/from16 v12, v21

    .line 958
    .line 959
    :goto_19
    const/4 v9, 0x0

    .line 960
    goto/16 :goto_20

    .line 961
    .line 962
    :catch_48
    move-exception v0

    .line 963
    move-object/from16 v21, v13

    .line 964
    .line 965
    move-object v1, v0

    .line 966
    move-object/from16 v12, v21

    .line 967
    .line 968
    :goto_1a
    const/4 v9, 0x0

    .line 969
    goto/16 :goto_21

    .line 970
    .line 971
    :catch_49
    move-exception v0

    .line 972
    move-object/from16 v19, v6

    .line 973
    .line 974
    const/4 v3, 0x0

    .line 975
    move-object v1, v0

    .line 976
    move-object v12, v3

    .line 977
    goto :goto_15

    .line 978
    :catch_4a
    move-exception v0

    .line 979
    move-object/from16 v19, v6

    .line 980
    .line 981
    const/4 v3, 0x0

    .line 982
    move-object v1, v0

    .line 983
    move-object v12, v3

    .line 984
    move-object/from16 v5, v19

    .line 985
    .line 986
    goto :goto_16

    .line 987
    :catch_4b
    move-exception v0

    .line 988
    move-object/from16 v19, v6

    .line 989
    .line 990
    const/4 v3, 0x0

    .line 991
    move-object v1, v0

    .line 992
    move-object v12, v3

    .line 993
    move-object/from16 v5, v19

    .line 994
    .line 995
    goto :goto_17

    .line 996
    :catch_4c
    move-exception v0

    .line 997
    move-object/from16 v19, v6

    .line 998
    .line 999
    const/4 v3, 0x0

    .line 1000
    move-object v1, v0

    .line 1001
    move-object v12, v3

    .line 1002
    move-object/from16 v5, v19

    .line 1003
    .line 1004
    goto :goto_18

    .line 1005
    :catch_4d
    move-exception v0

    .line 1006
    move-object/from16 v19, v6

    .line 1007
    .line 1008
    const/4 v3, 0x0

    .line 1009
    move-object v1, v0

    .line 1010
    move-object v12, v3

    .line 1011
    move-object/from16 v5, v19

    .line 1012
    .line 1013
    goto :goto_19

    .line 1014
    :catch_4e
    move-exception v0

    .line 1015
    const/4 v3, 0x0

    .line 1016
    move-object v1, v0

    .line 1017
    move-object v12, v3

    .line 1018
    goto :goto_1a

    .line 1019
    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1025
    .line 1026
    .line 1027
    move-object/from16 v5, v19

    .line 1028
    .line 1029
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1036
    .line 1037
    .line 1038
    move-result-object v3

    .line 1039
    invoke-static {v11, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 1043
    .line 1044
    .line 1045
    :goto_1c
    move v10, v9

    .line 1046
    move-object v13, v12

    .line 1047
    goto/16 :goto_22

    .line 1048
    .line 1049
    :catch_4f
    move-exception v0

    .line 1050
    move-object v5, v6

    .line 1051
    const/4 v3, 0x0

    .line 1052
    move-object v1, v0

    .line 1053
    move-object v12, v3

    .line 1054
    goto/16 :goto_16

    .line 1055
    .line 1056
    :goto_1d
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1057
    .line 1058
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1062
    .line 1063
    .line 1064
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    .line 1066
    .line 1067
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1068
    .line 1069
    .line 1070
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v3

    .line 1074
    invoke-static {v11, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1078
    .line 1079
    .line 1080
    goto :goto_1c

    .line 1081
    :catch_50
    move-exception v0

    .line 1082
    move-object v5, v6

    .line 1083
    const/4 v3, 0x0

    .line 1084
    move-object v1, v0

    .line 1085
    move-object v12, v3

    .line 1086
    goto/16 :goto_17

    .line 1087
    .line 1088
    :goto_1e
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1089
    .line 1090
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    .line 1099
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1103
    .line 1104
    .line 1105
    move-result-object v3

    .line 1106
    invoke-static {v11, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1110
    .line 1111
    .line 1112
    goto :goto_1c

    .line 1113
    :catch_51
    move-exception v0

    .line 1114
    move-object v5, v6

    .line 1115
    const/4 v3, 0x0

    .line 1116
    move-object v1, v0

    .line 1117
    move-object v12, v3

    .line 1118
    goto/16 :goto_18

    .line 1119
    .line 1120
    :goto_1f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1123
    .line 1124
    .line 1125
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1135
    .line 1136
    .line 1137
    move-result-object v3

    .line 1138
    invoke-static {v11, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    .line 1140
    .line 1141
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1142
    .line 1143
    .line 1144
    goto :goto_1c

    .line 1145
    :catch_52
    move-exception v0

    .line 1146
    move-object v5, v6

    .line 1147
    const/4 v3, 0x0

    .line 1148
    move-object v1, v0

    .line 1149
    move-object v12, v3

    .line 1150
    goto/16 :goto_19

    .line 1151
    .line 1152
    :goto_20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1153
    .line 1154
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1155
    .line 1156
    .line 1157
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1164
    .line 1165
    .line 1166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v3

    .line 1170
    invoke-static {v11, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_1c

    .line 1177
    .line 1178
    :goto_21
    const-string/jumbo v3, "no backup data"

    .line 1179
    .line 1180
    .line 1181
    invoke-static {v11, v3}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1185
    .line 1186
    .line 1187
    goto/16 :goto_1c

    .line 1188
    .line 1189
    :goto_22
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1190
    .line 1191
    .line 1192
    sget-boolean v1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    .line 1193
    .line 1194
    if-eqz v1, :cond_14

    .line 1195
    .line 1196
    invoke-static/range {p1 .. p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->migrateFromOld(I)V

    .line 1197
    .line 1198
    .line 1199
    :cond_14
    :goto_23
    iput v10, v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->key:I

    .line 1200
    .line 1201
    return-void

    .line 1202
    nop

    .line 1203
    :sswitch_data_0
    .sparse-switch
        -0x6587838c -> :sswitch_5
        -0x3a8eb9e4 -> :sswitch_4
        0xed9 -> :sswitch_3
        0x1a084 -> :sswitch_2
        0x107fcc7 -> :sswitch_1
        0x762561e2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final migrateToPriorSnapshot(III)V
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getIndex(I)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {v0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 24
    .line 25
    iget v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    add-int/lit8 p2, p2, -0x1

    .line 34
    .line 35
    :goto_1
    if-ltz p2, :cond_b

    .line 36
    .line 37
    invoke-virtual {v0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    const-string v4, "SnapshotManager"

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    const-string/jumbo v3, "migrateToPriorSnapshot: Something wrong!"

    .line 46
    .line 47
    .line 48
    invoke-static {v4, v3}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_4

    .line 52
    .line 53
    :cond_1
    invoke-virtual {v3, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_a

    .line 58
    .line 59
    invoke-virtual {v3, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 64
    .line 65
    iget v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 66
    .line 67
    invoke-virtual {p2, v0}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    iget-object v0, v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 74
    .line 75
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v0, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->clone()Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v5, v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 92
    .line 93
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v5, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-virtual {v3, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iget v5, v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 107
    .line 108
    const/4 v6, -0x1

    .line 109
    if-eq v0, v6, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0, p1, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz p0, :cond_3

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 122
    .line 123
    .line 124
    move-result v7

    .line 125
    if-eqz v7, :cond_3

    .line 126
    .line 127
    invoke-virtual {p0, v0, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    .line 128
    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_3
    invoke-virtual {v3, p3, v6}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    .line 132
    .line 133
    .line 134
    :cond_4
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string/jumbo v0, "migrateToPriorSnapshot: source = "

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string v0, ", target = "

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    .line 161
    .line 162
    if-nez p0, :cond_8

    .line 163
    .line 164
    if-eqz v2, :cond_7

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 167
    .line 168
    .line 169
    move-result p0

    .line 170
    if-nez p0, :cond_5

    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_5
    if-nez p2, :cond_6

    .line 174
    .line 175
    invoke-static {p1, v5, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    :cond_6
    invoke-static {v2, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 187
    .line 188
    .line 189
    goto :goto_5

    .line 190
    :cond_7
    :goto_3
    const-string/jumbo p0, "migrateToPriorSnapshot: source does not exist."

    .line 191
    .line 192
    .line 193
    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-static {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    .line 197
    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_8
    if-eqz v1, :cond_9

    .line 201
    .line 202
    iget p0, v1, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 203
    .line 204
    invoke-static {p1, p0, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDir(III)Ljava/io/File;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-static {p1, v5, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperDir(III)Ljava/io/File;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-static {p0, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->renameDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 213
    .line 214
    .line 215
    :cond_9
    invoke-virtual {v3, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-static {p1, v5, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperFile(III)Ljava/io/File;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_a
    :goto_4
    add-int/lit8 p2, p2, -0x1

    .line 228
    .line 229
    goto/16 :goto_1

    .line 230
    .line 231
    :cond_b
    :goto_5
    return-void
.end method

.method public final removeSnapshotByKey(II)Ljava/util/Map;
    .locals 16

    .line 1
    move/from16 v1, p2

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    .line 12
    .line 13
    const-string/jumbo v3, "wallpaper_backup/"

    .line 14
    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v0, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 50
    .line 51
    iget v6, v6, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 52
    .line 53
    invoke-virtual {v5, v6}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    new-instance v7, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string/jumbo v8, "removeBackupFiles: which = "

    .line 60
    .line 61
    .line 62
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v4, ",wallpaperFile  = "

    .line 69
    .line 70
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v4, ", cropFile = "

    .line 77
    .line 78
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const-string v5, "SnapshotManager"

    .line 93
    .line 94
    invoke-static {v5, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v6}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    if-nez v0, :cond_2

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget v2, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->userId:I

    .line 105
    .line 106
    iget v4, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 107
    .line 108
    new-instance v5, Ljava/io/File;

    .line 109
    .line 110
    invoke-static {v2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v4, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-direct {v5, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 127
    .line 128
    .line 129
    const/4 v4, 0x1

    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    if-eqz v5, :cond_4

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    check-cast v5, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    .line 164
    .line 165
    if-nez v0, :cond_9

    .line 166
    .line 167
    const-string v3, "SnapshotHelper"

    .line 168
    .line 169
    if-gtz v1, :cond_5

    .line 170
    .line 171
    goto/16 :goto_8

    .line 172
    .line 173
    :cond_5
    const/4 v5, 0x2

    .line 174
    filled-new-array {v4, v5}, [I

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    const/16 v0, 0x10

    .line 179
    .line 180
    const/4 v6, 0x4

    .line 181
    const/16 v7, 0x8

    .line 182
    .line 183
    const/16 v8, 0x20

    .line 184
    .line 185
    filled-new-array {v6, v0, v7, v8}, [I

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    const/4 v8, 0x0

    .line 190
    move v9, v8

    .line 191
    :goto_3
    if-ge v9, v5, :cond_b

    .line 192
    .line 193
    aget v10, v4, v9

    .line 194
    .line 195
    move v11, v8

    .line 196
    :goto_4
    if-ge v11, v6, :cond_8

    .line 197
    .line 198
    aget v0, v7, v11

    .line 199
    .line 200
    or-int/2addr v0, v10

    .line 201
    move/from16 v12, p1

    .line 202
    .line 203
    :try_start_0
    invoke-static {v12, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->listBackupFiles(II)[Ljava/io/File;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    if-eqz v0, :cond_7

    .line 208
    .line 209
    array-length v13, v0

    .line 210
    move v14, v8

    .line 211
    :goto_5
    if-ge v14, v13, :cond_7

    .line 212
    .line 213
    aget-object v15, v0, v14

    .line 214
    .line 215
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    const-string v6, "_"

    .line 220
    .line 221
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    aget-object v5, v5, v8

    .line 226
    .line 227
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-ne v5, v1, :cond_6

    .line 232
    .line 233
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    if-nez v5, :cond_6

    .line 238
    .line 239
    new-instance v5, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string v6, "deleteFilesByKeyLegacy: failed to delete "

    .line 245
    .line 246
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-static {v3, v5}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .line 258
    .line 259
    goto :goto_6

    .line 260
    :catch_0
    move-exception v0

    .line 261
    goto :goto_7

    .line 262
    :cond_6
    :goto_6
    add-int/lit8 v14, v14, 0x1

    .line 263
    .line 264
    const/4 v5, 0x2

    .line 265
    const/4 v6, 0x4

    .line 266
    goto :goto_5

    .line 267
    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    const-string v6, "deleteFilesByKeyLegacy: "

    .line 270
    .line 271
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v3, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_7
    add-int/lit8 v11, v11, 0x1

    .line 289
    .line 290
    const/4 v5, 0x2

    .line 291
    const/4 v6, 0x4

    .line 292
    goto :goto_4

    .line 293
    :cond_8
    move/from16 v12, p1

    .line 294
    .line 295
    add-int/lit8 v9, v9, 0x1

    .line 296
    .line 297
    const/4 v5, 0x2

    .line 298
    const/4 v6, 0x4

    .line 299
    goto :goto_3

    .line 300
    :cond_9
    move/from16 v12, p1

    .line 301
    .line 302
    if-gtz v1, :cond_a

    .line 303
    .line 304
    goto :goto_8

    .line 305
    :cond_a
    new-instance v0, Ljava/io/File;

    .line 306
    .line 307
    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    invoke-static {v1, v3}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-static {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z

    .line 319
    .line 320
    .line 321
    :cond_b
    :goto_8
    return-object v2
.end method

.method public final removeSnapshotByWhich(II)Ljava/util/ArrayList;
    .locals 8

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    iget-object v4, v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 38
    .line 39
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v4, Ljava/util/HashMap;

    .line 44
    .line 45
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 55
    .line 56
    iget v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-static {v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    .line 70
    .line 71
    .line 72
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-nez v3, :cond_0

    .line 77
    .line 78
    iget v3, v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 79
    .line 80
    invoke-virtual {p0, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->removeByKey(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    const-string p0, "deleteFilesByWhich: "

    .line 88
    .line 89
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    const-string v3, "SnapshotHelper"

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    if-gtz p2, :cond_3

    .line 97
    .line 98
    goto/16 :goto_8

    .line 99
    .line 100
    :cond_3
    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->listBackupFiles(II)[Ljava/io/File;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    if-eqz p0, :cond_b

    .line 105
    .line 106
    array-length p1, p0

    .line 107
    :goto_1
    if-ge v2, p1, :cond_b

    .line 108
    .line 109
    aget-object v0, p0, v2

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-string v5, "_"

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    const/4 v5, 0x1

    .line 122
    aget-object v4, v4, v5

    .line 123
    .line 124
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    if-ne v4, p2, :cond_4

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_4

    .line 135
    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v5, "deleteFilesByWhichLegacy: failed to delete "

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-static {v3, v0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catch_0
    move-exception p0

    .line 158
    goto :goto_3

    .line 159
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 160
    .line 161
    goto :goto_1

    .line 162
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    const-string p2, "deleteFilesByWhichLegacy: "

    .line 165
    .line 166
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-static {v3, p1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    goto/16 :goto_8

    .line 180
    .line 181
    :cond_5
    if-gtz p2, :cond_6

    .line 182
    .line 183
    goto/16 :goto_8

    .line 184
    .line 185
    :cond_6
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 186
    .line 187
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string/jumbo v4, "wallpaper_backup"

    .line 192
    .line 193
    .line 194
    invoke-direct {v0, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-eqz p1, :cond_b

    .line 202
    .line 203
    array-length v0, p1

    .line 204
    if-lez v0, :cond_b

    .line 205
    .line 206
    move v0, v2

    .line 207
    :goto_4
    array-length v4, p1

    .line 208
    if-ge v0, v4, :cond_b

    .line 209
    .line 210
    aget-object v4, p1, v0

    .line 211
    .line 212
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    if-eqz v4, :cond_a

    .line 217
    .line 218
    aget-object v4, p1, v0

    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    if-eqz v4, :cond_8

    .line 225
    .line 226
    array-length v5, v4

    .line 227
    if-lez v5, :cond_8

    .line 228
    .line 229
    move v5, v2

    .line 230
    :goto_5
    array-length v6, v4

    .line 231
    if-ge v5, v6, :cond_8

    .line 232
    .line 233
    aget-object v6, v4, v5

    .line 234
    .line 235
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    move-result v6

    .line 243
    if-ne v6, p2, :cond_7

    .line 244
    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    aget-object v7, v4, v5

    .line 254
    .line 255
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-static {v3, v6}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    aget-object v6, v4, v5

    .line 270
    .line 271
    invoke-static {v6}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :catch_1
    move-exception p1

    .line 276
    goto :goto_7

    .line 277
    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    .line 278
    .line 279
    goto :goto_5

    .line 280
    :cond_8
    aget-object v4, p1, v0

    .line 281
    .line 282
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    if-eqz v4, :cond_9

    .line 287
    .line 288
    array-length v4, v4

    .line 289
    if-gtz v4, :cond_a

    .line 290
    .line 291
    :cond_9
    aget-object v4, p1, v0

    .line 292
    .line 293
    invoke-static {v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteDirectory(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    .line 295
    .line 296
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object p0

    .line 308
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object p0

    .line 315
    invoke-static {v3, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    :cond_b
    :goto_8
    return-object v1
.end method

.method public final saveSettingsLockedForSnapshot(I)V
    .locals 14

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->mCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 6
    .line 7
    const-string v1, "History"

    .line 8
    .line 9
    const-string v2, "Backup"

    .line 10
    .line 11
    const-string/jumbo v3, "saveSettingsLockedForSnapshot: Backup data size = "

    .line 12
    .line 13
    .line 14
    new-instance v4, Ljava/io/File;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string/jumbo v5, "wallpaper_backup_info.xml"

    .line 21
    .line 22
    .line 23
    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v4, Lcom/android/internal/util/JournaledFile;

    .line 31
    .line 32
    new-instance v5, Ljava/io/File;

    .line 33
    .line 34
    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v6, Ljava/io/File;

    .line 38
    .line 39
    const-string v7, ".tmp"

    .line 40
    .line 41
    invoke-static {p1, v7}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v4, v5, v6}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    const/4 v7, 0x0

    .line 59
    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-static {v5}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-interface {v6, p1, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    if-lez v8, :cond_6

    .line 76
    .line 77
    const-string v8, "SnapshotHelper"

    .line 78
    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-static {v8, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    add-int/lit8 v3, v3, -0x1

    .line 103
    .line 104
    :goto_0
    if-ltz v3, :cond_6

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    if-eqz v8, :cond_5

    .line 111
    .line 112
    invoke-interface {v6, p1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    .line 114
    .line 115
    const-string v9, "key"

    .line 116
    .line 117
    iget v10, v8, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 118
    .line 119
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v10

    .line 123
    invoke-interface {v6, p1, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    .line 125
    .line 126
    const-string/jumbo v9, "source"

    .line 127
    .line 128
    .line 129
    iget-object v10, v8, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    .line 130
    .line 131
    invoke-interface {v6, p1, v9, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v8}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v9

    .line 142
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v10

    .line 146
    if-eqz v10, :cond_4

    .line 147
    .line 148
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    check-cast v10, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    invoke-virtual {v8, v10}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 159
    .line 160
    .line 161
    move-result-object v11

    .line 162
    if-eqz v11, :cond_0

    .line 163
    .line 164
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-eqz v12, :cond_1

    .line 169
    .line 170
    const-string/jumbo v12, "wp"

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :catch_0
    move-object p1, v5

    .line 175
    goto :goto_4

    .line 176
    :cond_1
    const-string v12, "kwp"

    .line 177
    .line 178
    :goto_2
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 179
    .line 180
    .line 181
    move-result v13

    .line 182
    if-nez v13, :cond_2

    .line 183
    .line 184
    invoke-static {v10}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSupportLock(I)Z

    .line 185
    .line 186
    .line 187
    move-result v13

    .line 188
    if-eqz v13, :cond_0

    .line 189
    .line 190
    :cond_2
    move-object v13, p0

    .line 191
    check-cast v13, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 192
    .line 193
    invoke-virtual {v13, v6, v12, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestWriteWallpaperAttributes(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 194
    .line 195
    .line 196
    invoke-static {v10}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 197
    .line 198
    .line 199
    move-result v11

    .line 200
    iget-object v13, v8, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 201
    .line 202
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    check-cast v13, Ljava/util/HashMap;

    .line 207
    .line 208
    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v11

    .line 212
    check-cast v11, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 213
    .line 214
    if-eqz v11, :cond_3

    .line 215
    .line 216
    iget-object v11, v11, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :cond_3
    move-object v11, p1

    .line 220
    :goto_3
    check-cast v11, Ljava/util/HashMap;

    .line 221
    .line 222
    new-instance v13, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    const-string v12, "Settings"

    .line 231
    .line 232
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v12

    .line 239
    invoke-static {v6, v12, v11, v10}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->writeSnapshotSettingsData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/HashMap;I)V

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :cond_4
    invoke-interface {v6, p1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    .line 245
    .line 246
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 247
    .line 248
    goto/16 :goto_0

    .line 249
    .line 250
    :cond_6
    iget-object p0, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshotHistories:Ljava/util/ArrayList;

    .line 251
    .line 252
    if-eqz p0, :cond_7

    .line 253
    .line 254
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 255
    .line 256
    .line 257
    move-result v7

    .line 258
    :cond_7
    if-lez v7, :cond_8

    .line 259
    .line 260
    invoke-interface {v6, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    .line 262
    .line 263
    invoke-static {v6, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->writeSnapshotHistory(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v6, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    .line 268
    .line 269
    :cond_8
    invoke-interface {v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 273
    .line 274
    .line 275
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 276
    .line 277
    .line 278
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :catch_1
    :goto_4
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 289
    .line 290
    .line 291
    :goto_5
    return-void
.end method
