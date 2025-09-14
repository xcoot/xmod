.class public interface abstract Lcom/android/server/notification/NotificationRecordLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static prepareToLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;
    .locals 6

    .line 1
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    .line 2
    .line 3
    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    if-lez p3, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getChannelIdLogTag()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupLogTag()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 59
    .line 60
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-ne v0, v2, :cond_3

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 79
    .line 80
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v2, v2, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget v0, p0, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 93
    .line 94
    iget v2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 95
    .line 96
    if-ne v0, v2, :cond_3

    .line 97
    .line 98
    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 99
    .line 100
    if-nez v2, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v2, v0}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    :goto_0
    iget v2, p1, Lcom/android/server/notification/NotificationRecord;->mImportance:I

    .line 108
    .line 109
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->mChannel:Landroid/app/NotificationChannel;

    .line 110
    .line 111
    if-nez v3, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    invoke-static {v3, v2}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    :goto_1
    if-ne v0, v2, :cond_3

    .line 119
    .line 120
    iget v0, p1, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 121
    .line 122
    iget p0, p0, Lcom/android/server/notification/NotificationRecord;->mRankingScore:F

    .line 123
    .line 124
    sub-float/2addr p0, v0

    .line 125
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    .line 126
    .line 127
    .line 128
    move-result p0

    .line 129
    float-to-double v2, p0

    .line 130
    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    cmpg-double p0, v2, v4

    .line 136
    .line 137
    if-gez p0, :cond_3

    .line 138
    .line 139
    const/4 p0, 0x0

    .line 140
    return-object p0

    .line 141
    :cond_3
    :goto_2
    new-instance p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    .line 142
    .line 143
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_POSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 144
    .line 145
    if-eqz p1, :cond_4

    .line 146
    .line 147
    sget-object p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_UPDATED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 148
    .line 149
    :goto_3
    move-object v2, p1

    .line 150
    goto :goto_4

    .line 151
    :cond_4
    sget-object p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_POSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :goto_4
    move-object v0, p0

    .line 155
    move v3, p2

    .line 156
    move v4, p3

    .line 157
    move-object v5, p4

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;-><init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V

    .line 159
    .line 160
    .line 161
    return-object p0
.end method


# virtual methods
.method public logNotificationCancelled(Lcom/android/server/notification/NotificationRecord;II)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->INVALID:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, " with reason "

    .line 5
    .line 6
    const-string v3, "Unexpected surface: "

    .line 7
    .line 8
    const-string v4, "NotificationRecordLogger"

    .line 9
    .line 10
    if-ne p3, v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-static {v4, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto/16 :goto_0

    .line 34
    .line 35
    :cond_0
    const/4 v1, 0x1

    .line 36
    const/4 v5, 0x2

    .line 37
    if-ne p2, v5, :cond_7

    .line 38
    .line 39
    if-eqz p3, :cond_6

    .line 40
    .line 41
    if-eq p3, v1, :cond_5

    .line 42
    .line 43
    if-eq p3, v5, :cond_4

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    if-eq p3, v1, :cond_3

    .line 47
    .line 48
    const/4 v1, 0x4

    .line 49
    if-eq p3, v1, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x5

    .line 52
    if-eq p3, v1, :cond_1

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {v4, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_LOCKSCREEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_BUBBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_SHADE:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_4
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_AOD:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_PEEK:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_6
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_USER_OTHER:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    if-gt v1, p2, :cond_8

    .line 95
    .line 96
    const/16 v1, 0x15

    .line 97
    .line 98
    if-gt p2, v1, :cond_8

    .line 99
    .line 100
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    aget-object v0, p3, p2

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_8
    const/16 v1, 0x16

    .line 108
    .line 109
    if-ne p2, v1, :cond_9

    .line 110
    .line 111
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->NOTIFICATION_CANCEL_ASSISTANT:Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    const-string v2, "Unexpected reason: "

    .line 117
    .line 118
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string p2, " with surface "

    .line 125
    .line 126
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    invoke-static {v4, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    :goto_0
    check-cast p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 140
    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method
