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

    .line 3
    invoke-direct {p0}, Landroid/media/metrics/IMediaMetricsManager$Stub;-><init>()V

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

    .line 7
    aget-object v4, p0, v3

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v5

    .line 13
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v6

    .line 17
    if-eqz v6, :cond_4

    .line 19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Ljava/lang/String;

    .line 25
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 31
    const/4 p0, -0x1

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 35
    move-result p1

    .line 36
    sparse-switch p1, :sswitch_data_0

    .line 39
    :goto_1
    move v0, p0

    .line 40
    goto :goto_2

    .line 41
    :sswitch_0
    const-string/jumbo p1, "player_metrics_per_app_attribution_allowlist"

    .line 44
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

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

    .line 56
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 62
    goto :goto_1

    .line 63
    :sswitch_2
    const-string/jumbo p1, "player_metrics_per_app_attribution_blocklist"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p1

    .line 70
    if-nez p1, :cond_2

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move v0, v1

    .line 74
    :cond_3
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 77
    const v1, 0x1869f

    .line 80
    goto :goto_3

    .line 81
    :pswitch_0
    const/16 v1, 0x3e8

    .line 83
    :goto_3
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getEditingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getPlaybackSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getRecordingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getSessionIdInternal()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0xc

    .line 3
    new-array v0, v0, [B

    .line 5
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 7
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mSecureRandom:Ljava/security/SecureRandom;

    .line 9
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 12
    const/16 p0, 0xb

    .line 14
    invoke-static {v0, p0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    new-instance v0, Landroid/media/MediaMetrics$Item;

    .line 20
    const-string/jumbo v1, "metrics.manager"

    .line 23
    invoke-direct {v0, v1}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 26
    sget-object v1, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    .line 28
    const-string/jumbo v2, "create"

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 34
    move-result-object v0

    .line 35
    sget-object v1, Landroid/media/MediaMetrics$Property;->LOG_SESSION_ID:Landroid/media/MediaMetrics$Key;

    .line 37
    invoke-virtual {v0, v1, p0}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 44
    return-object p0
.end method

.method public final getTranscodingSessionId(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->getSessionIdInternal()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final loggingLevel()I
    .locals 9

    .line 1
    const-string/jumbo v0, "empty package from uid "

    .line 4
    iget-object v1, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 6
    iget-object v1, v1, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 15
    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 17
    const/4 v4, 0x2

    .line 18
    if-nez v3, :cond_0

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 26
    const-string/jumbo v7, "media"

    .line 29
    const-string/jumbo v8, "media_metrics_mode"

    .line 32
    invoke-static {v7, v8, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 35
    move-result v7

    .line 36
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v7

    .line 40
    iput-object v7, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 42
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_2

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    throw p0

    .line 54
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 56
    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 58
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 61
    move-result v3

    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v6, 0x0

    .line 64
    if-ne v3, v5, :cond_1

    .line 66
    monitor-exit v1

    .line 67
    return v6

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 70
    iget-object v3, v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result v3

    .line 76
    const v5, 0x1869f

    .line 79
    if-nez v3, :cond_2

    .line 81
    const-string p0, "MediaMetricsManagerService"

    .line 83
    const-string v0, "Logging level blocked: MEDIA_METRICS_MODE_OFF"

    .line 85
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    monitor-exit v1

    .line 89
    return v5

    .line 90
    :cond_2
    iget-object v3, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 92
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    if-eqz v3, :cond_e

    .line 106
    array-length v7, v3

    .line 107
    if-nez v7, :cond_3

    .line 109
    goto/16 :goto_1

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 113
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 118
    move-result v0

    .line 119
    if-ne v0, v4, :cond_8

    .line 121
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 123
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 125
    if-nez v2, :cond_4

    .line 127
    const-string/jumbo v2, "player_metrics_app_blocklist"

    .line 130
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 133
    move-result-object v2

    .line 134
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 136
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 138
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 140
    if-nez v0, :cond_4

    .line 142
    const-string p0, "MediaMetricsManagerService"

    .line 144
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_BLOCKLIST."

    .line 146
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-exit v1

    .line 150
    return v5

    .line 151
    :cond_4
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 153
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mBlockList:Ljava/util/List;

    .line 155
    const-string/jumbo v2, "player_metrics_app_blocklist"

    .line 158
    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_5

    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 167
    move-result p0

    .line 168
    monitor-exit v1

    .line 169
    return p0

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 172
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 174
    if-nez v2, :cond_6

    .line 176
    const-string/jumbo v2, "player_metrics_per_app_attribution_blocklist"

    .line 179
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 182
    move-result-object v2

    .line 183
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 185
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 187
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 189
    if-nez v0, :cond_6

    .line 191
    const-string p0, "MediaMetricsManagerService"

    .line 193
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_BLOCKLIST."

    .line 195
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    monitor-exit v1

    .line 199
    return v5

    .line 200
    :cond_6
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 202
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidBlocklist:Ljava/util/List;

    .line 204
    const-string/jumbo v0, "player_metrics_per_app_attribution_blocklist"

    .line 207
    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 210
    move-result-object p0

    .line 211
    if-eqz p0, :cond_7

    .line 213
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

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

    .line 223
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 228
    move-result v0

    .line 229
    const/4 v2, 0x3

    .line 230
    if-ne v0, v2, :cond_d

    .line 232
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 234
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 236
    if-nez v2, :cond_9

    .line 238
    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    .line 241
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 244
    move-result-object v2

    .line 245
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 247
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 249
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 251
    if-nez v0, :cond_9

    .line 253
    const-string p0, "MediaMetricsManagerService"

    .line 255
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_PER_APP_ATTRIBUTION_ALLOWLIST."

    .line 257
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    monitor-exit v1

    .line 261
    return v5

    .line 262
    :cond_9
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 264
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mNoUidAllowlist:Ljava/util/List;

    .line 266
    const-string/jumbo v2, "player_metrics_per_app_attribution_allowlist"

    .line 269
    invoke-static {v3, v0, v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 272
    move-result-object v0

    .line 273
    if-eqz v0, :cond_a

    .line 275
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 278
    move-result p0

    .line 279
    monitor-exit v1

    .line 280
    return p0

    .line 281
    :cond_a
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 283
    iget-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 285
    if-nez v2, :cond_b

    .line 287
    const-string/jumbo v2, "player_metrics_app_allowlist"

    .line 290
    invoke-static {v2}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getListLocked(Ljava/lang/String;)Ljava/util/List;

    .line 293
    move-result-object v2

    .line 294
    iput-object v2, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 296
    iget-object v0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 298
    iget-object v0, v0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 300
    if-nez v0, :cond_b

    .line 302
    const-string p0, "MediaMetricsManagerService"

    .line 304
    const-string v0, "Logging level blocked: Failed to get PLAYER_METRICS_APP_ALLOWLIST."

    .line 306
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    monitor-exit v1

    .line 310
    return v5

    .line 311
    :cond_b
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 313
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mAllowlist:Ljava/util/List;

    .line 315
    const-string/jumbo v0, "player_metrics_app_allowlist"

    .line 318
    invoke-static {v3, p0, v0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevelInternal([Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Integer;

    .line 321
    move-result-object p0

    .line 322
    if-eqz p0, :cond_c

    .line 324
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 327
    move-result p0

    .line 328
    monitor-exit v1

    .line 329
    return p0

    .line 330
    :cond_c
    const-string p0, "MediaMetricsManagerService"

    .line 332
    const-string v0, "Logging level blocked: Not detected in any allowlist."

    .line 334
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 342
    const-string v0, "Logging level blocked: Blocked by default."

    .line 344
    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return v5

    .line 348
    :cond_e
    :goto_1
    :try_start_3
    const-string v3, "MediaMetricsManagerService"

    .line 350
    new-instance v6, Ljava/lang/StringBuilder;

    .line 352
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    move-result-object v0

    .line 362
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->this$0:Lcom/android/server/media/metrics/MediaMetricsManagerService;

    .line 367
    iget-object p0, p0, Lcom/android/server/media/metrics/MediaMetricsManagerService;->mMode:Ljava/lang/Integer;

    .line 369
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 372
    move-result p0

    .line 373
    if-ne p0, v4, :cond_f

    .line 375
    const/16 v5, 0x3e8

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

    .line 3
    const-string v0, " for userId "

    .line 5
    const-string v1, " [NOP]"

    .line 7
    invoke-static {p2, p0, p1, v0, v1}, Lcom/android/server/AppStateTrackerImpl$MyHandler$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 11
    const-string p1, "MediaMetricsManagerService"

    .line 13
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method

.method public final reportBundleMetrics(Ljava/lang/String;Landroid/os/PersistableBundle;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 4
    move-result p0

    .line 5
    const p1, 0x1869f

    .line 8
    if-ne p0, p1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const-string/jumbo p0, "bundlesession-statsd-atom"

    .line 14
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 17
    move-result p0

    .line 18
    const/16 p1, 0x142

    .line 20
    if-eq p0, p1, :cond_1

    .line 22
    return-void

    .line 23
    :cond_1
    const-string/jumbo p0, "playbackstateevent-sessionid"

    .line 26
    invoke-virtual {p2, p0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    const-string/jumbo p3, "playbackstateevent-state"

    .line 33
    const/4 v0, -0x1

    .line 34
    invoke-virtual {p2, p3, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 37
    move-result p3

    .line 38
    const-string/jumbo v0, "playbackstateevent-lifetime"

    .line 41
    const-wide/16 v1, -0x1

    .line 43
    invoke-virtual {p2, v0, v1, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;J)J

    .line 46
    move-result-wide v0

    .line 47
    if-eqz p0, :cond_3

    .line 49
    if-ltz p3, :cond_3

    .line 51
    const-wide/16 v2, 0x0

    .line 53
    cmp-long p2, v0, v2

    .line 55
    if-gez p2, :cond_2

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2, p1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1, p0}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 85
    move-result-object p0

    .line 86
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 89
    return-void

    .line 90
    :cond_3
    :goto_0
    const-string/jumbo p1, "dropping incomplete data for atom 322: _sessionId: "

    .line 93
    const-string p2, " _state: "

    .line 95
    const-string v2, " _lifetime: "

    .line 97
    invoke-static {p3, p1, p0, p2, v2}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    move-result-object p0

    .line 101
    const-string p1, "MediaMetricsManagerService"

    .line 103
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)V

    .line 106
    return-void
.end method

.method public final reportEditingEndedEvent(Ljava/lang/String;Landroid/media/metrics/EditingEndedEvent;I)V
    .locals 50

    .line 1
    const-string/jumbo v0, "video/x-vnd.on2.vp9"

    .line 4
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    .line 7
    const-string/jumbo v2, "video/avc"

    .line 10
    const-string/jumbo v3, "video/hevc"

    .line 13
    const-string/jumbo v4, "video/av01"

    .line 16
    const/4 v10, 0x0

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 20
    move-result v11

    .line 21
    const v12, 0x1869f

    .line 24
    if-ne v11, v12, :cond_0

    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    .line 30
    move-result-object v11

    .line 31
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    .line 34
    move-result v11

    .line 35
    if-eqz v11, :cond_1

    .line 37
    sget-object v11, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    .line 43
    move-result-object v11

    .line 44
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v11

    .line 48
    check-cast v11, Landroid/media/metrics/MediaItemInfo;

    .line 50
    :goto_0
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    .line 53
    move-result-wide v12

    .line 54
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 57
    move-result-object v14

    .line 58
    const-string v15, "audio/"

    .line 60
    invoke-static {v15, v14}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 63
    move-result-object v14

    .line 64
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 67
    move-result-object v5

    .line 68
    const-string/jumbo v6, "video/"

    .line 71
    invoke-static {v6, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    .line 78
    move-result-object v16

    .line 79
    invoke-static/range {v16 .. v16}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 82
    move-result v17

    .line 83
    if-nez v17, :cond_2

    .line 85
    new-instance v7, Landroid/util/Size;

    .line 87
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    .line 90
    move-result v8

    .line 91
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 94
    move-result v9

    .line 95
    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 98
    invoke-static {v7}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 101
    move-result v17

    .line 102
    :cond_2
    move/from16 v7, v17

    .line 104
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    .line 107
    move-result-object v8

    .line 108
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 111
    move-result v9

    .line 112
    const-string v17, ""

    .line 114
    if-nez v9, :cond_3

    .line 116
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    move-result-object v9

    .line 120
    check-cast v9, Ljava/lang/String;

    .line 122
    goto :goto_1

    .line 123
    :cond_3
    move-object/from16 v9, v17

    .line 125
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 128
    move-result v10

    .line 129
    move-object/from16 p0, v9

    .line 131
    const/4 v9, 0x1

    .line 132
    if-le v10, v9, :cond_4

    .line 134
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Ljava/lang/String;

    .line 140
    goto :goto_2

    .line 141
    :cond_4
    move-object/from16 v8, v17

    .line 143
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    .line 146
    move-result-object v9

    .line 147
    if-nez v9, :cond_5

    .line 149
    sget-object v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;->EMPTY_MEDIA_ITEM_INFO:Landroid/media/metrics/MediaItemInfo;

    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    .line 155
    move-result-object v9

    .line 156
    :goto_3
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getDataTypes()J

    .line 159
    move-result-wide v19

    .line 160
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 163
    move-result-object v10

    .line 164
    invoke-static {v15, v10}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 167
    move-result-object v10

    .line 168
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getSampleMimeTypes()Ljava/util/List;

    .line 171
    move-result-object v15

    .line 172
    invoke-static {v6, v15}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetFilteredFirstMimeType(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 175
    move-result-object v6

    .line 176
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getVideoSize()Landroid/util/Size;

    .line 179
    move-result-object v15

    .line 180
    invoke-static {v15}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 183
    move-result v21

    .line 184
    move-object/from16 v22, v6

    .line 186
    if-nez v21, :cond_6

    .line 188
    new-instance v6, Landroid/util/Size;

    .line 190
    move-object/from16 v23, v10

    .line 192
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 195
    move-result v10

    .line 196
    move-object/from16 v24, v8

    .line 198
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 201
    move-result v8

    .line 202
    invoke-direct {v6, v10, v8}, Landroid/util/Size;-><init>(II)V

    .line 205
    invoke-static {v6}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoResolutionEnum(Landroid/util/Size;)I

    .line 208
    move-result v21

    .line 209
    :goto_4
    move/from16 v6, v21

    .line 211
    goto :goto_5

    .line 212
    :cond_6
    move-object/from16 v24, v8

    .line 214
    move-object/from16 v23, v10

    .line 216
    goto :goto_4

    .line 217
    :goto_5
    invoke-virtual {v9}, Landroid/media/metrics/MediaItemInfo;->getCodecNames()Ljava/util/List;

    .line 220
    move-result-object v8

    .line 221
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    .line 224
    move-result v10

    .line 225
    if-nez v10, :cond_7

    .line 227
    const/4 v10, 0x0

    .line 228
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    move-result-object v18

    .line 232
    check-cast v18, Ljava/lang/String;

    .line 234
    move-object/from16 v21, v18

    .line 236
    goto :goto_6

    .line 237
    :cond_7
    move-object/from16 v21, v17

    .line 239
    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 242
    move-result v10

    .line 243
    move/from16 v25, v6

    .line 245
    const/4 v6, 0x1

    .line 246
    if-le v10, v6, :cond_8

    .line 248
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    move-result-object v8

    .line 252
    check-cast v8, Ljava/lang/String;

    .line 254
    goto :goto_7

    .line 255
    :cond_8
    move-object/from16 v8, v17

    .line 257
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOperationTypes()J

    .line 260
    move-result-wide v26

    .line 261
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 264
    move-result-object v10

    .line 265
    const/16 v6, 0x31e

    .line 267
    invoke-virtual {v10, v6}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 270
    move-result-object v6

    .line 271
    move-object/from16 v10, p1

    .line 273
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 276
    move-result-object v6

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalState()I

    .line 280
    move-result v10

    .line 281
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 284
    move-result-object v6

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getFinalProgressPercent()F

    .line 288
    move-result v10

    .line 289
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 292
    move-result-object v6

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getErrorCode()I

    .line 296
    move-result v10

    .line 297
    invoke-virtual {v6, v10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 300
    move-result-object v6

    .line 301
    move-object/from16 v28, v8

    .line 303
    move-object v10, v9

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    .line 307
    move-result-wide v8

    .line 308
    invoke-virtual {v6, v8, v9}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 311
    move-result-object v6

    .line 312
    const-wide/16 v8, 0x1

    .line 314
    and-long v29, v26, v8

    .line 316
    const-wide/16 v31, 0x0

    .line 318
    cmp-long v29, v29, v31

    .line 320
    if-eqz v29, :cond_9

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

    .line 328
    move-result-object v6

    .line 329
    const-wide/16 v8, 0x2

    .line 331
    and-long v33, v26, v8

    .line 333
    cmp-long v33, v33, v31

    .line 335
    if-eqz v33, :cond_a

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

    .line 343
    move-result-object v6

    .line 344
    const-wide/16 v8, 0x4

    .line 346
    and-long v35, v26, v8

    .line 348
    cmp-long v35, v35, v31

    .line 350
    if-eqz v35, :cond_b

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

    .line 358
    move-result-object v6

    .line 359
    const-wide/16 v8, 0x8

    .line 361
    and-long v37, v26, v8

    .line 363
    cmp-long v37, v37, v31

    .line 365
    if-eqz v37, :cond_c

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

    .line 373
    move-result-object v6

    .line 374
    const-wide/16 v8, 0x10

    .line 376
    and-long v39, v26, v8

    .line 378
    cmp-long v39, v39, v31

    .line 380
    if-eqz v39, :cond_d

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

    .line 388
    move-result-object v6

    .line 389
    const-wide/16 v8, 0x20

    .line 391
    and-long v41, v26, v8

    .line 393
    cmp-long v41, v41, v31

    .line 395
    if-eqz v41, :cond_e

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

    .line 403
    move-result-object v6

    .line 404
    const-wide/16 v8, 0x40

    .line 406
    and-long v43, v26, v8

    .line 408
    cmp-long v43, v43, v31

    .line 410
    if-eqz v43, :cond_f

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

    .line 418
    move-result-object v6

    .line 419
    const-wide/16 v8, 0x80

    .line 421
    and-long v26, v26, v8

    .line 423
    cmp-long v26, v26, v31

    .line 425
    if-eqz v26, :cond_10

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

    .line 433
    move-result-object v6

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getExporterName()Ljava/lang/String;

    .line 437
    move-result-object v8

    .line 438
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 441
    move-result v9

    .line 442
    if-eqz v9, :cond_11

    .line 444
    :goto_10
    move-object/from16 v8, v17

    .line 446
    goto :goto_11

    .line 447
    :cond_11
    sget-object v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    .line 449
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 452
    move-result-object v9

    .line 453
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 456
    move-result v9

    .line 457
    if-nez v9, :cond_12

    .line 459
    goto :goto_10

    .line 460
    :cond_12
    :goto_11
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 463
    move-result-object v6

    .line 464
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getMuxerName()Ljava/lang/String;

    .line 467
    move-result-object v8

    .line 468
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 471
    move-result v9

    .line 472
    if-eqz v9, :cond_13

    .line 474
    :goto_12
    move-object/from16 v8, v17

    .line 476
    goto :goto_13

    .line 477
    :cond_13
    sget-object v9, Lcom/android/server/media/metrics/MediaMetricsManagerService;->PATTERN_KNOWN_EDITING_LIBRARY_NAMES:Ljava/util/regex/Pattern;

    .line 479
    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 482
    move-result-object v9

    .line 483
    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    .line 486
    move-result v9

    .line 487
    if-nez v9, :cond_14

    .line 489
    goto :goto_12

    .line 490
    :cond_14
    :goto_13
    invoke-virtual {v6, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 493
    move-result-object v6

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getOutputMediaItemInfo()Landroid/media/metrics/MediaItemInfo;

    .line 497
    move-result-object v8

    .line 498
    if-nez v8, :cond_15

    .line 500
    :goto_14
    move-object/from16 v17, v3

    .line 502
    move-object/from16 v47, v4

    .line 504
    :goto_15
    const/4 v3, -0x1

    .line 505
    goto :goto_16

    .line 506
    :cond_15
    invoke-virtual {v8}, Landroid/media/metrics/MediaItemInfo;->getVideoSampleCount()J

    .line 509
    move-result-wide v8

    .line 510
    const-wide/16 v45, -0x1

    .line 512
    cmp-long v17, v8, v45

    .line 514
    if-nez v17, :cond_16

    .line 516
    goto :goto_14

    .line 517
    :cond_16
    move-object/from16 v17, v3

    .line 519
    move-object/from16 v47, v4

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getTimeSinceCreatedMillis()J

    .line 524
    move-result-wide v3

    .line 525
    cmp-long v45, v3, v45

    .line 527
    if-nez v45, :cond_17

    .line 529
    goto :goto_15

    .line 530
    :cond_17
    const-wide v45, 0x408f400000000000L    # 1000.0

    .line 535
    long-to-double v8, v8

    .line 536
    mul-double v8, v8, v45

    .line 538
    long-to-double v3, v3

    .line 539
    div-double/2addr v8, v3

    .line 540
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    .line 543
    move-result-wide v3

    .line 544
    const-wide/32 v8, 0x7fffffff

    .line 547
    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 550
    move-result-wide v3

    .line 551
    long-to-int v3, v3

    .line 552
    :goto_16
    invoke-virtual {v6, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 555
    move-result-object v3

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/media/metrics/EditingEndedEvent;->getInputMediaItemInfos()Ljava/util/List;

    .line 559
    move-result-object v4

    .line 560
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 563
    move-result v4

    .line 564
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 567
    move-result-object v3

    .line 568
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getSourceType()I

    .line 571
    move-result v4

    .line 572
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 575
    move-result-object v3

    .line 576
    const-wide/16 v8, 0x1

    .line 578
    and-long v45, v12, v8

    .line 580
    cmp-long v4, v45, v31

    .line 582
    if-eqz v4, :cond_18

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

    .line 590
    move-result-object v3

    .line 591
    const-wide/16 v8, 0x2

    .line 593
    and-long v45, v12, v8

    .line 595
    cmp-long v4, v45, v31

    .line 597
    if-eqz v4, :cond_19

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

    .line 605
    move-result-object v3

    .line 606
    const-wide/16 v8, 0x4

    .line 608
    and-long v45, v12, v8

    .line 610
    cmp-long v4, v45, v31

    .line 612
    if-eqz v4, :cond_1a

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

    .line 620
    move-result-object v3

    .line 621
    const-wide/16 v8, 0x8

    .line 623
    and-long v45, v12, v8

    .line 625
    cmp-long v4, v45, v31

    .line 627
    if-eqz v4, :cond_1b

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

    .line 635
    move-result-object v3

    .line 636
    const-wide/16 v8, 0x10

    .line 638
    and-long v45, v12, v8

    .line 640
    cmp-long v4, v45, v31

    .line 642
    if-eqz v4, :cond_1c

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

    .line 650
    move-result-object v3

    .line 651
    const-wide/16 v8, 0x20

    .line 653
    and-long v45, v12, v8

    .line 655
    cmp-long v4, v45, v31

    .line 657
    if-eqz v4, :cond_1d

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

    .line 665
    move-result-object v3

    .line 666
    const-wide/16 v8, 0x40

    .line 668
    and-long v45, v12, v8

    .line 670
    cmp-long v4, v45, v31

    .line 672
    if-eqz v4, :cond_1e

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

    .line 680
    move-result-object v3

    .line 681
    const-wide/16 v8, 0x80

    .line 683
    and-long v45, v12, v8

    .line 685
    cmp-long v4, v45, v31

    .line 687
    if-eqz v4, :cond_1f

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

    .line 695
    move-result-object v3

    .line 696
    const-wide/16 v8, 0x100

    .line 698
    and-long v45, v12, v8

    .line 700
    cmp-long v4, v45, v31

    .line 702
    if-eqz v4, :cond_20

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

    .line 710
    move-result-object v3

    .line 711
    const-wide/16 v45, 0x200

    .line 713
    and-long v48, v12, v45

    .line 715
    cmp-long v4, v48, v31

    .line 717
    if-eqz v4, :cond_21

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

    .line 725
    move-result-object v3

    .line 726
    const-wide/16 v48, 0x400

    .line 728
    and-long v12, v12, v48

    .line 730
    cmp-long v4, v12, v31

    .line 732
    if-eqz v4, :cond_22

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

    .line 740
    move-result-object v3

    .line 741
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    .line 744
    move-result-wide v12

    .line 745
    invoke-static {v12, v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 748
    move-result-wide v12

    .line 749
    invoke-virtual {v3, v12, v13}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 752
    move-result-object v3

    .line 753
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    .line 756
    move-result-wide v12

    .line 757
    invoke-static {v12, v13}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 760
    move-result-wide v12

    .line 761
    invoke-virtual {v3, v12, v13}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 764
    move-result-object v3

    .line 765
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    .line 768
    move-result-object v4

    .line 769
    invoke-static {v4}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 772
    move-result-object v4

    .line 773
    invoke-virtual {v3, v4}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 776
    move-result-object v3

    .line 777
    invoke-virtual {v3, v14}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 780
    move-result-object v3

    .line 781
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 784
    move-result-object v3

    .line 785
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 788
    move-result v4

    .line 789
    const/4 v6, 0x5

    .line 790
    if-eqz v4, :cond_23

    .line 792
    move-object/from16 v4, v17

    .line 794
    move-object/from16 v12, v47

    .line 796
    :goto_22
    const/4 v13, 0x0

    .line 797
    goto/16 :goto_27

    .line 799
    :cond_23
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 802
    move-result v4

    .line 803
    sparse-switch v4, :sswitch_data_0

    .line 806
    :goto_23
    move-object/from16 v4, v17

    .line 808
    :goto_24
    move-object/from16 v12, v47

    .line 810
    :goto_25
    const/4 v13, -0x1

    .line 811
    goto :goto_26

    .line 812
    :sswitch_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 815
    move-result v4

    .line 816
    if-nez v4, :cond_24

    .line 818
    goto :goto_23

    .line 819
    :cond_24
    move-object/from16 v4, v17

    .line 821
    move-object/from16 v12, v47

    .line 823
    const/4 v13, 0x4

    .line 824
    goto :goto_26

    .line 825
    :sswitch_1
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    move-result v4

    .line 829
    if-nez v4, :cond_25

    .line 831
    goto :goto_23

    .line 832
    :cond_25
    move-object/from16 v4, v17

    .line 834
    move-object/from16 v12, v47

    .line 836
    const/4 v13, 0x3

    .line 837
    goto :goto_26

    .line 838
    :sswitch_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 841
    move-result v4

    .line 842
    if-nez v4, :cond_26

    .line 844
    goto :goto_23

    .line 845
    :cond_26
    move-object/from16 v4, v17

    .line 847
    move-object/from16 v12, v47

    .line 849
    const/4 v13, 0x2

    .line 850
    goto :goto_26

    .line 851
    :sswitch_3
    move-object/from16 v4, v17

    .line 853
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 856
    move-result v12

    .line 857
    if-nez v12, :cond_27

    .line 859
    goto :goto_24

    .line 860
    :cond_27
    move-object/from16 v12, v47

    .line 862
    const/4 v13, 0x1

    .line 863
    goto :goto_26

    .line 864
    :sswitch_4
    move-object/from16 v4, v17

    .line 866
    move-object/from16 v12, v47

    .line 868
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 871
    move-result v13

    .line 872
    if-nez v13, :cond_28

    .line 874
    goto :goto_25

    .line 875
    :cond_28
    const/4 v13, 0x0

    .line 876
    :goto_26
    packed-switch v13, :pswitch_data_0

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

    .line 892
    move-result-object v3

    .line 893
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    .line 896
    move-result v13

    .line 897
    sparse-switch v13, :sswitch_data_1

    .line 900
    const/4 v13, -0x1

    .line 901
    :sswitch_5
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 904
    move-result-object v3

    .line 905
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    .line 908
    move-result v13

    .line 909
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 912
    move-result-object v3

    .line 913
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    .line 916
    move-result-wide v13

    .line 917
    invoke-virtual {v3, v13, v14}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 920
    move-result-object v3

    .line 921
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 924
    move-result v13

    .line 925
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 928
    move-result-object v3

    .line 929
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    .line 932
    move-result v13

    .line 933
    invoke-virtual {v3, v13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 936
    move-result-object v3

    .line 937
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 940
    move-result-object v3

    .line 941
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    .line 944
    move-result v7

    .line 945
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    .line 948
    move-result v13

    .line 949
    if-lez v7, :cond_2c

    .line 951
    if-gtz v13, :cond_29

    .line 953
    goto :goto_28

    .line 954
    :cond_29
    if-ge v7, v13, :cond_2a

    .line 956
    const/4 v7, 0x3

    .line 957
    goto :goto_29

    .line 958
    :cond_2a
    if-ge v13, v7, :cond_2b

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

    .line 968
    move-result-object v3

    .line 969
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 972
    move-result v7

    .line 973
    invoke-virtual {v3, v7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 976
    move-result-object v3

    .line 977
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 980
    move-result v7

    .line 981
    invoke-static {v7, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    .line 984
    move-result v5

    .line 985
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 988
    move-result-object v3

    .line 989
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 992
    move-result v5

    .line 993
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 996
    move-result v5

    .line 997
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1000
    move-result-object v3

    .line 1001
    invoke-virtual {v11}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 1004
    move-result v5

    .line 1005
    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    .line 1008
    move-result v5

    .line 1009
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1012
    move-result-object v3

    .line 1013
    move-object/from16 v5, p0

    .line 1015
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1018
    move-result-object v3

    .line 1019
    move-object/from16 v5, v24

    .line 1021
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1024
    move-result-object v3

    .line 1025
    const-wide/16 v13, 0x1

    .line 1027
    and-long v13, v19, v13

    .line 1029
    cmp-long v5, v13, v31

    .line 1031
    if-eqz v5, :cond_2d

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

    .line 1039
    move-result-object v3

    .line 1040
    const-wide/16 v13, 0x2

    .line 1042
    and-long v13, v19, v13

    .line 1044
    cmp-long v5, v13, v31

    .line 1046
    if-eqz v5, :cond_2e

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

    .line 1054
    move-result-object v3

    .line 1055
    const-wide/16 v13, 0x4

    .line 1057
    and-long v13, v19, v13

    .line 1059
    cmp-long v5, v13, v31

    .line 1061
    if-eqz v5, :cond_2f

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

    .line 1069
    move-result-object v3

    .line 1070
    const-wide/16 v13, 0x8

    .line 1072
    and-long v13, v19, v13

    .line 1074
    cmp-long v5, v13, v31

    .line 1076
    if-eqz v5, :cond_30

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

    .line 1084
    move-result-object v3

    .line 1085
    const-wide/16 v13, 0x10

    .line 1087
    and-long v13, v19, v13

    .line 1089
    cmp-long v5, v13, v31

    .line 1091
    if-eqz v5, :cond_31

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

    .line 1099
    move-result-object v3

    .line 1100
    const-wide/16 v13, 0x20

    .line 1102
    and-long v13, v19, v13

    .line 1104
    cmp-long v5, v13, v31

    .line 1106
    if-eqz v5, :cond_32

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

    .line 1114
    move-result-object v3

    .line 1115
    const-wide/16 v13, 0x40

    .line 1117
    and-long v13, v19, v13

    .line 1119
    cmp-long v5, v13, v31

    .line 1121
    if-eqz v5, :cond_33

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

    .line 1129
    move-result-object v3

    .line 1130
    const-wide/16 v13, 0x80

    .line 1132
    and-long v13, v19, v13

    .line 1134
    cmp-long v5, v13, v31

    .line 1136
    if-eqz v5, :cond_34

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

    .line 1144
    move-result-object v3

    .line 1145
    and-long v7, v19, v8

    .line 1147
    cmp-long v5, v7, v31

    .line 1149
    if-eqz v5, :cond_35

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

    .line 1157
    move-result-object v3

    .line 1158
    and-long v7, v19, v45

    .line 1160
    cmp-long v5, v7, v31

    .line 1162
    if-eqz v5, :cond_36

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

    .line 1170
    move-result-object v3

    .line 1171
    and-long v7, v19, v48

    .line 1173
    cmp-long v5, v7, v31

    .line 1175
    if-eqz v5, :cond_37

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

    .line 1183
    move-result-object v3

    .line 1184
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getDurationMillis()J

    .line 1187
    move-result-wide v7

    .line 1188
    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 1191
    move-result-wide v7

    .line 1192
    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1195
    move-result-object v3

    .line 1196
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getClipDurationMillis()J

    .line 1199
    move-result-wide v7

    .line 1200
    invoke-static {v7, v8}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetBucketedDurationMillis(J)J

    .line 1203
    move-result-wide v7

    .line 1204
    invoke-virtual {v3, v7, v8}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1207
    move-result-object v3

    .line 1208
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getContainerMimeType()Ljava/lang/String;

    .line 1211
    move-result-object v5

    .line 1212
    invoke-static {v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->getFilteredMimeType(Ljava/lang/String;)Ljava/lang/String;

    .line 1215
    move-result-object v5

    .line 1216
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1219
    move-result-object v3

    .line 1220
    move-object/from16 v5, v23

    .line 1222
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1225
    move-result-object v3

    .line 1226
    move-object/from16 v5, v22

    .line 1228
    invoke-virtual {v3, v5}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1231
    move-result-object v3

    .line 1232
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1235
    move-result v7

    .line 1236
    if-eqz v7, :cond_38

    .line 1238
    :goto_35
    const/4 v7, 0x0

    .line 1239
    goto :goto_38

    .line 1240
    :cond_38
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 1243
    move-result v7

    .line 1244
    sparse-switch v7, :sswitch_data_2

    .line 1247
    :goto_36
    const/4 v9, -0x1

    .line 1248
    goto :goto_37

    .line 1249
    :sswitch_6
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1252
    move-result v0

    .line 1253
    if-nez v0, :cond_39

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

    .line 1261
    move-result v0

    .line 1262
    if-nez v0, :cond_3a

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

    .line 1270
    move-result v0

    .line 1271
    if-nez v0, :cond_3b

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

    .line 1279
    move-result v0

    .line 1280
    if-nez v0, :cond_3c

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

    .line 1288
    move-result v0

    .line 1289
    if-nez v0, :cond_3d

    .line 1291
    goto :goto_36

    .line 1292
    :cond_3d
    const/4 v9, 0x0

    .line 1293
    :goto_37
    packed-switch v9, :pswitch_data_1

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

    .line 1309
    move-result-object v0

    .line 1310
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleRateHz()I

    .line 1313
    move-result v1

    .line 1314
    sparse-switch v1, :sswitch_data_3

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

    .line 1323
    move-result-object v0

    .line 1324
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getAudioChannelCount()I

    .line 1327
    move-result v1

    .line 1328
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1331
    move-result-object v0

    .line 1332
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getAudioSampleCount()J

    .line 1335
    move-result-wide v1

    .line 1336
    invoke-virtual {v0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 1339
    move-result-object v0

    .line 1340
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 1343
    move-result v1

    .line 1344
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1347
    move-result-object v0

    .line 1348
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 1351
    move-result v1

    .line 1352
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1355
    move-result-object v0

    .line 1356
    move/from16 v1, v25

    .line 1358
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1361
    move-result-object v0

    .line 1362
    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    .line 1365
    move-result v1

    .line 1366
    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    .line 1369
    move-result v2

    .line 1370
    if-lez v1, :cond_41

    .line 1372
    if-gtz v2, :cond_3e

    .line 1374
    goto :goto_3a

    .line 1375
    :cond_3e
    if-ge v1, v2, :cond_3f

    .line 1377
    const/4 v1, 0x3

    .line 1378
    goto :goto_3b

    .line 1379
    :cond_3f
    if-ge v2, v1, :cond_40

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

    .line 1389
    move-result-object v0

    .line 1390
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 1393
    move-result v1

    .line 1394
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1397
    move-result-object v0

    .line 1398
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoDataSpace()I

    .line 1401
    move-result v1

    .line 1402
    invoke-static {v1, v5}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoHdrFormatEnum(ILjava/lang/String;)I

    .line 1405
    move-result v1

    .line 1406
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1409
    move-result-object v0

    .line 1410
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 1413
    move-result v1

    .line 1414
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1417
    move-result v1

    .line 1418
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1421
    move-result-object v0

    .line 1422
    invoke-virtual {v10}, Landroid/media/metrics/MediaItemInfo;->getVideoFrameRate()F

    .line 1425
    move-result v1

    .line 1426
    invoke-static {v1}, Lcom/android/server/media/metrics/MediaMetricsManagerService;->-$$Nest$smgetVideoFrameRateEnum(F)I

    .line 1429
    move-result v1

    .line 1430
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 1433
    move-result-object v0

    .line 1434
    move-object/from16 v1, v21

    .line 1436
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1439
    move-result-object v0

    .line 1440
    move-object/from16 v8, v28

    .line 1442
    invoke-virtual {v0, v8}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 1445
    move-result-object v0

    .line 1446
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 1449
    move-result-object v0

    .line 1450
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 1453
    move-result-object v0

    .line 1454
    invoke-static {v0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

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

    .line 1481
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

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

    .line 1529
    :sswitch_data_2
    .sparse-switch
        -0x631b55f6 -> :sswitch_a
        -0x63185e82 -> :sswitch_9
        0x4f62373a -> :sswitch_8
        0x5f50bed8 -> :sswitch_7
        0x5f50bed9 -> :sswitch_6
    .end sparse-switch

    .line 1551
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

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

    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 8
    if-ne p0, p3, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x141

    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getNetworkType()I

    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/NetworkEvent;->getTimeSinceCreatedMillis()J

    .line 36
    move-result-wide p1

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 52
    return-void
.end method

.method public final reportPlaybackErrorEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackErrorEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 8
    if-ne p0, p3, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x143

    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getExceptionStack()Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getErrorCode()I

    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getSubErrorCode()I

    .line 44
    move-result p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackErrorEvent;->getTimeSinceCreatedMillis()J

    .line 52
    move-result-wide p1

    .line 53
    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 68
    return-void
.end method

.method public final reportPlaybackMetrics(Ljava/lang/String;Landroid/media/metrics/PlaybackMetrics;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 8
    if-ne p0, p3, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 14
    move-result-object p3

    .line 15
    const/16 v0, 0x140

    .line 17
    invoke-virtual {p3, v0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 20
    move-result-object p3

    .line 21
    const/4 v0, 0x0

    .line 22
    if-nez p0, :cond_1

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

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

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getMediaDurationMillis()J

    .line 41
    move-result-wide v1

    .line 42
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamSource()I

    .line 49
    move-result p1

    .line 50
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getStreamType()I

    .line 57
    move-result p1

    .line 58
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlaybackType()I

    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmType()I

    .line 73
    move-result p1

    .line 74
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 77
    move-result-object p0

    .line 78
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getContentType()I

    .line 81
    move-result p1

    .line 82
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 85
    move-result-object p0

    .line 86
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerName()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 93
    move-result-object p0

    .line 94
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getPlayerVersion()Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 101
    move-result-object p0

    .line 102
    new-array p1, v0, [B

    .line 104
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeByteArray([B)Landroid/util/StatsEvent$Builder;

    .line 107
    move-result-object p0

    .line 108
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesPlayed()I

    .line 111
    move-result p1

    .line 112
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getVideoFramesDropped()I

    .line 119
    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 123
    move-result-object p0

    .line 124
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getAudioUnderrunCount()I

    .line 127
    move-result p1

    .line 128
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 131
    move-result-object p0

    .line 132
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkBytesRead()J

    .line 135
    move-result-wide v1

    .line 136
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 139
    move-result-object p0

    .line 140
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getLocalBytesRead()J

    .line 143
    move-result-wide v1

    .line 144
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getNetworkTransferDurationMillis()J

    .line 151
    move-result-wide v1

    .line 152
    invoke-virtual {p0, v1, v2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackMetrics;->getDrmSessionId()[B

    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 167
    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 171
    move-result-object p0

    .line 172
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 175
    move-result-object p0

    .line 176
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 179
    return-void
.end method

.method public final reportPlaybackStateEvent(Ljava/lang/String;Landroid/media/metrics/PlaybackStateEvent;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 8
    if-ne p0, p3, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x142

    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getState()I

    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/PlaybackStateEvent;->getTimeSinceCreatedMillis()J

    .line 36
    move-result-wide p1

    .line 37
    invoke-virtual {p0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 52
    return-void
.end method

.method public final reportTrackChangeEvent(Ljava/lang/String;Landroid/media/metrics/TrackChangeEvent;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/media/metrics/MediaMetricsManagerService$BinderService;->loggingLevel()I

    .line 4
    move-result p0

    .line 5
    const p3, 0x1869f

    .line 8
    if-ne p0, p3, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    .line 14
    move-result-object p0

    .line 15
    const/16 p3, 0x144

    .line 17
    invoke-virtual {p0, p3}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackState()I

    .line 28
    move-result p1

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackChangeReason()I

    .line 36
    move-result p1

    .line 37
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getContainerMimeType()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getSampleMimeType()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getCodecName()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 64
    move-result-object p0

    .line 65
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getBitrate()I

    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTimeSinceCreatedMillis()J

    .line 76
    move-result-wide v0

    .line 77
    invoke-virtual {p0, v0, v1}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getTrackType()I

    .line 84
    move-result p1

    .line 85
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 88
    move-result-object p0

    .line 89
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguage()Ljava/lang/String;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 96
    move-result-object p0

    .line 97
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getLanguageRegion()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 104
    move-result-object p0

    .line 105
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getChannelCount()I

    .line 108
    move-result p1

    .line 109
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 112
    move-result-object p0

    .line 113
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getAudioSampleRate()I

    .line 116
    move-result p1

    .line 117
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 120
    move-result-object p0

    .line 121
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getWidth()I

    .line 124
    move-result p1

    .line 125
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 128
    move-result-object p0

    .line 129
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getHeight()I

    .line 132
    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p2}, Landroid/media/metrics/TrackChangeEvent;->getVideoFrameRate()F

    .line 140
    move-result p1

    .line 141
    invoke-virtual {p0, p1}, Landroid/util/StatsEvent$Builder;->writeFloat(F)Landroid/util/StatsEvent$Builder;

    .line 144
    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 148
    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    .line 152
    move-result-object p0

    .line 153
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    .line 156
    return-void
.end method
