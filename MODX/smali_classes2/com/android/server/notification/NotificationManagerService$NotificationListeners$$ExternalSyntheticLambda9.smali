.class public final synthetic Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->f$2:I

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
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 9
    .line 10
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->f$2:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 16
    .line 17
    check-cast v2, Landroid/service/notification/INotificationListener;

    .line 18
    .line 19
    :try_start_0
    invoke-interface {v2, p0}, Landroid/service/notification/INotificationListener;->onInterruptionFilterChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string/jumbo v3, "unable to notify listener (interruption filter): "

    .line 27
    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 48
    .line 49
    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda9;->f$2:I

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 55
    .line 56
    check-cast v2, Landroid/service/notification/INotificationListener;

    .line 57
    .line 58
    :try_start_1
    invoke-interface {v2, p0}, Landroid/service/notification/INotificationListener;->onListenerHintsChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_1
    move-exception p0

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v3, "unable to notify listener (listener hints): "

    .line 66
    .line 67
    .line 68
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
