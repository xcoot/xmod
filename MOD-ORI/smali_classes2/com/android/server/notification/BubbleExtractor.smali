.class public Lcom/android/server/notification/BubbleExtractor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mContext:Landroid/content/Context;

.field public mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

.field public mSupportsBubble:Z


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
.method public canLaunchInTaskView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string p0, "BubbleExtractor"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    const-string p1, "Unable to create bubble -- no intent"

    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    :goto_0
    const/4 v1, 0x1

    .line 29
    const/16 v2, 0xad

    .line 30
    .line 31
    if-nez p1, :cond_2

    .line 32
    .line 33
    invoke-static {v2, p3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string p3, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    .line 39
    .line 40
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    :cond_2
    iget p1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 55
    .line 56
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    const/4 p1, 0x2

    .line 63
    invoke-static {v2, p3, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p3, "Unable to send as bubble -- activity is not resizable for intent: "

    .line 69
    .line 70
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return v0

    .line 84
    :cond_3
    return v1
.end method

.method public canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/server/notification/BubbleExtractor;->mSupportsBubble:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 31
    .line 32
    if-eqz v4, :cond_2

    .line 33
    .line 34
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v4, 0x0

    .line 40
    :goto_0
    const/4 v5, 0x1

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    if-eqz v3, :cond_3

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    if-eqz v3, :cond_4

    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 53
    .line 54
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 55
    .line 56
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v4, v3, v6, v2}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_4

    .line 65
    .line 66
    move v3, v5

    .line 67
    goto :goto_1

    .line 68
    :cond_4
    move v3, v1

    .line 69
    :goto_1
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    if-nez v4, :cond_5

    .line 74
    .line 75
    if-nez v3, :cond_5

    .line 76
    .line 77
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    return v1

    .line 83
    :cond_5
    if-eqz v3, :cond_6

    .line 84
    .line 85
    return v5

    .line 86
    :cond_6
    iget-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/notification/BubbleExtractor;->canLaunchInTaskView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z

    .line 93
    .line 94
    .line 95
    move-result p0

    .line 96
    return p0
.end method

.method public final initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string p2, "activity"

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/app/ActivityManager;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 12
    .line 13
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const p2, 0x111024d

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, p0, Lcom/android/server/notification/BubbleExtractor;->mSupportsBubble:Z

    .line 25
    .line 26
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
    iget-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 44
    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    move v0, v3

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    move v0, v2

    .line 62
    :goto_0
    iget-object v4, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 63
    .line 64
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v4, Lcom/android/server/notification/PreferencesHelper;

    .line 71
    .line 72
    invoke-virtual {v4, v5}, Lcom/android/server/notification/PreferencesHelper;->bubblesEnabled(Landroid/os/UserHandle;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    iget-object p0, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 77
    .line 78
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 79
    .line 80
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 85
    .line 86
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    check-cast p0, Lcom/android/server/notification/PreferencesHelper;

    .line 91
    .line 92
    iget-object v7, p0, Lcom/android/server/notification/PreferencesHelper;->mLock:Ljava/lang/Object;

    .line 93
    .line 94
    monitor-enter v7

    .line 95
    :try_start_0
    invoke-virtual {p0, v6, v5}, Lcom/android/server/notification/PreferencesHelper;->getOrCreatePackagePreferencesLocked(ILjava/lang/String;)Lcom/android/server/notification/PreferencesHelper$PackagePreferences;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    iget p0, p0, Lcom/android/server/notification/PreferencesHelper$PackagePreferences;->bubblePreference:I

    .line 100
    .line 101
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 103
    .line 104
    if-eqz v4, :cond_8

    .line 105
    .line 106
    if-eqz p0, :cond_8

    .line 107
    .line 108
    if-nez v0, :cond_4

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    if-nez v5, :cond_5

    .line 112
    .line 113
    iput-boolean v3, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_5
    if-ne p0, v3, :cond_7

    .line 117
    .line 118
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_6

    .line 123
    .line 124
    move v2, v3

    .line 125
    :cond_6
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_7
    const/4 v0, 0x2

    .line 129
    if-ne p0, v0, :cond_9

    .line 130
    .line 131
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBubble()Z

    .line 132
    .line 133
    .line 134
    move-result p0

    .line 135
    iput-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_8
    :goto_1
    iput-boolean v2, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 139
    .line 140
    if-nez v0, :cond_9

    .line 141
    .line 142
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p0, v1}, Landroid/app/Notification;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V

    .line 149
    .line 150
    .line 151
    :cond_9
    :goto_2
    iget-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 152
    .line 153
    if-eqz p0, :cond_a

    .line 154
    .line 155
    iget-boolean p0, p1, Lcom/android/server/notification/NotificationRecord;->mFlagBubbleRemoved:Z

    .line 156
    .line 157
    if-nez p0, :cond_a

    .line 158
    .line 159
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 162
    .line 163
    .line 164
    move-result-object p0

    .line 165
    iget p1, p0, Landroid/app/Notification;->flags:I

    .line 166
    .line 167
    or-int/lit16 p1, p1, 0x1000

    .line 168
    .line 169
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_a
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    iget p1, p0, Landroid/app/Notification;->flags:I

    .line 179
    .line 180
    and-int/lit16 p1, p1, -0x1001

    .line 181
    .line 182
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 183
    .line 184
    :goto_3
    return-object v1

    .line 185
    :catchall_0
    move-exception p0

    .line 186
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    throw p0
.end method

.method public setActivityManager(Landroid/app/ActivityManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    return-void
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    return-void
.end method
