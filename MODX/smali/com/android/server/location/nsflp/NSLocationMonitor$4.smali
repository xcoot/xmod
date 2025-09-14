.class public final Lcom/android/server/location/nsflp/NSLocationMonitor$4;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;


# direct methods
.method public static synthetic $r8$lambda$UqTBjMb3xqJQs7mYPjsLobcSlD8(Lcom/android/server/location/nsflp/NSLocationMonitor$4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNotificationListener:Lcom/android/server/location/nsflp/NSLocationMonitor$4;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 8
    iget-boolean v1, v1, Lcom/android/server/location/nsflp/NSLocationMonitor;->mRegisteredNotificationListener:Z

    .line 10
    if-nez v1, :cond_0

    .line 12
    const-string p0, "NSLocationMonitor"

    .line 14
    const-string v1, "Notification listener is disconnected so do not set the trim"

    .line 16
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p0, v1}, Landroid/service/notification/NotificationListenerService;->setOnNotificationPostedTrim(I)V

    .line 27
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const-string v0, "NSLocationMonitor"

    .line 33
    const-string/jumbo v1, "onListenerConnected for NotificationListener"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 41
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mForegroundNotificationList:Ljava/util/Map;

    .line 43
    check-cast v0, Ljava/util/HashMap;

    .line 45
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 48
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 50
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 52
    sget-object v0, Landroid/location/LocationConstants$STATE_TYPE;->NOTIFICATION_LISTENER_CONNECTED:Landroid/location/LocationConstants$STATE_TYPE;

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    .line 58
    :goto_0
    return-void

    .line 59
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/location/nsflp/NSLocationMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 3
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda1;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor$4;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda1;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor$4;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor$4;Landroid/service/notification/StatusBarNotification;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/nsflp/NSLocationMonitor$4;->this$0:Lcom/android/server/location/nsflp/NSLocationMonitor;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/nsflp/NSLocationMonitor;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/nsflp/NSLocationMonitor$4;Landroid/service/notification/StatusBarNotification;I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method
