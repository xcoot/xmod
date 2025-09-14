.class public final Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;
.super Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStatusChanged(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    iget-object v2, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    .line 35
    .line 36
    .line 37
    monitor-exit v2

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    throw p0

    .line 42
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_1
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    monitor-exit p1

    .line 48
    return-void

    .line 49
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    throw p0
.end method
