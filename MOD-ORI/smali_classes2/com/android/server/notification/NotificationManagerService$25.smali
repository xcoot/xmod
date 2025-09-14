.class public final Lcom/android/server/notification/NotificationManagerService$25;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$cancellationElapsedTimeMs:J

.field public final synthetic val$includeCurrentProfiles:Z

.field public final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic val$mustNotHaveFlags:I

.field public final synthetic val$reason:I

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIIZJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$callingUid:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$callingPid:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$reason:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$mustNotHaveFlags:I

    .line 17
    .line 18
    iput-boolean p8, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$includeCurrentProfiles:Z

    .line 19
    .line 20
    iput-wide p9, p0, Lcom/android/server/notification/NotificationManagerService$25;->val$cancellationElapsedTimeMs:J

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :goto_0
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$callingUid:I

    .line 21
    .line 22
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$callingPid:I

    .line 23
    .line 24
    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    .line 25
    .line 26
    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$reason:I

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v10

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v6, v7

    .line 55
    move-object v7, v8

    .line 56
    move-object v8, v9

    .line 57
    move-object v9, v10

    .line 58
    move-object v10, v2

    .line 59
    filled-new-array/range {v3 .. v10}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const/16 v4, 0xac0

    .line 64
    .line 65
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$mustNotHaveFlags:I

    .line 69
    .line 70
    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$reason:I

    .line 71
    .line 72
    new-instance v15, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-direct {v15, v3, v12}, Lcom/android/server/notification/NotificationManagerService$24$$ExternalSyntheticLambda0;-><init>(II)V

    .line 75
    .line 76
    .line 77
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 78
    .line 79
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 80
    .line 81
    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$includeCurrentProfiles:Z

    .line 82
    .line 83
    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    .line 84
    .line 85
    iget-wide v13, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$cancellationElapsedTimeMs:J

    .line 86
    .line 87
    const/4 v11, 0x1

    .line 88
    const/16 v16, 0x1

    .line 89
    .line 90
    const/4 v5, 0x0

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v7, 0x0

    .line 93
    move-object v8, v15

    .line 94
    move-wide/from16 v17, v13

    .line 95
    .line 96
    move-object v13, v2

    .line 97
    move/from16 v14, v16

    .line 98
    .line 99
    move-object/from16 v19, v15

    .line 100
    .line 101
    move-wide/from16 v15, v17

    .line 102
    .line 103
    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 104
    .line 105
    .line 106
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 107
    .line 108
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 109
    .line 110
    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$includeCurrentProfiles:Z

    .line 111
    .line 112
    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    .line 113
    .line 114
    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$reason:I

    .line 115
    .line 116
    iget-wide v14, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$cancellationElapsedTimeMs:J

    .line 117
    .line 118
    const/4 v11, 0x1

    .line 119
    const/16 v16, 0x0

    .line 120
    .line 121
    const/4 v5, 0x0

    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    move-object/from16 v8, v19

    .line 125
    .line 126
    move-object v13, v2

    .line 127
    move-wide/from16 v17, v14

    .line 128
    .line 129
    move/from16 v14, v16

    .line 130
    .line 131
    move-wide/from16 v15, v17

    .line 132
    .line 133
    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 134
    .line 135
    .line 136
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$25;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 137
    .line 138
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 139
    .line 140
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$userId:I

    .line 141
    .line 142
    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$25;->val$includeCurrentProfiles:Z

    .line 143
    .line 144
    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(IZ)V

    .line 145
    .line 146
    .line 147
    monitor-exit v1

    .line 148
    return-void

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    throw v0
.end method
