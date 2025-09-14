.class public final Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->mActiveNotiMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
