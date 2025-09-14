.class Lcom/android/server/am/AppFGSTracker$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppFGSTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppFGSTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/AppFGSTracker$NotificationListener;->this$0:Lcom/android/server/am/AppFGSTracker;

    .line 3
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$NotificationListener;->this$0:Lcom/android/server/am/AppFGSTracker;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 8
    move-result p2

    .line 9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const/4 v1, 0x5

    .line 18
    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 25
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker$NotificationListener;->this$0:Lcom/android/server/am/AppFGSTracker;

    .line 3
    iget-object p0, p0, Lcom/android/server/am/AppFGSTracker;->mHandler:Lcom/android/server/am/AppFGSTracker$MyHandler;

    .line 5
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 8
    move-result p2

    .line 9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 12
    move-result p3

    .line 13
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    const/4 v0, 0x6

    .line 18
    invoke-virtual {p0, v0, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 25
    return-void
.end method
