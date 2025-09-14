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

    .line 2
    .line 3
    new-instance v0, Landroid/os/Handler;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 18
    .line 19
    const-string/jumbo v3, "theme_touch_sound"

    .line 20
    .line 21
    .line 22
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 30
    .line 31
    const-string/jumbo v3, "system_sound"

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 42
    .line 43
    const-string/jumbo v3, "hearing_musiccheck"

    .line 44
    .line 45
    .line 46
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 54
    .line 55
    const-string/jumbo v3, "k2hd_effect"

    .line 56
    .line 57
    .line 58
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 63
    .line 64
    .line 65
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    .line 66
    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 70
    .line 71
    const-string/jumbo v3, "isBikeMode"

    .line 72
    .line 73
    .line 74
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v0, v3, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    .line 80
    .line 81
    :cond_1
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    iget-object v0, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 86
    .line 87
    const-string/jumbo v1, "headphone_monitoring"

    .line 88
    .line 89
    .line 90
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_VOLUME_MONITOR:Z

    .line 98
    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 102
    .line 103
    const-string/jumbo v0, "volume_monitor"

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 10
    .line 11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/android/server/audio/AudioServiceExt;->updateThemeSound(IZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 21
    .line 22
    const-string/jumbo v1, "hearing_musiccheck"

    .line 23
    .line 24
    .line 25
    const/4 v2, -0x2

    .line 26
    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iget-object v1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 33
    .line 34
    const-string/jumbo v3, "k2hd_effect"

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 42
    .line 43
    iget v3, v2, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    .line 44
    .line 45
    if-eq v3, p1, :cond_1

    .line 46
    .line 47
    iput p1, v2, Lcom/android/server/audio/AudioServiceExt;->mAdaptSoundEnabled:I

    .line 48
    .line 49
    iget-object v1, v2, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v1, p1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setAdaptSound(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget p1, v2, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    .line 56
    .line 57
    if-eq p1, v1, :cond_2

    .line 58
    .line 59
    iput v1, v2, Lcom/android/server/audio/AudioServiceExt;->mUpscalerEnabled:I

    .line 60
    .line 61
    invoke-static {v1}, Lcom/samsung/android/server/audio/utils/CoreFxUtils;->setUpScalerMode(I)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BIKE_MODE:Z

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    if-eqz p1, :cond_4

    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 70
    .line 71
    iget-object v2, p1, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const-string/jumbo v3, "isBikeMode"

    .line 78
    .line 79
    .line 80
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-ne v2, v1, :cond_3

    .line 85
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

    .line 90
    .line 91
    :cond_4
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    .line 92
    .line 93
    if-eqz p1, :cond_9

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 98
    .line 99
    const-string/jumbo v2, "headphone_monitoring"

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    sput p1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    .line 107
    .line 108
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 109
    .line 110
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mService:Lcom/android/server/audio/AudioService;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 113
    .line 114
    iget-object v2, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 115
    .line 116
    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v3, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 118
    .line 119
    check-cast v3, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
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

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_7

    .line 132
    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    check-cast v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 138
    .line 139
    invoke-virtual {v6}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    .line 140
    .line 141
    .line 142
    move-result v7

    .line 143
    if-eqz v7, :cond_5

    .line 144
    .line 145
    iget-object v6, v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->mConfig:Landroid/media/AudioRecordingConfiguration;

    .line 146
    .line 147
    invoke-virtual {v6}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    iget-object v7, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    .line 152
    .line 153
    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-eqz v6, :cond_5

    .line 158
    .line 159
    array-length v7, v6

    .line 160
    if-lez v7, :cond_5

    .line 161
    .line 162
    iget-object v7, p1, Lcom/android/server/audio/RecordingActivityMonitor;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    .line 163
    .line 164
    aget-object v6, v6, v0

    .line 165
    .line 166
    const-string/jumbo v8, "karaoke_listenback_allow"

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v6, v8}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_6

    .line 174
    .line 175
    add-int/lit8 v4, v4, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 179
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

    .line 184
    .line 185
    if-nez v5, :cond_8

    .line 186
    .line 187
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    sget p1, Lcom/android/server/audio/AudioServiceExt;->mKaraokeListenbackEnabled:I

    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    const-string/jumbo v3, "l_effect_listenback_key;state="

    .line 193
    .line 194
    .line 195
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 206
    .line 207
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

    .line 214
    .line 215
    if-eqz p1, :cond_b

    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 218
    .line 219
    iget-object p1, p1, Lcom/android/server/audio/AudioServiceExt;->mCr:Landroid/content/ContentResolver;

    .line 220
    .line 221
    const-string/jumbo v2, "volume_monitor"

    .line 222
    .line 223
    .line 224
    invoke-static {p1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    iget-object v2, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 229
    .line 230
    iget v3, v2, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    .line 231
    .line 232
    if-eq v3, p1, :cond_b

    .line 233
    .line 234
    iput p1, v2, Lcom/android/server/audio/AudioServiceExt;->mVolumeMonitorValue:I

    .line 235
    .line 236
    iget-object v2, v2, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 237
    .line 238
    invoke-static {v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    if-ne p1, v1, :cond_a

    .line 243
    .line 244
    move v0, v1

    .line 245
    :cond_a
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->setVolumeMonitorOnOff(Z)V

    .line 246
    .line 247
    .line 248
    const/4 v0, 0x2

    .line 249
    if-ne p1, v0, :cond_b

    .line 250
    .line 251
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt$ExtSettingsObserver;->this$0:Lcom/android/server/audio/AudioServiceExt;

    .line 252
    .line 253
    iget-object p0, p0, Lcom/android/server/audio/AudioServiceExt;->mContext:Landroid/content/Context;

    .line 254
    .line 255
    invoke-static {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/VolumeMonitorService;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->resetByDataClear()V

    .line 260
    .line 261
    .line 262
    :cond_b
    return-void
.end method
