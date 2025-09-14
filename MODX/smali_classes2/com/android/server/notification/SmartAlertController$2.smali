.class public final Lcom/android/server/notification/SmartAlertController$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/SmartAlertController;

.field public final synthetic val$notiList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput-boolean v3, v2, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    move v4, v3

    .line 20
    :goto_0
    if-ge v4, v2, :cond_2

    .line 21
    .line 22
    iget-object v5, p0, Lcom/android/server/notification/SmartAlertController$2;->val$notiList:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 29
    .line 30
    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    if-eqz v6, :cond_1

    .line 37
    .line 38
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    iget v6, v6, Landroid/app/Notification;->semMissedCount:I

    .line 43
    .line 44
    if-lez v6, :cond_1

    .line 45
    .line 46
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    if-eqz v6, :cond_0

    .line 55
    .line 56
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    if-eqz v6, :cond_1

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    invoke-virtual {v6}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    if-nez v6, :cond_1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :catchall_0
    move-exception p0

    .line 82
    goto :goto_3

    .line 83
    :cond_0
    :goto_1
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-ne v0, v5, :cond_1

    .line 88
    .line 89
    const-string v0, "SmartAlertController"

    .line 90
    .line 91
    const-string v2, "SmartAlert - Found Missed Event"

    .line 92
    .line 93
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 97
    .line 98
    const/4 v2, 0x1

    .line 99
    iput-boolean v2, v0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 106
    .line 107
    iget-boolean v2, v0, Lcom/android/server/notification/SmartAlertController;->mScreenOn:Z

    .line 108
    .line 109
    if-nez v2, :cond_3

    .line 110
    .line 111
    iget-boolean v2, v0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    new-instance v2, Lcom/android/server/notification/SmartAlertController$3;

    .line 116
    .line 117
    invoke-direct {v2, v0}, Lcom/android/server/notification/SmartAlertController$3;-><init>(Lcom/android/server/notification/SmartAlertController;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 121
    .line 122
    .line 123
    :cond_3
    iget-object p0, p0, Lcom/android/server/notification/SmartAlertController$2;->this$0:Lcom/android/server/notification/SmartAlertController;

    .line 124
    .line 125
    iget-boolean v0, p0, Lcom/android/server/notification/SmartAlertController;->mMissedEventExist:Z

    .line 126
    .line 127
    if-nez v0, :cond_4

    .line 128
    .line 129
    invoke-virtual {p0, v3}, Lcom/android/server/notification/SmartAlertController;->unregisterListener(Z)V

    .line 130
    .line 131
    .line 132
    :cond_4
    monitor-exit v1

    .line 133
    return-void

    .line 134
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    throw p0
.end method
