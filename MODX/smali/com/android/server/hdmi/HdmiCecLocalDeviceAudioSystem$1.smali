.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;
.super Landroid/media/tv/TvInputManager$TvInputCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 3
    invoke-direct {p0}, Landroid/media/tv/TvInputManager$TvInputCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onInputAdded(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 3
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->-$$Nest$maddOrUpdateTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public final onInputRemoved(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 11
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    monitor-exit v0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 29
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 32
    move-result v1

    .line 33
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mPortIdToTvInputs:Ljava/util/HashMap;

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->mTvInputsToDeviceInfo:Ljava/util/HashMap;

    .line 44
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    monitor-exit v0

    .line 48
    :goto_0
    return-void

    .line 49
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final onInputUpdated(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 3
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->-$$Nest$maddOrUpdateTvInput(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Ljava/lang/String;)V

    .line 6
    return-void
.end method
