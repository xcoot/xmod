.class public final Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public FM_RADIO_PACKAGE_NAME:Ljava/lang/String;

.field public SILENT_AUDIO_PREX:Ljava/lang/String;

.field public mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mContext:Landroid/content/Context;

.field public mIsUsingAudioList:Z

.field public mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

.field public mSilentAudioDetectionMap:Landroid/util/ArrayMap;

.field public mSlientAudioApp:Landroid/util/ArraySet;

.field public mTTSPkgs:Landroid/util/ArrayMap;

.field public mTTSPkgsUid:Ljava/util/ArrayList;

.field public threadPool:Ljava/util/concurrent/ExecutorService;


# virtual methods
.method public final deInit()V
    .locals 0

    .line 1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "audio"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/media/AudioManager;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->FM_RADIO_PACKAGE_NAME:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x7

    .line 27
    if-eqz v0, :cond_4

    .line 28
    .line 29
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    .line 31
    const-string p2, "ActiveMusicRecordFilter"

    .line 32
    .line 33
    const/4 p3, 0x1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    const-string p0, "audio Manager is null"

    .line 37
    .line 38
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda1;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;)V

    .line 45
    .line 46
    .line 47
    new-instance p4, Ljava/util/concurrent/FutureTask;

    .line 48
    .line 49
    invoke-direct {p4, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 53
    .line 54
    invoke-interface {p0, p4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    const-wide/16 v3, 0x1

    .line 60
    .line 61
    invoke-virtual {p4, v3, v4, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    instance-of p1, p0, Ljava/util/concurrent/TimeoutException;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    const-string p1, "1 second timeout executing semIsFmRadioActive"

    .line 78
    .line 79
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    :cond_2
    invoke-virtual {p4, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    .line 87
    .line 88
    :goto_0
    if-eqz p3, :cond_3

    .line 89
    .line 90
    return v2

    .line 91
    :cond_3
    return v1

    .line 92
    :cond_4
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 93
    .line 94
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_5

    .line 104
    .line 105
    sget-boolean v3, Lcom/android/server/am/mars/MARsUtils;->IS_SUPPORT_FREEZE_FG_SERVICE_FEATURE:Z

    .line 106
    .line 107
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->getScreenOnState()Z

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    if-eqz v5, :cond_6

    .line 116
    .line 117
    const/4 v5, 0x4

    .line 118
    if-eq p3, v5, :cond_7

    .line 119
    .line 120
    const/16 v5, 0xf

    .line 121
    .line 122
    if-eq p3, v5, :cond_7

    .line 123
    .line 124
    :cond_6
    const/16 v5, 0x12

    .line 125
    .line 126
    if-ne p3, v5, :cond_8

    .line 127
    .line 128
    iget-boolean p3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mIsUsingAudioList:Z

    .line 129
    .line 130
    if-nez p3, :cond_8

    .line 131
    .line 132
    :cond_7
    invoke-virtual {p0, p2, p4}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->isUsingAudio(ILjava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    if-eqz p3, :cond_8

    .line 137
    .line 138
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 139
    .line 140
    monitor-enter p3

    .line 141
    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    monitor-exit p3

    .line 155
    return v2

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    throw p0

    .line 159
    :cond_8
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 160
    .line 161
    monitor-enter p3

    .line 162
    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 163
    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Ljava/lang/Long;

    .line 173
    .line 174
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    if-nez v6, :cond_9

    .line 179
    .line 180
    const-wide/32 v6, 0x493e0

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_9
    const-wide/16 v6, 0x7d0

    .line 185
    .line 186
    :goto_1
    if-eqz v5, :cond_a

    .line 187
    .line 188
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 189
    .line 190
    .line 191
    move-result-wide v8

    .line 192
    sub-long/2addr v3, v8

    .line 193
    cmp-long v3, v3, v6

    .line 194
    .line 195
    if-gtz v3, :cond_a

    .line 196
    .line 197
    monitor-exit p3

    .line 198
    return v2

    .line 199
    :catchall_1
    move-exception p0

    .line 200
    goto :goto_4

    .line 201
    :cond_a
    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 202
    .line 203
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 211
    invoke-static {}, Lcom/android/server/am/mars/MARsUtils;->isChinaPolicyEnabled()Z

    .line 212
    .line 213
    .line 214
    move-result p3

    .line 215
    if-eqz p3, :cond_b

    .line 216
    .line 217
    invoke-virtual {v0, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(ILjava/lang/String;)Z

    .line 218
    .line 219
    .line 220
    move-result p3

    .line 221
    if-eqz p3, :cond_e

    .line 222
    .line 223
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 224
    .line 225
    monitor-enter v0

    .line 226
    :try_start_3
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgs:Landroid/util/ArrayMap;

    .line 227
    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Ljava/util/ArrayList;

    .line 237
    .line 238
    if-eqz p1, :cond_c

    .line 239
    .line 240
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-eqz p1, :cond_c

    .line 245
    .line 246
    monitor-exit v0

    .line 247
    return v2

    .line 248
    :catchall_2
    move-exception p0

    .line 249
    goto :goto_3

    .line 250
    :cond_c
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 251
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    .line 252
    .line 253
    monitor-enter p1

    .line 254
    :try_start_4
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mTTSPkgsUid:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object p2

    .line 260
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result p0

    .line 264
    if-eqz p0, :cond_d

    .line 265
    .line 266
    monitor-exit p1

    .line 267
    return v2

    .line 268
    :catchall_3
    move-exception p0

    .line 269
    goto :goto_2

    .line 270
    :cond_d
    monitor-exit p1

    .line 271
    :cond_e
    return v1

    .line 272
    :goto_2
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 273
    throw p0

    .line 274
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 275
    throw p0

    .line 276
    :goto_4
    :try_start_6
    monitor-exit p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 277
    throw p0
.end method

.method public final getUidListUsingAudio()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-class v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 16
    .line 17
    if-eqz v0, :cond_9

    .line 18
    .line 19
    iget-object v0, v0, Lcom/samsung/android/server/audio/SemAudioServiceInternal;->mAudioService:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/audio/AudioService;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v2, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;->getActivePlaybackConfigurations(Z)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/16 v5, 0x2710

    .line 58
    .line 59
    if-eqz v4, :cond_4

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    if-le v6, v5, :cond_2

    .line 74
    .line 75
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    const/4 v7, 0x3

    .line 80
    if-eq v5, v7, :cond_3

    .line 81
    .line 82
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/4 v5, 0x2

    .line 87
    if-ne v4, v5, :cond_2

    .line 88
    .line 89
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    iget-object v2, v0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_6

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    check-cast v3, Landroid/media/AudioRecordingConfiguration;

    .line 118
    .line 119
    invoke-virtual {v3}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-le v3, v5, :cond_5

    .line 124
    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_6
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_8

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Ljava/lang/Integer;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    const v4, 0x186a0

    .line 154
    .line 155
    .line 156
    rem-int/2addr v3, v4

    .line 157
    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService;->isUsingAudio(I)Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-nez v3, :cond_7

    .line 162
    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    .line 171
    .line 172
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 173
    .line 174
    .line 175
    move-result-wide v1

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_9

    .line 185
    .line 186
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Ljava/lang/Integer;

    .line 191
    .line 192
    iget-object v4, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 193
    .line 194
    monitor-enter v4

    .line 195
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mActiveMusicRecordPkgs:Landroid/util/ArrayMap;

    .line 196
    .line 197
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    monitor-exit v4

    .line 205
    goto :goto_4

    .line 206
    :catchall_0
    move-exception p0

    .line 207
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    throw p0

    .line 209
    :cond_9
    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance p1, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$1;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$1;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const-class p1, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mLocalAudioService:Lcom/samsung/android/server/audio/SemAudioServiceInternal;

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 30
    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const-string v0, "audio"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/media/AudioManager;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final isUsingAudio(ILjava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->mAudioManager:Landroid/media/AudioManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "ActiveMusicRecordFilter"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p0, "audio Manager is null"

    .line 9
    .line 10
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    new-instance v0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Ljava/util/concurrent/FutureTask;

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 30
    .line 31
    const-wide/16 v3, 0x1

    .line 32
    .line 33
    invoke-virtual {p1, v3, v4, p0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    instance-of p2, p0, Ljava/util/concurrent/TimeoutException;

    .line 46
    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    const-string p2, "1 second timeout executing isUsingAudio"

    .line 50
    .line 51
    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p2}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return v1
.end method
