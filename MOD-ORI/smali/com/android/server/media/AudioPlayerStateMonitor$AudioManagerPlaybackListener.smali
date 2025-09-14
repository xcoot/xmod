.class public final Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;
.super Landroid/media/AudioManager$AudioPlaybackCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/AudioPlayerStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/AudioPlayerStateMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioManager$AudioPlaybackCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPlaybackConfigChanged(Ljava/util/List;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/media/AudioPlayerStateMonitor;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    .line 9
    .line 10
    check-cast v1, Landroid/util/ArraySet;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 13
    .line 14
    .line 15
    new-instance v1, Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 43
    .line 44
    iget-object v4, v4, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    check-cast v4, Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v1, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto/16 :goto_8

    .line 73
    .line 74
    :cond_1
    const/4 v2, 0x0

    .line 75
    move v3, v2

    .line 76
    :goto_1
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-ge v3, v4, :cond_6

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 87
    .line 88
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    iget-object v6, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 93
    .line 94
    iget-object v6, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 95
    .line 96
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-nez v6, :cond_5

    .line 109
    .line 110
    sget-boolean v6, Lcom/android/server/media/AudioPlayerStateMonitor;->DEBUG:Z

    .line 111
    .line 112
    if-eqz v6, :cond_2

    .line 113
    .line 114
    sget-object v6, Lcom/android/server/media/AudioPlayerStateMonitor;->TAG:Ljava/lang/String;

    .line 115
    .line 116
    new-instance v7, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v8, "Found a new active media playback. "

    .line 122
    .line 123
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    :cond_2
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 137
    .line 138
    iget-object v4, v4, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 139
    .line 140
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    check-cast v4, Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    if-nez v4, :cond_3

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_3
    if-lez v4, :cond_4

    .line 154
    .line 155
    iget-object v6, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 156
    .line 157
    iget-object v6, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 158
    .line 159
    check-cast v6, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    :cond_4
    iget-object v4, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 165
    .line 166
    iget-object v4, v4, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 167
    .line 168
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v4, Ljava/util/ArrayList;

    .line 173
    .line 174
    invoke-virtual {v4, v2, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 181
    .line 182
    iget-object v3, v3, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    .line 183
    .line 184
    check-cast v3, Landroid/util/ArraySet;

    .line 185
    .line 186
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 187
    .line 188
    .line 189
    move-result v3

    .line 190
    const/4 v4, 0x1

    .line 191
    if-lez v3, :cond_a

    .line 192
    .line 193
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 194
    .line 195
    iget-object v5, v3, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    .line 196
    .line 197
    iget-object v3, v3, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 198
    .line 199
    check-cast v3, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    check-cast v5, Landroid/util/ArraySet;

    .line 206
    .line 207
    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    if-nez v3, :cond_a

    .line 212
    .line 213
    move v3, v4

    .line 214
    :goto_3
    iget-object v5, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 215
    .line 216
    iget-object v5, v5, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 217
    .line 218
    check-cast v5, Ljava/util/ArrayList;

    .line 219
    .line 220
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-ge v3, v5, :cond_8

    .line 225
    .line 226
    iget-object v5, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 227
    .line 228
    iget-object v5, v5, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 229
    .line 230
    check-cast v5, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v5

    .line 236
    check-cast v5, Ljava/lang/Integer;

    .line 237
    .line 238
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    iget-object v7, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 243
    .line 244
    iget-object v7, v7, Lcom/android/server/media/AudioPlayerStateMonitor;->mActiveAudioUids:Ljava/util/Set;

    .line 245
    .line 246
    check-cast v7, Landroid/util/ArraySet;

    .line 247
    .line 248
    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-eqz v5, :cond_7

    .line 253
    .line 254
    goto :goto_4

    .line 255
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_8
    const/4 v3, -0x1

    .line 259
    move v6, v3

    .line 260
    :goto_4
    if-lez v3, :cond_9

    .line 261
    .line 262
    iget-object v5, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 263
    .line 264
    iget-object v5, v5, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 265
    .line 266
    add-int/lit8 v7, v3, -0x1

    .line 267
    .line 268
    move-object v8, v5

    .line 269
    check-cast v8, Ljava/util/ArrayList;

    .line 270
    .line 271
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    check-cast v7, Ljava/lang/Integer;

    .line 276
    .line 277
    check-cast v5, Ljava/util/ArrayList;

    .line 278
    .line 279
    invoke-virtual {v5, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    add-int/lit8 v3, v3, -0x1

    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_9
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 286
    .line 287
    iget-object v3, v3, Lcom/android/server/media/AudioPlayerStateMonitor;->mSortedAudioPlaybackClientUids:Ljava/util/List;

    .line 288
    .line 289
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    check-cast v3, Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-virtual {v3, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    :cond_b
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eqz v3, :cond_d

    .line 307
    .line 308
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 313
    .line 314
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 315
    .line 316
    .line 317
    move-result v5

    .line 318
    iget-object v6, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 319
    .line 320
    iget-object v6, v6, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 321
    .line 322
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 323
    .line 324
    .line 325
    move-result-object v5

    .line 326
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v5

    .line 330
    if-eqz v5, :cond_c

    .line 331
    .line 332
    move v5, v4

    .line 333
    goto :goto_6

    .line 334
    :cond_c
    move v5, v2

    .line 335
    :goto_6
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    .line 336
    .line 337
    .line 338
    move-result v6

    .line 339
    if-eq v5, v6, :cond_b

    .line 340
    .line 341
    iget-object v5, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 342
    .line 343
    invoke-static {v5, v3, v2}, Lcom/android/server/media/AudioPlayerStateMonitor;->-$$Nest$msendAudioPlayerActiveStateChangedMessageLocked(Lcom/android/server/media/AudioPlayerStateMonitor;Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :cond_d
    iget-object p1, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 348
    .line 349
    iget-object p1, p1, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 350
    .line 351
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 352
    .line 353
    .line 354
    move-result-object p1

    .line 355
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 356
    .line 357
    .line 358
    move-result-object p1

    .line 359
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-eqz v2, :cond_e

    .line 364
    .line 365
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v2, Landroid/media/AudioPlaybackConfiguration;

    .line 370
    .line 371
    iget-object v3, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 372
    .line 373
    invoke-static {v3, v2, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->-$$Nest$msendAudioPlayerActiveStateChangedMessageLocked(Lcom/android/server/media/AudioPlayerStateMonitor;Landroid/media/AudioPlaybackConfiguration;Z)V

    .line 374
    .line 375
    .line 376
    goto :goto_7

    .line 377
    :cond_e
    iget-object p0, p0, Lcom/android/server/media/AudioPlayerStateMonitor$AudioManagerPlaybackListener;->this$0:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 378
    .line 379
    iput-object v1, p0, Lcom/android/server/media/AudioPlayerStateMonitor;->mPrevActiveAudioPlaybackConfigs:Landroid/util/ArrayMap;

    .line 380
    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 383
    :goto_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    throw p0
.end method
