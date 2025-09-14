.class public final synthetic Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/function/BiConsumer;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/service/notification/INotificationListener;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast p0, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 17
    .line 18
    invoke-interface {v0, v1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 38
    .line 39
    check-cast v2, Landroid/service/notification/INotificationListener;

    .line 40
    .line 41
    :try_start_0
    invoke-interface {v2, p0}, Landroid/service/notification/INotificationListener;->onNotificationsSeen(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    move-exception p0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string/jumbo v3, "unable to notify assistant (seen): "

    .line 49
    .line 50
    .line 51
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void

    .line 67
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$1:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda8;->f$2:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, Landroid/service/notification/NotificationRankingUpdate;

    .line 78
    .line 79
    const-string/jumbo v2, "unable to notify listener (ranking update): "

    .line 80
    .line 81
    .line 82
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 85
    .line 86
    check-cast v3, Landroid/service/notification/INotificationListener;

    .line 87
    .line 88
    :try_start_1
    invoke-interface {v3, p0}, Landroid/service/notification/INotificationListener;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catch_1
    move-exception p0

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_2
    move-exception p0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .line 124
    .line 125
    :goto_1
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
