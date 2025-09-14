.class public final Lcom/android/server/notification/NotificationManagerService$24;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$cancellationElapsedTimeMs:J

.field public final synthetic val$channelId:Ljava/lang/String;

.field public final synthetic val$mustHaveFlags:I

.field public final synthetic val$mustNotHaveFlags:I

.field public final synthetic val$pkg:Ljava/lang/String;

.field public final synthetic val$reason:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;IIILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$callingUid:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$callingPid:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$mustNotHaveFlags:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$reason:I

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$channelId:Ljava/lang/String;

    .line 19
    .line 20
    iput-wide p9, p0, Lcom/android/server/notification/NotificationManagerService$24;->val$cancellationElapsedTimeMs:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$callingUid:I

    .line 4
    .line 5
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$callingPid:I

    .line 6
    .line 7
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    .line 8
    .line 9
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    .line 10
    .line 11
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$mustNotHaveFlags:I

    .line 12
    .line 13
    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$reason:I

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v7

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    const/4 v11, 0x0

    .line 41
    move-object v3, v1

    .line 42
    move-object v4, v2

    .line 43
    move-object v6, v7

    .line 44
    move-object v7, v8

    .line 45
    move-object v8, v9

    .line 46
    move-object v9, v10

    .line 47
    move-object v10, v11

    .line 48
    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/16 v2, 0xac0

    .line 53
    .line 54
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter v1

    .line 62
    :try_start_0
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$mustNotHaveFlags:I

    .line 63
    .line 64
    new-instance v15, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;

    .line 65
    .line 66
    invoke-direct {v15, v2}, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;-><init>(I)V

    .line 67
    .line 68
    .line 69
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 70
    .line 71
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 72
    .line 73
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$channelId:Ljava/lang/String;

    .line 76
    .line 77
    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    .line 78
    .line 79
    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$reason:I

    .line 80
    .line 81
    iget-wide v13, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$cancellationElapsedTimeMs:J

    .line 82
    .line 83
    const/4 v2, 0x0

    .line 84
    const/16 v16, 0x1

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    const/4 v9, 0x0

    .line 88
    const/4 v11, 0x0

    .line 89
    move-object v8, v15

    .line 90
    move-wide/from16 v17, v13

    .line 91
    .line 92
    move-object v13, v2

    .line 93
    move/from16 v14, v16

    .line 94
    .line 95
    move-object v2, v15

    .line 96
    move-wide/from16 v15, v17

    .line 97
    .line 98
    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 99
    .line 100
    .line 101
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 102
    .line 103
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 104
    .line 105
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$channelId:Ljava/lang/String;

    .line 108
    .line 109
    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    .line 110
    .line 111
    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$reason:I

    .line 112
    .line 113
    iget-wide v14, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$cancellationElapsedTimeMs:J

    .line 114
    .line 115
    const/4 v13, 0x0

    .line 116
    const/16 v16, 0x0

    .line 117
    .line 118
    const/4 v6, 0x1

    .line 119
    const/4 v9, 0x0

    .line 120
    const/4 v11, 0x0

    .line 121
    move-object v8, v2

    .line 122
    move-wide/from16 v17, v14

    .line 123
    .line 124
    move/from16 v14, v16

    .line 125
    .line 126
    move-wide/from16 v15, v17

    .line 127
    .line 128
    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 129
    .line 130
    .line 131
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$24;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 132
    .line 133
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 134
    .line 135
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$userId:I

    .line 136
    .line 137
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$24;->val$pkg:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw v0
.end method
