.class public final Lcom/android/server/notification/NotificationComparator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPhoneApp:Ljava/lang/String;

.field public final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

.field public final mPhoneAppBroadcastReceiver:Lcom/android/server/notification/NotificationComparator$1;

.field public final mStateLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

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
    iput-object v0, p0, Lcom/android/server/notification/NotificationComparator;->mStateLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v1, Lcom/android/server/notification/NotificationComparator$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationComparator$1;-><init>(Lcom/android/server/notification/NotificationComparator;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    new-instance v2, Landroid/content/IntentFilter;

    .line 19
    .line 20
    const-string v3, "android.telecom.action.DEFAULT_DIALER_CHANGED"

    .line 21
    .line 22
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lcom/android/internal/util/NotificationMessagingUtil;

    .line 29
    .line 30
    invoke-direct {v1, p1, v0}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 34
    .line 35
    return-void
.end method

.method public static isSystemMax(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v0, "android"

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const-string v0, "com.android.systemui"

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    return v2
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/notification/NotificationRecord;

    .line 4
    .line 5
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 6
    .line 7
    iget v1, p2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x3

    .line 12
    if-lt v0, v4, :cond_0

    .line 13
    .line 14
    move v5, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v5, v3

    .line 17
    :goto_0
    if-lt v1, v4, :cond_1

    .line 18
    .line 19
    move v4, v2

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v4, v3

    .line 22
    :goto_1
    if-eq v5, v4, :cond_2

    .line 23
    .line 24
    invoke-static {v5, v4}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    :goto_2
    mul-int/lit8 p0, p0, -0x1

    .line 29
    .line 30
    goto/16 :goto_8

    .line 31
    .line 32
    :cond_2
    iget v4, p1, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 33
    .line 34
    iget v5, p2, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 35
    .line 36
    cmpl-float v6, v4, v5

    .line 37
    .line 38
    if-eqz v6, :cond_3

    .line 39
    .line 40
    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    const/4 v4, 0x2

    .line 46
    if-ge v0, v4, :cond_4

    .line 47
    .line 48
    move v5, v3

    .line 49
    goto :goto_3

    .line 50
    :cond_4
    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 51
    .line 52
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Landroid/app/Notification;->isColorized()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    :goto_3
    iget v6, p2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 61
    .line 62
    if-ge v6, v4, :cond_5

    .line 63
    .line 64
    move v6, v3

    .line 65
    goto :goto_4

    .line 66
    :cond_5
    iget-object v6, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 67
    .line 68
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Landroid/app/Notification;->isColorized()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    :goto_4
    if-eq v5, v6, :cond_6

    .line 77
    .line 78
    invoke-static {v5, v6}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    goto :goto_2

    .line 83
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationComparator;->isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eq v5, v6, :cond_7

    .line 92
    .line 93
    invoke-static {v5, v6}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    goto :goto_2

    .line 98
    :cond_7
    iget-object v5, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 99
    .line 100
    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 101
    .line 102
    iget v7, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 103
    .line 104
    invoke-virtual {v5, v6, v7}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    iget-object p0, p0, Lcom/android/server/notification/NotificationComparator;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 109
    .line 110
    iget-object v6, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 111
    .line 112
    iget v7, p2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 113
    .line 114
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/util/NotificationMessagingUtil;->isImportantMessaging(Landroid/service/notification/StatusBarNotification;I)Z

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    if-eq v5, p0, :cond_8

    .line 119
    .line 120
    invoke-static {v5, p0}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    goto :goto_2

    .line 125
    :cond_8
    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 126
    .line 127
    const/4 v5, 0x0

    .line 128
    if-ge p0, v4, :cond_a

    .line 129
    .line 130
    :cond_9
    move p0, v3

    .line 131
    goto :goto_5

    .line 132
    :cond_a
    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 133
    .line 134
    cmpl-float p0, p0, v5

    .line 135
    .line 136
    if-lez p0, :cond_9

    .line 137
    .line 138
    move p0, v2

    .line 139
    :goto_5
    iget v6, p2, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 140
    .line 141
    if-ge v6, v4, :cond_c

    .line 142
    .line 143
    :cond_b
    move v2, v3

    .line 144
    goto :goto_6

    .line 145
    :cond_c
    iget v4, p2, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 146
    .line 147
    cmpl-float v4, v4, v5

    .line 148
    .line 149
    if-lez v4, :cond_b

    .line 150
    .line 151
    :goto_6
    iget v3, p1, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 152
    .line 153
    iget v4, p2, Lcom/android/server/notification/NotificationRecord;->mContactAffinity:F

    .line 154
    .line 155
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eqz p0, :cond_d

    .line 160
    .line 161
    if-eqz v2, :cond_d

    .line 162
    .line 163
    if-eqz v3, :cond_e

    .line 164
    .line 165
    :goto_7
    mul-int/lit8 p0, v3, -0x1

    .line 166
    .line 167
    goto :goto_8

    .line 168
    :cond_d
    if-eq p0, v2, :cond_e

    .line 169
    .line 170
    invoke-static {p0, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 171
    .line 172
    .line 173
    move-result p0

    .line 174
    goto/16 :goto_2

    .line 175
    .line 176
    :cond_e
    invoke-static {p1}, Lcom/android/server/notification/NotificationComparator;->isSystemMax(Lcom/android/server/notification/NotificationRecord;)Z

    .line 177
    .line 178
    .line 179
    move-result p0

    .line 180
    invoke-static {p2}, Lcom/android/server/notification/NotificationComparator;->isSystemMax(Lcom/android/server/notification/NotificationRecord;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-eq p0, v2, :cond_f

    .line 185
    .line 186
    invoke-static {p0, v2}, Ljava/lang/Boolean;->compare(ZZ)I

    .line 187
    .line 188
    .line 189
    move-result p0

    .line 190
    goto/16 :goto_2

    .line 191
    .line 192
    :cond_f
    if-eq v0, v1, :cond_10

    .line 193
    .line 194
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    .line 195
    .line 196
    .line 197
    move-result p0

    .line 198
    goto/16 :goto_2

    .line 199
    .line 200
    :cond_10
    if-eqz v3, :cond_11

    .line 201
    .line 202
    goto :goto_7

    .line 203
    :cond_11
    iget p0, p1, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 204
    .line 205
    iget v0, p2, Lcom/android/server/notification/NotificationRecord;->mPackagePriority:I

    .line 206
    .line 207
    if-eq p0, v0, :cond_12

    .line 208
    .line 209
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 210
    .line 211
    .line 212
    move-result p0

    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :cond_12
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 216
    .line 217
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    iget p0, p0, Landroid/app/Notification;->priority:I

    .line 222
    .line 223
    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    iget v0, v0, Landroid/app/Notification;->priority:I

    .line 230
    .line 231
    if-eq p0, v0, :cond_13

    .line 232
    .line 233
    invoke-static {p0, v0}, Ljava/lang/Integer;->compare(II)I

    .line 234
    .line 235
    .line 236
    move-result p0

    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :cond_13
    iget-wide p0, p1, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 240
    .line 241
    iget-wide v0, p2, Lcom/android/server/notification/NotificationRecord;->mRankingTimeMs:J

    .line 242
    .line 243
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    .line 244
    .line 245
    .line 246
    move-result p0

    .line 247
    goto/16 :goto_2

    .line 248
    .line 249
    :goto_8
    return p0
.end method

.method public final isImportantOngoing(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 5

    .line 1
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return v2

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-class v1, Landroid/app/Notification$CallStyle;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/app/Notification;->isFgsOrUij()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    return v2

    .line 37
    :cond_2
    const-string v0, "call"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v3, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 52
    .line 53
    if-nez v3, :cond_4

    .line 54
    .line 55
    iget-object v3, p0, Lcom/android/server/notification/NotificationComparator;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-string/jumbo v4, "telecom"

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroid/telecom/TelecomManager;

    .line 65
    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const/4 v3, 0x0

    .line 74
    :goto_0
    iput-object v3, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 75
    .line 76
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationComparator;->mDefaultPhoneApp:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_5

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_5
    iget-object p0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eqz p0, :cond_6

    .line 96
    .line 97
    :goto_1
    move v2, v1

    .line 98
    :cond_6
    return v2
.end method
