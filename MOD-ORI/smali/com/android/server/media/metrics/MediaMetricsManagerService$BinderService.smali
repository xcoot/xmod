.class public final Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;
.super Landroid/media/metrics/IMediaMetricsManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/metrics/MediaMetricsManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    array-length v2, p0

    .line 4
    move v3, v1

    .line 5
    :goto_0
    if-ge v3, v2, :cond_5

    .line 6
    .line 7
    aget-object v4, p0, v3

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v5

    .line 13
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_4

    .line 18
    .line 19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    const/4 p0, -0x1

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sparse-switch p1, :sswitch_data_0

    .line 37
    .line 38
    .line 39
    :goto_1
    move v0, p0

    .line 40
    goto :goto_2

    .line 41
    :sswitch_0
    const-string/jumbo p1, "player_metrics_per_app_attribution_allowlist"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v0, 0x2

    .line 52
    goto :goto_2

    .line 53
    :sswitch_1
    const-string/jumbo p1, "player_metrics_app_allowlist"

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :sswitch_2
    const-string/jumbo p1, "player_metrics_per_app_attribution_blocklist"

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v0, v1

    .line 74
    :cond_3
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    const v1, 0x1869f

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :pswitch_0
    const/16 v1, 0x3e8

    .line 82
    .line 83
    :goto_3
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    return-object p0

    .line 88
    :cond_4
    add-int/2addr v3, v0

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    const/4 p0, 0x0

    .line 91
    return-object p0

    .line 92
    nop

    .line 93
    :sswitch_data_0
    .sparse-switch
        -0x70e7b2af -> :sswitch_2
        -0x4cdbea91 -> :sswitch_1
        0x71446e0d -> :sswitch_0
    .end sparse-switch

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getBundleSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getEditingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getPlaybackSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getRecordingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getSessionIdInternal()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 10
    .line 11
    .line 12
    const/16 p0, 0xb

    .line 13
    .line 14
    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 19
    .line 20
    const-string/jumbo v1, "metrics.manager"

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 27
    .line 28
    const-string/jumbo v2, "create"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Landroid/media/MediaMetrics$Property;->LOG_SESSION_ID:Landroid/media/MediaMetrics$Key;

    .line 36
    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public final getTranscodingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final loggingLevel()I
    .locals 9

    .line 1
    const-string/jumbo v0, "empty package from uid "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 14
    .line 15
    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 25
    .line 26
    const-string/jumbo v7, "media"

    .line 27
    .line 28
    .line 29
    const-string/jumbo v8, "media_metrics_mode"

    .line 30
    .line 31
    .line 32
    invoke-static {v7, v8, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iput-object v7, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :catchall_1
    move-exception p0

    .line 50
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v6, 0x0

    .line 64
    if-ne v3, v5, :cond_1

    .line 65
    .line 66
    monitor-exit v1

    .line 67
    return v6

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 69
    .line 70
    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const v5, 0x1869f

    .line 77
    .line 78
    .line 79
    if-nez v3, :cond_2

    .line 80
    .line 81
    const-string p0, "MediaMetricsManagerService"

    .line 82
    .line 83
    const-string v0, "Logging level blocked: MEDIA_METRICS_MODE_OFF"

    .line 84
    .line 85
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    monitor-exit v1

    .line 89
    return v5

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_e

    .line 105
    .line 106
    array-length v7, v3

    .line 107
    if-nez v7, :cond_3

    .line 108
    .line 109
    goto/16 :goto_1

    .line 110
    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-ne v0, v4, :cond_8

    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 122
    .line 123
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 124
    .line 125
    if-nez v2, :cond_4

    .line 126
    .line 127
    const-string/jumbo v2, "player_metrics_app_blocklist"

    .line 128
    .line 129
    .line 130
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 139
    .line 140
    if-nez v0, :cond_4

    .line 141
    .line 142
    const-string p0, "MediaMetricsManagerService"

    .line 143
    .line 144
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_BLOCKLIST."

    .line 145
    .line 146
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    monitor-exit v1

    .line 150
    return v5

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 152
    .line 153
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 154
    .line 155
    const-string/jumbo v2, "player_metrics_app_blocklist"

    .line 156
    .line 157
    .line 158
    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result p0

    .line 168
    monitor-exit v1

    .line 169
    return p0

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 171
    .line 172
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 173
    .line 174
    if-nez v2, :cond_6

    .line 175
    .line 176
    const-string/jumbo v2, "player_metrics_per_app_attribution_blocklist"

    .line 177
    .line 178
    .line 179
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 186
    .line 187
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 188
    .line 189
    if-nez v0, :cond_6

    .line 190
    .line 191
    const-string p0, "MediaMetricsManagerService"

    .line 192
    .line 193
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST."

    .line 194
    .line 195
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    monitor-exit v1

    .line 199
    return v5

    .line 200
    :cond_6
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 201
    .line 202
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 203
    .line 204
    const-string/jumbo v0, "player_metrics_per_app_attribution_blocklist"

    .line 205
    .line 206
    .line 207
    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    if-eqz p0, :cond_7

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    monitor-exit v1

    .line 218
    return p0

    .line 219
    :cond_7
    monitor-exit v1

    .line 220
    return v6

    .line 221
    :cond_8
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 222
    .line 223
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 224
    .line 225
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    const/4 v2, 0x3

    .line 230
    if-ne v0, v2, :cond_d

    .line 231
    .line 232
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 233
    .line 234
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 235
    .line 236
    if-nez v2, :cond_9

    .line 237
    .line 238
    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    .line 239
    .line 240
    .line 241
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 246
    .line 247
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 248
    .line 249
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 250
    .line 251
    if-nez v0, :cond_9

    .line 252
    .line 253
    const-string p0, "MediaMetricsManagerService"

    .line 254
    .line 255
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST."

    .line 256
    .line 257
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    monitor-exit v1

    .line 261
    return v5

    .line 262
    :cond_9
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 265
    .line 266
    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    .line 267
    .line 268
    .line 269
    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    if-eqz v0, :cond_a

    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    monitor-exit v1

    .line 280
    return p0

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 282
    .line 283
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 284
    .line 285
    if-nez v2, :cond_b

    .line 286
    .line 287
    const-string/jumbo v2, "player_metrics_app_allowlist"

    .line 288
    .line 289
    .line 290
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 295
    .line 296
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 297
    .line 298
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 299
    .line 300
    if-nez v0, :cond_b

    .line 301
    .line 302
    const-string p0, "MediaMetricsManagerService"

    .line 303
    .line 304
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_ALLOWLIST."

    .line 305
    .line 306
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    monitor-exit v1

    .line 310
    return v5

    .line 311
    :cond_b
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 312
    .line 313
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 314
    .line 315
    const-string/jumbo v0, "player_metrics_app_allowlist"

    .line 316
    .line 317
    .line 318
    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    if-eqz p0, :cond_c

    .line 323
    .line 324
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 325
    .line 326
    .line 327
    move-result p0

    .line 328
    monitor-exit v1

    .line 329
    return p0

    .line 330
    :cond_c
    const-string p0, "MediaMetricsManagerService"

    .line 331
    .line 332
    const-string v0, "Logging level blocked: Not detected in any allowlist."

    .line 333
    .line 334
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    monitor-exit v1

    .line 338
    return v5

    .line 339
    :cond_d
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    const-string p0, "MediaMetricsManagerService"

    .line 341
    .line 342
    const-string v0, "Logging level blocked: Blocked by default."

    .line 343
    .line 344
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    return v5

    .line 348
    :cond_e
    :goto_1
    :try_start_3
    const-string v3, "MediaMetricsManagerService"

    .line 349
    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    .line 351
    .line 352
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .line 364
    .line 365
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 366
    .line 367
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 368
    .line 369
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 370
    .line 371
    .line 372
    move-result p0

    .line 373
    if-ne p0, v4, :cond_f

    .line 374
    .line 375
    const/16 v5, 0x3e8

    .line 376
    .line 377
    :cond_f
    monitor-exit v1

    .line 378
    return v5

    .line 379
    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 380
    throw p0
.end method

.method public final releaseSessionId(Ljava/lang/String;I)V
    .locals 2

    .line 1
    const-string p0, "Releasing sessionId "

    .line 2
    .line 3
    const-string v0, " for userId "

    .line 4
    .line 5
    const-string v1, " [NOP]"

    .line 6
    .line 7
    invoke-static {p2, p0, p1, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string p1, "MediaMetricsManagerService"

    .line 12
    .line 13
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p1, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const-string/jumbo p0, "bundlesession-statsd-atom"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    const/16 p1, 0x142

    .line 19
    .line 20
    if-eq p0, p1, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    const-string/jumbo p0, "playbackstateevent-sessionid"

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo p3, "playbackstateevent-state"

    .line 31
    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    invoke-virtual {p2, p3, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    const-string/jumbo v0, "playbackstateevent-lifetime"

    .line 39
    .line 40
    .line 41
    const-wide/16 v1, -0x1

    .line 42
    .line 43
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    if-ltz p3, :cond_3

    .line 50
    .line 51
    const-wide/16 v2, 0x0

    .line 52
    .line 53
    cmp-long p2, v0, v2

    .line 54
    .line 55
    if-gez p2, :cond_2

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_3
    :goto_0
    const-string/jumbo p1, "dropping incomplete data for atom 322: _sessionId: "

    .line 91
    .line 92
    .line 93
    const-string p2, " _state: "

    .line 94
    .line 95
    const-string v2, " _lifetime: "

    .line 96
    .line 97
    invoke-static {p3, p1, p0, p2, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    const-string p1, "MediaMetricsManagerService"

    .line 102
    .line 103
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V
    .locals 50

    .line 1
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "video/avc"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "video/hevc"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v4, "video/av01"

    .line 14
    .line 15
    .line 16
    const/4 v10, 0x0

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 18
    .line 19
    .line 20
    move-result v11

    .line 21
    const v12, 0x1869f

    .line 22
    .line 23
    .line 24
    if-ne v11, v12, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v11

    .line 31
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v11

    .line 35
    if-eqz v11, :cond_1

    .line 36
    .line 37
    sget-object v11, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v11

    .line 44
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    check-cast v11, Landroid/media/metrics/MediaItemInfo;

    .line 49
    .line 50
    :goto_0
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    .line 51
    .line 52
    .line 53
    move-result-wide v12

    .line 54
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v14

    .line 58
    const-string v15, "audio/"

    .line 59
    .line 60
    invoke-static {v15, v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string/jumbo v6, "video/"

    .line 69
    .line 70
    .line 71
    invoke-static {v6, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    .line 76
    .line 77
    .line 78
    move-result-object v16

    .line 79
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 80
    .line 81
    .line 82
    move-result v17

    .line 83
    if-nez v17, :cond_2

    .line 84
    .line 85
    new-instance v7, Landroid/util/Size;

    .line 86
    .line 87
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 96
    .line 97
    .line 98
    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 99
    .line 100
    .line 101
    move-result v17

    .line 102
    :cond_2
    move/from16 v7, v17

    .line 103
    .line 104
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    const-string v17, ""

    .line 113
    .line 114
    if-nez v9, :cond_3

    .line 115
    .line 116
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Ljava/lang/String;

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move-object/from16 v9, v17

    .line 124
    .line 125
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v10

    .line 129
    move-object/from16 p0, v9

    .line 130
    .line 131
    const/4 v9, 0x1

    .line 132
    if-le v10, v9, :cond_4

    .line 133
    .line 134
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Ljava/lang/String;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_4
    move-object/from16 v8, v17

    .line 142
    .line 143
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    if-nez v9, :cond_5

    .line 148
    .line 149
    sget-object v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    .line 153
    .line 154
    .line 155
    move-result-object v9

    .line 156
    :goto_3
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    .line 157
    .line 158
    .line 159
    move-result-wide v19

    .line 160
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    invoke-static {v15, v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v15

    .line 172
    invoke-static {v6, v15}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    invoke-static {v15}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 181
    .line 182
    .line 183
    move-result v21

    .line 184
    move-object/from16 v22, v6

    .line 185
    .line 186
    if-nez v21, :cond_6

    .line 187
    .line 188
    new-instance v6, Landroid/util/Size;

    .line 189
    .line 190
    move-object/from16 v23, v10

    .line 191
    .line 192
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 193
    .line 194
    .line 195
    move-result v10

    .line 196
    move-object/from16 v24, v8

    .line 197
    .line 198
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    invoke-direct {v6, v10, v8}, Landroid/util/Size;-><init>(II)V

    .line 203
    .line 204
    .line 205
    invoke-static {v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 206
    .line 207
    .line 208
    move-result v21

    .line 209
    :goto_4
    move/from16 v6, v21

    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_6
    move-object/from16 v24, v8

    .line 213
    .line 214
    move-object/from16 v23, v10

    .line 215
    .line 216
    goto :goto_4

    .line 217
    :goto_5
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    .line 218
    .line 219
    .line 220
    move-result-object v8

    .line 221
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    if-nez v10, :cond_7

    .line 226
    .line 227
    const/4 v10, 0x0

    .line 228
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v18

    .line 232
    check-cast v18, Ljava/lang/String;

    .line 233
    .line 234
    move-object/from16 v21, v18

    .line 235
    .line 236
    goto :goto_6

    .line 237
    :cond_7
    move-object/from16 v21, v17

    .line 238
    .line 239
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 240
    .line 241
    .line 242
    move-result v10

    .line 243
    move/from16 v25, v6

    .line 244
    .line 245
    const/4 v6, 0x1

    .line 246
    if-le v10, v6, :cond_8

    .line 247
    .line 248
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    check-cast v8, Ljava/lang/String;

    .line 253
    .line 254
    goto :goto_7

    .line 255
    :cond_8
    move-object/from16 v8, v17

    .line 256
    .line 257
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOperationTypes()J

    .line 258
    .line 259
    .line 260
    move-result-wide v26

    .line 261
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 262
    .line 263
    .line 264
    move-result-object v10

    .line 265
    const/16 v6, 0x31e

    .line 266
    .line 267
    invoke-virtual {v10, v6}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    move-object/from16 v10, p1

    .line 272
    .line 273
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalState()I

    .line 278
    .line 279
    .line 280
    move-result v10

    .line 281
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalProgressPercent()F

    .line 286
    .line 287
    .line 288
    move-result v10

    .line 289
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getErrorCode()I

    .line 294
    .line 295
    .line 296
    move-result v10

    .line 297
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    move-object/from16 v28, v8

    .line 302
    .line 303
    move-object v10, v9

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    .line 305
    .line 306
    .line 307
    move-result-wide v8

    .line 308
    invoke-virtual {v6, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 309
    .line 310
    .line 311
    move-result-object v6

    .line 312
    const-wide/16 v8, 0x1

    .line 313
    .line 314
    and-long v29, v26, v8

    .line 315
    .line 316
    const-wide/16 v31, 0x0

    .line 317
    .line 318
    cmp-long v29, v29, v31

    .line 319
    .line 320
    if-eqz v29, :cond_9

    .line 321
    .line 322
    const/4 v8, 0x1

    .line 323
    goto :goto_8

    .line 324
    :cond_9
    const/4 v8, 0x0

    .line 325
    :goto_8
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 326
    .line 327
    .line 328
    move-result-object v6

    .line 329
    const-wide/16 v8, 0x2

    .line 330
    .line 331
    and-long v33, v26, v8

    .line 332
    .line 333
    cmp-long v33, v33, v31

    .line 334
    .line 335
    if-eqz v33, :cond_a

    .line 336
    .line 337
    const/4 v8, 0x1

    .line 338
    goto :goto_9

    .line 339
    :cond_a
    const/4 v8, 0x0

    .line 340
    :goto_9
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 341
    .line 342
    .line 343
    move-result-object v6

    .line 344
    const-wide/16 v8, 0x4

    .line 345
    .line 346
    and-long v35, v26, v8

    .line 347
    .line 348
    cmp-long v35, v35, v31

    .line 349
    .line 350
    if-eqz v35, :cond_b

    .line 351
    .line 352
    const/4 v8, 0x1

    .line 353
    goto :goto_a

    .line 354
    :cond_b
    const/4 v8, 0x0

    .line 355
    :goto_a
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    const-wide/16 v8, 0x8

    .line 360
    .line 361
    and-long v37, v26, v8

    .line 362
    .line 363
    cmp-long v37, v37, v31

    .line 364
    .line 365
    if-eqz v37, :cond_c

    .line 366
    .line 367
    const/4 v8, 0x1

    .line 368
    goto :goto_b

    .line 369
    :cond_c
    const/4 v8, 0x0

    .line 370
    :goto_b
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    const-wide/16 v8, 0x10

    .line 375
    .line 376
    and-long v39, v26, v8

    .line 377
    .line 378
    cmp-long v39, v39, v31

    .line 379
    .line 380
    if-eqz v39, :cond_d

    .line 381
    .line 382
    const/4 v8, 0x1

    .line 383
    goto :goto_c

    .line 384
    :cond_d
    const/4 v8, 0x0

    .line 385
    :goto_c
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 386
    .line 387
    .line 388
    move-result-object v6

    .line 389
    const-wide/16 v8, 0x20

    .line 390
    .line 391
    and-long v41, v26, v8

    .line 392
    .line 393
    cmp-long v41, v41, v31

    .line 394
    .line 395
    if-eqz v41, :cond_e

    .line 396
    .line 397
    const/4 v8, 0x1

    .line 398
    goto :goto_d

    .line 399
    :cond_e
    const/4 v8, 0x0

    .line 400
    :goto_d
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 401
    .line 402
    .line 403
    move-result-object v6

    .line 404
    const-wide/16 v8, 0x40

    .line 405
    .line 406
    and-long v43, v26, v8

    .line 407
    .line 408
    cmp-long v43, v43, v31

    .line 409
    .line 410
    if-eqz v43, :cond_f

    .line 411
    .line 412
    const/4 v8, 0x1

    .line 413
    goto :goto_e

    .line 414
    :cond_f
    const/4 v8, 0x0

    .line 415
    :goto_e
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    const-wide/16 v8, 0x80

    .line 420
    .line 421
    and-long v26, v26, v8

    .line 422
    .line 423
    cmp-long v26, v26, v31

    .line 424
    .line 425
    if-eqz v26, :cond_10

    .line 426
    .line 427
    const/4 v8, 0x1

    .line 428
    goto :goto_f

    .line 429
    :cond_10
    const/4 v8, 0x0

    .line 430
    :goto_f
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 431
    .line 432
    .line 433
    move-result-object v6

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getExporterName()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v8

    .line 438
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v9

    .line 442
    if-eqz v9, :cond_11

    .line 443
    .line 444
    :goto_10
    move-object/from16 v8, v17

    .line 445
    .line 446
    goto :goto_11

    .line 447
    :cond_11
    sget-object v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    .line 448
    .line 449
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 450
    .line 451
    .line 452
    move-result-object v9

    .line 453
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 454
    .line 455
    .line 456
    move-result v9

    .line 457
    if-nez v9, :cond_12

    .line 458
    .line 459
    goto :goto_10

    .line 460
    :cond_12
    :goto_11
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getMuxerName()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v8

    .line 468
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 469
    .line 470
    .line 471
    move-result v9

    .line 472
    if-eqz v9, :cond_13

    .line 473
    .line 474
    :goto_12
    move-object/from16 v8, v17

    .line 475
    .line 476
    goto :goto_13

    .line 477
    :cond_13
    sget-object v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    .line 478
    .line 479
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 480
    .line 481
    .line 482
    move-result-object v9

    .line 483
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 484
    .line 485
    .line 486
    move-result v9

    .line 487
    if-nez v9, :cond_14

    .line 488
    .line 489
    goto :goto_12

    .line 490
    :cond_14
    :goto_13
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 491
    .line 492
    .line 493
    move-result-object v6

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    if-nez v8, :cond_15

    .line 499
    .line 500
    :goto_14
    move-object/from16 v17, v3

    .line 501
    .line 502
    move-object/from16 v47, v4

    .line 503
    .line 504
    :goto_15
    const/4 v3, -0x1

    .line 505
    goto :goto_16

    .line 506
    :cond_15
    invoke-virtual {v8}, Landroid/media/metrics/MediaItemInfo;->getVideoSampleCount()J

    .line 507
    .line 508
    .line 509
    move-result-wide v8

    .line 510
    const-wide/16 v45, -0x1

    .line 511
    .line 512
    cmp-long v17, v8, v45

    .line 513
    .line 514
    if-nez v17, :cond_16

    .line 515
    .line 516
    goto :goto_14

    .line 517
    :cond_16
    move-object/from16 v17, v3

    .line 518
    .line 519
    move-object/from16 v47, v4

    .line 520
    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    .line 522
    .line 523
    .line 524
    move-result-wide v3

    .line 525
    cmp-long v45, v3, v45

    .line 526
    .line 527
    if-nez v45, :cond_17

    .line 528
    .line 529
    goto :goto_15

    .line 530
    :cond_17
    const-wide v45, 0x408f400000000000L    # 1000.0

    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    long-to-double v8, v8

    .line 536
    mul-double v8, v8, v45

    .line 537
    .line 538
    long-to-double v3, v3

    .line 539
    div-double/2addr v8, v3

    .line 540
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    .line 541
    .line 542
    .line 543
    move-result-wide v3

    .line 544
    const-wide/32 v8, 0x7fffffff

    .line 545
    .line 546
    .line 547
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 548
    .line 549
    .line 550
    move-result-wide v3

    .line 551
    long-to-int v3, v3

    .line 552
    :goto_16
    invoke-virtual {v6, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 553
    .line 554
    .line 555
    move-result-object v3

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 561
    .line 562
    .line 563
    move-result v4

    .line 564
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSourceType()I

    .line 569
    .line 570
    .line 571
    move-result v4

    .line 572
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    const-wide/16 v8, 0x1

    .line 577
    .line 578
    and-long v45, v12, v8

    .line 579
    .line 580
    cmp-long v4, v45, v31

    .line 581
    .line 582
    if-eqz v4, :cond_18

    .line 583
    .line 584
    const/4 v9, 0x1

    .line 585
    goto :goto_17

    .line 586
    :cond_18
    const/4 v9, 0x0

    .line 587
    :goto_17
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 588
    .line 589
    .line 590
    move-result-object v3

    .line 591
    const-wide/16 v8, 0x2

    .line 592
    .line 593
    and-long v45, v12, v8

    .line 594
    .line 595
    cmp-long v4, v45, v31

    .line 596
    .line 597
    if-eqz v4, :cond_19

    .line 598
    .line 599
    const/4 v9, 0x1

    .line 600
    goto :goto_18

    .line 601
    :cond_19
    const/4 v9, 0x0

    .line 602
    :goto_18
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    const-wide/16 v8, 0x4

    .line 607
    .line 608
    and-long v45, v12, v8

    .line 609
    .line 610
    cmp-long v4, v45, v31

    .line 611
    .line 612
    if-eqz v4, :cond_1a

    .line 613
    .line 614
    const/4 v9, 0x1

    .line 615
    goto :goto_19

    .line 616
    :cond_1a
    const/4 v9, 0x0

    .line 617
    :goto_19
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    const-wide/16 v8, 0x8

    .line 622
    .line 623
    and-long v45, v12, v8

    .line 624
    .line 625
    cmp-long v4, v45, v31

    .line 626
    .line 627
    if-eqz v4, :cond_1b

    .line 628
    .line 629
    const/4 v9, 0x1

    .line 630
    goto :goto_1a

    .line 631
    :cond_1b
    const/4 v9, 0x0

    .line 632
    :goto_1a
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    const-wide/16 v8, 0x10

    .line 637
    .line 638
    and-long v45, v12, v8

    .line 639
    .line 640
    cmp-long v4, v45, v31

    .line 641
    .line 642
    if-eqz v4, :cond_1c

    .line 643
    .line 644
    const/4 v9, 0x1

    .line 645
    goto :goto_1b

    .line 646
    :cond_1c
    const/4 v9, 0x0

    .line 647
    :goto_1b
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 648
    .line 649
    .line 650
    move-result-object v3

    .line 651
    const-wide/16 v8, 0x20

    .line 652
    .line 653
    and-long v45, v12, v8

    .line 654
    .line 655
    cmp-long v4, v45, v31

    .line 656
    .line 657
    if-eqz v4, :cond_1d

    .line 658
    .line 659
    const/4 v9, 0x1

    .line 660
    goto :goto_1c

    .line 661
    :cond_1d
    const/4 v9, 0x0

    .line 662
    :goto_1c
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 663
    .line 664
    .line 665
    move-result-object v3

    .line 666
    const-wide/16 v8, 0x40

    .line 667
    .line 668
    and-long v45, v12, v8

    .line 669
    .line 670
    cmp-long v4, v45, v31

    .line 671
    .line 672
    if-eqz v4, :cond_1e

    .line 673
    .line 674
    const/4 v9, 0x1

    .line 675
    goto :goto_1d

    .line 676
    :cond_1e
    const/4 v9, 0x0

    .line 677
    :goto_1d
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    const-wide/16 v8, 0x80

    .line 682
    .line 683
    and-long v45, v12, v8

    .line 684
    .line 685
    cmp-long v4, v45, v31

    .line 686
    .line 687
    if-eqz v4, :cond_1f

    .line 688
    .line 689
    const/4 v9, 0x1

    .line 690
    goto :goto_1e

    .line 691
    :cond_1f
    const/4 v9, 0x0

    .line 692
    :goto_1e
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 693
    .line 694
    .line 695
    move-result-object v3

    .line 696
    const-wide/16 v8, 0x100

    .line 697
    .line 698
    and-long v45, v12, v8

    .line 699
    .line 700
    cmp-long v4, v45, v31

    .line 701
    .line 702
    if-eqz v4, :cond_20

    .line 703
    .line 704
    const/4 v4, 0x1

    .line 705
    goto :goto_1f

    .line 706
    :cond_20
    const/4 v4, 0x0

    .line 707
    :goto_1f
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    const-wide/16 v45, 0x200

    .line 712
    .line 713
    and-long v48, v12, v45

    .line 714
    .line 715
    cmp-long v4, v48, v31

    .line 716
    .line 717
    if-eqz v4, :cond_21

    .line 718
    .line 719
    const/4 v4, 0x1

    .line 720
    goto :goto_20

    .line 721
    :cond_21
    const/4 v4, 0x0

    .line 722
    :goto_20
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 723
    .line 724
    .line 725
    move-result-object v3

    .line 726
    const-wide/16 v48, 0x400

    .line 727
    .line 728
    and-long v12, v12, v48

    .line 729
    .line 730
    cmp-long v4, v12, v31

    .line 731
    .line 732
    if-eqz v4, :cond_22

    .line 733
    .line 734
    const/4 v4, 0x1

    .line 735
    goto :goto_21

    .line 736
    :cond_22
    const/4 v4, 0x0

    .line 737
    :goto_21
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 738
    .line 739
    .line 740
    move-result-object v3

    .line 741
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    .line 742
    .line 743
    .line 744
    move-result-wide v12

    .line 745
    invoke-static {v12, v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 746
    .line 747
    .line 748
    move-result-wide v12

    .line 749
    invoke-virtual {v3, v12, v13}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 750
    .line 751
    .line 752
    move-result-object v3

    .line 753
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    .line 754
    .line 755
    .line 756
    move-result-wide v12

    .line 757
    invoke-static {v12, v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 758
    .line 759
    .line 760
    move-result-wide v12

    .line 761
    invoke-virtual {v3, v12, v13}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 762
    .line 763
    .line 764
    move-result-object v3

    .line 765
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v4

    .line 769
    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v4

    .line 773
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 774
    .line 775
    .line 776
    move-result-object v3

    .line 777
    invoke-virtual {v3, v14}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 782
    .line 783
    .line 784
    move-result-object v3

    .line 785
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 786
    .line 787
    .line 788
    move-result v4

    .line 789
    const/4 v6, 0x5

    .line 790
    if-eqz v4, :cond_23

    .line 791
    .line 792
    move-object/from16 v4, v17

    .line 793
    .line 794
    move-object/from16 v12, v47

    .line 795
    .line 796
    :goto_22
    const/4 v13, 0x0

    .line 797
    goto/16 :goto_27

    .line 798
    .line 799
    :cond_23
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 800
    .line 801
    .line 802
    move-result v4

    .line 803
    sparse-switch v4, :sswitch_data_0

    .line 804
    .line 805
    .line 806
    :goto_23
    move-object/from16 v4, v17

    .line 807
    .line 808
    :goto_24
    move-object/from16 v12, v47

    .line 809
    .line 810
    :goto_25
    const/4 v13, -0x1

    .line 811
    goto :goto_26

    .line 812
    :sswitch_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    if-nez v4, :cond_24

    .line 817
    .line 818
    goto :goto_23

    .line 819
    :cond_24
    move-object/from16 v4, v17

    .line 820
    .line 821
    move-object/from16 v12, v47

    .line 822
    .line 823
    const/4 v13, 0x4

    .line 824
    goto :goto_26

    .line 825
    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 826
    .line 827
    .line 828
    move-result v4

    .line 829
    if-nez v4, :cond_25

    .line 830
    .line 831
    goto :goto_23

    .line 832
    :cond_25
    move-object/from16 v4, v17

    .line 833
    .line 834
    move-object/from16 v12, v47

    .line 835
    .line 836
    const/4 v13, 0x3

    .line 837
    goto :goto_26

    .line 838
    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result v4

    .line 842
    if-nez v4, :cond_26

    .line 843
    .line 844
    goto :goto_23

    .line 845
    :cond_26
    move-object/from16 v4, v17

    .line 846
    .line 847
    move-object/from16 v12, v47

    .line 848
    .line 849
    const/4 v13, 0x2

    .line 850
    goto :goto_26

    .line 851
    :sswitch_3
    move-object/from16 v4, v17

    .line 852
    .line 853
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v12

    .line 857
    if-nez v12, :cond_27

    .line 858
    .line 859
    goto :goto_24

    .line 860
    :cond_27
    move-object/from16 v12, v47

    .line 861
    .line 862
    const/4 v13, 0x1

    .line 863
    goto :goto_26

    .line 864
    :sswitch_4
    move-object/from16 v4, v17

    .line 865
    .line 866
    move-object/from16 v12, v47

    .line 867
    .line 868
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    move-result v13

    .line 872
    if-nez v13, :cond_28

    .line 873
    .line 874
    goto :goto_25

    .line 875
    :cond_28
    const/4 v13, 0x0

    .line 876
    :goto_26
    packed-switch v13, :pswitch_data_0

    .line 877
    .line 878
    .line 879
    goto :goto_22

    .line 880
    :pswitch_0
    const/4 v13, 0x4

    .line 881
    goto :goto_27

    .line 882
    :pswitch_1
    const/4 v13, 0x3

    .line 883
    goto :goto_27

    .line 884
    :pswitch_2
    const/4 v13, 0x1

    .line 885
    goto :goto_27

    .line 886
    :pswitch_3
    const/4 v13, 0x2

    .line 887
    goto :goto_27

    .line 888
    :pswitch_4
    move v13, v6

    .line 889
    :goto_27
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 890
    .line 891
    .line 892
    move-result-object v3

    .line 893
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    .line 894
    .line 895
    .line 896
    move-result v13

    .line 897
    sparse-switch v13, :sswitch_data_1

    .line 898
    .line 899
    .line 900
    const/4 v13, -0x1

    .line 901
    :sswitch_5
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 902
    .line 903
    .line 904
    move-result-object v3

    .line 905
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    .line 906
    .line 907
    .line 908
    move-result v13

    .line 909
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 910
    .line 911
    .line 912
    move-result-object v3

    .line 913
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    .line 914
    .line 915
    .line 916
    move-result-wide v13

    .line 917
    invoke-virtual {v3, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 918
    .line 919
    .line 920
    move-result-object v3

    .line 921
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 922
    .line 923
    .line 924
    move-result v13

    .line 925
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 926
    .line 927
    .line 928
    move-result-object v3

    .line 929
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    .line 930
    .line 931
    .line 932
    move-result v13

    .line 933
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 934
    .line 935
    .line 936
    move-result-object v3

    .line 937
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 942
    .line 943
    .line 944
    move-result v7

    .line 945
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    .line 946
    .line 947
    .line 948
    move-result v13

    .line 949
    if-lez v7, :cond_2c

    .line 950
    .line 951
    if-gtz v13, :cond_29

    .line 952
    .line 953
    goto :goto_28

    .line 954
    :cond_29
    if-ge v7, v13, :cond_2a

    .line 955
    .line 956
    const/4 v7, 0x3

    .line 957
    goto :goto_29

    .line 958
    :cond_2a
    if-ge v13, v7, :cond_2b

    .line 959
    .line 960
    const/4 v7, 0x2

    .line 961
    goto :goto_29

    .line 962
    :cond_2b
    const/4 v7, 0x1

    .line 963
    goto :goto_29

    .line 964
    :cond_2c
    :goto_28
    const/4 v7, 0x0

    .line 965
    :goto_29
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 966
    .line 967
    .line 968
    move-result-object v3

    .line 969
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 970
    .line 971
    .line 972
    move-result v7

    .line 973
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 974
    .line 975
    .line 976
    move-result-object v3

    .line 977
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 978
    .line 979
    .line 980
    move-result v7

    .line 981
    invoke-static {v7, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    .line 982
    .line 983
    .line 984
    move-result v5

    .line 985
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 986
    .line 987
    .line 988
    move-result-object v3

    .line 989
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 990
    .line 991
    .line 992
    move-result v5

    .line 993
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 994
    .line 995
    .line 996
    move-result v5

    .line 997
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 998
    .line 999
    .line 1000
    move-result-object v3

    .line 1001
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 1002
    .line 1003
    .line 1004
    move-result v5

    .line 1005
    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    .line 1006
    .line 1007
    .line 1008
    move-result v5

    .line 1009
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v3

    .line 1013
    move-object/from16 v5, p0

    .line 1014
    .line 1015
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1016
    .line 1017
    .line 1018
    move-result-object v3

    .line 1019
    move-object/from16 v5, v24

    .line 1020
    .line 1021
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v3

    .line 1025
    const-wide/16 v13, 0x1

    .line 1026
    .line 1027
    and-long v13, v19, v13

    .line 1028
    .line 1029
    cmp-long v5, v13, v31

    .line 1030
    .line 1031
    if-eqz v5, :cond_2d

    .line 1032
    .line 1033
    const/4 v5, 0x1

    .line 1034
    goto :goto_2a

    .line 1035
    :cond_2d
    const/4 v5, 0x0

    .line 1036
    :goto_2a
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v3

    .line 1040
    const-wide/16 v13, 0x2

    .line 1041
    .line 1042
    and-long v13, v19, v13

    .line 1043
    .line 1044
    cmp-long v5, v13, v31

    .line 1045
    .line 1046
    if-eqz v5, :cond_2e

    .line 1047
    .line 1048
    const/4 v5, 0x1

    .line 1049
    goto :goto_2b

    .line 1050
    :cond_2e
    const/4 v5, 0x0

    .line 1051
    :goto_2b
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v3

    .line 1055
    const-wide/16 v13, 0x4

    .line 1056
    .line 1057
    and-long v13, v19, v13

    .line 1058
    .line 1059
    cmp-long v5, v13, v31

    .line 1060
    .line 1061
    if-eqz v5, :cond_2f

    .line 1062
    .line 1063
    const/4 v5, 0x1

    .line 1064
    goto :goto_2c

    .line 1065
    :cond_2f
    const/4 v5, 0x0

    .line 1066
    :goto_2c
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v3

    .line 1070
    const-wide/16 v13, 0x8

    .line 1071
    .line 1072
    and-long v13, v19, v13

    .line 1073
    .line 1074
    cmp-long v5, v13, v31

    .line 1075
    .line 1076
    if-eqz v5, :cond_30

    .line 1077
    .line 1078
    const/4 v5, 0x1

    .line 1079
    goto :goto_2d

    .line 1080
    :cond_30
    const/4 v5, 0x0

    .line 1081
    :goto_2d
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v3

    .line 1085
    const-wide/16 v13, 0x10

    .line 1086
    .line 1087
    and-long v13, v19, v13

    .line 1088
    .line 1089
    cmp-long v5, v13, v31

    .line 1090
    .line 1091
    if-eqz v5, :cond_31

    .line 1092
    .line 1093
    const/4 v5, 0x1

    .line 1094
    goto :goto_2e

    .line 1095
    :cond_31
    const/4 v5, 0x0

    .line 1096
    :goto_2e
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1097
    .line 1098
    .line 1099
    move-result-object v3

    .line 1100
    const-wide/16 v13, 0x20

    .line 1101
    .line 1102
    and-long v13, v19, v13

    .line 1103
    .line 1104
    cmp-long v5, v13, v31

    .line 1105
    .line 1106
    if-eqz v5, :cond_32

    .line 1107
    .line 1108
    const/4 v5, 0x1

    .line 1109
    goto :goto_2f

    .line 1110
    :cond_32
    const/4 v5, 0x0

    .line 1111
    :goto_2f
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v3

    .line 1115
    const-wide/16 v13, 0x40

    .line 1116
    .line 1117
    and-long v13, v19, v13

    .line 1118
    .line 1119
    cmp-long v5, v13, v31

    .line 1120
    .line 1121
    if-eqz v5, :cond_33

    .line 1122
    .line 1123
    const/4 v5, 0x1

    .line 1124
    goto :goto_30

    .line 1125
    :cond_33
    const/4 v5, 0x0

    .line 1126
    :goto_30
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v3

    .line 1130
    const-wide/16 v13, 0x80

    .line 1131
    .line 1132
    and-long v13, v19, v13

    .line 1133
    .line 1134
    cmp-long v5, v13, v31

    .line 1135
    .line 1136
    if-eqz v5, :cond_34

    .line 1137
    .line 1138
    const/4 v5, 0x1

    .line 1139
    goto :goto_31

    .line 1140
    :cond_34
    const/4 v5, 0x0

    .line 1141
    :goto_31
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v3

    .line 1145
    and-long v7, v19, v8

    .line 1146
    .line 1147
    cmp-long v5, v7, v31

    .line 1148
    .line 1149
    if-eqz v5, :cond_35

    .line 1150
    .line 1151
    const/4 v9, 0x1

    .line 1152
    goto :goto_32

    .line 1153
    :cond_35
    const/4 v9, 0x0

    .line 1154
    :goto_32
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v3

    .line 1158
    and-long v7, v19, v45

    .line 1159
    .line 1160
    cmp-long v5, v7, v31

    .line 1161
    .line 1162
    if-eqz v5, :cond_36

    .line 1163
    .line 1164
    const/4 v9, 0x1

    .line 1165
    goto :goto_33

    .line 1166
    :cond_36
    const/4 v9, 0x0

    .line 1167
    :goto_33
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1168
    .line 1169
    .line 1170
    move-result-object v3

    .line 1171
    and-long v7, v19, v48

    .line 1172
    .line 1173
    cmp-long v5, v7, v31

    .line 1174
    .line 1175
    if-eqz v5, :cond_37

    .line 1176
    .line 1177
    const/4 v9, 0x1

    .line 1178
    goto :goto_34

    .line 1179
    :cond_37
    const/4 v9, 0x0

    .line 1180
    :goto_34
    invoke-virtual {v3, v9}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 1181
    .line 1182
    .line 1183
    move-result-object v3

    .line 1184
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    .line 1185
    .line 1186
    .line 1187
    move-result-wide v7

    .line 1188
    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 1189
    .line 1190
    .line 1191
    move-result-wide v7

    .line 1192
    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v3

    .line 1196
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    .line 1197
    .line 1198
    .line 1199
    move-result-wide v7

    .line 1200
    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 1201
    .line 1202
    .line 1203
    move-result-wide v7

    .line 1204
    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1205
    .line 1206
    .line 1207
    move-result-object v3

    .line 1208
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    .line 1209
    .line 1210
    .line 1211
    move-result-object v5

    .line 1212
    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object v5

    .line 1216
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v3

    .line 1220
    move-object/from16 v5, v23

    .line 1221
    .line 1222
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1223
    .line 1224
    .line 1225
    move-result-object v3

    .line 1226
    move-object/from16 v5, v22

    .line 1227
    .line 1228
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v3

    .line 1232
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1233
    .line 1234
    .line 1235
    move-result v7

    .line 1236
    if-eqz v7, :cond_38

    .line 1237
    .line 1238
    :goto_35
    const/4 v7, 0x0

    .line 1239
    goto :goto_38

    .line 1240
    :cond_38
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 1241
    .line 1242
    .line 1243
    move-result v7

    .line 1244
    sparse-switch v7, :sswitch_data_2

    .line 1245
    .line 1246
    .line 1247
    :goto_36
    const/4 v9, -0x1

    .line 1248
    goto :goto_37

    .line 1249
    :sswitch_6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1250
    .line 1251
    .line 1252
    move-result v0

    .line 1253
    if-nez v0, :cond_39

    .line 1254
    .line 1255
    goto :goto_36

    .line 1256
    :cond_39
    const/4 v9, 0x4

    .line 1257
    goto :goto_37

    .line 1258
    :sswitch_7
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    if-nez v0, :cond_3a

    .line 1263
    .line 1264
    goto :goto_36

    .line 1265
    :cond_3a
    const/4 v9, 0x3

    .line 1266
    goto :goto_37

    .line 1267
    :sswitch_8
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v0

    .line 1271
    if-nez v0, :cond_3b

    .line 1272
    .line 1273
    goto :goto_36

    .line 1274
    :cond_3b
    const/4 v9, 0x2

    .line 1275
    goto :goto_37

    .line 1276
    :sswitch_9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1277
    .line 1278
    .line 1279
    move-result v0

    .line 1280
    if-nez v0, :cond_3c

    .line 1281
    .line 1282
    goto :goto_36

    .line 1283
    :cond_3c
    const/4 v9, 0x1

    .line 1284
    goto :goto_37

    .line 1285
    :sswitch_a
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1286
    .line 1287
    .line 1288
    move-result v0

    .line 1289
    if-nez v0, :cond_3d

    .line 1290
    .line 1291
    goto :goto_36

    .line 1292
    :cond_3d
    const/4 v9, 0x0

    .line 1293
    :goto_37
    packed-switch v9, :pswitch_data_1

    .line 1294
    .line 1295
    .line 1296
    goto :goto_35

    .line 1297
    :pswitch_5
    const/4 v7, 0x4

    .line 1298
    goto :goto_38

    .line 1299
    :pswitch_6
    const/4 v7, 0x3

    .line 1300
    goto :goto_38

    .line 1301
    :pswitch_7
    const/4 v7, 0x1

    .line 1302
    goto :goto_38

    .line 1303
    :pswitch_8
    const/4 v7, 0x2

    .line 1304
    goto :goto_38

    .line 1305
    :pswitch_9
    move v7, v6

    .line 1306
    :goto_38
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v0

    .line 1310
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    .line 1311
    .line 1312
    .line 1313
    move-result v1

    .line 1314
    sparse-switch v1, :sswitch_data_3

    .line 1315
    .line 1316
    .line 1317
    const/4 v8, -0x1

    .line 1318
    goto :goto_39

    .line 1319
    :sswitch_b
    move v8, v1

    .line 1320
    :goto_39
    invoke-virtual {v0, v8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v0

    .line 1324
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    .line 1325
    .line 1326
    .line 1327
    move-result v1

    .line 1328
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1329
    .line 1330
    .line 1331
    move-result-object v0

    .line 1332
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    .line 1333
    .line 1334
    .line 1335
    move-result-wide v1

    .line 1336
    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1337
    .line 1338
    .line 1339
    move-result-object v0

    .line 1340
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 1341
    .line 1342
    .line 1343
    move-result v1

    .line 1344
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v0

    .line 1348
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 1349
    .line 1350
    .line 1351
    move-result v1

    .line 1352
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    move/from16 v1, v25

    .line 1357
    .line 1358
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1359
    .line 1360
    .line 1361
    move-result-object v0

    .line 1362
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 1363
    .line 1364
    .line 1365
    move-result v1

    .line 1366
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 1367
    .line 1368
    .line 1369
    move-result v2

    .line 1370
    if-lez v1, :cond_41

    .line 1371
    .line 1372
    if-gtz v2, :cond_3e

    .line 1373
    .line 1374
    goto :goto_3a

    .line 1375
    :cond_3e
    if-ge v1, v2, :cond_3f

    .line 1376
    .line 1377
    const/4 v1, 0x3

    .line 1378
    goto :goto_3b

    .line 1379
    :cond_3f
    if-ge v2, v1, :cond_40

    .line 1380
    .line 1381
    const/4 v1, 0x2

    .line 1382
    goto :goto_3b

    .line 1383
    :cond_40
    const/4 v1, 0x1

    .line 1384
    goto :goto_3b

    .line 1385
    :cond_41
    :goto_3a
    const/4 v1, 0x0

    .line 1386
    :goto_3b
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1387
    .line 1388
    .line 1389
    move-result-object v0

    .line 1390
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 1391
    .line 1392
    .line 1393
    move-result v1

    .line 1394
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1395
    .line 1396
    .line 1397
    move-result-object v0

    .line 1398
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 1399
    .line 1400
    .line 1401
    move-result v1

    .line 1402
    invoke-static {v1, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    .line 1403
    .line 1404
    .line 1405
    move-result v1

    .line 1406
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v0

    .line 1410
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 1411
    .line 1412
    .line 1413
    move-result v1

    .line 1414
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1415
    .line 1416
    .line 1417
    move-result v1

    .line 1418
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1419
    .line 1420
    .line 1421
    move-result-object v0

    .line 1422
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 1423
    .line 1424
    .line 1425
    move-result v1

    .line 1426
    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    .line 1427
    .line 1428
    .line 1429
    move-result v1

    .line 1430
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v0

    .line 1434
    move-object/from16 v1, v21

    .line 1435
    .line 1436
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1437
    .line 1438
    .line 1439
    move-result-object v0

    .line 1440
    move-object/from16 v8, v28

    .line 1441
    .line 1442
    invoke-virtual {v0, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1447
    .line 1448
    .line 1449
    move-result-object v0

    .line 1450
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 1451
    .line 1452
    .line 1453
    move-result-object v0

    .line 1454
    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 1455
    .line 1456
    .line 1457
    return-void

    .line 1458
    nop

    .line 1459
    :sswitch_data_0
    .sparse-switch
        -0x631b55f6 -> :sswitch_4
        -0x63185e82 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    :sswitch_data_1
    .sparse-switch
        0x1f40 -> :sswitch_5
        0x2b11 -> :sswitch_5
        0x3e80 -> :sswitch_5
        0x5622 -> :sswitch_5
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_5
        0x17700 -> :sswitch_5
        0x2ee00 -> :sswitch_5
    .end sparse-switch

    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    :sswitch_data_2
    .sparse-switch
        -0x631b55f6 -> :sswitch_a
        -0x63185e82 -> :sswitch_9
        0x4f62373a -> :sswitch_8
        0x5f50bed8 -> :sswitch_7
        0x5f50bed9 -> :sswitch_6
    .end sparse-switch

    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    :sswitch_data_3
    .sparse-switch
        0x1f40 -> :sswitch_b
        0x2b11 -> :sswitch_b
        0x3e80 -> :sswitch_b
        0x5622 -> :sswitch_b
        0xac44 -> :sswitch_b
        0xbb80 -> :sswitch_b
        0x17700 -> :sswitch_b
        0x2ee00 -> :sswitch_b
    .end sparse-switch
.end method

.method public final reportNetworkEvent(Ljava/lang/String;Landroid/media/metrics/NetworkEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x141

    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getNetworkType()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getTimeSinceCreatedMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x143

    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getExceptionStack()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getErrorCode()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getSubErrorCode()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getTimeSinceCreatedMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide p1

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public final reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    const/16 v0, 0x140

    .line 16
    .line 17
    invoke-virtual {p3, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const/4 v0, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move p0, v0

    .line 30
    :goto_0
    invoke-virtual {p3, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getMediaDurationMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamSource()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamType()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlaybackType()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmType()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getContentType()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerVersion()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    new-array p1, v0, [B

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesPlayed()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesDropped()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getAudioUnderrunCount()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkBytesRead()J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 137
    .line 138
    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getLocalBytesRead()J

    .line 141
    .line 142
    .line 143
    move-result-wide v1

    .line 144
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkTransferDurationMillis()J

    .line 149
    .line 150
    .line 151
    move-result-wide v1

    .line 152
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmSessionId()[B

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 177
    .line 178
    .line 179
    return-void
.end method

.method public final reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x142

    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getState()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getTimeSinceCreatedMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide p1

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public final reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 6
    .line 7
    .line 8
    if-ne p0, p3, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x144

    .line 16
    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackState()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackChangeReason()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getContainerMimeType()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getSampleMimeType()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getCodecName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getBitrate()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTimeSinceCreatedMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackType()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguageRegion()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getChannelCount()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getAudioSampleRate()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getWidth()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getHeight()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getVideoFrameRate()F

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
