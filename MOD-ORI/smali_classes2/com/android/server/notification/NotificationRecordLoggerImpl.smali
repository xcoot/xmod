.class public final Lcom/android/server/notification/NotificationRecordLoggerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationRecordLogger;


# instance fields
.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v2, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->event_id:I

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->post_duration_millis:J

    .line 6
    .line 7
    move-wide/from16 v28, v3

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_non_dismissible:Z

    .line 10
    .line 11
    move/from16 v27, v1

    .line 12
    .line 13
    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->fsi_state:I

    .line 14
    .line 15
    move/from16 v30, v1

    .line 16
    .line 17
    const/16 v1, 0xf4

    .line 18
    .line 19
    iget v3, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->uid:I

    .line 20
    .line 21
    iget-object v4, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->package_name:Ljava/lang/String;

    .line 22
    .line 23
    iget v5, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->instance_id:I

    .line 24
    .line 25
    iget v6, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->notification_id_hash:I

    .line 26
    .line 27
    iget v7, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->channel_id_hash:I

    .line 28
    .line 29
    iget v8, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_id_hash:I

    .line 30
    .line 31
    iget v9, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_instance_id:I

    .line 32
    .line 33
    iget-boolean v10, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_group_summary:Z

    .line 34
    .line 35
    iget-object v11, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->category:Ljava/lang/String;

    .line 36
    .line 37
    iget v12, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->style:I

    .line 38
    .line 39
    iget v13, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->num_people:I

    .line 40
    .line 41
    iget v14, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->position:I

    .line 42
    .line 43
    iget v15, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance:I

    .line 44
    .line 45
    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->alerting:I

    .line 46
    .line 47
    move/from16 v16, v1

    .line 48
    .line 49
    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_source:I

    .line 50
    .line 51
    move/from16 v17, v1

    .line 52
    .line 53
    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial:I

    .line 54
    .line 55
    move/from16 v18, v1

    .line 56
    .line 57
    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial_source:I

    .line 58
    .line 59
    move/from16 v19, v1

    .line 60
    .line 61
    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_asst:I

    .line 62
    .line 63
    move/from16 v20, v1

    .line 64
    .line 65
    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_hash:I

    .line 66
    .line 67
    move/from16 v21, v1

    .line 68
    .line 69
    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_ranking_score:F

    .line 70
    .line 71
    move/from16 v22, v1

    .line 72
    .line 73
    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_ongoing:Z

    .line 74
    .line 75
    move/from16 v23, v1

    .line 76
    .line 77
    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_foreground_service:Z

    .line 78
    .line 79
    move/from16 v24, v1

    .line 80
    .line 81
    move/from16 v33, v2

    .line 82
    .line 83
    iget-wide v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->timeout_millis:J

    .line 84
    .line 85
    move-wide/from16 v25, v1

    .line 86
    .line 87
    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_locked:Z

    .line 88
    .line 89
    move/from16 v31, v1

    .line 90
    .line 91
    iget v0, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->age_in_minutes:I

    .line 92
    .line 93
    move/from16 v32, v0

    .line 94
    .line 95
    move/from16 v2, v33

    .line 96
    .line 97
    const/16 v1, 0xf4

    .line 98
    .line 99
    invoke-static/range {v1 .. v32}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIIZLjava/lang/String;IIIIIIIIIIFZZJZJIZI)V

    .line 100
    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public final log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 5
    .line 6
    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object p2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 25
    .line 26
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLoggerImpl;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
