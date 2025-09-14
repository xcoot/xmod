.class public final Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;
.super Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiHotplugEventListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceived(Landroid/hardware/hdmi/HdmiHotplugEvent;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->getPort()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiHotplugEvent;->isConnected()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/4 v2, 0x1

    .line 60
    xor-int/2addr p1, v2

    .line 61
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p0, v2, p1, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 71
    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method
