.class public final Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnctype:I

.field public mProgress:I

.field public mStop:Z

.field public notification_builder:Landroid/app/Notification$Builder;

.field public final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 9
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    .line 11
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    .line 13
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 16
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const-string v0, ": \u202a"

    .line 3
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 5
    iget-object v1, v1, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    .line 10
    const v3, 0x1040d43

    .line 13
    const/4 v4, 0x1

    .line 14
    if-ne v2, v4, :cond_0

    .line 16
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v2

    .line 22
    const v5, 0x1040d44

    .line 25
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object v5

    .line 35
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 38
    move-result-object v5

    .line 39
    const v6, 0x1080335

    .line 42
    :goto_0
    move-object v12, v2

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto/16 :goto_3

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object v2

    .line 53
    const v5, 0x1040d40

    .line 56
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v5

    .line 66
    const v6, 0x1040d3f

    .line 69
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    const v6, 0x10802d9

    .line 76
    goto :goto_0

    .line 77
    :goto_1
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 79
    if-nez v2, :cond_1

    .line 81
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 83
    const/4 v8, 0x0

    .line 84
    move v9, v6

    .line 85
    move-object v10, v5

    .line 86
    move-object v11, v12

    .line 87
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 90
    move-result-object v2

    .line 91
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 95
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 98
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 100
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 103
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 105
    iget v4, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    .line 107
    const/4 v6, 0x0

    .line 108
    const/16 v7, 0x64

    .line 110
    invoke-virtual {v2, v7, v4, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 113
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    .line 128
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v0, "%"

    .line 133
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 143
    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 145
    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 149
    const-string/jumbo v2, "notification"

    .line 152
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Landroid/app/NotificationManager;

    .line 158
    new-instance v2, Landroid/app/NotificationChannel;

    .line 160
    const-string/jumbo v4, "sdcard_encryption_channel"

    .line 163
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 172
    move-result-object v3

    .line 173
    const/4 v5, 0x2

    .line 174
    invoke-direct {v2, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 180
    sget v2, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 182
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 184
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 191
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    .line 193
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 195
    const-wide/16 v2, 0x1f4

    .line 197
    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 200
    goto :goto_2

    .line 201
    :cond_2
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 204
    :goto_2
    monitor-exit v1

    .line 205
    return-void

    .line 206
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    throw p0
.end method
