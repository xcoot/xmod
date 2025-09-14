.class public final synthetic Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;->f$2:Z

    .line 9
    .line 10
    const/16 p1, 0x19

    .line 11
    .line 12
    iput p1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;->f$3:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;->f$2:Z

    .line 6
    .line 7
    iget p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider$$ExternalSyntheticLambda6;->f$3:I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v4, "buildDeviceRoute id:"

    .line 15
    .line 16
    .line 17
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, " state:"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, " type:"

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const-string v4, "MR2SystemProvider"

    .line 44
    .line 45
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    new-instance v3, Landroid/media/MediaRoute2Info$Builder;

    .line 49
    .line 50
    iget-object v4, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const v5, 0x1040444

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-direct {v3, v1, v4}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 71
    .line 72
    invoke-virtual {v4}, Landroid/media/AudioManager;->isVolumeFixed()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    xor-int/lit8 v4, v4, 0x1

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    iget-object v4, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 83
    .line 84
    const/4 v5, 0x3

    .line 85
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    invoke-virtual {v3, v4}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iget-object v4, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mAudioManager:Landroid/media/AudioManager;

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v3, v4}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v3, p0}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    const-string v3, "android.media.route.feature.LIVE_AUDIO"

    .line 108
    .line 109
    invoke-virtual {p0, v3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    const-string v3, "android.media.route.feature.LIVE_VIDEO"

    .line 114
    .line 115
    invoke-virtual {p0, v3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string v3, "android.media.route.feature.LOCAL_PLAYBACK"

    .line 120
    .line 121
    invoke-virtual {p0, v3}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    const/4 v3, 0x2

    .line 126
    invoke-virtual {p0, v3}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    const-string v3, "MUSIC_SHARE"

    .line 135
    .line 136
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    const/4 v4, 0x0

    .line 141
    if-eqz v3, :cond_1

    .line 142
    .line 143
    if-eqz v2, :cond_0

    .line 144
    .line 145
    iput-object p0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_0
    iput-object v4, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mMusicShareDeviceRoute:Landroid/media/MediaRoute2Info;

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    const-string v3, "SCREEN_MIRRORING"

    .line 152
    .line 153
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    .line 159
    if-eqz v2, :cond_2

    .line 160
    .line 161
    iput-object p0, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_2
    iput-object v4, v0, Lcom/android/server/media/SystemMediaRoute2Provider;->mScreenMirroringRoute:Landroid/media/MediaRoute2Info;

    .line 165
    .line 166
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/media/SystemMediaRoute2Provider;->updateProviderState()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/android/server/media/MediaRoute2Provider;->notifyProviderState()V

    .line 170
    .line 171
    .line 172
    return-void
.end method
