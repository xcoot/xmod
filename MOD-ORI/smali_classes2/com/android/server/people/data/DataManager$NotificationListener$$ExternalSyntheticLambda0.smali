.class public final synthetic Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/people/data/DataManager$NotificationListener;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 11
    .line 12
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p1, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    invoke-direct {v2, v3}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/util/Set;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    monitor-exit v0

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0

    .line 49
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/people/data/DataManager$NotificationListener;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 52
    .line 53
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 54
    .line 55
    check-cast p1, Lcom/android/server/people/data/ConversationInfo;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    monitor-enter v0

    .line 69
    :try_start_1
    iget-object p1, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    .line 70
    .line 71
    new-instance v2, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    invoke-direct {v2, v3}, Lcom/android/server/people/data/DataManager$NotificationListener$$ExternalSyntheticLambda2;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/util/Set;

    .line 82
    .line 83
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_0

    .line 95
    .line 96
    iget-object p1, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->mActiveNotifKeys:Ljava/util/Map;

    .line 97
    .line 98
    check-cast p1, Landroid/util/ArrayMap;

    .line 99
    .line 100
    invoke-virtual {p1, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget-object p0, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->this$0:Lcom/android/server/people/data/DataManager;

    .line 104
    .line 105
    iget p1, v0, Lcom/android/server/people/data/DataManager$NotificationListener;->mUserId:I

    .line 106
    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/DataManager;->cleanupCachedShortcuts(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :catchall_1
    move-exception p0

    .line 112
    goto :goto_1

    .line 113
    :cond_0
    :goto_0
    monitor-exit v0

    .line 114
    return-void

    .line 115
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    throw p0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
