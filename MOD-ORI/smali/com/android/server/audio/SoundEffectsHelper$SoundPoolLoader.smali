.class public final Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field public final mLoadCompleteHandlers:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final onComplete(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 12
    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 30
    .line 31
    invoke-interface {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 36
    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-string/jumbo p1, "completed"

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const-string/jumbo p1, "failed"

    .line 44
    .line 45
    .line 46
    :goto_1
    const-string/jumbo v0, "effects loading "

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 6

    .line 1
    const-string/jumbo p1, "effect "

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_3

    .line 6
    .line 7
    iget-object p3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 8
    .line 9
    iget-object p3, p3, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 10
    .line 11
    check-cast p3, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 29
    .line 30
    iget v3, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 31
    .line 32
    if-ne v3, p2, :cond_1

    .line 33
    .line 34
    iget-boolean v3, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 35
    .line 36
    if-nez v3, :cond_1

    .line 37
    .line 38
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v5, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v5, " loaded"

    .line 51
    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iput-boolean v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 63
    .line 64
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    .line 65
    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-boolean v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mHasSituationVolume:Z

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 73
    .line 74
    iget-object v2, v2, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 75
    .line 76
    const-string/jumbo v3, "stv_touch_tone"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p2, v3}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    iget-boolean v1, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 87
    .line 88
    if-nez v1, :cond_0

    .line 89
    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    if-nez v0, :cond_7

    .line 94
    .line 95
    invoke-virtual {p0, v2}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 102
    .line 103
    check-cast v1, Ljava/util/ArrayList;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 120
    .line 121
    iget v3, v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 122
    .line 123
    if-ne v3, p2, :cond_4

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const/4 v2, 0x0

    .line 127
    :goto_1
    if-eqz v2, :cond_6

    .line 128
    .line 129
    iget-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 130
    .line 131
    invoke-virtual {p2, v2}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    goto :goto_2

    .line 136
    :cond_6
    const-string/jumbo v1, "with unknown sample ID "

    .line 137
    .line 138
    .line 139
    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    :goto_2
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, " loading failed, status "

    .line 154
    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    const-string/jumbo v1, "onLoadSoundEffects(), Error "

    .line 171
    .line 172
    .line 173
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string p3, " while loading sample "

    .line 180
    .line 181
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    const-string p2, "AS.SfxHelper"

    .line 192
    .line 193
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 197
    .line 198
    .line 199
    :cond_7
    :goto_3
    return-void
.end method
