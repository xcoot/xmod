.class public final Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public condition:I

.field public final mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 5
    .line 6
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    .line 22
    .line 23
    iput p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    .line 24
    .line 25
    iput p5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    .line 26
    .line 27
    iput p6, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    sget-boolean p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 37
    .line 38
    const-string p0, "EdgeLightingClientManager"

    .line 39
    .line 40
    const-string p1, "EdgeLightingHost : linkToDeath error"

    .line 41
    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 2
    .line 3
    const-string v0, "EdgeLightingClientManager"

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "binderDied : component = "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    .line 31
    .line 32
    monitor-enter v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    .line 36
    .line 37
    check-cast v1, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 44
    .line 45
    iget-object v2, v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    .line 46
    .line 47
    check-cast v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 50
    .line 51
    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    .line 57
    .line 58
    check-cast v1, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->stopEdgeLighting()V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_1

    .line 76
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 78
    .line 79
    const/4 v1, 0x0

    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 84
    .line 85
    iget-object v1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 86
    .line 87
    monitor-enter v1

    .line 88
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 89
    .line 90
    iget-object v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 100
    .line 101
    .line 102
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "binderDied."

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    .line 118
    .line 119
    iget-boolean v0, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    .line 120
    .line 121
    if-nez v0, :cond_1

    .line 122
    .line 123
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    .line 125
    .line 126
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 131
    .line 132
    new-instance v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;

    .line 133
    .line 134
    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$2;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-wide/16 v3, 0x3e8

    .line 138
    .line 139
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :catchall_1
    move-exception p0

    .line 144
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 145
    throw p0

    .line 146
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    throw p0
.end method

.method public final onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 2
    .line 3
    const-string v1, "EdgeLightingClientManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v2, "onStartEdgeLighting pkg = "

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", info = "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ", reason = "

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p3, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    const-string/jumbo p0, "onStartEdgeLighting : token is null"

    .line 45
    .line 46
    .line 47
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 52
    .line 53
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p1, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mPackageName:Ljava/lang/String;

    .line 59
    .line 60
    iput-object p2, v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost$HostLightingInfo;->mInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 61
    .line 62
    const/4 p1, 0x1

    .line 63
    const/4 p2, 0x0

    .line 64
    invoke-virtual {p0, p1, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onStopEdgeLighting(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 2
    .line 3
    const-string v1, "EdgeLightingClientManager"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v2, "onStopEdgeLighting pkg = "

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ", reason = "

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    .line 40
    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const-string/jumbo p0, "onStopEdgeLighting : token is null"

    .line 44
    .line 45
    .line 46
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    .line 51
    .line 52
    const/4 v0, 0x2

    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "  [Host: component:("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->component:Landroid/content/ComponentName;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ") condition:("

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ") pid:("

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->pid:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ") uid:("

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->uid:I

    .line 43
    .line 44
    const-string v1, ")]"

    .line 45
    .line 46
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method
