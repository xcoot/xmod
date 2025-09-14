.class public Lcom/android/server/notification/NotificationChannelExtractor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 10

    .line 1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 29
    .line 30
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v6

    .line 34
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getShortcutId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    move-object v3, v0

    .line 41
    check-cast v3, Lcom/android/server/notification/PreferencesHelper;

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    const/4 v9, 0x0

    .line 45
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesCall()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesAlarm()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesMedia()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_7

    .line 69
    .line 70
    :cond_2
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getAudioAttributes()Landroid/media/AudioAttributes;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesCall()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    const/4 v3, 0x1

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const-class v4, Landroid/app/Notification$CallStyle;

    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    const/4 v4, 0x6

    .line 102
    if-ne v2, v4, :cond_3

    .line 103
    .line 104
    move v2, v3

    .line 105
    goto :goto_0

    .line 106
    :cond_3
    const/4 v2, 0x0

    .line 107
    :goto_0
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesAlarm()Z

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_4

    .line 112
    .line 113
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 114
    .line 115
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    iget-object v4, v4, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 120
    .line 121
    const-string v5, "alarm"

    .line 122
    .line 123
    if-eq v4, v5, :cond_4

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    const/4 v5, 0x4

    .line 130
    if-ne v4, v5, :cond_4

    .line 131
    .line 132
    move v2, v3

    .line 133
    :cond_4
    invoke-static {}, Landroid/app/Flags;->restrictAudioAttributesMedia()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_5

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_6

    .line 144
    .line 145
    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    .line 146
    .line 147
    .line 148
    move-result v4

    .line 149
    if-ne v4, v3, :cond_5

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    move v3, v2

    .line 153
    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 154
    .line 155
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 156
    .line 157
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 162
    .line 163
    .line 164
    move-result-wide v3

    .line 165
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 166
    .line 167
    const-wide/32 v5, 0x13c6c3bb

    .line 168
    .line 169
    .line 170
    invoke-interface {p0, v5, v6, v2}, Lcom/android/internal/compat/IPlatformCompat;->reportChangeByUid(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .line 172
    .line 173
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catchall_0
    move-exception p0

    .line 178
    goto :goto_4

    .line 179
    :catch_0
    move-exception p0

    .line 180
    :try_start_1
    const-string v2, "ChannelExtractor"

    .line 181
    .line 182
    const-string v5, "Unexpected exception while reporting to changecompat"

    .line 183
    .line 184
    invoke-static {v2, v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :goto_3
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    new-instance v3, Landroid/media/AudioAttributes$Builder;

    .line 199
    .line 200
    invoke-direct {v3, v0}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    .line 201
    .line 202
    .line 203
    const/4 v0, 0x5

    .line 204
    invoke-virtual {v3, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {p0, v2, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 216
    .line 217
    .line 218
    goto :goto_5

    .line 219
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    .line 221
    .line 222
    throw p0

    .line 223
    :cond_7
    :goto_5
    return-object v1
.end method

.method public final setCompatChangeLogger(Lcom/android/internal/compat/IPlatformCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 2
    .line 3
    return-void
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationChannelExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    return-void
.end method
