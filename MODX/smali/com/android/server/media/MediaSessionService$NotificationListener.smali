.class public final Lcom/android/server/media/MediaSessionService$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final getLinkedMediaSessionRecord(ILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 3
    iget-object v0, v0, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 8
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForFgs:Ljava/util/Map;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object p1

    .line 14
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 17
    move-result-object v1

    .line 18
    check-cast p0, Ljava/util/HashMap;

    .line 20
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/Set;

    .line 26
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p0

    .line 30
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 42
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaSessionRecordImpl;->isLinkedToNotification(Landroid/app/Notification;)Z

    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_0

    .line 48
    monitor-exit v0

    .line 49
    return-object p1

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    monitor-exit v0

    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0

    .line 55
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 21
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 26
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mMediaNotifications:Ljava/util/Map;

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    new-instance v4, Ljava/util/HashSet;

    .line 34
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 37
    check-cast v2, Ljava/util/HashMap;

    .line 39
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 44
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mMediaNotifications:Ljava/util/Map;

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    move-result-object v3

    .line 50
    check-cast v2, Ljava/util/HashMap;

    .line 52
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/util/Set;

    .line 58
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 63
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mUserEngagedSessionsForFgs:Ljava/util/Map;

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 72
    move-result-object v3

    .line 73
    check-cast v2, Ljava/util/HashMap;

    .line 75
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Ljava/util/Set;

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object p1

    .line 85
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_2

    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lcom/android/server/media/MediaSessionRecordImpl;

    .line 97
    invoke-virtual {v2, v0}, Lcom/android/server/media/MediaSessionRecordImpl;->isLinkedToNotification(Landroid/app/Notification;)Z

    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_1

    .line 103
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaSessionService;->startFgsDelegateLocked(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 108
    monitor-exit v1

    .line 109
    return-void

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    monitor-exit v1

    .line 113
    return-void

    .line 114
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    throw p0
.end method

.method public final onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 4
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0}, Landroid/app/Notification;->isMediaNotification()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 21
    iget-object v1, v1, Lcom/android/server/media/MediaSessionService;->mLock:Ljava/lang/Object;

    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 26
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mMediaNotifications:Ljava/util/Map;

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    check-cast v2, Ljava/util/HashMap;

    .line 34
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/util/Set;

    .line 40
    if-eqz v2, :cond_1

    .line 42
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 51
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 53
    iget-object v2, v2, Lcom/android/server/media/MediaSessionService;->mMediaNotifications:Ljava/util/Map;

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v3

    .line 59
    check-cast v2, Ljava/util/HashMap;

    .line 61
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionService$NotificationListener;->getLinkedMediaSessionRecord(ILandroid/app/Notification;)Lcom/android/server/media/MediaSessionRecordImpl;

    .line 70
    move-result-object p1

    .line 71
    if-nez p1, :cond_2

    .line 73
    monitor-exit v1

    .line 74
    return-void

    .line 75
    :cond_2
    iget-object p0, p0, Lcom/android/server/media/MediaSessionService$NotificationListener;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionService;->stopFgsIfNoSessionIsLinkedToNotification(Lcom/android/server/media/MediaSessionRecordImpl;)V

    .line 80
    monitor-exit v1

    .line 81
    return-void

    .line 82
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    throw p0
.end method
