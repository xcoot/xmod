.class public final Lcom/android/server/media/MediaSessionService$MessageHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mIntegerCache:Landroid/util/SparseArray;

.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_1a

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_16

    .line 9
    .line 10
    const/4 v4, 0x3

    .line 11
    if-eq v0, v4, :cond_0

    .line 12
    .line 13
    goto/16 :goto_f

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 16
    .line 17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 20
    .line 21
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    .line 27
    .line 28
    if-eqz v5, :cond_20

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mMediaSessionDataPlatform:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 31
    .line 32
    if-eqz p0, :cond_20

    .line 33
    .line 34
    if-eqz v0, :cond_20

    .line 35
    .line 36
    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    .line 40
    iget v7, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 41
    .line 42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_8

    .line 51
    .line 52
    iget-object v6, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    iget v7, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 55
    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 65
    .line 66
    if-nez v6, :cond_2

    .line 67
    .line 68
    :cond_1
    :goto_0
    :pswitch_0
    move v3, v2

    .line 69
    goto :goto_4

    .line 70
    :cond_2
    if-nez p1, :cond_6

    .line 71
    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    move v3, v1

    .line 80
    :goto_1
    iget v5, v6, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playbackState:I

    .line 81
    .line 82
    if-nez v5, :cond_5

    .line 83
    .line 84
    if-eqz v3, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    :goto_2
    move v3, v1

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    packed-switch v5, :pswitch_data_0

    .line 90
    .line 91
    .line 92
    :pswitch_1
    packed-switch v3, :pswitch_data_1

    .line 93
    .line 94
    .line 95
    :pswitch_2
    goto :goto_2

    .line 96
    :pswitch_3
    packed-switch v3, :pswitch_data_2

    .line 97
    .line 98
    .line 99
    :pswitch_4
    move v3, v1

    .line 100
    goto :goto_3

    .line 101
    :pswitch_5
    move v3, v2

    .line 102
    :goto_3
    xor-int/2addr v3, v2

    .line 103
    goto :goto_4

    .line 104
    :cond_6
    if-ne p1, v2, :cond_7

    .line 105
    .line 106
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 107
    .line 108
    invoke-static {v6, v3}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->isMetadataChanged(Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;Landroid/media/MediaMetadata;)I

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_7
    if-eq p1, v3, :cond_1

    .line 116
    .line 117
    if-ne p1, v4, :cond_4

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_8
    if-eqz v5, :cond_4

    .line 121
    .line 122
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->isActive()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :goto_4
    if-nez v3, :cond_9

    .line 130
    .line 131
    goto/16 :goto_f

    .line 132
    .line 133
    :cond_9
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 134
    .line 135
    const-string v5, "MediaSessionDataPlatform"

    .line 136
    .line 137
    if-eq p1, v4, :cond_14

    .line 138
    .line 139
    if-eqz v3, :cond_14

    .line 140
    .line 141
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->isActive()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_14

    .line 146
    .line 147
    iget-object p1, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 148
    .line 149
    if-eqz p1, :cond_13

    .line 150
    .line 151
    const-string v3, "android.media.metadata.TITLE"

    .line 152
    .line 153
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_a

    .line 162
    .line 163
    goto/16 :goto_7

    .line 164
    .line 165
    :cond_a
    iget-object p1, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 166
    .line 167
    if-nez p1, :cond_b

    .line 168
    .line 169
    goto/16 :goto_f

    .line 170
    .line 171
    :cond_b
    new-instance v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 172
    .line 173
    iget v6, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 174
    .line 175
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->getMediaType(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 180
    .line 181
    .line 182
    iget-object v7, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 183
    .line 184
    iput-object v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaType:Ljava/lang/String;

    .line 185
    .line 186
    iget v6, v0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 187
    .line 188
    if-ne v6, v2, :cond_c

    .line 189
    .line 190
    move v6, v2

    .line 191
    goto :goto_5

    .line 192
    :cond_c
    move v6, v1

    .line 193
    :goto_5
    if-eqz v6, :cond_d

    .line 194
    .line 195
    const-string/jumbo v6, "local"

    .line 196
    .line 197
    .line 198
    goto :goto_6

    .line 199
    :cond_d
    const-string/jumbo v6, "remote"

    .line 200
    .line 201
    .line 202
    :goto_6
    iput-object v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->castType:Ljava/lang/String;

    .line 203
    .line 204
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    .line 209
    .line 210
    .line 211
    move-result-wide v8

    .line 212
    iput-wide v8, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 213
    .line 214
    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 215
    .line 216
    iput-object v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->packageName:Ljava/lang/String;

    .line 217
    .line 218
    iget-wide v8, v0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 219
    .line 220
    iput-wide v8, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    .line 221
    .line 222
    if-eqz v7, :cond_e

    .line 223
    .line 224
    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    :cond_e
    iput v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playbackState:I

    .line 229
    .line 230
    const-wide/16 v6, 0x0

    .line 231
    .line 232
    cmp-long v1, v8, v6

    .line 233
    .line 234
    if-gtz v1, :cond_f

    .line 235
    .line 236
    const-string v1, "android.media.metadata.DURATION"

    .line 237
    .line 238
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 239
    .line 240
    .line 241
    move-result-wide v6

    .line 242
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    .line 243
    .line 244
    :cond_f
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->title:Ljava/lang/String;

    .line 249
    .line 250
    const-string v1, "android.media.metadata.ARTIST"

    .line 251
    .line 252
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artist:Ljava/lang/String;

    .line 257
    .line 258
    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    .line 259
    .line 260
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtist:Ljava/lang/String;

    .line 265
    .line 266
    const-string v1, "android.media.metadata.ALBUM"

    .line 267
    .line 268
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->album:Ljava/lang/String;

    .line 273
    .line 274
    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    .line 275
    .line 276
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtUri:Ljava/lang/String;

    .line 281
    .line 282
    const-string v1, "android.media.metadata.ART_URI"

    .line 283
    .line 284
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artUri:Ljava/lang/String;

    .line 289
    .line 290
    const-string v1, "android.media.metadata.AUTHOR"

    .line 291
    .line 292
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->author:Ljava/lang/String;

    .line 297
    .line 298
    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    .line 299
    .line 300
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 301
    .line 302
    .line 303
    move-result-wide v6

    .line 304
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->btFolderType:J

    .line 305
    .line 306
    const-string v1, "android.media.metadata.COMPILATION"

    .line 307
    .line 308
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->compilation:Ljava/lang/String;

    .line 313
    .line 314
    const-string v1, "android.media.metadata.COMPOSER"

    .line 315
    .line 316
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->composer:Ljava/lang/String;

    .line 321
    .line 322
    const-string v1, "android.media.metadata.DATE"

    .line 323
    .line 324
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->date:Ljava/lang/String;

    .line 329
    .line 330
    const-string v1, "android.media.metadata.DISC_NUMBER"

    .line 331
    .line 332
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 333
    .line 334
    .line 335
    move-result-wide v6

    .line 336
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->discNumber:J

    .line 337
    .line 338
    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 339
    .line 340
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayDescription:Ljava/lang/String;

    .line 345
    .line 346
    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    .line 347
    .line 348
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayIconUri:Ljava/lang/String;

    .line 353
    .line 354
    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 355
    .line 356
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displaySubtitle:Ljava/lang/String;

    .line 361
    .line 362
    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    .line 363
    .line 364
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayTitle:Ljava/lang/String;

    .line 369
    .line 370
    const-string v1, "android.media.metadata.GENRE"

    .line 371
    .line 372
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->genre:Ljava/lang/String;

    .line 377
    .line 378
    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 379
    .line 380
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaId:Ljava/lang/String;

    .line 385
    .line 386
    const-string v1, "android.media.metadata.MEDIA_URI"

    .line 387
    .line 388
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaUri:Ljava/lang/String;

    .line 393
    .line 394
    const-string v1, "android.media.metadata.NUM_TRACKS"

    .line 395
    .line 396
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 397
    .line 398
    .line 399
    move-result-wide v6

    .line 400
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->numTracks:J

    .line 401
    .line 402
    const-string v1, "android.media.metadata.RATING"

    .line 403
    .line 404
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    const-string v1, "android.media.metadata.TRACK_NUMBER"

    .line 408
    .line 409
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 410
    .line 411
    .line 412
    move-result-wide v6

    .line 413
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->trackNumber:J

    .line 414
    .line 415
    const-string v1, "android.media.metadata.WRITER"

    .line 416
    .line 417
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->writer:Ljava/lang/String;

    .line 422
    .line 423
    const-string v1, "android.media.metadata.YEAR"

    .line 424
    .line 425
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 426
    .line 427
    .line 428
    move-result-wide v6

    .line 429
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->year:J

    .line 430
    .line 431
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    .line 436
    .line 437
    .line 438
    move-result-wide v6

    .line 439
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->endTime:J

    .line 440
    .line 441
    iget-wide v8, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 442
    .line 443
    sub-long/2addr v6, v8

    .line 444
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playingTime:J

    .line 445
    .line 446
    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 447
    .line 448
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 449
    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_12

    .line 459
    .line 460
    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 461
    .line 462
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 463
    .line 464
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    check-cast p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 473
    .line 474
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 475
    .line 476
    invoke-static {p1, v1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->isMetadataChanged(Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;Landroid/media/MediaMetadata;)I

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    const-string/jumbo v3, "put record (changed) changedState:"

    .line 481
    .line 482
    .line 483
    invoke-static {v1, v3, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    if-ne v1, v2, :cond_10

    .line 487
    .line 488
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->sendData(Lcom/android/server/media/MediaSessionRecord;)V

    .line 489
    .line 490
    .line 491
    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 492
    .line 493
    iget p1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 494
    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 496
    .line 497
    .line 498
    move-result-object p1

    .line 499
    invoke-virtual {p0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    .line 501
    .line 502
    goto/16 :goto_f

    .line 503
    .line 504
    :cond_10
    if-eqz v1, :cond_20

    .line 505
    .line 506
    if-eqz p1, :cond_11

    .line 507
    .line 508
    iget-wide v1, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 509
    .line 510
    iput-wide v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 511
    .line 512
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 513
    .line 514
    iget p1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 515
    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    goto/16 :goto_f

    .line 524
    .line 525
    :cond_12
    const-string/jumbo p1, "put record (new)"

    .line 526
    .line 527
    .line 528
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .line 530
    .line 531
    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 532
    .line 533
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 534
    .line 535
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {p1, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    const-string p1, "Audio"

    .line 543
    .line 544
    iget-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaType:Ljava/lang/String;

    .line 545
    .line 546
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result p1

    .line 550
    if-eqz p1, :cond_20

    .line 551
    .line 552
    iget p1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 553
    .line 554
    iget-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mHandler:Landroid/os/Handler;

    .line 555
    .line 556
    new-instance v1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;

    .line 557
    .line 558
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/media/MediaSessionDataPlatform;I)V

    .line 559
    .line 560
    .line 561
    const-wide/16 p0, 0x7d0

    .line 562
    .line 563
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 564
    .line 565
    .line 566
    goto/16 :goto_f

    .line 567
    .line 568
    :cond_13
    :goto_7
    const-string/jumbo p0, "metadata title is empty"

    .line 569
    .line 570
    .line 571
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .line 573
    .line 574
    goto/16 :goto_f

    .line 575
    .line 576
    :cond_14
    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 577
    .line 578
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 579
    .line 580
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 585
    .line 586
    .line 587
    move-result p1

    .line 588
    if-eqz p1, :cond_15

    .line 589
    .line 590
    const-string/jumbo p1, "remove record"

    .line 591
    .line 592
    .line 593
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->sendData(Lcom/android/server/media/MediaSessionRecord;)V

    .line 597
    .line 598
    .line 599
    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 600
    .line 601
    iget p1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 602
    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    .line 609
    .line 610
    goto/16 :goto_f

    .line 611
    .line 612
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    const-string/jumbo p1, "do nothing because "

    .line 615
    .line 616
    .line 617
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-object p1, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 621
    .line 622
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string p1, " playback is not active"

    .line 626
    .line 627
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object p0

    .line 634
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    .line 636
    .line 637
    goto/16 :goto_f

    .line 638
    .line 639
    :cond_16
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 640
    .line 641
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 642
    .line 643
    check-cast p1, Ljava/lang/Integer;

    .line 644
    .line 645
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 646
    .line 647
    .line 648
    move-result p1

    .line 649
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 650
    .line 651
    monitor-enter v0

    .line 652
    :try_start_0
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 653
    .line 654
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 655
    .line 656
    .line 657
    move-result v1

    .line 658
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    .line 659
    .line 660
    .line 661
    move-result-object v1

    .line 662
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 667
    .line 668
    check-cast v4, Ljava/util/ArrayList;

    .line 669
    .line 670
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 671
    .line 672
    .line 673
    move-result v4

    .line 674
    sub-int/2addr v4, v2

    .line 675
    :goto_8
    if-ltz v4, :cond_19

    .line 676
    .line 677
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 678
    .line 679
    check-cast v2, Ljava/util/ArrayList;

    .line 680
    .line 681
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    check-cast v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    .line 687
    :try_start_1
    iget v5, v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    .line 688
    .line 689
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 690
    .line 691
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 692
    .line 693
    .line 694
    move-result v6

    .line 695
    if-ne v5, v6, :cond_17

    .line 696
    .line 697
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    .line 698
    .line 699
    invoke-interface {v2, v1}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V

    .line 700
    .line 701
    .line 702
    goto :goto_a

    .line 703
    :catchall_0
    move-exception p0

    .line 704
    goto :goto_b

    .line 705
    :catch_0
    move-exception v2

    .line 706
    goto :goto_9

    .line 707
    :cond_17
    iget v5, v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    .line 708
    .line 709
    if-ne v5, p1, :cond_18

    .line 710
    .line 711
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    .line 712
    .line 713
    invoke-interface {v2, v3}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    .line 715
    .line 716
    goto :goto_a

    .line 717
    :goto_9
    :try_start_2
    const-string v5, "MediaSessionService"

    .line 718
    .line 719
    const-string v6, "Failed to notify Session2Token change. Removing listener."

    .line 720
    .line 721
    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    .line 723
    .line 724
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 725
    .line 726
    check-cast v2, Ljava/util/ArrayList;

    .line 727
    .line 728
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 729
    .line 730
    .line 731
    :cond_18
    :goto_a
    add-int/lit8 v4, v4, -0x1

    .line 732
    .line 733
    goto :goto_8

    .line 734
    :cond_19
    monitor-exit v0

    .line 735
    goto/16 :goto_f

    .line 736
    .line 737
    :goto_b
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 738
    throw p0

    .line 739
    :cond_1a
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 740
    .line 741
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 742
    .line 743
    check-cast p1, Ljava/lang/Integer;

    .line 744
    .line 745
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 746
    .line 747
    .line 748
    move-result p1

    .line 749
    const-string/jumbo v0, "pushSession1ChangedOnHandler failed. No user with id="

    .line 750
    .line 751
    .line 752
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 753
    .line 754
    monitor-enter v3

    .line 755
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 756
    .line 757
    .line 758
    move-result-object v4

    .line 759
    if-nez v4, :cond_1b

    .line 760
    .line 761
    const-string p0, "MediaSessionService"

    .line 762
    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    .line 764
    .line 765
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 766
    .line 767
    .line 768
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object p1

    .line 775
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .line 777
    .line 778
    monitor-exit v3

    .line 779
    goto :goto_f

    .line 780
    :catchall_1
    move-exception p0

    .line 781
    goto :goto_10

    .line 782
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getActiveSessionsLocked(I)Ljava/util/List;

    .line 783
    .line 784
    .line 785
    move-result-object v0

    .line 786
    check-cast v0, Ljava/util/ArrayList;

    .line 787
    .line 788
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 789
    .line 790
    .line 791
    move-result v4

    .line 792
    new-instance v5, Ljava/util/ArrayList;

    .line 793
    .line 794
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .line 796
    .line 797
    :goto_c
    if-ge v1, v4, :cond_1c

    .line 798
    .line 799
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    move-result-object v6

    .line 803
    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    .line 804
    .line 805
    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaSessionService;->setMultiSoundFlag(Lcom/android/server/media/MediaSessionRecord;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 809
    .line 810
    .line 811
    move-result-object v6

    .line 812
    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    .line 813
    .line 814
    iget-object v6, v6, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 815
    .line 816
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    add-int/lit8 v1, v1, 0x1

    .line 820
    .line 821
    goto :goto_c

    .line 822
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 823
    .line 824
    .line 825
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 826
    .line 827
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 828
    .line 829
    .line 830
    move-result v0

    .line 831
    sub-int/2addr v0, v2

    .line 832
    :goto_d
    if-ltz v0, :cond_1f

    .line 833
    .line 834
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 835
    .line 836
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    move-result-object v1

    .line 840
    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 841
    .line 842
    iget v2, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    .line 843
    .line 844
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 845
    .line 846
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 847
    .line 848
    .line 849
    move-result v4

    .line 850
    if-eq v2, v4, :cond_1d

    .line 851
    .line 852
    iget v2, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 853
    .line 854
    if-ne v2, p1, :cond_1e

    .line 855
    .line 856
    :cond_1d
    :try_start_4
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    .line 857
    .line 858
    invoke-interface {v1, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 859
    .line 860
    .line 861
    goto :goto_e

    .line 862
    :catch_1
    move-exception v1

    .line 863
    :try_start_5
    const-string v2, "MediaSessionService"

    .line 864
    .line 865
    const-string v4, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    .line 866
    .line 867
    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 868
    .line 869
    .line 870
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 871
    .line 872
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 873
    .line 874
    .line 875
    :cond_1e
    :goto_e
    add-int/lit8 v0, v0, -0x1

    .line 876
    .line 877
    goto :goto_d

    .line 878
    :cond_1f
    monitor-exit v3

    .line 879
    :cond_20
    :goto_f
    return-void

    .line 880
    :goto_10
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 881
    throw p0

    .line 882
    nop

    .line 883
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    .line 904
    .line 905
    .line 906
    .line 907
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final postSessionsChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    instance-of p1, p1, Lcom/android/server/media/MediaSessionRecord;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x2

    .line 39
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
