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

    .line 4
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 13
    iget-object p1, p1, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 15
    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 18
    return-void
.end method


# virtual methods
.method public final onComplete(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 3
    iget-object v0, v0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 31
    invoke-interface {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 37
    if-eqz p1, :cond_2

    .line 39
    const-string/jumbo p1, "completed"

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    const-string/jumbo p1, "failed"

    .line 46
    :goto_1
    const-string/jumbo v0, "effects loading "

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public final onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 6

    .line 1
    const-string/jumbo p1, "effect "

    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez p3, :cond_3

    .line 7
    iget-object p3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 9
    iget-object p3, p3, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 11
    check-cast p3, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p3

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_2

    .line 24
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 30
    iget v3, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 32
    if-ne v3, p2, :cond_1

    .line 34
    iget-boolean v3, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 36
    if-nez v3, :cond_1

    .line 38
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object v5, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v5, " loaded"

    .line 52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 62
    iput-boolean v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 64
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    .line 66
    if-eqz v2, :cond_1

    .line 68
    iget-boolean v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mHasSituationVolume:Z

    .line 70
    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 74
    iget-object v2, v2, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 76
    const-string/jumbo v3, "stv_touch_tone"

    .line 79
    invoke-virtual {v2, p2, v3}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    .line 82
    :cond_1
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 84
    if-eqz v2, :cond_0

    .line 86
    iget-boolean v1, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 88
    if-nez v1, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    if-nez v0, :cond_7

    .line 95
    invoke-virtual {p0, v2}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 101
    iget-object v1, v1, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 103
    check-cast v1, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 108
    move-result-object v1

    .line 109
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_5

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 121
    iget v3, v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 123
    if-ne v3, p2, :cond_4

    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const/4 v2, 0x0

    .line 127
    :goto_1
    if-eqz v2, :cond_6

    .line 129
    iget-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 131
    invoke-virtual {p2, v2}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    .line 134
    move-result-object p2

    .line 135
    goto :goto_2

    .line 136
    :cond_6
    const-string/jumbo v1, "with unknown sample ID "

    .line 139
    invoke-static {p2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object p2

    .line 143
    :goto_2
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string p1, " loading failed, status "

    .line 155
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    const-string/jumbo v1, "onLoadSoundEffects(), Error "

    .line 173
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string p3, " while loading sample "

    .line 181
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    const-string p2, "AS.SfxHelper"

    .line 193
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 199
    :cond_7
    :goto_3
    return-void
.end method
