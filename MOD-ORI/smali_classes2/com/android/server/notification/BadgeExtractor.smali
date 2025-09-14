.class public Lcom/android/server/notification/BadgeExtractor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;


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
    .locals 8

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
    iget-object v0, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

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
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v0, Lcom/android/server/notification/PreferencesHelper;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, -0x1

    .line 29
    const/4 v4, 0x1

    .line 30
    const/4 v5, 0x0

    .line 31
    if-ne v2, v3, :cond_2

    .line 32
    .line 33
    move v0, v5

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v3, v0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-gez v3, :cond_4

    .line 42
    .line 43
    iget-object v3, v0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 44
    .line 45
    iget-object v6, v0, Lcom/android/server/notification/PreferencesHelper;->mContext:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string/jumbo v7, "notification_badging"

    .line 52
    .line 53
    .line 54
    invoke-static {v6, v7, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_3

    .line 59
    .line 60
    move v6, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move v6, v5

    .line 63
    :goto_0
    invoke-virtual {v3, v2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 64
    .line 65
    .line 66
    :cond_4
    iget-object v0, v0, Lcom/android/server/notification/PreferencesHelper;->mBadgingEnabled:Landroid/util/SparseBooleanArray;

    .line 67
    .line 68
    invoke-virtual {v0, v2, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 73
    .line 74
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 75
    .line 76
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 81
    .line 82
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    check-cast v2, Lcom/android/server/notification/PreferencesHelper;

    .line 87
    .line 88
    iget-object v7, v2, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 89
    .line 90
    monitor-enter v7

    .line 91
    :try_start_0
    invoke-virtual {v2, v6, v3}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-boolean v2, v2, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->showBadge:Z

    .line 96
    .line 97
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    if-nez v2, :cond_5

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->canShowBadge()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_6
    move v4, v5

    .line 117
    :goto_2
    iput-boolean v4, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_7
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_8
    :goto_3
    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 124
    .line 125
    :goto_4
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mIntercept:Z

    .line 126
    .line 127
    if-eqz v0, :cond_9

    .line 128
    .line 129
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 130
    .line 131
    and-int/lit8 v0, v0, 0x40

    .line 132
    .line 133
    if-eqz v0, :cond_9

    .line 134
    .line 135
    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 136
    .line 137
    :cond_9
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-eqz v0, :cond_a

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_a

    .line 154
    .line 155
    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 156
    .line 157
    :cond_a
    iget-object p0, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 158
    .line 159
    check-cast p0, Lcom/android/server/notification/PreferencesHelper;

    .line 160
    .line 161
    iget-boolean p0, p0, Lcom/android/server/notification/PreferencesHelper;->mIsMediaNotificationFilteringEnabled:Z

    .line 162
    .line 163
    if-eqz p0, :cond_b

    .line 164
    .line 165
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 166
    .line 167
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    if-eqz p0, :cond_b

    .line 176
    .line 177
    iput-boolean v5, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 178
    .line 179
    :cond_b
    return-object v1

    .line 180
    :catchall_0
    move-exception p0

    .line 181
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    throw p0
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/BadgeExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    return-void
.end method
