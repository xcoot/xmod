.class public Lcom/android/server/notification/VisibilityExtractor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# instance fields
.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;


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
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 10
    .line 11
    return-void
.end method

.method public final process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 11

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
    iget-object v0, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v2, -0x1

    .line 23
    if-ne v0, v2, :cond_2

    .line 24
    .line 25
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 32
    .line 33
    goto/16 :goto_a

    .line 34
    .line 35
    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 36
    .line 37
    check-cast v3, Lcom/android/server/notification/PreferencesHelper;

    .line 38
    .line 39
    iget-object v4, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    if-nez v4, :cond_3

    .line 42
    .line 43
    new-instance v4, Landroid/util/SparseBooleanArray;

    .line 44
    .line 45
    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v4, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    .line 49
    .line 50
    :cond_3
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenShowNotifications:Landroid/util/SparseBooleanArray;

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    const/4 v5, 0x0

    .line 58
    if-ne v0, v2, :cond_4

    .line 59
    .line 60
    :goto_0
    move v6, v4

    .line 61
    goto :goto_1

    .line 62
    :cond_4
    iget-object v6, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 63
    .line 64
    invoke-virtual {v6, v1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    and-int/lit8 v6, v6, 0x4

    .line 69
    .line 70
    if-nez v6, :cond_5

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    move v6, v5

    .line 74
    :goto_1
    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 75
    .line 76
    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 77
    .line 78
    .line 79
    move-result v7

    .line 80
    if-eq v7, v2, :cond_6

    .line 81
    .line 82
    move v7, v4

    .line 83
    goto :goto_2

    .line 84
    :cond_6
    move v7, v5

    .line 85
    :goto_2
    iget-object v8, p0, Lcom/android/server/notification/VisibilityExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 86
    .line 87
    iget-object v9, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 88
    .line 89
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    iget-object v10, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 94
    .line 95
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 96
    .line 97
    .line 98
    move-result v10

    .line 99
    invoke-virtual {v8, v9, v10}, Lcom/android/server/notification/PreferencesHelper;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eq v8, v2, :cond_7

    .line 104
    .line 105
    move v8, v4

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    move v8, v5

    .line 108
    :goto_3
    if-eqz v3, :cond_10

    .line 109
    .line 110
    if-eqz v6, :cond_10

    .line 111
    .line 112
    if-eqz v7, :cond_10

    .line 113
    .line 114
    if-nez v8, :cond_8

    .line 115
    .line 116
    goto :goto_9

    .line 117
    :cond_8
    iget-object v3, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 118
    .line 119
    check-cast v3, Lcom/android/server/notification/PreferencesHelper;

    .line 120
    .line 121
    iget-object v6, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 122
    .line 123
    if-nez v6, :cond_9

    .line 124
    .line 125
    new-instance v6, Landroid/util/SparseBooleanArray;

    .line 126
    .line 127
    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v6, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 131
    .line 132
    :cond_9
    iget-object v3, v3, Lcom/android/server/notification/PreferencesHelper;->mLockScreenPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 133
    .line 134
    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-ne v0, v2, :cond_a

    .line 139
    .line 140
    :goto_4
    move v0, v4

    .line 141
    goto :goto_5

    .line 142
    :cond_a
    iget-object v2, p0, Lcom/android/server/notification/VisibilityExtractor;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 143
    .line 144
    invoke-virtual {v2, v1, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    and-int/lit8 v0, v0, 0x8

    .line 149
    .line 150
    if-nez v0, :cond_b

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_b
    move v0, v5

    .line 154
    :goto_5
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_c

    .line 161
    .line 162
    move v2, v4

    .line 163
    goto :goto_6

    .line 164
    :cond_c
    move v2, v5

    .line 165
    :goto_6
    iget-object p0, p0, Lcom/android/server/notification/VisibilityExtractor;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 166
    .line 167
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 168
    .line 169
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    iget-object v7, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 174
    .line 175
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    invoke-virtual {p0, v6, v7}, Lcom/android/server/notification/PreferencesHelper;->getLockScreenNotificationVisibilityForPackage(Ljava/lang/String;I)I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    if-eqz p0, :cond_d

    .line 184
    .line 185
    goto :goto_7

    .line 186
    :cond_d
    move v4, v5

    .line 187
    :goto_7
    if-eqz v3, :cond_f

    .line 188
    .line 189
    if-eqz v0, :cond_f

    .line 190
    .line 191
    if-eqz v2, :cond_f

    .line 192
    .line 193
    if-nez v4, :cond_e

    .line 194
    .line 195
    goto :goto_8

    .line 196
    :cond_e
    const/16 p0, -0x3e8

    .line 197
    .line 198
    iput p0, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 199
    .line 200
    goto :goto_a

    .line 201
    :cond_f
    :goto_8
    iput v5, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 202
    .line 203
    goto :goto_a

    .line 204
    :cond_10
    :goto_9
    iput v2, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 205
    .line 206
    :goto_a
    return-object v1
.end method

.method public final setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/VisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .line 1
    return-void
.end method
