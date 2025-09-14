.class public final synthetic Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/people/data/DataManager;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/android/server/people/data/ConversationStore;

.field public final synthetic f$3:Lcom/android/server/people/data/PackageData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager;JLcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/PackageData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/people/data/DataManager;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$2:Lcom/android/server/people/data/ConversationStore;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$3:Lcom/android/server/people/data/PackageData;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/people/data/DataManager;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$1:J

    .line 6
    .line 7
    iget-object v4, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$2:Lcom/android/server/people/data/ConversationStore;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/people/data/DataManager$$ExternalSyntheticLambda15;->f$3:Lcom/android/server/people/data/PackageData;

    .line 10
    .line 11
    move-object/from16 v5, p1

    .line 12
    .line 13
    check-cast v5, Lcom/android/server/people/data/ConversationInfo;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v6, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v6, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v7, v5, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 26
    .line 27
    iget-object v8, v5, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 28
    .line 29
    iget-object v9, v5, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 30
    .line 31
    new-instance v10, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v11, v5, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 37
    .line 38
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v11

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v12

    .line 50
    if-eqz v12, :cond_2

    .line 51
    .line 52
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    check-cast v12, Landroid/app/people/ConversationStatus;

    .line 57
    .line 58
    invoke-virtual {v12}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    .line 59
    .line 60
    .line 61
    move-result-wide v13

    .line 62
    const-wide/16 v15, 0x0

    .line 63
    .line 64
    cmp-long v13, v13, v15

    .line 65
    .line 66
    if-ltz v13, :cond_1

    .line 67
    .line 68
    invoke-virtual {v12}, Landroid/app/people/ConversationStatus;->getEndTimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v13

    .line 72
    cmp-long v13, v2, v13

    .line 73
    .line 74
    if-gez v13, :cond_0

    .line 75
    .line 76
    :cond_1
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    check-cast v3, Landroid/app/people/ConversationStatus;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/app/people/ConversationStatus;->getId()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v10

    .line 103
    invoke-interface {v9, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    new-instance v2, Lcom/android/server/people/data/ConversationInfo;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v6, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutId:Ljava/lang/String;

    .line 116
    .line 117
    iput-object v7, v2, Lcom/android/server/people/data/ConversationInfo;->mLocusId:Landroid/content/LocusId;

    .line 118
    .line 119
    iput-object v8, v2, Lcom/android/server/people/data/ConversationInfo;->mContactUri:Landroid/net/Uri;

    .line 120
    .line 121
    iget-object v3, v5, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mContactPhoneNumber:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v3, v5, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mNotificationChannelId:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v3, v5, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 130
    .line 131
    iput-object v3, v2, Lcom/android/server/people/data/ConversationInfo;->mParentNotificationChannelId:Ljava/lang/String;

    .line 132
    .line 133
    iget-wide v6, v5, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 134
    .line 135
    iput-wide v6, v2, Lcom/android/server/people/data/ConversationInfo;->mLastEventTimestamp:J

    .line 136
    .line 137
    iget-wide v6, v5, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 138
    .line 139
    iput-wide v6, v2, Lcom/android/server/people/data/ConversationInfo;->mCreationTimestamp:J

    .line 140
    .line 141
    iget v3, v5, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 142
    .line 143
    iput v3, v2, Lcom/android/server/people/data/ConversationInfo;->mShortcutFlags:I

    .line 144
    .line 145
    iget v3, v5, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 146
    .line 147
    iput v3, v2, Lcom/android/server/people/data/ConversationInfo;->mConversationFlags:I

    .line 148
    .line 149
    iput-object v9, v2, Lcom/android/server/people/data/ConversationInfo;->mCurrStatuses:Ljava/util/Map;

    .line 150
    .line 151
    iget-object v3, v0, Lcom/android/server/people/data/PackageData;->mPackageName:Ljava/lang/String;

    .line 152
    .line 153
    iget v0, v0, Lcom/android/server/people/data/PackageData;->mUserId:I

    .line 154
    .line 155
    invoke-virtual {v1, v4, v2, v3, v0}, Lcom/android/server/people/data/DataManager;->updateConversationStoreThenNotifyListeners(Lcom/android/server/people/data/ConversationStore;Lcom/android/server/people/data/ConversationInfo;Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    return-void
.end method
