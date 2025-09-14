.class public final Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public mLastEventTimestamp:J

.field public final mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;

    .line 7
    .line 8
    invoke-direct {v0, p0, p2}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;I)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/android/server/people/data/UsageStatsQueryHelper;

    .line 17
    .line 18
    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/people/data/UsageStatsQueryHelper;-><init>(ILcom/android/server/people/data/DataManager$UsageStatsQueryRunnable$$ExternalSyntheticLambda0;Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    .line 22
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide p1

    .line 27
    const-wide/32 v0, 0x493e0

    .line 28
    .line 29
    .line 30
    sub-long/2addr p1, v0

    .line 31
    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V
    .locals 5

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    iget v1, p3, Lcom/android/server/people/data/Event;->mType:I

    .line 4
    .line 5
    if-ne v1, v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v1, p2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 15
    .line 16
    iget-object v2, p2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 17
    .line 18
    iget-object v3, p2, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 19
    .line 20
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    new-instance v4, Lcom/android/server/people/data/ConversationInfo;

    .line 24
    .line 25
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, v4, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 29
    .line 30
    iput-object v1, v4, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 31
    .line 32
    iput-object v2, v4, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 33
    .line 34
    iget-object v0, p2, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v0, v4, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p2, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, v4, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p2, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, v4, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 45
    .line 46
    iget-wide v0, p3, Lcom/android/server/people/data/Event;->mTimestamp:J

    .line 47
    .line 48
    iput-wide v0, v4, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 49
    .line 50
    iget-wide v0, p2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 51
    .line 52
    iput-wide v0, v4, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 53
    .line 54
    iget p3, p2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 55
    .line 56
    iput p3, v4, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 57
    .line 58
    iget p2, p2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 59
    .line 60
    iput p2, v4, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 61
    .line 62
    iput-object v3, v4, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->this$0:Lcom/android/server/people/data/DataManager;

    .line 65
    .line 66
    iget-object p2, p1, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 67
    .line 68
    iget p3, p1, Lcom/android/server/people/data/PackageData;->mUserId:I

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 71
    .line 72
    invoke-virtual {p0, p1, v4, p2, p3}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    :cond_0
    return-void
.end method

.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    .line 2
    .line 3
    iget-wide v3, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v5

    .line 12
    iget-object v1, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 13
    .line 14
    check-cast v1, Lcom/android/server/usage/UsageStatsService$LocalService;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    iget v2, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mUserId:I

    .line 25
    .line 26
    const/4 v7, 0x0

    .line 27
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsWithQueryFilters(IJJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    if-nez v1, :cond_0

    .line 33
    .line 34
    goto/16 :goto_3

    .line 35
    .line 36
    :cond_0
    move v3, v2

    .line 37
    :goto_0
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_8

    .line 42
    .line 43
    new-instance v3, Landroid/app/usage/UsageEvents$Event;

    .line 44
    .line 45
    invoke-direct {v3}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v3}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 49
    .line 50
    .line 51
    iget-wide v4, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    iput-wide v4, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    .line 62
    .line 63
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    iget-object v5, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mPackageDataGetter:Ljava/util/function/Function;

    .line 68
    .line 69
    invoke-interface {v5, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Lcom/android/server/people/data/PackageData;

    .line 74
    .line 75
    const/4 v6, 0x1

    .line 76
    if-nez v5, :cond_1

    .line 77
    .line 78
    goto/16 :goto_2

    .line 79
    .line 80
    :cond_1
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    .line 81
    .line 82
    .line 83
    move-result v7

    .line 84
    const/4 v8, 0x2

    .line 85
    if-eq v7, v8, :cond_6

    .line 86
    .line 87
    const/16 v8, 0x8

    .line 88
    .line 89
    iget-object v9, v5, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 90
    .line 91
    if-eq v7, v8, :cond_4

    .line 92
    .line 93
    const/16 v8, 0x1e

    .line 94
    .line 95
    if-eq v7, v8, :cond_2

    .line 96
    .line 97
    const/16 v4, 0x17

    .line 98
    .line 99
    if-eq v7, v4, :cond_6

    .line 100
    .line 101
    const/16 v4, 0x18

    .line 102
    .line 103
    if-eq v7, v4, :cond_6

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_2
    invoke-virtual {v0, v5, v3}, Lcom/android/server/people/data/UsageStatsQueryHelper;->onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    if-eqz v5, :cond_3

    .line 114
    .line 115
    new-instance v5, Landroid/content/LocusId;

    .line 116
    .line 117
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getLocusId()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-direct {v5, v7}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    const/4 v5, 0x0

    .line 126
    :goto_1
    if-eqz v5, :cond_7

    .line 127
    .line 128
    invoke-virtual {v9, v5}, Lcom/android/server/people/data/ConversationStore;->getConversationByLocusId(Landroid/content/LocusId;)Lcom/android/server/people/data/ConversationInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    if-eqz v5, :cond_7

    .line 133
    .line 134
    new-instance v5, Landroid/content/ComponentName;

    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    invoke-direct {v5, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v4, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mConvoStartEvents:Ljava/util/Map;

    .line 144
    .line 145
    check-cast v4, Landroid/util/ArrayMap;

    .line 146
    .line 147
    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_4
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getShortcutId()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    new-instance v7, Lcom/android/server/people/data/Event;

    .line 156
    .line 157
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    .line 158
    .line 159
    .line 160
    move-result-wide v10

    .line 161
    invoke-direct {v7, v10, v11, v6}, Lcom/android/server/people/data/Event;-><init>(JI)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9, v4}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    if-nez v3, :cond_5

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    iget-object v8, v5, Lcom/android/server/people/data/PackageData;->mEventStore:Lcom/android/server/people/data/EventStore;

    .line 172
    .line 173
    invoke-virtual {v8, v2, v4}, Lcom/android/server/people/data/EventStore;->getOrCreateEventHistory(ILjava/lang/String;)Lcom/android/server/people/data/EventHistoryImpl;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-virtual {v4, v7}, Lcom/android/server/people/data/EventHistoryImpl;->addEvent(Lcom/android/server/people/data/Event;)V

    .line 178
    .line 179
    .line 180
    iget-object v4, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mEventListener:Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;

    .line 181
    .line 182
    invoke-virtual {v4, v5, v3, v7}, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->onEvent(Lcom/android/server/people/data/PackageData;Lcom/android/server/people/data/ConversationInfo;Lcom/android/server/people/data/Event;)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-virtual {v0, v5, v3}, Lcom/android/server/people/data/UsageStatsQueryHelper;->onInAppConversationEnded(Lcom/android/server/people/data/PackageData;Landroid/app/usage/UsageEvents$Event;)V

    .line 187
    .line 188
    .line 189
    :cond_7
    :goto_2
    move v3, v6

    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :cond_8
    move v2, v3

    .line 193
    :goto_3
    if-eqz v2, :cond_9

    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mUsageStatsQueryHelper:Lcom/android/server/people/data/UsageStatsQueryHelper;

    .line 196
    .line 197
    iget-wide v0, v0, Lcom/android/server/people/data/UsageStatsQueryHelper;->mLastEventTimestamp:J

    .line 198
    .line 199
    iput-wide v0, p0, Lcom/android/server/people/data/DataManager$UsageStatsQueryRunnable;->mLastEventTimestamp:J

    .line 200
    .line 201
    :cond_9
    return-void
.end method
