.class public final Lcom/android/server/people/data/DataManager$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveNotifKeys:Ljava/util/Map;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    .line 6
    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    invoke-virtual {v0, p2, p1}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz p2, :cond_6

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object v1, p2, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance v2, Lcom/android/server/people/data/ConversationInfo$Builder;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lcom/android/server/people/data/ConversationInfo$Builder;-><init>(Lcom/android/server/people/data/ConversationInfo;)V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x40

    .line 44
    .line 45
    const/4 v3, 0x4

    .line 46
    const/4 v4, 0x2

    .line 47
    const/4 v5, 0x1

    .line 48
    const/4 v6, 0x0

    .line 49
    if-eq p4, v5, :cond_4

    .line 50
    .line 51
    if-eq p4, v4, :cond_4

    .line 52
    .line 53
    const/4 p3, 0x3

    .line 54
    if-eq p4, p3, :cond_3

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_3
    const/4 p3, 0x0

    .line 58
    iput-object p3, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v2, v5, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v4, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3, v6}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p4

    .line 77
    iput-object p4, v2, Lcom/android/server/people/data/ConversationInfo$Builder;->mNotificationChannelId:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    invoke-virtual {v2, v5, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isDemoted()Z

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    invoke-virtual {v2, v0, p4}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    .line 94
    .line 95
    .line 96
    move-result p4

    .line 97
    if-gt p4, v4, :cond_5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    move v5, v6

    .line 101
    :goto_0
    invoke-virtual {v2, v4, v5}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->canBubble()Z

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    invoke-virtual {v2, v3, p3}, Lcom/android/server/people/data/ConversationInfo$Builder;->setConversationFlag(IZ)V

    .line 109
    .line 110
    .line 111
    :goto_1
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/android/server/people/data/ConversationInfo$Builder;->build()Lcom/android/server/people/data/ConversationInfo;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    iget p2, p2, Lcom/android/server/people/data/PackageData;->mUserId:I

    .line 118
    .line 119
    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_2
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    .line 10
    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    .line 23
    .line 24
    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1, p1, v2}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    if-eqz p0, :cond_3

    .line 35
    .line 36
    new-instance v1, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 37
    .line 38
    invoke-direct {v1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {p2, v2, v1}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 49
    .line 50
    invoke-virtual {p2, v0}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 63
    .line 64
    iget-object v4, v2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 65
    .line 66
    iget-object v5, v2, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v6

    .line 72
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 81
    .line 82
    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    .line 90
    .line 91
    move-result v9

    .line 92
    if-nez v9, :cond_2

    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getParentChannelId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :goto_0
    iget-object v9, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    new-instance v10, Lcom/android/server/people/data/ConversationInfo;

    .line 117
    .line 118
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object v9, v10, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v3, v10, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 124
    .line 125
    iput-object v4, v10, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 126
    .line 127
    iget-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 128
    .line 129
    iput-object v3, v10, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v8, v10, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 132
    .line 133
    iput-object v1, v10, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 134
    .line 135
    iput-wide v6, v10, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 136
    .line 137
    iget-wide v3, v2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 138
    .line 139
    iput-wide v3, v10, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 140
    .line 141
    iget v1, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 142
    .line 143
    iput v1, v10, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 144
    .line 145
    iget v1, v2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 146
    .line 147
    iput v1, v10, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 148
    .line 149
    iput-object v5, v10, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 150
    .line 151
    invoke-virtual {p2, v10}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    .line 155
    .line 156
    .line 157
    const/4 p2, 0x0

    .line 158
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 159
    .line 160
    invoke-virtual {p0, p2, v0}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    new-instance p2, Lcom/android/server/people/data/Event;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    const/4 p1, 0x2

    .line 171
    invoke-direct {p2, v0, v1, p1}, Lcom/android/server/people/data/Event;-><init>(JI)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 175
    .line 176
    .line 177
    :cond_3
    return-void
.end method

.method public final declared-synchronized onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget v3, v1, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, v1, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    .line 29
    .line 30
    new-instance v4, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    invoke-direct {v4, v1, v0, v2, v5}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v0, v4}, Lcom/android/server/people/data/DataManager;->-$$Nest$mgetPackageIfConversationExists(Lcom/android/server/people/data/DataManager;Landroid/service/notification/StatusBarNotification;Ljava/util/function/Consumer;)Lcom/android/server/people/data/PackageData;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const/4 v3, 0x1

    .line 41
    move/from16 v4, p3

    .line 42
    .line 43
    if-ne v4, v3, :cond_3

    .line 44
    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    iget-object v5, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 53
    .line 54
    invoke-virtual {v5, v2}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 55
    .line 56
    .line 57
    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-nez v5, :cond_2

    .line 59
    .line 60
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :cond_2
    :try_start_2
    new-instance v6, Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 65
    .line 66
    .line 67
    iget-object v6, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v7, v5, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 70
    .line 71
    iget-object v8, v5, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 72
    .line 73
    iget-object v9, v5, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v10, v5, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v11, v5, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 78
    .line 79
    iget-wide v12, v5, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 80
    .line 81
    iget v14, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 82
    .line 83
    iget v15, v5, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 84
    .line 85
    iget-object v5, v5, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 86
    .line 87
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-object/from16 p2, v2

    .line 91
    .line 92
    new-instance v2, Lcom/android/server/people/data/ConversationInfo;

    .line 93
    .line 94
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    iput-object v6, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 98
    .line 99
    iput-object v7, v2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 100
    .line 101
    iput-object v8, v2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 102
    .line 103
    iput-object v9, v2, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 104
    .line 105
    iput-object v10, v2, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 106
    .line 107
    iput-object v11, v2, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 108
    .line 109
    iput-wide v3, v2, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 110
    .line 111
    iput-wide v12, v2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 112
    .line 113
    iput v14, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 114
    .line 115
    iput v15, v2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 116
    .line 117
    iput-object v5, v2, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 118
    .line 119
    iget-object v5, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 120
    .line 121
    invoke-virtual {v5, v2}, Lcom/android/server/people/data/ConversationStore;->updateConversationsInMemory(Lcom/android/server/people/data/ConversationInfo;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v5}, Lcom/android/server/people/data/ConversationStore;->scheduleUpdateConversationsOnDisk()V

    .line 125
    .line 126
    .line 127
    iget-object v0, v0, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 128
    .line 129
    const/4 v2, 0x0

    .line 130
    move-object/from16 v5, p2

    .line 131
    .line 132
    invoke-virtual {v0, v2, v5}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v2, Lcom/android/server/people/data/Event;

    .line 137
    .line 138
    const/4 v5, 0x3

    .line 139
    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/people/data/Event;-><init>(JI)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v2}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    .line 145
    monitor-exit p0

    .line 146
    return-void

    .line 147
    :catchall_0
    move-exception v0

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    :goto_0
    monitor-exit p0

    .line 150
    return-void

    .line 151
    :goto_1
    monitor-exit p0

    .line 152
    throw v0
.end method
