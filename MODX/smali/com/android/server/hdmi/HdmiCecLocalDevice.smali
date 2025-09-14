.class public abstract Lcom/android/server/hdmi/HdmiCecLocalDevice;
.super Lcom/android/server/hdmi/HdmiLocalDevice;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field final mActions:Ljava/util/ArrayList;

.field public mActiveRoutingPath:I

.field public final mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

.field public mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

.field public final mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

.field public mLastKeyRepeatCount:I

.field public mLastKeycode:I

.field public mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

.field public mPreferredAddress:I

.field public mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 10
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 12
    const/16 p2, 0xa

    .line 14
    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 17
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveSourceHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 19
    new-instance p1, Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 21
    invoke-direct {p1}, Lcom/android/server/hdmi/HdmiCecMessageCache;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 33
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    .line 35
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 38
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    .line 40
    return-void
.end method

.method public static create(Lcom/android/server/hdmi/HdmiControlService;I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 3
    const/4 v0, 0x4

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 16
    return-object p1

    .line 17
    :cond_1
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 19
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 22
    invoke-static {}, Landroid/sysprop/HdmiProperties;->playback_device_action_on_routing_control()Ljava/util/Optional;

    .line 25
    move-result-object v0

    .line 26
    sget-object v1, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;->NONE:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 34
    iput-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mPlaybackDeviceActionOnRoutingControl:Landroid/sysprop/HdmiProperties$playback_device_action_on_routing_control_values;

    .line 36
    new-instance v0, Landroid/os/Handler;

    .line 38
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    iput-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/os/Handler;

    .line 51
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 56
    move-result-object v2

    .line 57
    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    iput-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/os/Handler;

    .line 64
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 67
    move-result-object v1

    .line 68
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    iput-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedPopupOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 75
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 78
    iput-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 80
    return-object p1

    .line 81
    :cond_2
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 83
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 86
    return-object p1
.end method

.method public static injectKeyEvent(IIIJ)V
    .locals 13

    .line 1
    const/4 v9, 0x0

    .line 2
    const/16 v10, 0x8

    .line 4
    const/4 v7, 0x0

    .line 5
    const/4 v8, -0x1

    .line 6
    const v11, 0x2000001

    .line 9
    const/4 v12, 0x0

    .line 10
    move-wide/from16 v0, p3

    .line 12
    move-wide/from16 v2, p3

    .line 14
    move v4, p0

    .line 15
    move v5, p1

    .line 16
    move v6, p2

    .line 17
    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 29
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 32
    return-void
.end method

.method public static isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 3
    const/16 v1, 0x44

    .line 5
    const/4 v2, 0x0

    .line 6
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 8
    if-ne p0, v1, :cond_1

    .line 10
    aget-byte p0, v0, v2

    .line 12
    const/16 v0, 0x6c

    .line 14
    if-eq p0, v0, :cond_0

    .line 16
    const/16 v0, 0x6b

    .line 18
    if-ne p0, v0, :cond_1

    .line 20
    :cond_0
    const/4 v2, 0x1

    .line 21
    :cond_1
    return v2
.end method

.method public static isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 3
    const/16 v1, 0x44

    .line 5
    const/4 v2, 0x0

    .line 6
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 8
    if-ne p0, v1, :cond_1

    .line 10
    aget-byte p0, v0, v2

    .line 12
    const/16 v0, 0x40

    .line 14
    if-eq p0, v0, :cond_0

    .line 16
    const/16 v0, 0x6d

    .line 18
    if-eq p0, v0, :cond_0

    .line 20
    const/16 v0, 0x6b

    .line 22
    if-ne p0, v0, :cond_1

    .line 24
    :cond_0
    const/4 v2, 0x1

    .line 25
    :cond_1
    return v2
.end method


# virtual methods
.method public final addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 14
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 16
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 18
    const/4 v2, 0x1

    .line 19
    if-ne v1, v2, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-boolean v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mAddressAllocated:Z

    .line 24
    if-nez v0, :cond_2

    .line 26
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    move-result-object v0

    .line 30
    const-class v1, Lcom/android/server/hdmi/ResendCecCommandAction;

    .line 32
    const-string v2, "HdmiCecLocalDevice"

    .line 34
    if-ne v0, v1, :cond_1

    .line 36
    const-string v0, "Not ready to start ResendCecCommandAction. This action is cancelled."

    .line 38
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 48
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 53
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 56
    return-void

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 59
    const-string v0, "Not ready to start action. Queued for deferred start:"

    .line 61
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()V

    .line 78
    return-void
.end method

.method public final assertRunOnServiceThread()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 9
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 12
    move-result-object p0

    .line 13
    if-ne v0, p0, :cond_0

    .line 15
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 18
    const-string v0, "Should run on service thread."

    .line 20
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0
.end method

.method public final buildAndSendSetOsdName(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 9
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;

    .line 21
    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;-><init>(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 24
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 32
    const-string v0, "Failed to build <Get Osd Name>:"

    .line 34
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 39
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    const-string p1, "HdmiCecLocalDevice"

    .line 52
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void
.end method

.method public canGoToStandby()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final checkIfPendingActionsCleared()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

    .line 16
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 19
    :cond_0
    return-void
.end method

.method public computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .locals 0

    .line 1
    sget-object p0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    .line 3
    return-object p0
.end method

.method public disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 2

    .line 1
    const-class p1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 6
    const-class p1, Lcom/android/server/hdmi/ActiveSourceAction;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 11
    const-class p1, Lcom/android/server/hdmi/ResendCecCommandAction;

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 16
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

    .line 18
    invoke-direct {p1, p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 21
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

    .line 23
    const/4 p1, 0x1

    .line 24
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    .line 26
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 29
    move-result-object p1

    .line 30
    const-wide/16 v0, 0x1388

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 35
    return-void
.end method

.method public dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 6
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 8
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 11
    move-result v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    const/16 v1, 0xf

    .line 16
    if-eq v0, v1, :cond_0

    .line 18
    const/4 p0, -0x2

    .line 19
    return p0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 22
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 25
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 27
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 29
    const/4 v2, 0x1

    .line 30
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 32
    if-ne v1, v2, :cond_2

    .line 34
    iget-boolean v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 36
    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 40
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 48
    if-eqz v1, :cond_1

    .line 50
    invoke-interface {v1, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 53
    move-result v0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 57
    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 60
    move-result v0

    .line 61
    :goto_0
    if-eqz v0, :cond_2

    .line 63
    const/4 p0, -0x1

    .line 64
    return p0

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessageCache;->CACHEABLE_OPCODES:Landroid/util/FastImmutableArraySet;

    .line 72
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Landroid/util/FastImmutableArraySet;->contains(Ljava/lang/Object;)Z

    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_3

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 85
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 87
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Landroid/util/SparseArray;

    .line 93
    if-nez v1, :cond_4

    .line 95
    new-instance v1, Landroid/util/SparseArray;

    .line 97
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 100
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 102
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    :cond_4
    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 111
    move-result p0

    .line 112
    return p0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "mDeviceType: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v1, "mPreferredAddress: "

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPreferredAddress:I

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string/jumbo v1, "mDeviceInfo: "

    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v1, "mActiveSource: "

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 71
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 85
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object p0

    .line 91
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 94
    move-result-object p0

    .line 95
    const-string/jumbo v0, "mActiveRoutingPath: 0x%04x"

    .line 98
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public findAudioReceiverAddress()I
    .locals 1

    .line 1
    const-string p0, "HdmiCecLocalDevice"

    .line 3
    const-string/jumbo v0, "findAudioReceiverAddress is not implemented"

    .line 6
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 p0, -0x1

    .line 10
    return p0
.end method

.method public abstract findKeyReceiverAddress()I
.end method

.method public getActions(Ljava/lang/Class;)Ljava/util/List;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 7
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_2

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object v0
.end method

.method public final getActivePath()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final getActivePortId()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    .line 8
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 10
    invoke-virtual {v1, p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 13
    move-result p0

    .line 14
    monitor-exit v0

    .line 15
    return p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 6
    monitor-exit v0

    .line 7
    return-object p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public abstract getPreferredAddress()I
.end method

.method public abstract getRcFeatures()Ljava/util/List;
.end method

.method public abstract getRcProfile()I
.end method

.method public abstract handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
.end method

.method public final handleDisableDeviceTimeout()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mPendingActionClearedCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$4;

    .line 32
    if-eqz v0, :cond_1

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 37
    :cond_1
    return-void
.end method

.method public handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    const-string v0, "Only TV can handle <Get Menu Language>:"

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const-string p1, "HdmiCecLocalDevice"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 p0, -0x2

    .line 28
    return p0
.end method

.method public handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleMenuStatus()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleRecordStatus()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleReportArcInitiate()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleReportArcTermination()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 3

    .line 1
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 3
    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    const-string v0, "Ignored while Device Discovery Action is in progress: "

    .line 15
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    const-string p1, "HdmiCecLocalDevice"

    .line 27
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 33
    iget-object v1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 35
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 45
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_1

    .line 57
    sget-object v2, Lcom/android/server/hdmi/HdmiUtils;->DEFAULT_NAMES:[Ljava/lang/String;

    .line 59
    aget-object v2, v2, v0

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const-string v2, ""

    .line 64
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 70
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 72
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 75
    move-result p0

    .line 76
    const/16 v1, 0x46

    .line 78
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 81
    move-result-object p0

    .line 82
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 86
    :cond_2
    return-void
.end method

.method public abstract handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
.end method

.method public handleRequestArcInitiate()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleRequestArcTermination()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public abstract handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)I
.end method

.method public handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleSetAudioVolumeLevel(Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    const-string v0, "Only Playback device can handle <Set Menu Language>:"

    .line 8
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    const-string p1, "HdmiCecLocalDevice"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 p0, -0x2

    .line 28
    return p0
.end method

.method public handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public abstract handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I
.end method

.method public handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 27
    const/4 p0, -0x1

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method public handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public abstract handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
.end method

.method public handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleTextViewOn()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleTimerStatus()I
    .locals 0

    .line 1
    const/4 p0, -0x2

    .line 2
    return p0
.end method

.method public handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 8
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 16
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    .line 19
    move-result v5

    .line 20
    const/4 v6, -0x1

    .line 21
    if-eqz v5, :cond_0

    .line 23
    invoke-static/range {p1 .. p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 26
    move-result v5

    .line 27
    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 32
    return v6

    .line 33
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_1

    .line 39
    invoke-static/range {p1 .. p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_1

    .line 45
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 48
    return v6

    .line 49
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 52
    move-result v5

    .line 53
    const/16 v7, 0x66

    .line 55
    const/16 v8, 0x65

    .line 57
    const/4 v9, 0x0

    .line 58
    if-nez v5, :cond_3

    .line 60
    iget-object v5, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 62
    const/16 v10, 0x44

    .line 64
    iget v11, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 66
    if-ne v11, v10, :cond_3

    .line 68
    aget-byte v5, v5, v9

    .line 70
    const/16 v10, 0x42

    .line 72
    if-eq v5, v10, :cond_2

    .line 74
    const/16 v10, 0x41

    .line 76
    if-eq v5, v10, :cond_2

    .line 78
    const/16 v10, 0x43

    .line 80
    if-eq v5, v10, :cond_2

    .line 82
    if-eq v5, v8, :cond_2

    .line 84
    if-ne v5, v7, :cond_3

    .line 86
    :cond_2
    const/4 v0, 0x4

    .line 87
    return v0

    .line 88
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOffOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_f

    .line 94
    invoke-static/range {p1 .. p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isPowerOnOrToggleCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 97
    move-result v5

    .line 98
    if-eqz v5, :cond_4

    .line 100
    goto/16 :goto_5

    .line 102
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 105
    move-result-wide v10

    .line 106
    move v5, v9

    .line 107
    :goto_0
    sget-object v12, Lcom/android/server/hdmi/HdmiCecKeycode;->KEYCODE_ENTRIES:[Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;

    .line 109
    array-length v13, v12

    .line 110
    iget-object v14, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 112
    if-ge v5, v13, :cond_8

    .line 114
    aget-object v12, v12, v5

    .line 116
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    array-length v13, v14

    .line 120
    iget-object v15, v12, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    .line 122
    array-length v7, v15

    .line 123
    if-ge v13, v7, :cond_6

    .line 125
    :cond_5
    move v7, v6

    .line 126
    goto :goto_1

    .line 127
    :cond_6
    array-length v7, v15

    .line 128
    new-array v7, v7, [B

    .line 130
    array-length v13, v15

    .line 131
    invoke-static {v14, v9, v7, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    invoke-static {v15, v7}, Ljava/util/Arrays;->equals([B[B)Z

    .line 137
    move-result v7

    .line 138
    if-eqz v7, :cond_5

    .line 140
    iget v7, v12, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    .line 142
    :goto_1
    if-eq v7, v6, :cond_7

    .line 144
    goto :goto_2

    .line 145
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 147
    const/16 v7, 0x66

    .line 149
    goto :goto_0

    .line 150
    :cond_8
    move v7, v6

    .line 151
    :goto_2
    iget v1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 153
    const/4 v5, 0x1

    .line 154
    if-eq v1, v6, :cond_a

    .line 156
    if-ne v7, v1, :cond_9

    .line 158
    iget v1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 160
    add-int/2addr v1, v5

    .line 161
    goto :goto_3

    .line 162
    :cond_9
    invoke-static {v5, v1, v9, v10, v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(IIIJ)V

    .line 165
    :cond_a
    move v1, v9

    .line 166
    :goto_3
    iput v7, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 168
    iput v1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 170
    if-eq v7, v6, :cond_b

    .line 172
    invoke-static {v9, v7, v1, v10, v11}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(IIIJ)V

    .line 175
    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 178
    move-result-object v0

    .line 179
    const-wide/16 v3, 0x226

    .line 181
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    return v6

    .line 185
    :cond_b
    array-length v0, v14

    .line 186
    const/4 v1, 0x3

    .line 187
    if-lez v0, :cond_e

    .line 189
    aget-byte v0, v14, v9

    .line 191
    if-ne v0, v8, :cond_c

    .line 193
    iget-object v0, v4, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 195
    check-cast v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 197
    iget-object v0, v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 199
    const/16 v2, -0x64

    .line 201
    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 204
    goto :goto_4

    .line 205
    :cond_c
    const/16 v2, 0x66

    .line 207
    if-ne v0, v2, :cond_d

    .line 209
    iget-object v0, v4, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 211
    check-cast v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 213
    iget-object v0, v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 215
    const/16 v2, 0x64

    .line 217
    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 220
    goto :goto_4

    .line 221
    :cond_d
    move v6, v1

    .line 222
    :goto_4
    return v6

    .line 223
    :cond_e
    return v1

    .line 224
    :cond_f
    :goto_5
    return v6
.end method

.method public final handleUserControlReleased()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeyRepeatCount:I

    .line 13
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v1, v2, :cond_0

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 21
    move-result-wide v3

    .line 22
    const/4 v1, 0x1

    .line 23
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 25
    invoke-static {v1, v5, v0, v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->injectKeyEvent(IIIJ)V

    .line 28
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mLastKeycode:I

    .line 30
    :cond_0
    return-void
.end method

.method public final hasAction(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    if-nez p2, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-interface {p2, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "Invoking callback failed:"

    .line 14
    const-string p2, "HdmiCecLocalDevice"

    .line 16
    invoke-static {p1, p0, p2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 19
    :goto_0
    return-void
.end method

.method public invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    check-cast p1, Lcom/android/server/hdmi/HdmiControlService$27;

    .line 9
    iget-object p0, p1, Lcom/android/server/hdmi/HdmiControlService$27;->val$devices:Ljava/lang/Object;

    .line 11
    check-cast p0, [I

    .line 13
    const/4 v0, 0x0

    .line 14
    aget v1, p0, v0

    .line 16
    const/4 v2, 0x1

    .line 17
    add-int/2addr v1, v2

    .line 18
    aput v1, p0, v0

    .line 20
    iget p0, p1, Lcom/android/server/hdmi/HdmiControlService$27;->val$standbyAction:I

    .line 22
    if-ge p0, v1, :cond_1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p1, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->releaseWakeLock()V

    .line 30
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isAudioSystemDevice()Z

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 39
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 41
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 43
    if-ne p1, v2, :cond_2

    .line 45
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 47
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->enableSystemCecControl(Z)V

    .line 50
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public isAlreadyActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;ILandroid/hardware/hdmi/IHdmiControlCallback;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 10
    move-result p1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 14
    iget p1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 16
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget p1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 24
    if-ne p2, p1, :cond_0

    .line 26
    invoke-virtual {p0, v1, p3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 29
    const/4 p0, 0x1

    .line 30
    return p0

    .line 31
    :cond_0
    return v1
.end method

.method public final isConnectedToArcPort(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 11
    move-result p1

    .line 12
    const/4 v0, -0x1

    .line 13
    if-eq p1, v0, :cond_0

    .line 15
    if-eqz p1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 19
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 27
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    .line 30
    move-result p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public isInputReady(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public abstract onAddressAllocated(I)V
.end method

.method public abstract onHotplug(IZ)V
.end method

.method public onInitializeCecComplete(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 13
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v2

    .line 20
    :cond_0
    move v3, v1

    .line 21
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_2

    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 33
    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 36
    move-result v4

    .line 37
    if-nez v3, :cond_1

    .line 39
    if-eqz v4, :cond_0

    .line 41
    :cond_1
    move v3, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/4 v2, -0x1

    .line 44
    if-eqz v3, :cond_3

    .line 46
    return v2

    .line 47
    :cond_3
    instance-of v3, p1, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    .line 49
    if-eqz v3, :cond_4

    .line 51
    check-cast p1, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetAudioVolumeLevel(Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;)I

    .line 56
    move-result p0

    .line 57
    return p0

    .line 58
    :cond_4
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 60
    const/4 v4, 0x4

    .line 61
    if-eq v3, v4, :cond_18

    .line 63
    const/16 v5, 0xa

    .line 65
    if-eq v3, v5, :cond_17

    .line 67
    const/16 v5, 0xd

    .line 69
    if-eq v3, v5, :cond_16

    .line 71
    const/16 v5, 0xf

    .line 73
    if-eq v3, v5, :cond_15

    .line 75
    const/16 v6, 0x32

    .line 77
    if-eq v3, v6, :cond_14

    .line 79
    const/16 v6, 0x7a

    .line 81
    if-eq v3, v6, :cond_13

    .line 83
    const/16 v6, 0x89

    .line 85
    iget-object v7, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 87
    iget-object v8, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 89
    iget v9, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 91
    iget v10, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 93
    if-eq v3, v6, :cond_11

    .line 95
    const/16 v6, 0x35

    .line 97
    if-eq v3, v6, :cond_10

    .line 99
    const/16 v6, 0x36

    .line 101
    if-eq v3, v6, :cond_f

    .line 103
    const/16 v6, 0x7d

    .line 105
    if-eq v3, v6, :cond_e

    .line 107
    const/16 v6, 0x7e

    .line 109
    if-eq v3, v6, :cond_d

    .line 111
    const/16 v6, 0xa4

    .line 113
    if-eq v3, v6, :cond_c

    .line 115
    const/16 v6, 0xa5

    .line 117
    if-eq v3, v6, :cond_a

    .line 119
    packed-switch v3, :pswitch_data_0

    .line 122
    packed-switch v3, :pswitch_data_1

    .line 125
    const/4 v6, 0x0

    .line 126
    const/4 v11, 0x5

    .line 127
    packed-switch v3, :pswitch_data_2

    .line 130
    packed-switch v3, :pswitch_data_3

    .line 133
    packed-switch v3, :pswitch_data_4

    .line 136
    packed-switch v3, :pswitch_data_5

    .line 139
    const/4 p0, -0x2

    .line 140
    return p0

    .line 141
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 144
    move-result p0

    .line 145
    return p0

    .line 146
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestArcTermination()I

    .line 149
    move-result p0

    .line 150
    return p0

    .line 151
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestArcInitiate()I

    .line 154
    move-result p0

    .line 155
    return p0

    .line 156
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportArcTermination()I

    .line 159
    move-result p0

    .line 160
    return p0

    .line 161
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportArcInitiate()I

    .line 164
    move-result p0

    .line 165
    return p0

    .line 166
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 169
    move-result p0

    .line 170
    return p0

    .line 171
    :pswitch_6
    invoke-static {v8}, Lcom/android/server/hdmi/HdmiUtils;->threeBytesToInt([B)I

    .line 174
    if-eq v9, v5, :cond_6

    .line 176
    if-ne v10, v5, :cond_5

    .line 178
    goto :goto_1

    .line 179
    :cond_5
    invoke-virtual {v7, v10, v9, v8, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(II[BZ)Z

    .line 182
    move-result p0

    .line 183
    if-nez p0, :cond_7

    .line 185
    move v2, v4

    .line 186
    goto :goto_2

    .line 187
    :cond_6
    :goto_1
    const-string p0, "HdmiCecLocalDevice"

    .line 189
    const-string p1, "Wrong broadcast vendor command. Ignoring"

    .line 191
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_7
    :goto_2
    return v2

    .line 195
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 198
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 201
    move-result p0

    .line 202
    and-int/lit16 p0, p0, 0xff

    .line 204
    int-to-byte p0, p0

    .line 205
    new-array p1, v0, [B

    .line 207
    aput-byte p0, p1, v1

    .line 209
    const/16 p0, 0x9e

    .line 211
    invoke-static {v9, v10, p0, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {v7, p0, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 218
    return v2

    .line 219
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 222
    return v2

    .line 223
    :pswitch_9
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 226
    move-result p0

    .line 227
    return p0

    .line 228
    :pswitch_a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 231
    move-result p0

    .line 232
    return p0

    .line 233
    :pswitch_b
    return v2

    .line 234
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 236
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 239
    move-result p0

    .line 240
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 243
    iget-object p1, v7, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 245
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 247
    and-int/lit16 p1, p1, 0xff

    .line 249
    int-to-byte p1, p1

    .line 250
    new-array v0, v0, [B

    .line 252
    aput-byte p1, v0, v1

    .line 254
    const/16 p1, 0x90

    .line 256
    invoke-static {p0, v10, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 259
    move-result-object p0

    .line 260
    invoke-virtual {v7, p0, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 263
    return v2

    .line 264
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleMenuStatus()I

    .line 267
    move-result p0

    .line 268
    return p0

    .line 269
    :pswitch_e
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 271
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 274
    move-result p0

    .line 275
    int-to-byte p1, v1

    .line 276
    new-array v0, v0, [B

    .line 278
    aput-byte p1, v0, v1

    .line 280
    const/16 p1, 0x8e

    .line 282
    invoke-static {p0, v10, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 285
    move-result-object p0

    .line 286
    invoke-virtual {v7, p0, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 289
    return v2

    .line 290
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 293
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    .line 296
    move-result v1

    .line 297
    if-ne v1, v0, :cond_8

    .line 299
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 302
    iget-object p0, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 304
    invoke-virtual {p0, v11, p1}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 307
    goto :goto_3

    .line 308
    :cond_8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 310
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 313
    move-result p0

    .line 314
    invoke-static {p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 317
    move-result-object p0

    .line 318
    invoke-virtual {v7, p0, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 321
    :goto_3
    return v2

    .line 322
    :pswitch_10
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 325
    move-result p0

    .line 326
    return p0

    .line 327
    :pswitch_11
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 330
    return v2

    .line 331
    :pswitch_12
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 334
    return v2

    .line 335
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 338
    iget-object v0, v7, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 340
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 343
    move-result v0

    .line 344
    const v1, 0xffff

    .line 347
    if-ne v0, v1, :cond_9

    .line 349
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 352
    iget-object p0, v7, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 354
    invoke-virtual {p0, v11, p1}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(ILcom/android/server/hdmi/HdmiCecMessage;)V

    .line 357
    goto :goto_4

    .line 358
    :cond_9
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 360
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 363
    move-result p1

    .line 364
    iget p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 366
    invoke-static {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 369
    move-result-object p0

    .line 370
    invoke-virtual {v7, p0, v6}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 373
    :goto_4
    return v2

    .line 374
    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 377
    return v2

    .line 378
    :pswitch_15
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingInformation(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 381
    move-result p0

    .line 382
    return p0

    .line 383
    :pswitch_16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 386
    move-result p0

    .line 387
    return p0

    .line 388
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 391
    move-result p0

    .line 392
    return p0

    .line 393
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 396
    move-result p0

    .line 397
    return p0

    .line 398
    :pswitch_19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 401
    move-result p0

    .line 402
    return p0

    .line 403
    :pswitch_1a
    return v2

    .line 404
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 407
    invoke-virtual {p0, v10}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->buildAndSendSetOsdName(I)V

    .line 410
    return v2

    .line 411
    :pswitch_1c
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlReleased()V

    .line 414
    return v2

    .line 415
    :pswitch_1d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlPressed(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 418
    move-result p0

    .line 419
    return p0

    .line 420
    :pswitch_1e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 423
    move-result p0

    .line 424
    return p0

    .line 425
    :cond_a
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 428
    move-result p1

    .line 429
    const/4 v0, 0x6

    .line 430
    if-ge p1, v0, :cond_b

    .line 432
    goto :goto_5

    .line 433
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->reportFeatures()V

    .line 436
    move v1, v2

    .line 437
    :goto_5
    return v1

    .line 438
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRequestShortAudioDescriptor(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 441
    move-result p0

    .line 442
    return p0

    .line 443
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 446
    move-result p0

    .line 447
    return p0

    .line 448
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleGiveSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 451
    move-result p0

    .line 452
    return p0

    .line 453
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 456
    move-result p0

    .line 457
    return p0

    .line 458
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTimerStatus()I

    .line 461
    move-result p0

    .line 462
    return p0

    .line 463
    :cond_11
    invoke-virtual {v7, v10, v9, v8, v1}, Lcom/android/server/hdmi/HdmiControlService;->invokeVendorCommandListenersOnReceived(II[BZ)Z

    .line 466
    move-result p0

    .line 467
    if-nez p0, :cond_12

    .line 469
    move v2, v4

    .line 470
    :cond_12
    return v2

    .line 471
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 474
    move-result p0

    .line 475
    return p0

    .line 476
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleSetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 479
    move-result p0

    .line 480
    return p0

    .line 481
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 484
    move-result p0

    .line 485
    return p0

    .line 486
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleTextViewOn()I

    .line 489
    move-result p0

    .line 490
    return p0

    .line 491
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleRecordStatus()I

    .line 494
    move-result p0

    .line 495
    return p0

    .line 496
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 499
    move-result p0

    .line 500
    return p0

    .line 501
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    .line 515
    :pswitch_data_1
    .packed-switch 0x70
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    .line 525
    :pswitch_data_2
    .packed-switch 0x80
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 543
    :pswitch_data_3
    .packed-switch 0x8c
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    .line 559
    :pswitch_data_4
    .packed-switch 0x9d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 571
    :pswitch_data_5
    .packed-switch 0xc0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onStandby(ZILcom/android/server/hdmi/HdmiControlService$27;)V
.end method

.method public preprocessBufferedMessages(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeAction(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 8
    return-void
.end method

.method public final removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object v0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 22
    if-eq v1, p2, :cond_0

    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_0

    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 45
    return-void
.end method

.method public final reportFeatures()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v2, 0x6

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x3

    .line 6
    const/4 v5, 0x0

    .line 7
    new-instance v6, Ljava/util/ArrayList;

    .line 9
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v7, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 14
    invoke-virtual {v7}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 17
    move-result-object v7

    .line 18
    check-cast v7, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v7

    .line 24
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v8

    .line 28
    if-eqz v8, :cond_0

    .line 30
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v8

    .line 34
    check-cast v8, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 36
    iget v8, v8, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getRcProfile()I

    .line 49
    move-result v7

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getRcFeatures()Ljava/util/List;

    .line 53
    move-result-object v8

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v9}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 61
    move-result-object v9

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 65
    move-result-object v10

    .line 66
    invoke-virtual {v9, v10}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDeviceFeatures(Landroid/hardware/hdmi/DeviceFeatures;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 69
    move-result-object v9

    .line 70
    invoke-virtual {v9}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 73
    move-result-object v9

    .line 74
    iget-object v10, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 76
    monitor-enter v10

    .line 77
    :try_start_0
    iput-object v9, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 79
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 83
    move-result-object v9

    .line 84
    invoke-virtual {v9}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;

    .line 87
    move-result-object v15

    .line 88
    iget-object v9, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 90
    monitor-enter v9

    .line 91
    :try_start_1
    iget-object v10, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 93
    invoke-virtual {v10}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 96
    move-result v11

    .line 97
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 100
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    .line 103
    move-result v14

    .line 104
    sget v9, Lcom/android/server/hdmi/ReportFeaturesMessage;->$r8$clinit:I

    .line 106
    and-int/lit16 v9, v14, 0xff

    .line 108
    int-to-byte v9, v9

    .line 109
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object v6

    .line 113
    move v10, v5

    .line 114
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 117
    move-result v12

    .line 118
    if-eqz v12, :cond_7

    .line 120
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 123
    move-result-object v12

    .line 124
    check-cast v12, Ljava/lang/Integer;

    .line 126
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    .line 129
    move-result v12

    .line 130
    if-eqz v12, :cond_5

    .line 132
    if-eq v12, v3, :cond_4

    .line 134
    const/4 v13, 0x5

    .line 135
    if-eq v12, v4, :cond_6

    .line 137
    const/4 v1, 0x4

    .line 138
    if-eq v12, v1, :cond_3

    .line 140
    if-eq v12, v13, :cond_2

    .line 142
    if-ne v12, v2, :cond_1

    .line 144
    const/4 v13, 0x2

    .line 145
    goto :goto_2

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 148
    const-string v1, "Unhandled device type: "

    .line 150
    invoke-static {v12, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object v1

    .line 154
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    throw v0

    .line 158
    :cond_2
    move v13, v4

    .line 159
    goto :goto_2

    .line 160
    :cond_3
    move v13, v1

    .line 161
    goto :goto_2

    .line 162
    :cond_4
    move v13, v2

    .line 163
    goto :goto_2

    .line 164
    :cond_5
    const/4 v13, 0x7

    .line 165
    :cond_6
    :goto_2
    shl-int v1, v3, v13

    .line 167
    int-to-byte v1, v1

    .line 168
    or-int/2addr v1, v10

    .line 169
    int-to-byte v10, v1

    .line 170
    goto :goto_1

    .line 171
    :cond_7
    shl-int/lit8 v1, v7, 0x6

    .line 173
    int-to-byte v1, v1

    .line 174
    int-to-byte v1, v1

    .line 175
    if-ne v7, v3, :cond_8

    .line 177
    check-cast v8, Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 182
    move-result-object v2

    .line 183
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    move-result v6

    .line 187
    if-eqz v6, :cond_9

    .line 189
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    move-result-object v6

    .line 193
    check-cast v6, Ljava/lang/Integer;

    .line 195
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 198
    move-result v6

    .line 199
    shl-int v6, v3, v6

    .line 201
    int-to-byte v6, v6

    .line 202
    or-int/2addr v1, v6

    .line 203
    int-to-byte v1, v1

    .line 204
    goto :goto_3

    .line 205
    :cond_8
    check-cast v8, Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v2

    .line 211
    check-cast v2, Ljava/lang/Integer;

    .line 213
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 216
    move-result v2

    .line 217
    const v6, 0xffff

    .line 220
    and-int/2addr v2, v6

    .line 221
    int-to-byte v2, v2

    .line 222
    or-int/2addr v1, v2

    .line 223
    int-to-byte v1, v1

    .line 224
    :cond_9
    new-array v2, v4, [B

    .line 226
    aput-byte v9, v2, v5

    .line 228
    aput-byte v10, v2, v3

    .line 230
    const/4 v3, 0x2

    .line 231
    aput-byte v1, v2, v3

    .line 233
    invoke-virtual {v15}, Landroid/hardware/hdmi/DeviceFeatures;->toOperand()[B

    .line 236
    move-result-object v1

    .line 237
    array-length v3, v1

    .line 238
    add-int/2addr v3, v4

    .line 239
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 242
    move-result-object v2

    .line 243
    array-length v3, v1

    .line 244
    invoke-static {v1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 247
    const/16 v1, 0x7fff

    .line 249
    const v3, 0x8000

    .line 252
    const/16 v4, 0xf

    .line 254
    invoke-static {v11, v4, v1, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    .line 257
    move-result v20

    .line 258
    if-eqz v20, :cond_a

    .line 260
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 262
    const/16 v18, 0xf

    .line 264
    const/16 v19, 0xa6

    .line 266
    move-object/from16 v16, v1

    .line 268
    move/from16 v17, v11

    .line 270
    move-object/from16 v21, v2

    .line 272
    invoke-direct/range {v16 .. v21}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(IIII[B)V

    .line 275
    goto :goto_4

    .line 276
    :cond_a
    new-instance v1, Lcom/android/server/hdmi/ReportFeaturesMessage;

    .line 278
    const/16 v12, 0xf

    .line 280
    move-object v10, v1

    .line 281
    move-object v13, v2

    .line 282
    invoke-direct/range {v10 .. v15}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    .line 285
    :goto_4
    const/4 v2, 0x0

    .line 286
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 289
    return-void

    .line 290
    :catchall_0
    move-exception v0

    .line 291
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    throw v0

    .line 293
    :catchall_1
    move-exception v0

    .line 294
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 295
    throw v0
.end method

.method public abstract sendStandby(I)V
.end method

.method public final sendUserControlPressedAndReleased(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 6
    move-result v0

    .line 7
    and-int/lit16 p2, p2, 0xff

    .line 9
    int-to-byte p2, p2

    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [B

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-byte p2, v1, v2

    .line 16
    const/16 p2, 0x44

    .line 18
    invoke-static {v0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 21
    move-result-object p2

    .line 22
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, p2, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 28
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 30
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 33
    move-result p0

    .line 34
    const/16 p2, 0x45

    .line 36
    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 43
    return-void
.end method

.method public final sendVolumeKeyEvent(IZ)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_0

    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isVolumeKeycode(I)Z

    .line 16
    move-result v1

    .line 17
    const-string v2, "HdmiCecLocalDevice"

    .line 19
    if-nez v1, :cond_1

    .line 21
    const-string p0, "Not a volume key: "

    .line 23
    invoke-static {p1, p0, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 27
    :cond_1
    const-class v1, Lcom/android/server/hdmi/SendKeyAction;

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    .line 36
    move-result v3

    .line 37
    const/4 v4, -0x1

    .line 38
    if-eq v3, v4, :cond_4

    .line 40
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 47
    move-result-object v0

    .line 48
    new-instance v4, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;

    .line 50
    const/4 v5, 0x1

    .line 51
    invoke-direct {v4, v3, v5}, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;-><init>(II)V

    .line 54
    invoke-interface {v0, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_3

    .line 67
    const/4 p0, 0x0

    .line 68
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 72
    check-cast p0, Lcom/android/server/hdmi/SendKeyAction;

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/SendKeyAction;->processKeyEvent(IZ)V

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    if-eqz p2, :cond_5

    .line 80
    new-instance p2, Lcom/android/server/hdmi/SendKeyAction;

    .line 82
    invoke-direct {p2, p0, v3, p1}, Lcom/android/server/hdmi/SendKeyAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "Discard volume key event: "

    .line 93
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string p1, ", pressed:"

    .line 101
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    const-string p1, ", receiverAddr="

    .line 109
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-static {p0, v3, v2}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 115
    :cond_5
    :goto_1
    return-void
.end method

.method public final setActivePath(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActiveRoutingPath:I

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 9
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 12
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 14
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 19
    move-result p0

    .line 20
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 23
    iput p0, v0, Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I

    .line 25
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method

.method public setActiveSource(IILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->setActiveSource(IILjava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 9
    return-void
.end method

.method public abstract setPreferredAddress(I)V
.end method

.method public final startQueuedActions()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 27
    iget v1, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 29
    if-eqz v1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "Starting queued action:"

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    const-string v2, "HdmiCecLocalDevice"

    .line 48
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->start()V

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public final updateAvbVolume(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 4
    const-class v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;

    .line 26
    new-instance v1, Lcom/android/server/hdmi/AudioStatus;

    .line 28
    iget-object v2, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    .line 30
    iget-boolean v2, v2, Lcom/android/server/hdmi/AudioStatus;->mMute:Z

    .line 32
    invoke-direct {v1, p1, v2}, Lcom/android/server/hdmi/AudioStatus;-><init>(IZ)V

    .line 35
    iput-object v1, v0, Lcom/android/server/hdmi/AbsoluteVolumeAudioStatusAction;->mLastAudioStatus:Lcom/android/server/hdmi/AudioStatus;

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method
