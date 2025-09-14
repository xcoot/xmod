.class public final synthetic Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final synthetic f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda7;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$$ExternalSyntheticLambda7;->f$2:Z

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 11
    .line 12
    check-cast v2, Landroid/service/notification/INotificationListener;

    .line 13
    .line 14
    :try_start_0
    invoke-interface {v2, p0}, Landroid/service/notification/INotificationListener;->onStatusBarIconsBehaviorChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v3, "unable to notify listener (hideSilentStatusIcons): "

    .line 22
    .line 23
    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
