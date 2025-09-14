.class public final Lcom/android/server/people/PeopleService$1;
.super Landroid/app/people/IPeopleManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/people/PeopleService;


# direct methods
.method public constructor <init>(Lcom/android/server/people/PeopleService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/people/IPeopleManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final addOrUpdateStatus(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/ConversationStatus;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getStartTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    cmp-long v0, v0, v2

    .line 20
    .line 21
    if-gtz v0, :cond_1

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(ILjava/lang/String;)Lcom/android/server/people/data/ConversationStore;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    new-instance v2, Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v2, v1, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 43
    .line 44
    iget-object v3, v1, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 45
    .line 46
    iget-object v4, v1, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 47
    .line 48
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-interface {v4, v5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iget-object v5, v1, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    new-instance v6, Lcom/android/server/people/data/ConversationInfo;

    .line 61
    .line 62
    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v5, v6, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 66
    .line 67
    iput-object v2, v6, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 68
    .line 69
    iput-object v3, v6, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 70
    .line 71
    iget-object v2, v1, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 72
    .line 73
    iput-object v2, v6, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v2, v1, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 76
    .line 77
    iput-object v2, v6, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v2, v1, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 80
    .line 81
    iput-object v2, v6, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 82
    .line 83
    iget-wide v2, v1, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 84
    .line 85
    iput-wide v2, v6, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 86
    .line 87
    iget-wide v2, v1, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 88
    .line 89
    iput-wide v2, v6, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 90
    .line 91
    iget v2, v1, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 92
    .line 93
    iput v2, v6, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 94
    .line 95
    iget v1, v1, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 96
    .line 97
    iput v1, v6, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 98
    .line 99
    iput-object v4, v6, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 100
    .line 101
    invoke-virtual {p0, v0, v6, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    .line 105
    .line 106
    .line 107
    move-result-wide v0

    .line 108
    const-wide/16 v2, 0x0

    .line 109
    .line 110
    cmp-long v0, v0, v2

    .line 111
    .line 112
    if-ltz v0, :cond_0

    .line 113
    .line 114
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mStatusExpReceiver:Lcom/android/server/people/data/ConversationStatusExpirationBroadcastReceiver;

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 122
    .line 123
    .line 124
    move-result-wide v0

    .line 125
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 126
    .line 127
    const-string v3, "ConversationStatusExpiration"

    .line 128
    .line 129
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v3, "android"

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    new-instance v3, Landroid/net/Uri$Builder;

    .line 139
    .line 140
    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v4, "expStatus"

    .line 144
    .line 145
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v3, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    const/high16 p3, 0x10000000

    .line 187
    .line 188
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    const-string/jumbo p3, "userId"

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    const/high16 p2, 0xc000000

    .line 200
    .line 201
    const/16 p3, 0xa

    .line 202
    .line 203
    invoke-static {p0, p3, p1, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-class p2, Landroid/app/AlarmManager;

    .line 208
    .line 209
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    check-cast p0, Landroid/app/AlarmManager;

    .line 214
    .line 215
    invoke-virtual {p4}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    .line 216
    .line 217
    .line 218
    move-result-wide p2

    .line 219
    const/4 p4, 0x0

    .line 220
    invoke-virtual {p0, p4, p2, p3, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .line 222
    .line 223
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :catchall_0
    move-exception p0

    .line 228
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    .line 230
    .line 231
    throw p0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 234
    .line 235
    const-string p1, "Start time must be in the past"

    .line 236
    .line 237
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p0
.end method

.method public final clearStatus(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(ILjava/lang/String;)Lcom/android/server/people/data/ConversationStore;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 31
    .line 32
    iget-object v2, p3, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 33
    .line 34
    iget-object v3, p3, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    iget-object p4, p3, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance v4, Lcom/android/server/people/data/ConversationInfo;

    .line 45
    .line 46
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object p4, v4, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v1, v4, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 52
    .line 53
    iput-object v2, v4, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 54
    .line 55
    iget-object p4, p3, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 56
    .line 57
    iput-object p4, v4, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 58
    .line 59
    iget-object p4, p3, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 60
    .line 61
    iput-object p4, v4, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 62
    .line 63
    iget-object p4, p3, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 64
    .line 65
    iput-object p4, v4, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 66
    .line 67
    iget-wide v1, p3, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 68
    .line 69
    iput-wide v1, v4, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 70
    .line 71
    iget-wide v1, p3, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 72
    .line 73
    iput-wide v1, v4, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 74
    .line 75
    iget p4, p3, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 76
    .line 77
    iput p4, v4, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 78
    .line 79
    iget p3, p3, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 80
    .line 81
    iput p3, v4, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 82
    .line 83
    iput-object v3, v4, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 84
    .line 85
    invoke-virtual {p0, v0, v4, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final clearStatuses(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(ILjava/lang/String;)Lcom/android/server/people/data/ConversationStore;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    new-instance v1, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 31
    .line 32
    iget-object v2, p3, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 33
    .line 34
    iget-object v3, p3, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 37
    .line 38
    .line 39
    iget-object v4, p3, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance v5, Lcom/android/server/people/data/ConversationInfo;

    .line 45
    .line 46
    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v4, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 50
    .line 51
    iput-object v1, v5, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 52
    .line 53
    iput-object v2, v5, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 54
    .line 55
    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 56
    .line 57
    iput-object v1, v5, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 60
    .line 61
    iput-object v1, v5, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v1, p3, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 64
    .line 65
    iput-object v1, v5, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 66
    .line 67
    iget-wide v1, p3, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 68
    .line 69
    iput-wide v1, v5, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 70
    .line 71
    iget-wide v1, p3, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 72
    .line 73
    iput-wide v1, v5, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 74
    .line 75
    iget v1, p3, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 76
    .line 77
    iput v1, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 78
    .line 79
    iget p3, p3, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 80
    .line 81
    iput p3, v5, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 82
    .line 83
    iput-object v3, v5, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 84
    .line 85
    invoke-virtual {p0, v0, v5, p1, p2}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p3, "PeopleService"

    .line 8
    .line 9
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    .line 22
    .line 23
    const-string p3, "  "

    .line 24
    .line 25
    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string p2, "DataManager dump"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    :goto_0
    iget-object p3, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    if-ge p2, p3, :cond_3

    .line 48
    .line 49
    iget-object p3, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 50
    .line 51
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "UserId : "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/people/data/DataManager;->mUserDataArray:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, Lcom/android/server/people/data/UserData;

    .line 79
    .line 80
    iget-boolean v0, p3, Lcom/android/server/people/data/UserData;->mIsUnlocked:Z

    .line 81
    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v1, ", mPackageDataMap size : "

    .line 87
    .line 88
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v1, p3, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 92
    .line 93
    check-cast v1, Landroid/util/ArrayMap;

    .line 94
    .line 95
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p3, p3, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 110
    .line 111
    check-cast p3, Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_1

    .line 126
    .line 127
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/android/server/people/data/PackageData;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 134
    .line 135
    const-string/jumbo v2, "packageName"

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 139
    .line 140
    .line 141
    iget-object v0, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 142
    .line 143
    iget-object v1, v0, Lcom/android/server/people/data/ConversationStore;->mConversationInfoMap:Ljava/util/Map;

    .line 144
    .line 145
    check-cast v1, Landroid/util/ArrayMap;

    .line 146
    .line 147
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v2, "mConversationInfoMap"

    .line 156
    .line 157
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/android/server/people/data/ConversationStore;->mLocusIdToShortcutIdMap:Ljava/util/Map;

    .line 161
    .line 162
    check-cast v1, Landroid/util/ArrayMap;

    .line 163
    .line 164
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string/jumbo v2, "mLocusIdToShortcutIdMap"

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 176
    .line 177
    .line 178
    iget-object v1, v0, Lcom/android/server/people/data/ConversationStore;->mContactUriToShortcutIdMap:Ljava/util/Map;

    .line 179
    .line 180
    check-cast v1, Landroid/util/ArrayMap;

    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v2, "mContactUriToShortcutIdMap"

    .line 191
    .line 192
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/android/server/people/data/ConversationStore;->mPhoneNumberToShortcutIdMap:Ljava/util/Map;

    .line 196
    .line 197
    check-cast v1, Landroid/util/ArrayMap;

    .line 198
    .line 199
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    const-string/jumbo v2, "mPhoneNumberToShortcutIdMap"

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 211
    .line 212
    .line 213
    iget-object v0, v0, Lcom/android/server/people/data/ConversationStore;->mNotifChannelIdToShortcutIdMap:Ljava/util/Map;

    .line 214
    .line 215
    check-cast v0, Landroid/util/ArrayMap;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const-string/jumbo v1, "mNotifChannelIdToShortcutIdMap"

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 233
    .line 234
    .line 235
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 236
    .line 237
    goto/16 :goto_0

    .line 238
    .line 239
    :cond_3
    return-void
.end method

.method public final getConversation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/people/ConversationChannel;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "get conversation"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 25
    .line 26
    check-cast v0, Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/people/data/PackageData;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 37
    .line 38
    invoke-virtual {v0, p3}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    :goto_0
    return-object p0
.end method

.method public final getLastInteraction(Ljava/lang/String;ILjava/lang/String;)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "get last interaction"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getPackage(ILjava/lang/String;)Lcom/android/server/people/data/PackageData;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 25
    .line 26
    invoke-virtual {p0, p3}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    iget-wide p0, p0, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-wide/16 p0, 0x0

    .line 36
    .line 37
    :goto_0
    return-wide p0
.end method

.method public final getRecentConversations()Landroid/content/pm/ParceledListSlice;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "get recent conversations"

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance v2, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/people/data/DataManager;Ljava/util/List;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v1, v3}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {v0, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method public final getStatuses(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/android/server/people/PeopleService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/people/PeopleService;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    new-instance v0, Landroid/content/pm/ParceledListSlice;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/android/server/people/data/DataManager;->getConversationStoreOrThrow(ILjava/lang/String;)Lcom/android/server/people/data/ConversationStore;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0, p3}, Lcom/android/server/people/data/DataManager;->getConversationInfoOrThrow(Lcom/android/server/people/data/ConversationStore;Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    iget-object p0, p0, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-eqz p0, :cond_1

    .line 40
    .line 41
    new-instance p1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    :goto_0
    invoke-direct {v0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public final isConversation(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.READ_PEOPLE_DATA"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 16
    .line 17
    invoke-static {v0, p2}, Lcom/android/server/people/PeopleService;->-$$Nest$mhandleIncomingUser(Lcom/android/server/people/PeopleService;I)V

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0, p2}, Lcom/android/server/people/data/DataManager;->getUnlockedUserData(I)Lcom/android/server/people/data/UserData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/people/data/UserData;->mPackageDataMap:Ljava/util/Map;

    .line 33
    .line 34
    check-cast v0, Landroid/util/ArrayMap;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/server/people/data/PackageData;

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, v0, Lcom/android/server/people/data/PackageData;->mConversationStore:Lcom/android/server/people/data/ConversationStore;

    .line 45
    .line 46
    invoke-virtual {v0, p3}, Lcom/android/server/people/data/ConversationStore;->getConversation(Ljava/lang/String;)Lcom/android/server/people/data/ConversationInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/people/data/DataManager;->getConversationChannel(Ljava/lang/String;ILjava/lang/String;Lcom/android/server/people/data/ConversationInfo;)Landroid/app/people/ConversationChannel;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    :goto_0
    if-eqz p0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-nez p0, :cond_1

    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/4 p0, 0x0

    .line 81
    :goto_1
    return p0

    .line 82
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 83
    .line 84
    const-string p1, "Caller doesn\'t have READ_PEOPLE_DATA permission."

    .line 85
    .line 86
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final registerConversationListener(Ljava/lang/String;ILjava/lang/String;Landroid/app/people/IConversationListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "register conversation listener"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getConversationListenerHelper()Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lcom/android/server/people/PeopleService$ListenerKey;

    .line 20
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/people/PeopleService$ListenerKey;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 30
    .line 31
    invoke-virtual {p1, p4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 35
    .line 36
    invoke-virtual {p1, p4, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    monitor-exit p0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    monitor-exit p0

    .line 43
    throw p1
.end method

.method public final removeAllRecentConversations()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;

    .line 25
    .line 26
    const-wide v2, 0x7fffffffffffffffL

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/people/data/DataManager;JI)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/people/data/DataManager;->forPackagesInProfile(ILjava/util/function/Consumer;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    .line 40
    const-string v0, "Only system may "

    .line 41
    .line 42
    const-string/jumbo v1, "remove all recent conversations"

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public final removeRecentConversation(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/server/people/PeopleService;->isSystemOrRoot()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getDataManager()Lcom/android/server/people/data/DataManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/people/data/DataManager;->hasActiveNotifications(ILjava/lang/String;Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/people/data/DataManager;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/16 v7, 0x4000

    .line 40
    .line 41
    move-object v4, p1

    .line 42
    move v6, p2

    .line 43
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/ShortcutServiceInternal;->uncacheShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 48
    .line 49
    const-string p1, "Only system may "

    .line 50
    .line 51
    const-string/jumbo p2, "remove a recent conversation"

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0
.end method

.method public final unregisterConversationListener(Landroid/app/people/IConversationListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "unregister conversation listener"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/android/server/people/PeopleService;->enforceSystemRootOrSystemUI(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/people/PeopleService$1;->this$0:Lcom/android/server/people/PeopleService;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/people/PeopleService;->getConversationListenerHelper()Lcom/android/server/people/PeopleService$ConversationListenerHelper;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/android/server/people/PeopleService$ConversationListenerHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit p0

    .line 29
    throw p1
.end method
