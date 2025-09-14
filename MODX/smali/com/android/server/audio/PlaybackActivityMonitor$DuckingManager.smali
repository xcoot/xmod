.class public final Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDuckers:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized checkDuck(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 4

    .line 1
    const-string v0, "DuckingManager: checkDuck() player piid:"

    .line 3
    const-string v1, "DuckingManager: checkDuck() player piid:"

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    const-string v2, "AS.PlaybackActivityMon"

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, " uid:"

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 28
    move-result v1

    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 41
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-nez v1, :cond_0

    .line 57
    monitor-exit p0

    .line 58
    return-void

    .line 59
    :cond_0
    :try_start_1
    const-string v2, "AS.PlaybackActivityMon"

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 68
    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v0, " )"

    .line 77
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    monitor-exit p0

    .line 95
    throw p1
.end method

.method public final declared-synchronized duckUid(ILjava/util/ArrayList;Z)V
    .locals 3

    .line 1
    const-string v0, "DuckingManager: duckUid() uid:"

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "AS.PlaybackActivityMon"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 41
    invoke-direct {v2, p1, p3}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;-><init>(IZ)V

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    :goto_0
    iget-object p3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;

    .line 62
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object p2

    .line 66
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result p3

    .line 70
    if-eqz p3, :cond_1

    .line 72
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object p3

    .line 76
    check-cast p3, Landroid/media/AudioPlaybackConfiguration;

    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, p3, v0}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :goto_2
    monitor-exit p0

    .line 86
    throw p1
.end method

.method public final declared-synchronized removeReleased(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 4

    .line 1
    const-string v0, "DuckingManager: removedReleased() player piid: "

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    .line 7
    move-result v1

    .line 8
    const-string v2, "AS.PlaybackActivityMon"

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 18
    move-result v0

    .line 19
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v0, " uid:"

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-nez v0, :cond_0

    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    .line 55
    new-instance v1, Ljava/lang/Integer;

    .line 57
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 60
    move-result p1

    .line 61
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    monitor-exit p0

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    .line 71
    throw p1
.end method

.method public final declared-synchronized unduckUid(ILjava/util/HashMap;)V
    .locals 3

    .line 1
    const-string v0, "DuckingManager: unduckUid() uid:"

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    const-string v1, "AS.PlaybackActivityMon"

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager;->mDuckers:Ljava/util/HashMap;

    .line 23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-nez p1, :cond_0

    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->removeUnduckAll(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0

    .line 44
    throw p1
.end method
