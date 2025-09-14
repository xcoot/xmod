.class public final Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;


# instance fields
.field public final synthetic this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

.field public final synthetic val$effect:I


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 11

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v0, "AS.SfxHelper"

    .line 11
    .line 12
    const-string v1, "MediaPlayer IOException: "

    .line 13
    .line 14
    const-string v2, "MediaPlayer IllegalArgumentException: "

    .line 15
    .line 16
    const-string v3, "MediaPlayer IllegalStateException: "

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    .line 19
    .line 20
    invoke-static {p0}, Lcom/samsung/android/media/AudioFxHelper;->getSoundFxVolumeByType(I)F

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    iget-object v4, p1, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 25
    .line 26
    iget-object v5, p1, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    .line 27
    .line 28
    aget v5, v5, p0

    .line 29
    .line 30
    check-cast v4, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 37
    .line 38
    iget-object v5, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 39
    .line 40
    const/4 v6, 0x1

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    iget v8, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 44
    .line 45
    if-eqz v8, :cond_2

    .line 46
    .line 47
    iget-boolean v8, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 48
    .line 49
    if-eqz v8, :cond_2

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x65

    .line 55
    .line 56
    invoke-static {v0}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-ne p0, v0, :cond_1

    .line 61
    .line 62
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 63
    .line 64
    if-eqz p0, :cond_0

    .line 65
    .line 66
    const/4 p0, 0x5

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 p0, 0x2

    .line 69
    :goto_0
    iget-object v0, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object p0, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 75
    .line 76
    iget v5, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 77
    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    const/high16 v10, 0x3f800000    # 1.0f

    .line 81
    .line 82
    move-object v4, p0

    .line 83
    move v6, v7

    .line 84
    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 85
    .line 86
    .line 87
    goto/16 :goto_7

    .line 88
    .line 89
    :cond_2
    new-instance p0, Landroid/media/MediaPlayer;

    .line 90
    .line 91
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 92
    .line 93
    .line 94
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 108
    .line 109
    .line 110
    new-instance p1, Lcom/android/server/audio/SoundEffectsHelper$3;

    .line 111
    .line 112
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Lcom/android/server/audio/SoundEffectsHelper$4;

    .line 119
    .line 120
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    :try_start_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 133
    .line 134
    .line 135
    goto/16 :goto_7

    .line 136
    .line 137
    :catch_0
    move-exception p0

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    goto/16 :goto_7

    .line 154
    .line 155
    :catchall_0
    move-exception p1

    .line 156
    goto :goto_5

    .line 157
    :catch_1
    move-exception p1

    .line 158
    goto :goto_2

    .line 159
    :catch_2
    move-exception p1

    .line 160
    goto :goto_3

    .line 161
    :catch_3
    move-exception p1

    .line 162
    goto :goto_4

    .line 163
    :goto_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .line 177
    .line 178
    :try_start_3
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 182
    .line 183
    .line 184
    goto :goto_7

    .line 185
    :catch_4
    move-exception p0

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :goto_3
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    .line 206
    .line 207
    :try_start_5
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    .line 211
    .line 212
    .line 213
    goto :goto_7

    .line 214
    :catch_5
    move-exception p0

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :goto_4
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    .line 235
    .line 236
    :try_start_7
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6

    .line 240
    .line 241
    .line 242
    goto :goto_7

    .line 243
    :catch_6
    move-exception p0

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :goto_5
    :try_start_8
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7

    .line 254
    .line 255
    .line 256
    goto :goto_6

    .line 257
    :catch_7
    move-exception p0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .line 272
    .line 273
    :goto_6
    throw p1

    .line 274
    :cond_3
    :goto_7
    return-void
.end method
