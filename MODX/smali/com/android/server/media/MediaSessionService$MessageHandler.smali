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

    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    .line 13
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq v0, v2, :cond_1a

    .line 7
    const/4 v3, 0x2

    .line 8
    if-eq v0, v3, :cond_16

    .line 10
    const/4 v4, 0x3

    .line 11
    if-eq v0, v4, :cond_0

    .line 13
    goto/16 :goto_f

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 19
    check-cast v0, Lcom/android/server/media/MediaSessionRecord;

    .line 21
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MEDIA_SESSION_AI:Z

    .line 28
    if-eqz v5, :cond_20

    .line 30
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mMediaSessionDataPlatform:Lcom/samsung/android/server/media/MediaSessionDataPlatform;

    .line 32
    if-eqz p0, :cond_20

    .line 34
    if-eqz v0, :cond_20

    .line 36
    iget-object v5, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 38
    iget-object v6, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 40
    iget v7, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 42
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_8

    .line 52
    iget-object v6, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    iget v7, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 56
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v7

    .line 60
    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 66
    if-nez v6, :cond_2

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

    .line 72
    if-eqz v5, :cond_3

    .line 74
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

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

    .line 82
    if-nez v5, :cond_5

    .line 84
    if-eqz v3, :cond_4

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

    .line 92
    :pswitch_1
    packed-switch v3, :pswitch_data_1

    .line 95
    :pswitch_2
    goto :goto_2

    .line 96
    :pswitch_3
    packed-switch v3, :pswitch_data_2

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

    .line 106
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 108
    invoke-static {v6, v3}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->isMetadataChanged(Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;Landroid/media/MediaMetadata;)I

    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_4

    .line 114
    goto :goto_0

    .line 115
    :cond_7
    if-eq p1, v3, :cond_1

    .line 117
    if-ne p1, v4, :cond_4

    .line 119
    goto :goto_0

    .line 120
    :cond_8
    if-eqz v5, :cond_4

    .line 122
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->isActive()Z

    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_4

    .line 128
    goto :goto_0

    .line 129
    :goto_4
    if-nez v3, :cond_9

    .line 131
    goto/16 :goto_f

    .line 133
    :cond_9
    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 135
    const-string v5, "MediaSessionDataPlatform"

    .line 137
    if-eq p1, v4, :cond_14

    .line 139
    if-eqz v3, :cond_14

    .line 141
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->isActive()Z

    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_14

    .line 147
    iget-object p1, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 149
    if-eqz p1, :cond_13

    .line 151
    const-string v3, "android.media.metadata.TITLE"

    .line 153
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_a

    .line 163
    goto/16 :goto_7

    .line 165
    :cond_a
    iget-object p1, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 167
    if-nez p1, :cond_b

    .line 169
    goto/16 :goto_f

    .line 171
    :cond_b
    new-instance v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 173
    iget v6, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 175
    invoke-virtual {p0, v6}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->getMediaType(I)Ljava/lang/String;

    .line 178
    move-result-object v6

    .line 179
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 182
    iget-object v7, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 184
    iput-object v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaType:Ljava/lang/String;

    .line 186
    iget v6, v0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 188
    if-ne v6, v2, :cond_c

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

    .line 195
    const-string/jumbo v6, "local"

    .line 198
    goto :goto_6

    .line 199
    :cond_d
    const-string/jumbo v6, "remote"

    .line 202
    :goto_6
    iput-object v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->castType:Ljava/lang/String;

    .line 204
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    .line 211
    move-result-wide v8

    .line 212
    iput-wide v8, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 214
    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 216
    iput-object v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->packageName:Ljava/lang/String;

    .line 218
    iget-wide v8, v0, Lcom/android/server/media/MediaSessionRecord;->mDuration:J

    .line 220
    iput-wide v8, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    .line 222
    if-eqz v7, :cond_e

    .line 224
    invoke-virtual {v7}, Landroid/media/session/PlaybackState;->getState()I

    .line 227
    move-result v1

    .line 228
    :cond_e
    iput v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playbackState:I

    .line 230
    const-wide/16 v6, 0x0

    .line 232
    cmp-long v1, v8, v6

    .line 234
    if-gtz v1, :cond_f

    .line 236
    const-string v1, "android.media.metadata.DURATION"

    .line 238
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 241
    move-result-wide v6

    .line 242
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->duration:J

    .line 244
    :cond_f
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->title:Ljava/lang/String;

    .line 250
    const-string v1, "android.media.metadata.ARTIST"

    .line 252
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    move-result-object v1

    .line 256
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artist:Ljava/lang/String;

    .line 258
    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    .line 260
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 263
    move-result-object v1

    .line 264
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtist:Ljava/lang/String;

    .line 266
    const-string v1, "android.media.metadata.ALBUM"

    .line 268
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 272
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->album:Ljava/lang/String;

    .line 274
    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    .line 276
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 279
    move-result-object v1

    .line 280
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->albumArtUri:Ljava/lang/String;

    .line 282
    const-string v1, "android.media.metadata.ART_URI"

    .line 284
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    move-result-object v1

    .line 288
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->artUri:Ljava/lang/String;

    .line 290
    const-string v1, "android.media.metadata.AUTHOR"

    .line 292
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    move-result-object v1

    .line 296
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->author:Ljava/lang/String;

    .line 298
    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    .line 300
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 303
    move-result-wide v6

    .line 304
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->btFolderType:J

    .line 306
    const-string v1, "android.media.metadata.COMPILATION"

    .line 308
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    move-result-object v1

    .line 312
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->compilation:Ljava/lang/String;

    .line 314
    const-string v1, "android.media.metadata.COMPOSER"

    .line 316
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    move-result-object v1

    .line 320
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->composer:Ljava/lang/String;

    .line 322
    const-string v1, "android.media.metadata.DATE"

    .line 324
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    move-result-object v1

    .line 328
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->date:Ljava/lang/String;

    .line 330
    const-string v1, "android.media.metadata.DISC_NUMBER"

    .line 332
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 335
    move-result-wide v6

    .line 336
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->discNumber:J

    .line 338
    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    .line 340
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    move-result-object v1

    .line 344
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayDescription:Ljava/lang/String;

    .line 346
    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    .line 348
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    move-result-object v1

    .line 352
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayIconUri:Ljava/lang/String;

    .line 354
    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    .line 356
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    move-result-object v1

    .line 360
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displaySubtitle:Ljava/lang/String;

    .line 362
    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    .line 364
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 367
    move-result-object v1

    .line 368
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->displayTitle:Ljava/lang/String;

    .line 370
    const-string v1, "android.media.metadata.GENRE"

    .line 372
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    move-result-object v1

    .line 376
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->genre:Ljava/lang/String;

    .line 378
    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 380
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 383
    move-result-object v1

    .line 384
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaId:Ljava/lang/String;

    .line 386
    const-string v1, "android.media.metadata.MEDIA_URI"

    .line 388
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    move-result-object v1

    .line 392
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaUri:Ljava/lang/String;

    .line 394
    const-string v1, "android.media.metadata.NUM_TRACKS"

    .line 396
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 399
    move-result-wide v6

    .line 400
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->numTracks:J

    .line 402
    const-string v1, "android.media.metadata.RATING"

    .line 404
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 407
    const-string v1, "android.media.metadata.TRACK_NUMBER"

    .line 409
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 412
    move-result-wide v6

    .line 413
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->trackNumber:J

    .line 415
    const-string v1, "android.media.metadata.WRITER"

    .line 417
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 420
    move-result-object v1

    .line 421
    iput-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->writer:Ljava/lang/String;

    .line 423
    const-string v1, "android.media.metadata.YEAR"

    .line 425
    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    .line 428
    move-result-wide v6

    .line 429
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->year:J

    .line 431
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    .line 434
    move-result-object p1

    .line 435
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    .line 438
    move-result-wide v6

    .line 439
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->endTime:J

    .line 441
    iget-wide v8, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 443
    sub-long/2addr v6, v8

    .line 444
    iput-wide v6, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->playingTime:J

    .line 446
    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 448
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 450
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 457
    move-result p1

    .line 458
    if-eqz p1, :cond_12

    .line 460
    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 462
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 464
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    move-result-object v1

    .line 468
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    move-result-object p1

    .line 472
    check-cast p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;

    .line 474
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    .line 476
    invoke-static {p1, v1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->isMetadataChanged(Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;Landroid/media/MediaMetadata;)I

    .line 479
    move-result v1

    .line 480
    const-string/jumbo v3, "put record (changed) changedState:"

    .line 483
    invoke-static {v1, v3, v5}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 486
    if-ne v1, v2, :cond_10

    .line 488
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->sendData(Lcom/android/server/media/MediaSessionRecord;)V

    .line 491
    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 493
    iget p1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 498
    move-result-object p1

    .line 499
    invoke-virtual {p0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    goto/16 :goto_f

    .line 504
    :cond_10
    if-eqz v1, :cond_20

    .line 506
    if-eqz p1, :cond_11

    .line 508
    iget-wide v1, p1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 510
    iput-wide v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->startTime:J

    .line 512
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 514
    iget p1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 516
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    move-result-object p1

    .line 520
    invoke-virtual {p0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    goto/16 :goto_f

    .line 525
    :cond_12
    const-string/jumbo p1, "put record (new)"

    .line 528
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 533
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 535
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 538
    move-result-object v1

    .line 539
    invoke-virtual {p1, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    const-string p1, "Audio"

    .line 544
    iget-object v1, v4, Lcom/samsung/android/server/media/MediaSessionDataPlatform$ListeningToMusic;->mediaType:Ljava/lang/String;

    .line 546
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 549
    move-result p1

    .line 550
    if-eqz p1, :cond_20

    .line 552
    iget p1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 554
    iget-object v0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mHandler:Landroid/os/Handler;

    .line 556
    new-instance v1, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;

    .line 558
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/media/MediaSessionDataPlatform$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/media/MediaSessionDataPlatform;I)V

    .line 561
    const-wide/16 p0, 0x7d0

    .line 563
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 566
    goto/16 :goto_f

    .line 568
    :cond_13
    :goto_7
    const-string/jumbo p0, "metadata title is empty"

    .line 571
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    goto/16 :goto_f

    .line 576
    :cond_14
    iget-object p1, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 578
    iget v1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 580
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 583
    move-result-object v1

    .line 584
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 587
    move-result p1

    .line 588
    if-eqz p1, :cond_15

    .line 590
    const-string/jumbo p1, "remove record"

    .line 593
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->sendData(Lcom/android/server/media/MediaSessionRecord;)V

    .line 599
    iget-object p0, p0, Lcom/samsung/android/server/media/MediaSessionDataPlatform;->mPlayList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 601
    iget p1, v0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 606
    move-result-object p1

    .line 607
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    goto/16 :goto_f

    .line 612
    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 614
    const-string/jumbo p1, "do nothing because "

    .line 617
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 620
    iget-object p1, v0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 622
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    const-string p1, " playback is not active"

    .line 627
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    move-result-object p0

    .line 634
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    goto/16 :goto_f

    .line 639
    :cond_16
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 641
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    check-cast p1, Ljava/lang/Integer;

    .line 645
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 648
    move-result p1

    .line 649
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 651
    monitor-enter v0

    .line 652
    :try_start_0
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 654
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 657
    move-result v1

    .line 658
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    .line 661
    move-result-object v1

    .line 662
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getSession2TokensLocked(I)Ljava/util/List;

    .line 665
    move-result-object v3

    .line 666
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 668
    check-cast v4, Ljava/util/ArrayList;

    .line 670
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 673
    move-result v4

    .line 674
    sub-int/2addr v4, v2

    .line 675
    :goto_8
    if-ltz v4, :cond_19

    .line 677
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 679
    check-cast v2, Ljava/util/ArrayList;

    .line 681
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 684
    move-result-object v2

    .line 685
    check-cast v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :try_start_1
    iget v5, v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->userId:I

    .line 689
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 691
    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    .line 694
    move-result v6

    .line 695
    if-ne v5, v6, :cond_17

    .line 697
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    .line 699
    invoke-interface {v2, v1}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V

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

    .line 709
    if-ne v5, p1, :cond_18

    .line 711
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$Session2TokensListenerRecord;->listener:Landroid/media/session/ISession2TokensListener;

    .line 713
    invoke-interface {v2, v3}, Landroid/media/session/ISession2TokensListener;->onSession2TokensChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    goto :goto_a

    .line 717
    :goto_9
    :try_start_2
    const-string v5, "MediaSessionService"

    .line 719
    const-string v6, "Failed to notify Session2Token change. Removing listener."

    .line 721
    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService;->mSession2TokensListenerRecords:Ljava/util/List;

    .line 726
    check-cast v2, Ljava/util/ArrayList;

    .line 728
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 731
    :cond_18
    :goto_a
    add-int/lit8 v4, v4, -0x1

    .line 733
    goto :goto_8

    .line 734
    :cond_19
    monitor-exit v0

    .line 735
    goto/16 :goto_f

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

    .line 741
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 743
    check-cast p1, Ljava/lang/Integer;

    .line 745
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 748
    move-result p1

    .line 749
    const-string/jumbo v0, "pushSession1ChangedOnHandler failed. No user with id="

    .line 752
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 754
    monitor-enter v3

    .line 755
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->getFullUserRecordLocked(I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    .line 758
    move-result-object v4

    .line 759
    if-nez v4, :cond_1b

    .line 761
    const-string p0, "MediaSessionService"

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    .line 765
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 774
    move-result-object p1

    .line 775
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 785
    move-result-object v0

    .line 786
    check-cast v0, Ljava/util/ArrayList;

    .line 788
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 791
    move-result v4

    .line 792
    new-instance v5, Ljava/util/ArrayList;

    .line 794
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 797
    :goto_c
    if-ge v1, v4, :cond_1c

    .line 799
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 802
    move-result-object v6

    .line 803
    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    .line 805
    invoke-virtual {p0, v6}, Lcom/android/server/media/MediaSessionService;->setMultiSoundFlag(Lcom/android/server/media/MediaSessionRecord;)V

    .line 808
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 811
    move-result-object v6

    .line 812
    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    .line 814
    iget-object v6, v6, Lcom/android/server/media/MediaSessionRecord;->mSessionToken:Landroid/media/session/MediaSession$Token;

    .line 816
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    add-int/lit8 v1, v1, 0x1

    .line 821
    goto :goto_c

    .line 822
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->pushRemoteVolumeUpdateLocked(I)V

    .line 825
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 827
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 830
    move-result v0

    .line 831
    sub-int/2addr v0, v2

    .line 832
    :goto_d
    if-ltz v0, :cond_1f

    .line 834
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 836
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 839
    move-result-object v1

    .line 840
    check-cast v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    .line 842
    iget v2, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I

    .line 844
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 846
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 849
    move-result v4

    .line 850
    if-eq v2, v4, :cond_1d

    .line 852
    iget v2, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->userId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 854
    if-ne v2, p1, :cond_1e

    .line 856
    :cond_1d
    :try_start_4
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->listener:Landroid/media/session/IActiveSessionsListener;

    .line 858
    invoke-interface {v1, v5}, Landroid/media/session/IActiveSessionsListener;->onActiveSessionsChanged(Ljava/util/List;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 861
    goto :goto_e

    .line 862
    :catch_1
    move-exception v1

    .line 863
    :try_start_5
    const-string v2, "MediaSessionService"

    .line 865
    const-string v4, "Dead ActiveSessionsListener in pushSessionsChanged, removing"

    .line 867
    invoke-static {v2, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 870
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService;->mSessionsListeners:Ljava/util/ArrayList;

    .line 872
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 875
    :cond_1e
    :goto_e
    add-int/lit8 v0, v0, -0x1

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

    .line 3
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 18
    move-result v0

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$MessageHandler;->mIntegerCache:Landroid/util/SparseArray;

    .line 25
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecordImpl;->getUserId()I

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    :cond_0
    instance-of p1, p1, Lcom/android/server/media/MediaSessionRecord;

    .line 34
    if-eqz p1, :cond_1

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

    .line 42
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 49
    return-void
.end method
