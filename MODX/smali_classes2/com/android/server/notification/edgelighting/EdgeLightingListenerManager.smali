.class public final Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mListeners:Ljava/util/ArrayList;

.field public final mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mLooper:Landroid/os/Looper;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final startEdgeLighting()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-boolean v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    .line 38
    .line 39
    if-nez v3, :cond_1

    .line 40
    .line 41
    iput-boolean v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    .line 42
    .line 43
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 44
    .line 45
    const-string v4, "EdgeLightingListenerManager"

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    sget-boolean v3, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    .line 50
    .line 51
    if-eqz v3, :cond_3

    .line 52
    .line 53
    :cond_2
    const-string/jumbo v3, "onEdgeLightingStarted"

    .line 54
    .line 55
    .line 56
    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :cond_3
    iget-object v3, v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    .line 60
    .line 61
    if-nez v3, :cond_4

    .line 62
    .line 63
    const-string/jumbo v1, "onEdgeLightingStarted : token is null"

    .line 64
    .line 65
    .line 66
    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_5
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p0
.end method

.method public final stopEdgeLighting()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-ge v1, v2, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_5

    .line 28
    .line 29
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-boolean v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    .line 38
    .line 39
    if-eqz v2, :cond_1

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    iput-boolean v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    .line 43
    .line 44
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 45
    .line 46
    const-string v3, "EdgeLightingListenerManager"

    .line 47
    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    :cond_2
    const-string/jumbo v2, "onEdgeLightingStopped"

    .line 55
    .line 56
    .line 57
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v2, v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    .line 61
    .line 62
    if-nez v2, :cond_4

    .line 63
    .line 64
    const-string/jumbo v1, "onEdgeLightingStopped : token is null"

    .line 65
    .line 66
    .line 67
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    .line 72
    .line 73
    const/4 v2, 0x2

    .line 74
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    monitor-exit v0

    .line 79
    return-void

    .line 80
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p0
.end method

.method public final unregister(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo v0, "unregister : pkg = "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    sget-boolean v2, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->DEBUG:Z

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    :goto_0
    const-string v2, "EdgeLightingListenerManager"

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", mListeners = "

    .line 29
    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v2, 0x0

    .line 56
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_3

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    .line 67
    .line 68
    if-eqz v3, :cond_2

    .line 69
    .line 70
    iget-object v4, v3, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    .line 71
    .line 72
    invoke-interface {p1, v4}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    move-object v2, v3

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    if-nez v2, :cond_4

    .line 81
    .line 82
    const-string p0, "EdgeLightingListenerManager"

    .line 83
    .line 84
    const-string/jumbo p1, "unregister : cannot find the matched host"

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    monitor-exit v1

    .line 91
    return-void

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->mListeners:Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    const-string v0, "UR listener"

    .line 110
    .line 111
    invoke-virtual {p0, p2, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    const/4 p0, 0x0

    .line 115
    invoke-interface {p1, v2, p0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 116
    .line 117
    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 120
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    throw p0
.end method
