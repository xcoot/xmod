.class public final Lcom/android/server/audio/FadeOutManager$FadedOutApp;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

.field public static final PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;


# instance fields
.field public final mFadedPlayers:Landroid/util/SparseArray;

.field public final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    .line 3
    sget-object v1, Landroid/media/VolumeShaper$Operation;->PLAY:Landroid/media/VolumeShaper$Operation;

    .line 5
    invoke-direct {v0, v1}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 8
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->createIfNeeded()Landroid/media/VolumeShaper$Operation$Builder;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 18
    new-instance v1, Landroid/media/VolumeShaper$Operation$Builder;

    .line 20
    invoke-direct {v1, v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>(Landroid/media/VolumeShaper$Operation;)V

    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    .line 25
    invoke-virtual {v1, v0}, Landroid/media/VolumeShaper$Operation$Builder;->setXOffset(F)Landroid/media/VolumeShaper$Operation$Builder;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 35
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 11
    iput p1, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mUid:I

    .line 13
    return-void
.end method

.method public static logFadeEvent(Landroid/media/AudioPlaybackConfiguration;ILandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;ZLjava/lang/String;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "fading out"

    .line 4
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const-string v2, "AS.FadeOutManager"

    .line 11
    if-eqz v0, :cond_0

    .line 13
    sget-object p1, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 15
    new-instance p5, Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;

    .line 17
    const/4 v8, 0x1

    .line 18
    move-object v3, p5

    .line 19
    move-object v4, p0

    .line 20
    move v5, p4

    .line 21
    move-object v6, p2

    .line 22
    move-object v7, p3

    .line 23
    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;I)V

    .line 26
    invoke-virtual {p5, v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 29
    invoke-virtual {p1, p5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 32
    return-void

    .line 33
    :cond_0
    const-string/jumbo v0, "fading in"

    .line 36
    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    sget-object p1, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 44
    new-instance p5, Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;

    .line 46
    const/4 v8, 0x0

    .line 47
    move-object v3, p5

    .line 48
    move-object v4, p0

    .line 49
    move v5, p4

    .line 50
    move-object v6, p2

    .line 51
    move-object v7, p3

    .line 52
    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/PlaybackActivityMonitor$FadeInEvent;-><init>(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;I)V

    .line 55
    invoke-virtual {p5, v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 58
    invoke-virtual {p1, p5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 61
    return-void

    .line 62
    :cond_1
    sget-object p0, Lcom/android/server/audio/PlaybackActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 64
    new-instance p2, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 66
    const-string p3, " piid:"

    .line 68
    invoke-static {p1, p5, p3}, Lcom/android/server/VpnManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p2, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2, v1, v2}, Lcom/android/server/utils/EventLogger$Event;->printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 81
    return-void
.end method


# virtual methods
.method public final addFade(Landroid/media/AudioPlaybackConfiguration;ZLandroid/media/VolumeShaper$Configuration;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 4
    move-result v7

    .line 5
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 10
    move-result v0

    .line 11
    const-string v1, "AS.FadeOutManager"

    .line 13
    if-ltz v0, :cond_0

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    const-string/jumbo p1, "player piid:"

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string p1, " already faded out"

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 45
    if-eqz p2, :cond_1

    .line 47
    sget-object v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->PLAY_SKIP_RAMP:Landroid/media/VolumeShaper$Operation;

    .line 49
    :goto_0
    move-object v4, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    sget-object v0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->PLAY_CREATE_IF_NEEDED:Landroid/media/VolumeShaper$Operation;

    .line 53
    goto :goto_0

    .line 54
    :goto_1
    const-string/jumbo v6, "fading out"

    .line 57
    move-object v0, p0

    .line 58
    move-object v1, p1

    .line 59
    move v2, v7

    .line 60
    move-object v3, p3

    .line 61
    move v5, p2

    .line 62
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->applyVolumeShaperInternal(Landroid/media/AudioPlaybackConfiguration;ILandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;ZLjava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {p0, v7, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const-string p1, "Error fading out player piid:"

    .line 73
    const-string p2, ", player not found for uid "

    .line 75
    invoke-static {v7, p1, p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    move-result-object p1

    .line 79
    iget p0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mUid:I

    .line 81
    invoke-static {p1, p0, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 84
    :goto_2
    return-void
.end method

.method public final applyVolumeShaperInternal(Landroid/media/AudioPlaybackConfiguration;ILandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;ZLjava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 3
    invoke-virtual {p4, v0}, Landroid/media/VolumeShaper$Operation;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/media/VolumeShaper$Configuration;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, p3

    .line 19
    :goto_0
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->logFadeEvent(Landroid/media/AudioPlaybackConfiguration;ILandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;ZLjava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, v0, p4}, Landroid/media/PlayerProxy;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    const-string p3, "Error "

    .line 33
    const-string p4, " piid:"

    .line 35
    const-string p5, " uid:"

    .line 37
    invoke-static {p2, p3, p6, p4, p5}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    move-result-object p2

    .line 41
    iget p0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mUid:I

    .line 43
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    const-string p2, "AS.FadeOutManager"

    .line 52
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :goto_1
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
    iget v1, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mUid:I

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
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 31
    move-result v1

    .line 32
    if-ge v0, v1, :cond_0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    const-string/jumbo v2, "piid: "

    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, " Volume shaper: "

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v2, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 58
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const-string p0, ""

    .line 77
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public final fadeInPlayer(Landroid/media/AudioPlaybackConfiguration;Landroid/media/VolumeShaper$Configuration;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    .line 4
    move-result v2

    .line 5
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 7
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contains(I)Z

    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mUid:I

    .line 13
    const-string v3, "AS.FadeOutManager"

    .line 15
    if-nez v0, :cond_0

    .line 17
    const-string p0, "Player (piid: "

    .line 19
    const-string p1, ") for uid ("

    .line 21
    const-string p2, ") is not faded out, no need to fade in"

    .line 23
    invoke-static {v2, v1, p0, p1, p2}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 27
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void

    .line 31
    :cond_0
    sget-object v0, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 33
    if-eqz p2, :cond_1

    .line 35
    new-instance v0, Landroid/media/VolumeShaper$Operation$Builder;

    .line 37
    invoke-direct {v0}, Landroid/media/VolumeShaper$Operation$Builder;-><init>()V

    .line 40
    iget-object v4, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v4

    .line 46
    check-cast v4, Landroid/media/VolumeShaper$Configuration;

    .line 48
    invoke-virtual {v4}, Landroid/media/VolumeShaper$Configuration;->getId()I

    .line 51
    move-result v4

    .line 52
    const/4 v5, 0x1

    .line 53
    invoke-virtual {v0, v4, v5}, Landroid/media/VolumeShaper$Operation$Builder;->replace(IZ)Landroid/media/VolumeShaper$Operation$Builder;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/media/VolumeShaper$Operation$Builder;->build()Landroid/media/VolumeShaper$Operation;

    .line 60
    move-result-object v0

    .line 61
    :cond_1
    move-object v4, v0

    .line 62
    iget-object v0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 64
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 67
    invoke-virtual {p1}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 73
    const/4 v5, 0x0

    .line 74
    const-string/jumbo v6, "fading in"

    .line 77
    move-object v0, p0

    .line 78
    move-object v1, p1

    .line 79
    move-object v3, p2

    .line 80
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->applyVolumeShaperInternal(Landroid/media/AudioPlaybackConfiguration;ILandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;ZLjava/lang/String;)V

    .line 83
    goto :goto_0

    .line 84
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 86
    const-string p1, "Error fading in player piid:"

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string p1, ", player not found for uid "

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    invoke-static {v3, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :goto_0
    return-void
.end method

.method public final removeUnfadeAll(Ljava/util/Map;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    move-result v4

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    move-object v3, v1

    .line 25
    check-cast v3, Landroid/media/AudioPlaybackConfiguration;

    .line 27
    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v3}, Landroid/media/AudioPlaybackConfiguration;->getPlayerProxy()Landroid/media/PlayerProxy;

    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 35
    sget-object v6, Landroid/media/VolumeShaper$Operation;->REVERSE:Landroid/media/VolumeShaper$Operation;

    .line 37
    const-string/jumbo v8, "fading in"

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v7, 0x0

    .line 42
    move-object v2, p0

    .line 43
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->applyVolumeShaperInternal(Landroid/media/AudioPlaybackConfiguration;ILandroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;ZLjava/lang/String;)V

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const-string v1, "Error unfading out player piid:"

    .line 49
    const-string v2, ", player not found for uid "

    .line 51
    invoke-static {v4, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    move-result-object v1

    .line 55
    iget v2, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mUid:I

    .line 57
    const-string v3, "AS.FadeOutManager"

    .line 59
    invoke-static {v1, v2, v3}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 62
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/FadeOutManager$FadedOutApp;->mFadedPlayers:Landroid/util/SparseArray;

    .line 67
    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 70
    return-void
.end method
