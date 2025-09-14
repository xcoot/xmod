.class public final Lcom/android/server/notification/NotificationAttentionHelper$4;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationAttentionHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationAttentionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    const-string v0, "Failed playInCallNotification: "

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 8
    .line 9
    iget-object v3, v3, Lcom/android/server/notification/NotificationAttentionHelper;->mAudioManager:Landroid/media/AudioManager;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 18
    .line 19
    iget-object v3, v3, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    invoke-interface {v4, v3}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_4

    .line 29
    :catch_0
    move-exception p0

    .line 30
    goto :goto_2

    .line 31
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 32
    .line 33
    new-instance v5, Landroid/os/Binder;

    .line 34
    .line 35
    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v5, v3, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/notification/NotificationAttentionHelper$4;->this$0:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mCallNotificationToken:Landroid/os/Binder;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationUri:Landroid/net/Uri;

    .line 45
    .line 46
    iget-object v7, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 47
    .line 48
    iget v8, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mInCallNotificationVolume:F

    .line 49
    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-interface/range {v4 .. v9}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :goto_2
    :try_start_1
    const-string v3, "NotifAttentionHelper"

    .line 59
    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_3
    return-void

    .line 77
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    .line 79
    .line 80
    throw p0
.end method
