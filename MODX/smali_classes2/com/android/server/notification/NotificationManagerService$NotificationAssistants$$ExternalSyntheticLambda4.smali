.class public final synthetic Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;->f$2:Z

    .line 6
    .line 7
    check-cast p1, Landroid/service/notification/INotificationListener;

    .line 8
    .line 9
    check-cast p2, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-interface {p1, v1, p0}, Landroid/service/notification/INotificationListener;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V
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
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo v1, "unable to notify assistant (visible): "

    .line 22
    .line 23
    .line 24
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, v0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method
