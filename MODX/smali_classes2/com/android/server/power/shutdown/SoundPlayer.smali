.class public final Lcom/android/server/power/shutdown/SoundPlayer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/power/shutdown/PlayerInterface;


# instance fields
.field public final context:Landroid/content/Context;

.field public silentShutdown:Z

.field public soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->silentShutdown:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/power/shutdown/SoundPlayer;->context:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final isPlaying()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;->running:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final prepare()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "audio"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/media/AudioManager;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v3, "g_shutdown_mute"

    .line 15
    .line 16
    const-string v4, "1"

    .line 17
    .line 18
    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, -0x270f

    .line 27
    .line 28
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "!@systemVol:%d"

    .line 37
    .line 38
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const-string v4, "Shutdown-SoundPlayer"

    .line 43
    .line 44
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    sget-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    const-string v6, "Shutdown-ResourceManager"

    .line 51
    .line 52
    if-eqz v3, :cond_1

    .line 53
    .line 54
    new-instance v3, Ljava/io/File;

    .line 55
    .line 56
    sget-object v7, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    const-string v3, "!@[getShutdownSoundPath] knoxSoundPath"

    .line 68
    .line 69
    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    sget-object v3, Lcom/android/server/power/shutdown/ResourceManager;->knoxSoundPath:Ljava/lang/String;

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_1
    const-string/jumbo v3, "persist.sys.omc_respath"

    .line 77
    .line 78
    .line 79
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    new-instance v7, Ljava/io/File;

    .line 86
    .line 87
    const-string v8, "/media/audio/ui/PowerOff.ogg"

    .line 88
    .line 89
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_2

    .line 101
    .line 102
    const-string v7, "!@[getShutdownSoundPath] PATH_SHUTDOWNSOUND_SKU_OGG"

    .line 103
    .line 104
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    new-instance v7, Ljava/io/File;

    .line 113
    .line 114
    const-string v8, "/media/audio/ui/PowerOff.wav"

    .line 115
    .line 116
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-eqz v7, :cond_3

    .line 128
    .line 129
    const-string v7, "!@[getShutdownSoundPath] PATH_SHUTDOWNSOUND_SKU_WAV"

    .line 130
    .line 131
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    goto :goto_1

    .line 139
    :cond_3
    sget-object v3, Lcom/android/server/power/shutdown/ResourceManager;->chameleonCode:Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    const-string v7, "/system/media/audio/ui/"

    .line 144
    .line 145
    const-string v8, "/PowerOff.ogg"

    .line 146
    .line 147
    invoke-static {v7, v3, v8}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    new-instance v7, Ljava/io/File;

    .line 152
    .line 153
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v8

    .line 157
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    if-eqz v7, :cond_4

    .line 165
    .line 166
    const-string v7, "!@[getShutdownSoundPath] chameleonPath"

    .line 167
    .line 168
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    .line 177
    .line 178
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v7

    .line 182
    if-eqz v7, :cond_5

    .line 183
    .line 184
    const-string v7, "!@[getShutdownSoundPath] PowerOff.wav"

    .line 185
    .line 186
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_5
    const-string v3, "//system/media/audio/ui/PowerOff.ogg"

    .line 191
    .line 192
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 193
    .line 194
    .line 195
    move-result v7

    .line 196
    if-eqz v7, :cond_6

    .line 197
    .line 198
    const-string v7, "!@[getShutdownSoundPath] PowerOff.ogg"

    .line 199
    .line 200
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_6
    move-object v3, v5

    .line 205
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/power/shutdown/SoundPlayer;->silentShutdown:Z

    .line 206
    .line 207
    const/4 v7, 0x0

    .line 208
    if-nez v6, :cond_9

    .line 209
    .line 210
    if-eqz v3, :cond_9

    .line 211
    .line 212
    if-eqz v0, :cond_9

    .line 213
    .line 214
    const-string v6, "AUTO_INSTALL"

    .line 215
    .line 216
    const-string v8, "Exception"

    .line 217
    .line 218
    const-string v9, "File close error"

    .line 219
    .line 220
    new-instance v10, Ljava/io/File;

    .line 221
    .line 222
    const-string v11, "/efs/sec_efs/auto_reboot/autoinstall.status"

    .line 223
    .line 224
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    .line 228
    .line 229
    .line 230
    move-result v11

    .line 231
    if-eqz v11, :cond_8

    .line 232
    .line 233
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    .line 234
    .line 235
    invoke-direct {v11, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 236
    .line 237
    .line 238
    new-instance v10, Ljava/io/InputStreamReader;

    .line 239
    .line 240
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 241
    .line 242
    invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 243
    .line 244
    .line 245
    new-instance v11, Ljava/io/BufferedReader;

    .line 246
    .line 247
    invoke-direct {v11, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 248
    .line 249
    .line 250
    :try_start_1
    invoke-virtual {v11}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v6
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 258
    :try_start_2
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 259
    .line 260
    .line 261
    goto :goto_7

    .line 262
    :catch_0
    move-exception v8

    .line 263
    invoke-static {v4, v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .line 265
    .line 266
    goto :goto_7

    .line 267
    :catchall_0
    move-exception p0

    .line 268
    move-object v5, v11

    .line 269
    goto :goto_4

    .line 270
    :catch_1
    move-exception v6

    .line 271
    goto :goto_2

    .line 272
    :catch_2
    move-exception v6

    .line 273
    goto :goto_3

    .line 274
    :catchall_1
    move-exception p0

    .line 275
    goto :goto_4

    .line 276
    :catch_3
    move-exception v6

    .line 277
    move-object v11, v5

    .line 278
    goto :goto_2

    .line 279
    :catch_4
    move-exception v6

    .line 280
    move-object v11, v5

    .line 281
    goto :goto_3

    .line 282
    :goto_2
    :try_start_3
    invoke-static {v4, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    .line 284
    .line 285
    if-eqz v11, :cond_8

    .line 286
    .line 287
    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 288
    .line 289
    .line 290
    goto :goto_6

    .line 291
    :catch_5
    move-exception v6

    .line 292
    invoke-static {v4, v9, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .line 294
    .line 295
    goto :goto_6

    .line 296
    :goto_3
    :try_start_5
    invoke-static {v4, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 297
    .line 298
    .line 299
    if-eqz v11, :cond_8

    .line 300
    .line 301
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 302
    .line 303
    .line 304
    goto :goto_6

    .line 305
    :goto_4
    if-eqz v5, :cond_7

    .line 306
    .line 307
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 308
    .line 309
    .line 310
    goto :goto_5

    .line 311
    :catch_6
    move-exception v0

    .line 312
    invoke-static {v4, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .line 314
    .line 315
    :cond_7
    :goto_5
    throw p0

    .line 316
    :cond_8
    :goto_6
    move v6, v7

    .line 317
    :goto_7
    if-nez v6, :cond_9

    .line 318
    .line 319
    move v6, v2

    .line 320
    goto :goto_8

    .line 321
    :cond_9
    move v6, v7

    .line 322
    :goto_8
    if-eqz v6, :cond_b

    .line 323
    .line 324
    const-string v0, "!@MediaPlayer exception. Sound will not start!"

    .line 325
    .line 326
    const-string/jumbo v6, "sound file.close"

    .line 327
    .line 328
    .line 329
    iget-object v8, p0, Lcom/android/server/power/shutdown/SoundPlayer;->context:Landroid/content/Context;

    .line 330
    .line 331
    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    check-cast v1, Landroid/media/AudioManager;

    .line 336
    .line 337
    new-instance v8, Ljava/io/File;

    .line 338
    .line 339
    invoke-direct {v8, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    :try_start_8
    new-instance v3, Ljava/io/FileInputStream;

    .line 343
    .line 344
    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 345
    .line 346
    .line 347
    :try_start_9
    new-instance v5, Landroid/media/MediaPlayer;

    .line 348
    .line 349
    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 353
    .line 354
    .line 355
    move-result-object v8

    .line 356
    invoke-virtual {v5, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 357
    .line 358
    .line 359
    new-instance v8, Landroid/media/AudioAttributes$Builder;

    .line 360
    .line 361
    invoke-direct {v8}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v8, v2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 365
    .line 366
    .line 367
    move-result-object v2

    .line 368
    const-string/jumbo v8, "stv_boot_sound"

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v8}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    const/16 v8, 0x8

    .line 380
    .line 381
    invoke-virtual {v1, v8, v7}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    invoke-virtual {v5, v2}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5, v7}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 395
    .line 396
    .line 397
    new-instance v1, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;

    .line 398
    .line 399
    invoke-direct {v1, v5}, Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;-><init>(Landroid/media/MediaPlayer;)V

    .line 400
    .line 401
    .line 402
    iput-object v1, p0, Lcom/android/server/power/shutdown/SoundPlayer;->soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 403
    .line 404
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 405
    .line 406
    .line 407
    goto/16 :goto_f

    .line 408
    .line 409
    :catch_7
    move-exception p0

    .line 410
    invoke-static {v4, v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 411
    .line 412
    .line 413
    goto/16 :goto_f

    .line 414
    .line 415
    :catchall_2
    move-exception p0

    .line 416
    move-object v5, v3

    .line 417
    goto :goto_d

    .line 418
    :catch_8
    move-exception p0

    .line 419
    move-object v5, v3

    .line 420
    goto :goto_9

    .line 421
    :catch_9
    move-exception p0

    .line 422
    move-object v5, v3

    .line 423
    goto :goto_a

    .line 424
    :catch_a
    move-exception p0

    .line 425
    move-object v5, v3

    .line 426
    goto :goto_b

    .line 427
    :catch_b
    move-exception p0

    .line 428
    move-object v5, v3

    .line 429
    goto :goto_c

    .line 430
    :catchall_3
    move-exception p0

    .line 431
    goto :goto_d

    .line 432
    :catch_c
    move-exception p0

    .line 433
    goto :goto_9

    .line 434
    :catch_d
    move-exception p0

    .line 435
    goto :goto_a

    .line 436
    :catch_e
    move-exception p0

    .line 437
    goto :goto_b

    .line 438
    :catch_f
    move-exception p0

    .line 439
    goto :goto_c

    .line 440
    :goto_9
    :try_start_b
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 441
    .line 442
    .line 443
    if-eqz v5, :cond_d

    .line 444
    .line 445
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 446
    .line 447
    .line 448
    goto :goto_f

    .line 449
    :goto_a
    :try_start_d
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 450
    .line 451
    .line 452
    if-eqz v5, :cond_d

    .line 453
    .line 454
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 455
    .line 456
    .line 457
    goto :goto_f

    .line 458
    :goto_b
    :try_start_f
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 459
    .line 460
    .line 461
    if-eqz v5, :cond_d

    .line 462
    .line 463
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 464
    .line 465
    .line 466
    goto :goto_f

    .line 467
    :goto_c
    :try_start_11
    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 468
    .line 469
    .line 470
    if-eqz v5, :cond_d

    .line 471
    .line 472
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    .line 473
    .line 474
    .line 475
    goto :goto_f

    .line 476
    :goto_d
    if-eqz v5, :cond_a

    .line 477
    .line 478
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_10

    .line 479
    .line 480
    .line 481
    goto :goto_e

    .line 482
    :catch_10
    move-exception v0

    .line 483
    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    .line 485
    .line 486
    :cond_a
    :goto_e
    throw p0

    .line 487
    :cond_b
    if-nez v0, :cond_c

    .line 488
    .line 489
    const-string p0, "g_shutdown_suspend=suspend"

    .line 490
    .line 491
    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    goto :goto_f

    .line 495
    :cond_c
    new-instance p0, Lcom/android/server/power/shutdown/SoundPlayer$1;

    .line 496
    .line 497
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 501
    .line 502
    .line 503
    :cond_d
    :goto_f
    return-void
.end method

.method public final start()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/shutdown/SoundPlayer;->soundThread:Lcom/android/server/power/shutdown/SoundPlayer$SoundThread;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
