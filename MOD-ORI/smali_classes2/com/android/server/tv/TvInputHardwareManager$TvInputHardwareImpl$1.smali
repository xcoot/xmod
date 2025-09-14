.class public final Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/media/AudioManager$OnAudioPortUpdateListener;


# instance fields
.field public final synthetic this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAudioPortListUpdate([Landroid/media/AudioPort;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 9
    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final onServiceDied()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    .line 12
    .line 13
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 19
    .line 20
    iget-object v3, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 27
    .line 28
    invoke-static {v3}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;->this$1:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method
