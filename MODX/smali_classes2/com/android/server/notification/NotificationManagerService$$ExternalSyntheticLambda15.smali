.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast p0, Landroid/service/notification/NotificationRankingUpdate;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 27
    .line 28
    move-object v1, v0

    .line 29
    check-cast v1, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v2, v0

    .line 34
    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    .line 37
    .line 38
    move-object v3, v0

    .line 39
    check-cast v3, Landroid/service/notification/StatusBarNotification;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Object;

    .line 42
    .line 43
    move-object v4, p0

    .line 44
    check-cast v4, Landroid/service/notification/NotificationRankingUpdate;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x6

    .line 48
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Landroid/service/notification/NotificationRankingUpdate;

    .line 67
    .line 68
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 75
    .line 76
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Ljava/util/List;

    .line 79
    .line 80
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$2:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda15;->f$3:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_0

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    check-cast v3, Ljava/lang/Runnable;

    .line 106
    .line 107
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 112
    .line 113
    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 115
    .line 116
    .line 117
    move-result-wide v3

    .line 118
    iget-wide v5, v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mStartTime:J

    .line 119
    .line 120
    sub-long/2addr v3, v5

    .line 121
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->isOngoing()Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    const-string v5, "NotificationService"

    .line 126
    .line 127
    if-nez v1, :cond_1

    .line 128
    .line 129
    const-string v1, "finish() called on already-finished tracker"

    .line 130
    .line 131
    invoke-static {v5, v1}, Landroid/util/Log;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_1
    const/4 v1, 0x0

    .line 136
    iput-boolean v1, v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mOngoing:Z

    .line 137
    .line 138
    iget-object v1, v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 139
    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;

    .line 143
    .line 144
    const/4 v6, 0x2

    .line 145
    invoke-direct {v1, v6, v2}, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 152
    .line 153
    if-eqz v1, :cond_3

    .line 154
    .line 155
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const-string v2, "PostNotification: Finished in %d ms"

    .line 164
    .line 165
    invoke-static {v2, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :cond_3
    :goto_1
    if-eqz p0, :cond_4

    .line 173
    .line 174
    iput-wide v3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->post_duration_millis:J

    .line 175
    .line 176
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 177
    .line 178
    check-cast v0, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    invoke-static {p0}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
