.class public final Lcom/android/server/audio/FadeConfigurations;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_FADEABLE_USAGES:Ljava/util/List;

.field public static final DEFAULT_FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

.field public static final DEFAULT_UNFADEABLE_CONTENT_TYPES:Ljava/util/List;

.field public static final DEFAULT_UNFADEABLE_PLAYER_TYPES:Ljava/util/List;


# instance fields
.field public mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field public mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field public final mLock:Ljava/lang/Object;

.field public mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

.field public mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v0, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sput-object v2, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_UNFADEABLE_CONTENT_TYPES:Ljava/util/List;

    .line 28
    .line 29
    const/16 v2, 0xe

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-static {v2, v0}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_FADEABLE_USAGES:Ljava/util/List;

    .line 40
    .line 41
    new-instance v0, Landroid/media/VolumeShaper$Configuration$Builder;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/media/VolumeShaper$Configuration$Builder;-><init>()V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setId(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-array v3, v1, [F

    .line 52
    .line 53
    fill-array-data v3, :array_0

    .line 54
    .line 55
    .line 56
    new-array v1, v1, [F

    .line 57
    .line 58
    fill-array-data v1, :array_1

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3, v1}, Landroid/media/VolumeShaper$Configuration$Builder;->setCurve([F[F)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setOptionFlags(I)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-wide/16 v1, 0x7d0

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/media/VolumeShaper$Configuration$Builder;->setDuration(J)Landroid/media/VolumeShaper$Configuration$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Configuration$Builder;->build()Landroid/media/VolumeShaper$Configuration;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    sput-object v0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 80
    .line 81
    return-void

    .line 82
    nop

    .line 83
    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
    .end array-data

    .line 84
    .line 85
    .line 86
    .line 87
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f266666    # 0.65f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mTransientFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mUpdatedFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 12
    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    new-instance v0, Landroid/media/FadeManagerConfiguration$Builder;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/media/FadeManagerConfiguration$Builder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/media/FadeManagerConfiguration$Builder;->build()Landroid/media/FadeManagerConfiguration;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 25
    .line 26
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/FadeConfigurations;->mDefaultFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 27
    .line 28
    return-object p0
.end method

.method public final getFadeOutVolumeShaperConfig(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;
    .locals 2

    .line 1
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_FADEOUT_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v0

    .line 13
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutVolumeShaperConfigForAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/VolumeShaper$Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->getFadeOutVolumeShaperConfigForUsage(I)Landroid/media/VolumeShaper$Configuration;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    monitor-exit v0

    .line 36
    :goto_0
    return-object v1

    .line 37
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getActiveFadeMgrConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/FadeConfigurations;->mActiveFadeManagerConfig:Landroid/media/FadeManagerConfiguration;

    .line 12
    .line 13
    return-object p0
.end method

.method public final isFadeable(Landroid/media/AudioAttributes;II)Z
    .locals 6

    .line 1
    const-string/jumbo v0, "not fadeable: usage:"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "not fadeable: content type:"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "not fadeable: player type:"

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/audio/FadeConfigurations;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    sget-object v4, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_UNFADEABLE_PLAYER_TYPES:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v4, p3}, Landroid/media/FadeManagerConfiguration;->isPlayerTypeUnfadeable(I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    :goto_0
    const/4 v5, 0x0

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    const-string p0, "AS.FadeConfigurations"

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    monitor-exit v3

    .line 59
    return v5

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto/16 :goto_3

    .line 62
    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    .line 64
    .line 65
    .line 66
    move-result p3

    .line 67
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    sget-object v2, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_UNFADEABLE_CONTENT_TYPES:Ljava/util/List;

    .line 74
    .line 75
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2, p3}, Landroid/media/FadeManagerConfiguration;->isContentTypeUnfadeable(I)Z

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    :goto_1
    if-eqz p3, :cond_3

    .line 93
    .line 94
    const-string p0, "AS.FadeConfigurations"

    .line 95
    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getContentType()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    monitor-exit v3

    .line 116
    return v5

    .line 117
    :cond_3
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getSystemUsage()I

    .line 118
    .line 119
    .line 120
    move-result p3

    .line 121
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-nez v1, :cond_4

    .line 126
    .line 127
    sget-object v1, Lcom/android/server/audio/FadeConfigurations;->DEFAULT_FADEABLE_USAGES:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result p3

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, p3}, Landroid/media/FadeManagerConfiguration;->isUsageFadeable(I)Z

    .line 143
    .line 144
    .line 145
    move-result p3

    .line 146
    :goto_2
    if-nez p3, :cond_5

    .line 147
    .line 148
    const-string p0, "AS.FadeConfigurations"

    .line 149
    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    monitor-exit v3

    .line 170
    return v5

    .line 171
    :cond_5
    invoke-virtual {p0, p2, p1}, Lcom/android/server/audio/FadeConfigurations;->isUnfadeableForFadeMgrConfigLocked(ILandroid/media/AudioAttributes;)Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_6

    .line 176
    .line 177
    monitor-exit v3

    .line 178
    return v5

    .line 179
    :cond_6
    monitor-exit v3

    .line 180
    const/4 p0, 0x1

    .line 181
    return p0

    .line 182
    :goto_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    throw p0
.end method

.method public final isUnfadeableForFadeMgrConfigLocked(ILandroid/media/AudioAttributes;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0, p2}, Landroid/media/FadeManagerConfiguration;->isAudioAttributesUnfadeable(Landroid/media/AudioAttributes;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    :goto_0
    const/4 v2, 0x1

    .line 19
    const-string v3, "AS.FadeConfigurations"

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo p1, "not fadeable: aa:"

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    return v2

    .line 42
    :cond_1
    invoke-static {}, Landroid/media/audiopolicy/Flags;->enableFadeManagerConfiguration()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    move p0, v1

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/audio/FadeConfigurations;->getUpdatedFadeManagerConfigLocked()Landroid/media/FadeManagerConfiguration;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0, p1}, Landroid/media/FadeManagerConfiguration;->isUidUnfadeable(I)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    :goto_1
    if-eqz p0, :cond_3

    .line 59
    .line 60
    const-string/jumbo p0, "not fadeable: uid:"

    .line 61
    .line 62
    .line 63
    invoke-static {p1, p0, v3}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return v2

    .line 67
    :cond_3
    return v1
.end method
