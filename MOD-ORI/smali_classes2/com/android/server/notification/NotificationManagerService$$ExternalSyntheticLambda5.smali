.class public final synthetic Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public apply(I)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 4
    .line 5
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/16 v1, 0x8

    .line 19
    .line 20
    if-ne v0, v1, :cond_3

    .line 21
    .line 22
    and-int/lit8 v0, p1, 0x40

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const v0, 0x8000

    .line 27
    .line 28
    .line 29
    and-int/2addr v0, p1

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    :cond_1
    :goto_0
    move v2, v3

    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_1
    and-int/lit16 v0, p1, 0x1000

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    .line 40
    .line 41
    and-int/2addr p0, p1

    .line 42
    if-eqz p0, :cond_4

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    :goto_2
    return v2
.end method

.method public repost(ILcom/android/server/notification/NotificationRecord;Z)V
    .locals 11

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const-string p0, "NotificationService"

    .line 10
    .line 11
    const-string v1, "Reposting "

    .line 12
    .line 13
    :try_start_0
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, " "

    .line 32
    .line 33
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget v2, v1, Landroid/app/Notification;->semFlags:I

    .line 56
    .line 57
    and-int/lit16 v2, v2, -0x81

    .line 58
    .line 59
    iput v2, v1, Landroid/app/Notification;->semFlags:I

    .line 60
    .line 61
    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 68
    .line 69
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iget-object v4, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 80
    .line 81
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    iget-object v5, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 86
    .line 87
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    iget-object v6, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 92
    .line 93
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    iget-object p2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    const/4 v10, 0x0

    .line 104
    move v8, p1

    .line 105
    move v9, p3

    .line 106
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :goto_1
    const-string p2, "Cannot un-snooze notification"

    .line 111
    .line 112
    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void
.end method
