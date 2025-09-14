.class public final Lcom/android/server/people/data/DataManager$ContactsContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastUpdatedTimestamp:J

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 6
    .line 7
    iget-object v3, v2, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    new-instance v3, Lcom/android/server/people/data/ContactsQueryHelper;

    .line 15
    .line 16
    invoke-direct {v3, v2}, Lcom/android/server/people/data/ContactsQueryHelper;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iget-wide v4, v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    .line 20
    .line 21
    const-string v2, "has_phone_number"

    .line 22
    .line 23
    const-string v6, "contact_last_updated_timestamp"

    .line 24
    .line 25
    const-string v7, "_id"

    .line 26
    .line 27
    const-string v8, "lookup"

    .line 28
    .line 29
    const-string/jumbo v9, "starred"

    .line 30
    .line 31
    .line 32
    filled-new-array {v7, v8, v9, v2, v6}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    filled-new-array {v4}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 45
    .line 46
    const-string v6, "contact_last_updated_timestamp > ?"

    .line 47
    .line 48
    invoke-virtual {v3, v5, v2, v6, v4}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    iget-object v2, v3, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    .line 56
    .line 57
    new-instance v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    iput-object v5, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 64
    .line 65
    iput-object v5, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 66
    .line 67
    iput-object v5, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v5, v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 70
    .line 71
    invoke-virtual {v5, v1}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-nez v5, :cond_1

    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    new-instance v6, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;

    .line 79
    .line 80
    const/4 v7, 0x1

    .line 81
    invoke-direct {v6, v7, v2, v4}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda12;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v6}, Lcom/android/server/people/data/UserData;->forAllPackages(Ljava/util/function/Consumer;)V

    .line 85
    .line 86
    .line 87
    iget-object v2, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    .line 88
    .line 89
    if-nez v2, :cond_2

    .line 90
    .line 91
    return-void

    .line 92
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    .line 93
    .line 94
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v5, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v6, v2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 100
    .line 101
    iget-object v7, v2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 102
    .line 103
    iget-object v8, v2, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v9, v2, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 106
    .line 107
    iget-wide v10, v2, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 108
    .line 109
    iget-wide v12, v2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 110
    .line 111
    iget v14, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 112
    .line 113
    iget v15, v2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 114
    .line 115
    iget-object v2, v2, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 116
    .line 117
    iget-boolean v1, v3, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    .line 118
    .line 119
    move-object/from16 p1, v2

    .line 120
    .line 121
    const/16 v2, 0x20

    .line 122
    .line 123
    if-eqz v1, :cond_3

    .line 124
    .line 125
    or-int/lit8 v1, v15, 0x20

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    not-int v1, v2

    .line 129
    and-int/2addr v1, v15

    .line 130
    :goto_0
    iget-object v2, v3, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;

    .line 131
    .line 132
    iget-object v15, v0, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 133
    .line 134
    iget-object v0, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 135
    .line 136
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-object/from16 p2, v3

    .line 140
    .line 141
    new-instance v3, Lcom/android/server/people/data/ConversationInfo;

    .line 142
    .line 143
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 144
    .line 145
    .line 146
    iput-object v5, v3, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 147
    .line 148
    iput-object v6, v3, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 149
    .line 150
    iput-object v7, v3, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 151
    .line 152
    iput-object v2, v3, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 153
    .line 154
    iput-object v8, v3, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 155
    .line 156
    iput-object v9, v3, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 157
    .line 158
    iput-wide v10, v3, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 159
    .line 160
    iput-wide v12, v3, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 161
    .line 162
    iput v14, v3, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 163
    .line 164
    iput v1, v3, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 165
    .line 166
    move-object/from16 v1, p1

    .line 167
    .line 168
    iput-object v1, v3, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 169
    .line 170
    iget-object v1, v4, Lcom/android/server/people/data/DataManager$ContactsContentObserver$ConversationSelector;->mPackageName:Ljava/lang/String;

    .line 171
    .line 172
    move/from16 v2, p3

    .line 173
    .line 174
    invoke-virtual {v15, v0, v3, v1, v2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 175
    .line 176
    .line 177
    move-object/from16 v0, p2

    .line 178
    .line 179
    iget-wide v0, v0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J

    .line 180
    .line 181
    move-object/from16 v2, p0

    .line 182
    .line 183
    iput-wide v0, v2, Lcom/android/server/people/data/DataManager$ContactsContentObserver;->mLastUpdatedTimestamp:J

    .line 184
    .line 185
    return-void
.end method
