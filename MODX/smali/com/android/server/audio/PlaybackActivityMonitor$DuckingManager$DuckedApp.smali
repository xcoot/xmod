.class public final Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDuckedPlayers:Ljava/util/ArrayList;

.field public final mUid:I

.field public final mUseStrongDuck:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    .line 11
    iput p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    .line 13
    iput-boolean p2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUseStrongDuck:Z

    .line 15
    return-void
.end method


# virtual methods
.method public final addDuck(Landroid/media/AudioPlaybackConfiguration;Z)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/Integer;

    .line 3
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    move-result v1

    .line 14
    iget-object v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 19
    move-result v2

    .line 20
    const-string v3, "AS.PlaybackActivityMon"

    .line 22
    if-eqz v2, :cond_0

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 26
    const-string/jumbo p1, "player piid:"

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    const-string p1, " already ducked"

    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void

    .line 48
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUseStrongDuck:Z

    .line 50
    if-eqz v2, :cond_1

    .line 52
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->STRONG_DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sget-object v2, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_VSHAPE:Landroid/media/VolumeShaper$Configuration;

    .line 57
    :goto_0
    if-eqz p2, :cond_2

    .line 59
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 61
    :goto_1
    move-object v10, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    sget-object v4, Lcom/android/server/audio/PlaybackActivityMonitor;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 65
    goto :goto_1

    .line 66
    :goto_2
    sget-object v11, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 68
    new-instance v12, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;

    .line 70
    iget-boolean v7, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUseStrongDuck:Z

    .line 72
    move-object v4, v12

    .line 73
    move-object v5, p1

    .line 74
    move v6, p2

    .line 75
    move-object v8, v2

    .line 76
    move-object v9, v10

    .line 77
    invoke-direct/range {v4 .. v9}, Lcom/android/server/audio/PlaybackActivityMonitor$DuckEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;ZZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    .line 80
    const/4 p2, 0x0

    .line 81
    invoke-virtual {v12, p2, v3}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 84
    invoke-virtual {v11, v12}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 87
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1, v2, v10}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V

    .line 94
    iget-object p1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_3

    .line 100
    :catch_0
    move-exception p1

    .line 101
    const-string p2, "Error ducking player piid:"

    .line 103
    const-string v0, " uid:"

    .line 105
    invoke-static {v1, p2, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    move-result-object p2

    .line 109
    iget p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    .line 111
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    invoke-static {v3, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    :goto_3
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "\t uid:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, " piids:"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 46
    move-result v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    const-string v2, " "

    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string p0, ""

    .line 67
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public final removeUnduckAll(Ljava/util/HashMap;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v2

    .line 23
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/media/AudioPlaybackConfiguration;

    .line 29
    iget v3, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUid:I

    .line 31
    const-string v4, "Error unducking player piid:"

    .line 33
    const-string v5, "AS.PlaybackActivityMon"

    .line 35
    if-eqz v1, :cond_1

    .line 37
    :try_start_0
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 39
    new-instance v7, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 41
    new-instance v8, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string/jumbo v9, "unducking piid:"

    .line 49
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v8

    .line 59
    invoke-direct {v7, v8}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 62
    const/4 v8, 0x0

    .line 63
    invoke-virtual {v7, v8, v5}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 66
    invoke-virtual {v6, v7}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 69
    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 72
    move-result-object v1

    .line 73
    iget-boolean v6, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mUseStrongDuck:Z

    .line 75
    if-eqz v6, :cond_0

    .line 77
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->STRONG_DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    .line 79
    goto :goto_1

    .line 80
    :cond_0
    sget-object v6, Lcom/android/server/audio/PlaybackActivityMonitor;->DUCK_ID:Landroid/media/VolumeShaper$Configuration;

    .line 82
    :goto_1
    sget-object v7, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 84
    invoke-virtual {v1, v6, v7}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    const-string v6, " uid:"

    .line 91
    invoke-static {v2, v3, v4, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v2, ", player not found for uid "

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    goto :goto_0

    .line 123
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/PlaybackActivityMonitor$DuckingManager$DuckedApp;->mDuckedPlayers:Ljava/util/ArrayList;

    .line 125
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 128
    return-void
.end method
