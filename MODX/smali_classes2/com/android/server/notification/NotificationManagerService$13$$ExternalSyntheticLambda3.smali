.class public final synthetic Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_1
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$13;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 27
    .line 28
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroid/content/Intent;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Landroid/content/Intent;

    .line 48
    .line 49
    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    .line 50
    .line 51
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const/high16 v2, 0x4000000

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 61
    .line 62
    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    .line 63
    .line 64
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateInterruptionFilterLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 75
    .line 76
    .line 77
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getAppsToBypassDndForEnabledForMode()Ljava/util/ArrayList;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const/4 v2, 0x0

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 94
    .line 95
    if-eqz v1, :cond_0

    .line 96
    .line 97
    const-string v1, "NotificationService"

    .line 98
    .line 99
    const-string v3, "BixbyRoutine Mode rule is added when DND is on."

    .line 100
    .line 101
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 105
    .line 106
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 107
    .line 108
    iget v3, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    .line 109
    .line 110
    if-eqz v3, :cond_1

    .line 111
    .line 112
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 113
    .line 114
    const/4 v3, 0x1

    .line 115
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v2, v0, v3, v1}, Lcom/android/server/notification/PreferencesHelper;->setChannelsBypassingDndForMode(IZZ)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_1
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/notification/PreferencesHelper;->setChannelsBypassingDndForMode(IZZ)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    const-string v1, "NotificationService"

    .line 138
    .line 139
    const-string v3, "There is not a BixbyRoutine Mode rule."

    .line 140
    .line 141
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 145
    .line 146
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/notification/PreferencesHelper;->setChannelsBypassingDndForMode(IZZ)V

    .line 153
    .line 154
    .line 155
    :goto_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 158
    .line 159
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    .line 160
    .line 161
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->requestSort()V

    .line 162
    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->notifyZenPolicy()V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :catchall_0
    move-exception p0

    .line 171
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    throw p0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
