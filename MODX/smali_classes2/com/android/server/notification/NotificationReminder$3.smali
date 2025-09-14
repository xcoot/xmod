.class public final Lcom/android/server/notification/NotificationReminder$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;

.field public final synthetic val$record:Lcom/android/server/notification/NotificationRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationRecord;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/notification/NotificationReminder$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationReminder$3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "removeFromNotificationList record "

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    const-string v2, "NotificationReminder"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 40
    .line 41
    iget-object v2, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    .line 44
    .line 45
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v4, 0x0

    .line 59
    :goto_0
    if-ge v4, v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 66
    .line 67
    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 68
    .line 69
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    if-eqz v5, :cond_0

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 90
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 91
    .line 92
    iget-object v2, v2, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 98
    .line 99
    const/16 v0, 0x3e9

    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationReminder;->sendMessage(I)V

    .line 102
    .line 103
    .line 104
    monitor-exit v1

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    throw p0

    .line 109
    :pswitch_0
    const-string v0, "addNotificationRecord record "

    .line 110
    .line 111
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 112
    .line 113
    iget-object v1, v1, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 114
    .line 115
    monitor-enter v1

    .line 116
    :try_start_1
    const-string v2, "NotificationReminder"

    .line 117
    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 144
    .line 145
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$3;->val$record:Lcom/android/server/notification/NotificationRecord;

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$3;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 151
    .line 152
    const/16 v0, 0x3e8

    .line 153
    .line 154
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationReminder;->sendMessage(I)V

    .line 155
    .line 156
    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 159
    :catchall_1
    move-exception p0

    .line 160
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    throw p0

    .line 162
    nop

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
