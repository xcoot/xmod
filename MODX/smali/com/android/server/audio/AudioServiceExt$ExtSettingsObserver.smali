.class public final Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioServiceExt;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 8
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 11
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 19
    const-string/jumbo v3, "theme_touch_sound"

    .line 22
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 29
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 31
    const-string/jumbo v3, "system_sound"

    .line 34
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 41
    :cond_0
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 43
    const-string/jumbo v3, "hearing_musiccheck"

    .line 46
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 53
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 55
    const-string/jumbo v3, "k2hd_effect"

    .line 58
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 65
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    .line 67
    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 71
    const-string/jumbo v3, "isBikeMode"

    .line 74
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 81
    :cond_1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 83
    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 87
    const-string/jumbo v1, "headphone_monitoring"

    .line 90
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    :cond_2
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    .line 99
    if-eqz v0, :cond_3

    .line 101
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 103
    const-string/jumbo v0, "volume_monitor"

    .line 106
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    :cond_3
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/android/server/audio/AudioServiceExt;->updateThemeSound(IZ)V

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 20
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 22
    const-string/jumbo v1, "hearing_musiccheck"

    .line 25
    const/4 v2, -0x2

    .line 26
    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 29
    move-result p1

    .line 30
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 32
    iget-object v1, v1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 34
    const-string/jumbo v3, "k2hd_effect"

    .line 37
    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 40
    move-result v1

    .line 41
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 43
    iget v3, v2, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    .line 45
    if-eq v3, p1, :cond_1

    .line 47
    iput p1, v2, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    .line 49
    iget-object v1, v2, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {v1, p1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget p1, v2, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    .line 57
    if-eq p1, v1, :cond_2

    .line 59
    iput v1, v2, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    .line 61
    invoke-static {v1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    .line 64
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    .line 66
    const/4 v1, 0x1

    .line 67
    if-eqz p1, :cond_4

    .line 69
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 71
    iget-object v2, p1, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    move-result-object v2

    .line 77
    const-string/jumbo v3, "isBikeMode"

    .line 80
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 83
    move-result v2

    .line 84
    if-ne v2, v1, :cond_3

    .line 86
    move v2, v1

    .line 87
    goto :goto_1

    .line 88
    :cond_3
    move v2, v0

    .line 89
    :goto_1
    iput-boolean v2, p1, Lcom/android/server/audio/AudioServiceExt;->mIsBikeMode:Z

    .line 91
    :cond_4
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 93
    if-eqz p1, :cond_9

    .line 95
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 97
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 99
    const-string/jumbo v2, "headphone_monitoring"

    .line 102
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 105
    move-result p1

    .line 106
    sput p1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    .line 108
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 110
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    .line 112
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 114
    iget-object v2, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 116
    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v3, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 119
    check-cast v3, Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object v3

    .line 125
    move v4, v0

    .line 126
    move v5, v4

    .line 127
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_7

    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 139
    invoke-virtual {v6}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_5

    .line 145
    iget-object v6, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 147
    invoke-virtual {v6}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    .line 150
    move-result v6

    .line 151
    iget-object v7, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    .line 153
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 156
    move-result-object v6

    .line 157
    if-eqz v6, :cond_5

    .line 159
    array-length v7, v6

    .line 160
    if-lez v7, :cond_5

    .line 162
    iget-object v7, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 164
    aget-object v6, v6, v0

    .line 166
    const-string/jumbo v8, "karaoke_listenback_allow"

    .line 169
    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_6

    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 177
    goto :goto_2

    .line 178
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 180
    goto :goto_2

    .line 181
    :catchall_0
    move-exception p0

    .line 182
    goto :goto_3

    .line 183
    :cond_7
    if-lez v4, :cond_8

    .line 185
    if-nez v5, :cond_8

    .line 187
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    sget p1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    const-string/jumbo v3, "l_effect_listenback_key;state="

    .line 195
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 205
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 208
    goto :goto_4

    .line 209
    :cond_8
    :try_start_1
    monitor-exit v2

    .line 210
    goto :goto_4

    .line 211
    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    throw p0

    .line 213
    :cond_9
    :goto_4
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    .line 215
    if-eqz p1, :cond_b

    .line 217
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 219
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 221
    const-string/jumbo v2, "volume_monitor"

    .line 224
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 227
    move-result p1

    .line 228
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 230
    iget v3, v2, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    .line 232
    if-eq v3, p1, :cond_b

    .line 234
    iput p1, v2, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    .line 236
    iget-object v2, v2, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 238
    invoke-static {v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 241
    move-result-object v2

    .line 242
    if-ne p1, v1, :cond_a

    .line 244
    move v0, v1

    .line 245
    :cond_a
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    .line 248
    const/4 v0, 0x2

    .line 249
    if-ne p1, v0, :cond_b

    .line 251
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 253
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetByDataClear()V

    .line 262
    :cond_b
    return-void
.end method
