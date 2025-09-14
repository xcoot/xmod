.class public final Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;
.super Landroid/media/ISpatializerHeadTrackingCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 3
    invoke-direct {p0}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onHeadToSoundStagePoseUpdated([F)V
    .locals 5

    .line 1
    const-string v0, "AS.SpatializerHelper"

    .line 3
    if-nez p1, :cond_0

    .line 5
    const-string p0, "SpatializerHeadTrackingCallback.onHeadToStagePoseUpdatednull transform"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    return-void

    .line 11
    :cond_0
    array-length v1, p1

    .line 12
    const/4 v2, 0x6

    .line 13
    if-eq v1, v2, :cond_1

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "SpatializerHeadTrackingCallback.onHeadToStagePoseUpdated invalid transform length"

    .line 19
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    array-length p1, p1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 36
    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    .line 38
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-ge v2, v1, :cond_2

    .line 45
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    .line 47
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Landroid/media/ISpatializerHeadToSoundStagePoseCallback;

    .line 53
    invoke-interface {v3, p1}, Landroid/media/ISpatializerHeadToSoundStagePoseCallback;->dispatchPoseChanged([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v3

    .line 58
    const-string v4, "Error in dispatchPoseChanged"

    .line 60
    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadPoseCallbacks:Landroid/os/RemoteCallbackList;

    .line 68
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 71
    return-void
.end method

.method public final onHeadTrackingModeChanged(B)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 4
    iget v1, v0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 6
    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->headTrackingModeTypeToSpatializerInt(B)I

    .line 9
    move-result p1

    .line 10
    iput p1, v0, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 12
    iget-object p1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 14
    iget p1, p1, Lcom/android/server/audio/SpatializerHelper;->mActualHeadTrackingMode:I

    .line 16
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "SpatializerHeadTrackingCallback.onHeadTrackingModeChanged mode:"

    .line 21
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Landroid/media/Spatializer;->headtrackingModeToString(I)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->loglogi(Ljava/lang/String;)V

    .line 38
    if-eq v1, p1, :cond_1

    .line 40
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    .line 42
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 44
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 47
    move-result v0

    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_0
    if-ge v1, v0, :cond_0

    .line 51
    :try_start_1
    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 53
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/media/ISpatializerHeadTrackingModeCallback;

    .line 59
    invoke-interface {v2, p1}, Landroid/media/ISpatializerHeadTrackingModeCallback;->dispatchSpatializerActualHeadTrackingModeChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    const-string v4, "Error in dispatchSpatializerActualHeadTrackingModeChanged("

    .line 68
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v4, ")"

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    const-string v4, "AS.SpatializerHelper"

    .line 85
    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/server/audio/SpatializerHelper;->mHeadTrackingModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 93
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 96
    :cond_1
    return-void

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p1
.end method
