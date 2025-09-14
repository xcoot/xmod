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

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 6
    iput p2, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 11

    .line 1
    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->this$1:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 5
    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v0, "AS.SfxHelper"

    .line 12
    const-string v1, "MediaPlayer IOException: "

    .line 14
    const-string v2, "MediaPlayer IllegalArgumentException: "

    .line 16
    const-string v3, "MediaPlayer IllegalStateException: "

    .line 18
    iget p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler$1;->val$effect:I

    .line 20
    invoke-static {p0}, Lcom/samsung/android/media/AudioFxHelper;->getSoundFxVolumeByType(I)F

    .line 23
    move-result v7

    .line 24
    iget-object v4, p1, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 26
    iget-object v5, p1, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    .line 28
    aget v5, v5, p0

    .line 30
    check-cast v4, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 38
    iget-object v5, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 40
    const/4 v6, 0x1

    .line 41
    if-eqz v5, :cond_2

    .line 43
    iget v8, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 45
    if-eqz v8, :cond_2

    .line 47
    iget-boolean v8, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 49
    if-eqz v8, :cond_2

    .line 51
    invoke-virtual {v5, v6}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 54
    const/16 v0, 0x65

    .line 56
    invoke-static {v0}, Lcom/samsung/android/media/AudioFxHelper;->getPlaySoundTypeForSEP(I)I

    .line 59
    move-result v0

    .line 60
    if-ne p0, v0, :cond_1

    .line 62
    sget-boolean p0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    .line 64
    if-eqz p0, :cond_0

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

    .line 71
    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 74
    :cond_1
    iget-object p0, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 76
    iget v5, v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v9, 0x0

    .line 80
    const/high16 v10, 0x3f800000    # 1.0f

    .line 82
    move-object v4, p0

    .line 83
    move v6, v7

    .line 84
    invoke-virtual/range {v4 .. v10}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 87
    goto/16 :goto_7

    .line 89
    :cond_2
    new-instance p0, Landroid/media/MediaPlayer;

    .line 91
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 94
    :try_start_0
    invoke-virtual {p1, v4}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 104
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    .line 107
    invoke-virtual {p0, v7}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 110
    new-instance p1, Lcom/android/server/audio/SoundEffectsHelper$3;

    .line 112
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 118
    new-instance p1, Lcom/android/server/audio/SoundEffectsHelper$4;

    .line 120
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 126
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :try_start_1
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 132
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    goto/16 :goto_7

    .line 137
    :catch_0
    move-exception p0

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object p0

    .line 150
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    goto/16 :goto_7

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

    .line 165
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 178
    :try_start_3
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 181
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    .line 184
    goto :goto_7

    .line 185
    :catch_4
    move-exception p0

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    .line 188
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    goto :goto_1

    .line 192
    :goto_3
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object p1

    .line 204
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    :try_start_5
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 210
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_5

    .line 213
    goto :goto_7

    .line 214
    :catch_5
    move-exception p0

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    .line 217
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    goto :goto_1

    .line 221
    :goto_4
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object p1

    .line 233
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 236
    :try_start_7
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 239
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_6

    .line 242
    goto :goto_7

    .line 243
    :catch_6
    move-exception p0

    .line 244
    new-instance p1, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    goto :goto_1

    .line 250
    :goto_5
    :try_start_8
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 253
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_7

    .line 256
    goto :goto_6

    .line 257
    :catch_7
    move-exception p0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    .line 260
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object p0

    .line 270
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_6
    throw p1

    .line 274
    :cond_3
    :goto_7
    return-void
.end method
