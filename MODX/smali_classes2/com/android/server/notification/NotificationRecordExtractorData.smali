.class public final Lcom/android/server/notification/NotificationRecordExtractorData;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAllowBubble:Z

.field public final mChannel:Landroid/app/NotificationChannel;

.field public final mGroupKey:Ljava/lang/String;

.field public final mImportance:I

.field public final mIsBubble:Z

.field public final mIsConversation:Z

.field public final mOverridePeople:Ljava/util/ArrayList;

.field public final mPosition:I

.field public final mProposedImportance:I

.field public final mRankingScore:F

.field public final mSensitiveContent:Z

.field public final mShowBadge:Z

.field public final mSmartReplies:Ljava/util/ArrayList;

.field public final mSnoozeCriteria:Ljava/util/ArrayList;

.field public final mSuppressVisually:Ljava/lang/Integer;

.field public final mSystemSmartActions:Ljava/util/ArrayList;

.field public final mUserSentiment:Ljava/lang/Integer;

.field public final mVisibility:I


# direct methods
.method public constructor <init>(IIZZZLandroid/app/NotificationChannel;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Ljava/util/ArrayList;IFZIZ)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 2
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    move v1, p2

    .line 3
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mVisibility:I

    move v1, p3

    .line 4
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mShowBadge:Z

    move v1, p4

    .line 5
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mAllowBubble:Z

    move v1, p5

    .line 6
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsBubble:Z

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    move/from16 v1, p14

    .line 15
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mRankingScore:F

    move/from16 v1, p16

    .line 17
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsConversation:Z

    move/from16 v1, p17

    .line 18
    iput v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    move/from16 v1, p18

    .line 19
    iput-boolean v1, v0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    return-void
.end method


# virtual methods
.method public final hasDiffForLoggingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    .line 2
    .line 3
    if-ne v0, p2, :cond_1

    .line 4
    .line 5
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 8
    .line 9
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_1

    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 30
    .line 31
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 40
    .line 41
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    if-eqz p2, :cond_1

    .line 48
    .line 49
    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 50
    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 64
    .line 65
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_1

    .line 72
    .line 73
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 74
    .line 75
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-eqz p2, :cond_1

    .line 82
    .line 83
    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 84
    .line 85
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    .line 86
    .line 87
    if-ne v0, p2, :cond_1

    .line 88
    .line 89
    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 90
    .line 91
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mRankingScore:F

    .line 92
    .line 93
    sub-float/2addr p2, v0

    .line 94
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    float-to-double v0, p2

    .line 99
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    cmpg-double p2, v0, v2

    .line 105
    .line 106
    if-gez p2, :cond_1

    .line 107
    .line 108
    iget-boolean p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsConversation:Z

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-ne p2, v0, :cond_1

    .line 115
    .line 116
    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    .line 117
    .line 118
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    .line 119
    .line 120
    if-ne v0, p2, :cond_1

    .line 121
    .line 122
    iget-boolean p1, p1, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    .line 123
    .line 124
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    .line 125
    .line 126
    if-eq p0, p1, :cond_0

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_0
    const/4 p0, 0x0

    .line 130
    goto :goto_1

    .line 131
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 132
    :goto_1
    return p0
.end method

.method public final hasDiffForRankingLocked(Lcom/android/server/notification/NotificationRecord;I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mPosition:I

    .line 2
    .line 3
    if-ne v0, p2, :cond_1

    .line 4
    .line 5
    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mPackageVisibility:I

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mVisibility:I

    .line 8
    .line 9
    if-ne v0, p2, :cond_1

    .line 10
    .line 11
    iget-boolean p2, p1, Lcom/android/server/notification/NotificationRecord;->mShowBadge:Z

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mShowBadge:Z

    .line 14
    .line 15
    if-ne v0, p2, :cond_1

    .line 16
    .line 17
    iget-boolean p2, p1, Lcom/android/server/notification/NotificationRecord;->mAllowBubble:Z

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mAllowBubble:Z

    .line 20
    .line 21
    if-ne v0, p2, :cond_1

    .line 22
    .line 23
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Landroid/app/Notification;->isBubbleNotification()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mIsBubble:Z

    .line 34
    .line 35
    if-ne v0, p2, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mChannel:Landroid/app/NotificationChannel;

    .line 38
    .line 39
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 40
    .line 41
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mGroupKey:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_1

    .line 60
    .line 61
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mOverridePeople:Ljava/util/ArrayList;

    .line 62
    .line 63
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mPeopleOverride:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_1

    .line 70
    .line 71
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSnoozeCriteria:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_1

    .line 80
    .line 81
    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mUserSentiment:I

    .line 82
    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mUserSentiment:Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    if-eqz p2, :cond_1

    .line 94
    .line 95
    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mSuppressedVisualEffects:I

    .line 96
    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSuppressVisually:Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    if-eqz p2, :cond_1

    .line 108
    .line 109
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSystemSmartActions:Ljava/util/ArrayList;

    .line 110
    .line 111
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSystemGeneratedSmartActions:Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-eqz p2, :cond_1

    .line 118
    .line 119
    iget-object p2, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSmartReplies:Ljava/util/ArrayList;

    .line 120
    .line 121
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mSmartReplies:Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p2

    .line 127
    if-eqz p2, :cond_1

    .line 128
    .line 129
    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 130
    .line 131
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mImportance:I

    .line 132
    .line 133
    if-ne v0, p2, :cond_1

    .line 134
    .line 135
    iget p2, p1, Lcom/android/server/notification/NotificationRecord;->mProposedImportance:I

    .line 136
    .line 137
    iget v0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mProposedImportance:I

    .line 138
    .line 139
    if-ne v0, p2, :cond_1

    .line 140
    .line 141
    iget-boolean p1, p1, Lcom/android/server/notification/NotificationRecord;->mSensitiveContent:Z

    .line 142
    .line 143
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationRecordExtractorData;->mSensitiveContent:Z

    .line 144
    .line 145
    if-eq p0, p1, :cond_0

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_0
    const/4 p0, 0x0

    .line 149
    goto :goto_1

    .line 150
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 151
    :goto_1
    return p0
.end method
