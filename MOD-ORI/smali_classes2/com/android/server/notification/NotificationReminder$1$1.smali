.class public final Lcom/android/server/notification/NotificationReminder$1$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 20
    .line 21
    const/16 v1, 0x3ec

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationReminder;->sendMessage(I)V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw p0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lcom/android/server/notification/NotificationReminder$1;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 38
    .line 39
    monitor-enter v0

    .line 40
    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lcom/android/server/notification/NotificationReminder$1;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 45
    .line 46
    iget-object v2, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v1, Lcom/android/server/notification/NotificationReminder$1;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 59
    .line 60
    invoke-static {v1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mplaySoundVibration(Lcom/android/server/notification/NotificationReminder;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v1, Lcom/android/server/notification/NotificationReminder$1;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    .line 70
    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p0, Lcom/android/server/notification/NotificationReminder$1;

    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 77
    .line 78
    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetReminderAlarm(Lcom/android/server/notification/NotificationReminder;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1$1;->this$1:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast p0, Lcom/android/server/notification/NotificationReminder$1;

    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 89
    .line 90
    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    monitor-exit v0

    .line 94
    return-void

    .line 95
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    throw p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
