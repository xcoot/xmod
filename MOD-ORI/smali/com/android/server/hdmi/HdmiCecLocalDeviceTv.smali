.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
.super Lcom/android/server/hdmi/HdmiCecLocalDevice;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mArcEstablished:Z

.field public final mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

.field public final mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

.field public mPrevPortId:I

.field public final mResetSkipRoutingControlRunnable:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda0;

.field public mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

.field public mSkipRoutingControl:Z

.field public final mSkipRoutingControlHandler:Landroid/os/Handler;

.field public mSystemAudioControlFeatureEnabled:Z

.field public mSystemAudioMute:Z

.field public mSystemAudioVolume:I

.field public final mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

.field public final mTvInputs:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;-><init>(Lcom/android/server/hdmi/HdmiControlService;I)V

    .line 3
    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 6
    .line 7
    new-instance v1, Landroid/util/SparseBooleanArray;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 18
    .line 19
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mResetSkipRoutingControlRunnable:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    new-instance v2, Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 27
    .line 28
    invoke-direct {v2, p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 32
    .line 33
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    .line 39
    .line 40
    new-instance v2, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    .line 46
    .line 47
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string/jumbo v2, "system_audio_control"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x1

    .line 61
    if-ne v1, v2, :cond_0

    .line 62
    .line 63
    move v0, v2

    .line 64
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 65
    .line 66
    new-instance v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 67
    .line 68
    invoke-direct {v0, p1, p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 72
    .line 73
    new-instance v0, Landroid/os/Handler;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControlHandler:Landroid/os/Handler;

    .line 85
    .line 86
    return-void
.end method

.method public static isTailOfActivePath(II)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/16 v1, 0xc

    .line 6
    .line 7
    :goto_0
    if-ltz v1, :cond_3

    .line 8
    .line 9
    shr-int v2, p1, v1

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0xf

    .line 12
    .line 13
    if-nez v2, :cond_1

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    return p0

    .line 17
    :cond_1
    shr-int v3, p0, v1

    .line 18
    .line 19
    and-int/lit8 v3, v3, 0xf

    .line 20
    .line 21
    if-eq v3, v2, :cond_2

    .line 22
    .line 23
    return v0

    .line 24
    :cond_2
    add-int/lit8 v1, v1, -0x4

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    return v0
.end method


# virtual methods
.method public final announceClearTimerRecordingResult(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/hardware/hdmi/IHdmiRecordListener;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onClearTimerRecordingResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_2
    const-string p1, "HdmiControlService"

    .line 22
    .line 23
    const-string p2, "Failed to call onClearTimerRecordingResult."

    .line 24
    .line 25
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p0
.end method

.method public final announceOneTouchRecordResult(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/hardware/hdmi/IHdmiRecordListener;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onOneTouchRecordResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_2
    const-string p1, "HdmiControlService"

    .line 22
    .line 23
    const-string p2, "Failed to call onOneTouchRecordResult."

    .line 24
    .line 25
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p0
.end method

.method public final announceTimerRecordingResult(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Landroid/hardware/hdmi/IHdmiRecordListener;

    .line 13
    .line 14
    invoke-interface {p0, p1, p2}, Landroid/hardware/hdmi/IHdmiRecordListener;->onTimerRecordingResult(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :catch_0
    move-exception p0

    .line 21
    :try_start_2
    const-string p1, "HdmiControlService"

    .line 22
    .line 23
    const-string p2, "Failed to call onTimerRecordingResult."

    .line 24
    .line 25
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 26
    .line 27
    .line 28
    :cond_0
    :goto_0
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    throw p0
.end method

.method public final broadcastMenuLanguage(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const/4 v3, 0x3

    .line 5
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-eq v5, v3, :cond_0

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    and-int/lit16 v5, v5, 0xff

    .line 33
    .line 34
    int-to-byte v5, v5

    .line 35
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    and-int/lit16 v6, v6, 0xff

    .line 40
    .line 41
    int-to-byte v6, v6

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    and-int/lit16 p1, p1, 0xff

    .line 47
    .line 48
    int-to-byte p1, p1

    .line 49
    new-array v3, v3, [B

    .line 50
    .line 51
    aput-byte v5, v3, v1

    .line 52
    .line 53
    aput-byte v6, v3, v2

    .line 54
    .line 55
    aput-byte p1, v3, v0

    .line 56
    .line 57
    const/16 p1, 0xf

    .line 58
    .line 59
    const/16 v0, 0x32

    .line 60
    .line 61
    invoke-static {v4, p1, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_0
    if-eqz p1, :cond_1

    .line 66
    .line 67
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 70
    .line 71
    .line 72
    return v2

    .line 73
    :cond_1
    return v1
.end method

.method public final canStartArcUpdateAction(IZ)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ne p1, v2, :cond_2

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isConnectedToArcPort(I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_2

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    if-eqz p2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 37
    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 42
    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 45
    .line 46
    invoke-interface {v2, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(I)Z

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    const p2, 0xf000

    .line 72
    .line 73
    .line 74
    and-int/2addr p2, p0

    .line 75
    if-ne p2, p0, :cond_0

    .line 76
    .line 77
    move v1, p1

    .line 78
    :cond_0
    return v1

    .line 79
    :cond_1
    return p1

    .line 80
    :cond_2
    return v1
.end method

.method public final changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const-class v0, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-direct {v1, p0, v0, p2, p1}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x6

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final checkRecorder(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final computeDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 29
    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 32
    .line 33
    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    move p0, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 p0, 0x0

    .line 42
    :goto_0
    sget-object v0, Landroid/hardware/hdmi/DeviceFeatures;->NO_FEATURES_SUPPORTED:Landroid/hardware/hdmi/DeviceFeatures;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/hardware/hdmi/DeviceFeatures;->toBuilder()Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setRecordTvScreenSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setArcTxSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p0, v2}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->setSetAudioVolumeLevelSupport(I)Landroid/hardware/hdmi/DeviceFeatures$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/hardware/hdmi/DeviceFeatures$Builder;->build()Landroid/hardware/hdmi/DeviceFeatures;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0
.end method

.method public final deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x3

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isAlreadyActiveSource(Landroid/hardware/hdmi/HdmiDeviceInfo;ILandroid/hardware/hdmi/IHdmiControlCallback;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-class v2, Lcom/android/server/hdmi/RequestActiveSourceAction;

    .line 35
    .line 36
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "HdmiCecLocalDeviceTv#deviceSelect()"

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    if-nez v1, :cond_4

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-eq p1, v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 78
    .line 79
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 84
    .line 85
    .line 86
    new-instance v5, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 87
    .line 88
    invoke-direct {v5, p1, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    .line 89
    .line 90
    .line 91
    const-string p1, "HdmiCecLocalDeviceTv#handleSelectInternalSource()"

    .line 92
    .line 93
    invoke-virtual {p0, v5, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 97
    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    iput-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 112
    .line 113
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    invoke-static {p1, v4}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const/4 v4, 0x0

    .line 122
    invoke-virtual {v0, p1, v4}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 123
    .line 124
    .line 125
    :cond_3
    :goto_0
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(IILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v3, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    const/4 v1, 0x6

    .line 152
    if-nez v0, :cond_5

    .line 153
    .line 154
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(IILjava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, v1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 166
    .line 167
    .line 168
    return-void

    .line 169
    :cond_5
    const-class v0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lcom/android/server/hdmi/DeviceSelectActionFromTv;

    .line 175
    .line 176
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-lt v2, v1, :cond_6

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-lt v2, v1, :cond_6

    .line 191
    .line 192
    const/4 v3, 0x1

    .line 193
    :cond_6
    invoke-direct {v0, p0, p1, p2, v3}, Lcom/android/server/hdmi/DeviceSelectActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public final disableArc()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "Set Arc Status[old:%b new:false]"

    .line 15
    .line 16
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel$1(Z)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(Ljava/util/List;Z)V

    .line 29
    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 32
    .line 33
    return-void
.end method

.method public final disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/media/tv/TvInputManager;->unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    const-class v1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    const-class v1, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    const-class v1, Lcom/android/server/hdmi/PowerStatusMonitorAction;

    .line 27
    .line 28
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 29
    .line 30
    .line 31
    const-class v1, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 32
    .line 33
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    const-class v1, Lcom/android/server/hdmi/TimerRecordingAction;

    .line 37
    .line 38
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    const-class v1, Lcom/android/server/hdmi/NewDeviceAction;

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 44
    .line 45
    .line 46
    const-class v1, Lcom/android/server/hdmi/RequestActiveSourceAction;

    .line 47
    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    const/4 v1, 0x0

    .line 52
    if-nez p1, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_3

    .line 59
    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-nez v2, :cond_2

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    const-class v2, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 73
    .line 74
    .line 75
    const-class v2, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    const-class v2, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    .line 81
    .line 82
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 83
    .line 84
    .line 85
    const-class v2, Lcom/android/server/hdmi/VolumeControlAction;

    .line 86
    .line 87
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    .line 96
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-nez v2, :cond_4

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_4
    const-class v3, Lcom/android/server/hdmi/RequestArcTerminationAction;

    .line 110
    .line 111
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 112
    .line 113
    .line 114
    const-class v4, Lcom/android/server/hdmi/RequestArcInitiationAction;

    .line 115
    .line 116
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 117
    .line 118
    .line 119
    const-class v4, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 120
    .line 121
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_5

    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isArcEstablished()Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    new-instance v3, Lcom/android/server/hdmi/RequestArcTerminationAction;

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    const/4 v4, 0x0

    .line 143
    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/HdmiControlService$35;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 147
    .line 148
    .line 149
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 158
    .line 159
    .line 160
    move-result v3

    .line 161
    if-eqz v3, :cond_7

    .line 162
    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 168
    .line 169
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 174
    .line 175
    .line 176
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 177
    .line 178
    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    if-eqz v4, :cond_6

    .line 183
    .line 184
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    invoke-virtual {v0, v3, v1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    .line 189
    .line 190
    .line 191
    goto :goto_2

    .line 192
    :cond_7
    :goto_3
    invoke-super {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 196
    .line 197
    .line 198
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->clearDeviceList()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 208
    .line 209
    .line 210
    const p1, 0xffff

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 217
    .line 218
    .line 219
    return-void
.end method

.method public dispatchMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 7
    .line 8
    .line 9
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerStatusController:Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    .line 10
    .line 11
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->mPowerStatus:I

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_1

    .line 15
    .line 16
    iget-boolean v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mWakeUpMessageReceived:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mStandbyHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mCecMessageHandlers:Landroid/util/SparseArray;

    .line 23
    .line 24
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {v1, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mDefaultHandler:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    .line 40
    .line 41
    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    :goto_0
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const/4 p0, -0x1

    .line 48
    return p0

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    return p0
.end method

.method public final doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    const/4 v3, 0x6

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v3, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne p1, v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0, v2, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v3, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v3, -0x1

    .line 64
    if-eq v1, v3, :cond_4

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    goto :goto_1

    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 90
    .line 91
    .line 92
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 93
    .line 94
    if-eqz v3, :cond_5

    .line 95
    .line 96
    iput-boolean v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 97
    .line 98
    return-void

    .line 99
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string/jumbo v1, "mArcEstablished: "

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 13
    .line 14
    const-string/jumbo v2, "mArcFeatureEnabled: "

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v1, "mSystemAudioMute: "

    .line 36
    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 42
    .line 43
    const-string/jumbo v2, "mSystemAudioControlFeatureEnabled: "

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 51
    .line 52
    const-string/jumbo v2, "mSkipRoutingControl: "

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 60
    .line 61
    const-string/jumbo v2, "mPrevPortId: "

    .line 62
    .line 63
    .line 64
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public final enableAudioReturnChannel$1(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->enableAudioReturnChannel(IZ)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final findAudioReceiverAddress()I
    .locals 0

    .line 1
    const/4 p0, 0x5

    .line 2
    return p0
.end method

.method public final findKeyReceiverAddress()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 8
    .line 9
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 20
    .line 21
    return p0

    .line 22
    :cond_0
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getDeviceInfoList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 52
    .line 53
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-ne v2, p0, :cond_1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/4 v1, 0x0

    .line 61
    :goto_0
    if-eqz v1, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    return p0

    .line 68
    :cond_3
    const/4 p0, -0x1

    .line 69
    return p0
.end method

.method public final getAutoWakeup()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const-string/jumbo v0, "tv_wake_on_one_touch_play"

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x1

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public final getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final getPreferredAddress()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getRcFeatures()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string/jumbo v1, "rc_profile_tv"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final getRcProfile()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final handleActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 5
    .line 6
    iget-object v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 13
    .line 14
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-nez p0, :cond_9

    .line 29
    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "Device info %X not found; buffering the command"

    .line 39
    .line 40
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_3

    .line 47
    .line 48
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isInputReady(I)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_2

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    const/4 v6, 0x5

    .line 63
    if-ne v5, v6, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    const-string v0, "Input not ready for device: %X; buffering the command"

    .line 79
    .line 80
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_2
    :goto_0
    iget-object p1, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 89
    .line 90
    const/4 v4, 0x0

    .line 91
    invoke-virtual {p1, v0, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateDevicePowerStatus(II)V

    .line 92
    .line 93
    .line 94
    new-instance p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 95
    .line 96
    invoke-direct {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 106
    .line 107
    .line 108
    iget-object v3, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 109
    .line 110
    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    if-nez v1, :cond_5

    .line 115
    .line 116
    const-class v1, Lcom/android/server/hdmi/NewDeviceAction;

    .line 117
    .line 118
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_4

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    check-cast v3, Lcom/android/server/hdmi/NewDeviceAction;

    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 142
    .line 143
    iget v5, v3, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 144
    .line 145
    if-ne v5, v4, :cond_3

    .line 146
    .line 147
    iget v3, v3, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 148
    .line 149
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 150
    .line 151
    if-ne v3, v4, :cond_3

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    new-instance v1, Lcom/android/server/hdmi/NewDeviceAction;

    .line 155
    .line 156
    iget v3, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 157
    .line 158
    iget v4, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 159
    .line 160
    invoke-direct {v1, p0, v3, v4, v0}, Lcom/android/server/hdmi/NewDeviceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    const-string v1, "ActiveSourceHandler"

    .line 171
    .line 172
    if-nez v0, :cond_7

    .line 173
    .line 174
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 179
    .line 180
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 181
    .line 182
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 186
    .line 187
    if-ne v1, v2, :cond_6

    .line 188
    .line 189
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 190
    .line 191
    if-ne v1, v0, :cond_6

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 199
    .line 200
    .line 201
    :goto_2
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 202
    .line 203
    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveInput(IZ)V

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget v3, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    const/4 v5, 0x0

    .line 223
    if-ne v3, v4, :cond_8

    .line 224
    .line 225
    iget p1, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 226
    .line 227
    iget v3, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 228
    .line 229
    invoke-static {p1, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {v2, p1, v5}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_8
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 241
    .line 242
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 243
    .line 244
    invoke-virtual {p0, p1, v0, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 245
    .line 246
    .line 247
    :cond_9
    :goto_3
    return-void
.end method

.method public final handleGetMenuLanguage(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "Failed to respond to <Get Menu Language>: "

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, "HdmiCecLocalDeviceTv"

    .line 36
    .line 37
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_0
    const/4 p0, -0x1

    .line 41
    return p0
.end method

.method public final handleImageViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleTextViewOn()I

    .line 5
    .line 6
    .line 7
    const/4 p0, -0x1

    .line 8
    return p0
.end method

.method public final handleInactiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 11
    .line 12
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 13
    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    return v2

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return v2

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0

    .line 30
    :try_start_0
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 31
    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    if-eq v1, v2, :cond_4

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 38
    .line 39
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_2

    .line 46
    .line 47
    return v2

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-ne p1, v1, :cond_3

    .line 61
    .line 62
    return v2

    .line 63
    :cond_3
    const/4 p1, 0x0

    .line 64
    invoke-virtual {p0, v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->doManualPortSwitching(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 78
    .line 79
    .line 80
    const p1, 0xffff

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 87
    .line 88
    sget-object p1, Landroid/hardware/hdmi/HdmiDeviceInfo;->INACTIVE_DEVICE:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 89
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return v2

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    throw p0
.end method

.method public final handleInitiateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->earcBlocksArcConnection()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const-string p0, "HdmiCecLocalDeviceTv"

    .line 14
    .line 15
    const-string p1, "ARC connection blocked because eARC connection is established or being established."

    .line 16
    .line 17
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v2

    .line 21
    :cond_0
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 22
    .line 23
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v3, -0x1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 39
    .line 40
    .line 41
    return v3

    .line 42
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isConnectedToArcPort(I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 56
    .line 57
    .line 58
    new-instance p0, Landroid/content/Intent;

    .line 59
    .line 60
    const-string p1, "android.hardware.hdmi.action.OSD_MESSAGE"

    .line 61
    .line 62
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "android.hardware.hdmi.extra.MESSAGE_ID"

    .line 66
    .line 67
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendBroadcastAsUser(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    :cond_2
    const/4 p0, 0x4

    .line 74
    return p0

    .line 75
    :cond_3
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 76
    .line 77
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 78
    .line 79
    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 83
    .line 84
    .line 85
    return v3
.end method

.method public final handleMenuStatus()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final handleNewDeviceAtTheTailOfActivePath(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isTailOfActivePath(II)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final handleRecordStatus()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public final handleRecordTvScreen(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 4

    .line 1
    const-class v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 19
    .line 20
    iget v0, v0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    .line 21
    .line 22
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 23
    .line 24
    if-eq v0, p1, :cond_0

    .line 25
    .line 26
    const/16 v0, 0x30

    .line 27
    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 29
    .line 30
    .line 31
    :cond_0
    const/4 p0, 0x2

    .line 32
    return p0

    .line 33
    :cond_1
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 36
    .line 37
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_0
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mRecordListenerRecord:Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    :try_start_1
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$HdmiRecordListenerRecord;->mListener:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/hardware/hdmi/IHdmiRecordListener;

    .line 47
    .line 48
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiRecordListener;->getOneTouchRecordSource(I)[B

    .line 49
    .line 50
    .line 51
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :try_start_2
    monitor-exit v1

    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string v2, "HdmiControlService"

    .line 58
    .line 59
    const-string v3, "Failed to start record."

    .line 60
    .line 61
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :cond_2
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    .line 65
    .line 66
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startOneTouchRecord(I[B)I

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    return p0

    .line 72
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    throw p0
.end method

.method public final handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x4

    .line 13
    return p0

    .line 14
    :cond_0
    sget-object v0, Lcom/android/server/hdmi/HdmiUtils;->ADDRESS_TO_TYPE:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aget-byte v0, v0, v1

    .line 20
    .line 21
    const/16 v2, 0x80

    .line 22
    .line 23
    and-int/2addr v0, v2

    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_1
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->getAudioStatusVolume(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(IZ)V

    .line 32
    .line 33
    .line 34
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public final handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleReportPhysicalAddress(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x2

    .line 11
    aget-byte v0, v0, v2

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 14
    .line 15
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 18
    .line 19
    .line 20
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 21
    .line 22
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->handleNewDeviceAtTheTailOfActivePath(I)Z

    .line 37
    .line 38
    .line 39
    :goto_1
    const-class v2, Lcom/android/server/hdmi/NewDeviceAction;

    .line 40
    .line 41
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_3

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/android/server/hdmi/NewDeviceAction;

    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    iget v4, v3, Lcom/android/server/hdmi/NewDeviceAction;->mDeviceLogicalAddress:I

    .line 65
    .line 66
    if-ne v4, p1, :cond_2

    .line 67
    .line 68
    iget v3, v3, Lcom/android/server/hdmi/NewDeviceAction;->mDevicePhysicalAddress:I

    .line 69
    .line 70
    if-ne v3, v1, :cond_2

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    new-instance v2, Lcom/android/server/hdmi/NewDeviceAction;

    .line 74
    .line 75
    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/hdmi/NewDeviceAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;III)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 79
    .line 80
    .line 81
    :goto_2
    return-void
.end method

.method public final handleRequestActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 19
    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 p1, 0x0

    .line 39
    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final handleRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([B)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    const/16 v3, 0xc

    .line 16
    .line 17
    if-gt v2, v3, :cond_1

    .line 18
    .line 19
    shr-int v3, v0, v2

    .line 20
    .line 21
    and-int/lit8 v3, v3, 0xf

    .line 22
    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const v3, 0xfff0

    .line 26
    .line 27
    .line 28
    shl-int v2, v3, v2

    .line 29
    .line 30
    and-int/2addr v0, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    add-int/lit8 v2, v2, 0x4

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiUtils;->isInActiveRoutingPath(II)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    :goto_2
    if-eqz v0, :cond_3

    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    .line 52
    .line 53
    .line 54
    const-class v0, Lcom/android/server/hdmi/RoutingControlAction;

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 57
    .line 58
    .line 59
    const/4 v0, 0x2

    .line 60
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt(I[B)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    new-instance v0, Lcom/android/server/hdmi/RoutingControlAction;

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    const/4 p0, -0x1

    .line 74
    return p0
.end method

.method public final handleSetAudioVolumeLevel(Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    iget p1, p1, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->mAudioVolumeLevel:I

    .line 12
    .line 13
    if-ltz p1, :cond_1

    .line 14
    .line 15
    const/16 v0, 0x64

    .line 16
    .line 17
    if-gt p1, v0, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 20
    .line 21
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mStreamMusicMaxVolume:I

    .line 22
    .line 23
    mul-int/2addr p1, p0

    .line 24
    div-int/2addr p1, v0

    .line 25
    check-cast v1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 26
    .line 27
    const/4 p0, 0x3

    .line 28
    iget-object v0, v1, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, p0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public final handleSetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x4

    .line 13
    const/4 v3, 0x0

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/DelayedMessageBuffer;->add(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v0, "Invalid <Set System Audio Mode> message:"

    .line 31
    .line 32
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-array p1, v3, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return v2

    .line 48
    :cond_1
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    const-string p0, "Ignoring <Set System Audio Mode> message because the System Audio Control feature is disabled: %s"

    .line 57
    .line 58
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return v2

    .line 66
    :cond_2
    :goto_0
    const-class v1, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/android/server/hdmi/SystemAudioActionFromAvr;

    .line 72
    .line 73
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-direct {v1, p0, p1, v2, v0}, Lcom/android/server/hdmi/SystemAudioAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    invoke-static {p1, v3}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_3

    .line 88
    .line 89
    const-string p1, "SystemAudioActionFromAvr"

    .line 90
    .line 91
    const-string v0, "Device type mismatch, stop the action."

    .line 92
    .line 93
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 98
    .line 99
    .line 100
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 101
    .line 102
    .line 103
    const/4 p0, -0x1

    .line 104
    return p0
.end method

.method public final handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 11
    .line 12
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 13
    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p1, "<Standby> was not sent by the current active source, ignoring. Current active source has logical address "

    .line 19
    .line 20
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 28
    .line 29
    const-string v0, "HdmiCecLocalDeviceTv"

    .line 30
    .line 31
    invoke-static {p0, p1, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, -0x1

    .line 35
    return p0

    .line 36
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleStandby(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final handleSystemAudioModeStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance p0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "Invalid <System Audio Mode Status> message:"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    new-array p1, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return v1

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->parseCommandParamSystemAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_1

    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-eq p1, v0, :cond_2

    .line 51
    .line 52
    new-instance p1, Lcom/android/server/hdmi/SystemAudioActionFromTv;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {p1, p0, v2, v3, v0}, Lcom/android/server/hdmi/SystemAudioActionFromTv;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode$1(Z)V

    .line 67
    .line 68
    .line 69
    :goto_0
    return v1
.end method

.method public final handleTerminateArc(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArc()V

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    new-instance v0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 18
    .line 19
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-direct {v0, p0, p1, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 26
    .line 27
    .line 28
    return v1
.end method

.method public final handleTextViewOn()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->wakeUp()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 p0, -0x1

    .line 16
    return p0
.end method

.method public final handleTimerClearedStatus(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v0, v0, v1

    .line 5
    .line 6
    and-int/lit16 v0, v0, 0xff

    .line 7
    .line 8
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceTimerRecordingResult(II)V

    .line 11
    .line 12
    .line 13
    const/4 p0, -0x1

    .line 14
    return p0
.end method

.method public final handleTimerStatus()I
    .locals 0

    .line 1
    const/4 p0, -0x1

    .line 2
    return p0
.end method

.method public bridge synthetic invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final isArcEstablished()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    move v0, v1

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    return p0

    .line 28
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    return v1
.end method

.method public final isInputReady(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isMessageForSystemAudio(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/16 v0, 0xf

    .line 19
    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public final isSystemAudioActivated()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final isSystemAudioControlFeatureEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioControlFeatureEnabled:Z

    .line 5
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

.method public final notifyArcStatusToAudioService(Ljava/util/List;Z)V
    .locals 8

    .line 1
    new-instance v7, Landroid/media/AudioDeviceAttributes;

    .line 2
    .line 3
    new-instance v5, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda1;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    move-object v6, p1

    .line 30
    check-cast v6, Ljava/util/List;

    .line 31
    .line 32
    const-string v3, ""

    .line 33
    .line 34
    const-string v4, ""

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    const/16 v2, 0xa

    .line 38
    .line 39
    move-object v0, v7

    .line 40
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioDeviceAttributes;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 46
    .line 47
    check-cast p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 50
    .line 51
    invoke-virtual {p0, v7, p2}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final onAddressAllocated(I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mTvInputManager:Landroid/media/tv/TvInputManager;

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$1;

    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Landroid/media/tv/TvInputManager;->registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    .line 50
    .line 51
    .line 52
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-object v2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iget v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 67
    .line 68
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getVendorId()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    .line 102
    .line 103
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mTvInputs:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x3

    .line 116
    const/4 v3, 0x0

    .line 117
    const/4 v4, 0x1

    .line 118
    if-ne p1, v1, :cond_2

    .line 119
    .line 120
    move v1, v4

    .line 121
    goto :goto_2

    .line 122
    :cond_2
    move v1, v3

    .line 123
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 124
    .line 125
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControlHandler:Landroid/os/Handler;

    .line 126
    .line 127
    iget-object v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mResetSkipRoutingControlRunnable:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$$ExternalSyntheticLambda0;

    .line 128
    .line 129
    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 130
    .line 131
    .line 132
    iget-boolean v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSkipRoutingControl:Z

    .line 133
    .line 134
    if-eqz v6, :cond_3

    .line 135
    .line 136
    const-wide/16 v6, 0x7d0

    .line 137
    .line 138
    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    .line 140
    .line 141
    :cond_3
    if-eqz p1, :cond_4

    .line 142
    .line 143
    if-eq p1, v4, :cond_4

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_4
    move v4, v3

    .line 147
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    const/16 v1, 0x82

    .line 155
    .line 156
    const/4 v5, -0x1

    .line 157
    iget-object v6, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 158
    .line 159
    if-eq p1, v5, :cond_5

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_5

    .line 166
    .line 167
    if-nez v4, :cond_8

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isProhibitMode()Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-nez p1, :cond_8

    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->portIdToPath(I)I

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePath()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    invoke-virtual {p0, v0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_5
    iget-object p1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 201
    .line 202
    .line 203
    if-nez v4, :cond_8

    .line 204
    .line 205
    iget-object v4, v6, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_7

    .line 216
    .line 217
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 222
    .line 223
    iget v5, v5, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 224
    .line 225
    if-ne v5, v1, :cond_6

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    invoke-static {v4, p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 237
    .line 238
    .line 239
    move-result-object v4

    .line 240
    invoke-virtual {v0, v4, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 252
    .line 253
    .line 254
    new-instance v2, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 255
    .line 256
    invoke-direct {v2, v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    .line 257
    .line 258
    .line 259
    const-string p1, "HdmiCecLocalDeviceTv#launchRoutingControl()"

    .line 260
    .line 261
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 265
    .line 266
    .line 267
    sget-object p1, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer$1;

    .line 268
    .line 269
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 270
    .line 271
    .line 272
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSelectRequestBuffer:Lcom/android/server/hdmi/SelectRequestBuffer;

    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 275
    .line 276
    .line 277
    new-instance p1, Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 278
    .line 279
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

    .line 280
    .line 281
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    .line 282
    .line 283
    .line 284
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceDiscoveryCallback;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->startQueuedActions()V

    .line 291
    .line 292
    .line 293
    iget-object p1, v6, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_a

    .line 304
    .line 305
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 310
    .line 311
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 312
    .line 313
    if-ne v0, v1, :cond_9

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_a
    const-class p1, Lcom/android/server/hdmi/RequestActiveSourceAction;

    .line 317
    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_b

    .line 323
    .line 324
    const-string v0, "HdmiCecLocalDeviceTv"

    .line 325
    .line 326
    const-string v1, "RequestActiveSourceAction is in progress. Restarting."

    .line 327
    .line 328
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 332
    .line 333
    .line 334
    :cond_b
    new-instance p1, Lcom/android/server/hdmi/RequestActiveSourceAction;

    .line 335
    .line 336
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;

    .line 337
    .line 338
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;)V

    .line 339
    .line 340
    .line 341
    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 342
    .line 343
    .line 344
    iput v3, p1, Lcom/android/server/hdmi/RequestActiveSourceAction;->mSendRetryCount:I

    .line 345
    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 347
    .line 348
    .line 349
    :goto_5
    return-void
.end method

.method public final onHotplug(IZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeCecSwitches(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isEarcSupported()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne p1, v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isConnectedToArcPort(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    const-string v0, "Port ID:%d, 5v=%b"

    .line 62
    .line 63
    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    if-eqz p2, :cond_2

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 69
    .line 70
    if-eqz p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel$1(Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->enableAudioReturnChannel$1(Z)V

    .line 77
    .line 78
    .line 79
    :cond_3
    :goto_0
    const-class p1, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Lcom/android/server/hdmi/HotplugDetectionAction;

    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 98
    .line 99
    check-cast p1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 102
    .line 103
    .line 104
    iput v3, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mTimeoutCount:I

    .line 105
    .line 106
    iput v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/server/hdmi/HotplugDetectionAction;->pollAllDevices()V

    .line 109
    .line 110
    .line 111
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 112
    .line 113
    iget-boolean p2, p0, Lcom/android/server/hdmi/HotplugDetectionAction;->mIsTvDevice:Z

    .line 114
    .line 115
    if-eqz p2, :cond_4

    .line 116
    .line 117
    const/16 p2, 0x1388

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_4
    const p2, 0xea60

    .line 121
    .line 122
    .line 123
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 124
    .line 125
    .line 126
    :cond_5
    return-void
.end method

.method public final onNewAvrAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const v1, 0xf000

    .line 21
    .line 22
    .line 23
    and-int/2addr v1, v0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-ne v1, v0, :cond_0

    .line 27
    .line 28
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v0, v2

    .line 31
    :goto_0
    const/4 v1, 0x0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 53
    .line 54
    .line 55
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 56
    .line 57
    invoke-interface {v2, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(I)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcFeatureEnabled:Landroid/util/SparseBooleanArray;

    .line 71
    .line 72
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    const-class p1, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_2

    .line 85
    .line 86
    invoke-virtual {p0, v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    :goto_1
    return-void
.end method

.method public final onStandby(ZILcom/android/server/hdmi/HdmiControlService$27;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string/jumbo v1, "tv_send_standby_on_sleep"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-ne v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-nez p1, :cond_2

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    const/16 v0, 0x36

    .line 45
    .line 46
    const/16 v1, 0xf

    .line 47
    .line 48
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;

    .line 53
    .line 54
    invoke-direct {v0, p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Lcom/android/server/hdmi/HdmiControlService$27;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method public final processDelayedMessages(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mDelayedMessageBuffer:Lcom/android/server/hdmi/DelayedMessageBuffer;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 19
    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Checking message for address:"

    .line 24
    .line 25
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    new-array v3, v2, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 56
    .line 57
    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 58
    .line 59
    if-eq v3, p1, :cond_0

    .line 60
    .line 61
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 68
    .line 69
    const/16 v4, 0x82

    .line 70
    .line 71
    iget-object v5, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 72
    .line 73
    if-ne v3, v4, :cond_1

    .line 74
    .line 75
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-virtual {v5, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isInputReady(I)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_1

    .line 84
    .line 85
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {v5, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 92
    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v4, "Processing message:"

    .line 97
    .line 98
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    new-array v3, v2, [Ljava/lang/Object;

    .line 109
    .line 110
    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    return-void
.end method

.method public final sendStandby(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    const/16 v1, 0x36

    .line 29
    .line 30
    invoke-static {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {v0, p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final setAudioStatus(IZ)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecVolumeControl()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioMute:Z

    .line 20
    .line 21
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSystemAudioVolume:I

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    const/16 p1, 0x65

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 33
    .line 34
    .line 35
    new-instance p2, Landroid/content/Intent;

    .line 36
    .line 37
    const-string v1, "android.hardware.hdmi.action.OSD_MESSAGE"

    .line 38
    .line 39
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_ID"

    .line 43
    .line 44
    const/4 v2, 0x2

    .line 45
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    .line 47
    .line 48
    const-string v1, "android.hardware.hdmi.extra.MESSAGE_EXTRA_PARAM1"

    .line 49
    .line 50
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendBroadcastAsUser(Landroid/content/Intent;)V

    .line 54
    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0

    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method public final setPreferredAddress(I)V
    .locals 0

    .line 1
    const-string p0, "HdmiCecLocalDeviceTv"

    .line 2
    .line 3
    const-string p1, "Preferred addres will not be stored for TV"

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setPrevPortId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mPrevPortId:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

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

.method public final setSystemAudioMode$1(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioControlFeatureEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p0, "Cannot turn on system audio mode because the System Audio Control feature is disabled."

    .line 11
    .line 12
    new-array p1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "System Audio Mode change[old:%b new:%b]"

    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mAudioManager:Lcom/android/server/hdmi/AudioManagerWrapper;

    .line 44
    .line 45
    check-cast v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/android/server/hdmi/DefaultAudioManagerWrapper;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setHdmiSystemAudioSupported(Z)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "[A]UpdateSystemAudio mode[on=%b] output=[%X]"

    .line 66
    .line 67
    invoke-static {v2, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 71
    .line 72
    monitor-enter v0

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eq v2, p1, :cond_1

    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 82
    .line 83
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->setSystemAudioActivated(Z)V

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Lcom/android/server/hdmi/HdmiControlService;->announceSystemAudioModeChange(Z)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 95
    if-eqz p1, :cond_2

    .line 96
    .line 97
    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mArcEstablished:Z

    .line 98
    .line 99
    if-nez v3, :cond_2

    .line 100
    .line 101
    const/4 p1, 0x1

    .line 102
    invoke-virtual {p0, p1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    if-nez p1, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    monitor-exit v0

    .line 112
    return-void

    .line 113
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0
.end method

.method public final startArcAction(ZLcom/android/server/hdmi/HdmiControlService$35;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAvrDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "HdmiCecLocalDeviceTv"

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string p1, "Failed to start arc action; No AVR device."

    .line 13
    .line 14
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x3

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->canStartArcUpdateAction(IZ)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 31
    .line 32
    const/4 v4, 0x6

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    const-string v2, "Failed to start arc action; ARC configuration check failed."

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isConnectedToArcPort(I)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 56
    .line 57
    .line 58
    new-instance p1, Landroid/content/Intent;

    .line 59
    .line 60
    const-string v0, "android.hardware.hdmi.action.OSD_MESSAGE"

    .line 61
    .line 62
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v0, "android.hardware.hdmi.extra.MESSAGE_ID"

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendBroadcastAsUser(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    :cond_1
    invoke-virtual {p0, v4, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    if-eqz p1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->earcBlocksArcConnection()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    const-string p1, "ARC connection blocked because eARC connection is established or being established."

    .line 87
    .line 88
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v4, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    const/4 v1, 0x0

    .line 96
    const-class v2, Lcom/android/server/hdmi/RequestArcInitiationAction;

    .line 97
    .line 98
    const-class v3, Lcom/android/server/hdmi/RequestArcTerminationAction;

    .line 99
    .line 100
    if-eqz p1, :cond_5

    .line 101
    .line 102
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    check-cast p0, Lcom/android/server/hdmi/RequestArcInitiationAction;

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 122
    .line 123
    check-cast p0, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    new-instance p1, Lcom/android/server/hdmi/RequestArcInitiationAction;

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/HdmiControlService$35;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->hasAction(Ljava/lang/Class;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_6

    .line 150
    .line 151
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    check-cast p0, Lcom/android/server/hdmi/RequestArcTerminationAction;

    .line 160
    .line 161
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 162
    .line 163
    check-cast p0, Ljava/util/ArrayList;

    .line 164
    .line 165
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_6
    new-instance p1, Lcom/android/server/hdmi/RequestArcTerminationAction;

    .line 170
    .line 171
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-direct {p1, p0, v0, p2}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/HdmiControlService$35;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 179
    .line 180
    .line 181
    :goto_0
    return-void
.end method

.method public final startOneTouchRecord(I[B)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const-string v2, "HdmiCecLocalDeviceTv"

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const-string p2, "Can not start one touch record. CEC control is disabled."

    .line 16
    .line 17
    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const/16 p2, 0x33

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->checkRecorder(I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string p2, "Invalid recorder address:"

    .line 33
    .line 34
    invoke-static {p1, p2, v2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/16 p2, 0x31

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 40
    .line 41
    .line 42
    return v1

    .line 43
    :cond_1
    if-eqz p2, :cond_2

    .line 44
    .line 45
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiRecordSources;->checkRecordSource([B)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    new-instance v0, Lcom/android/server/hdmi/OneTouchRecordAction;

    .line 52
    .line 53
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchRecordAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 57
    .line 58
    .line 59
    new-instance p0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v0, "Start new [One Touch Record]-Target:"

    .line 62
    .line 63
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, ", recordSource:"

    .line 70
    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const/4 p0, -0x1

    .line 89
    return p0

    .line 90
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v1, "Invalid record source."

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-static {v2, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    const/16 p2, 0x32

    .line 112
    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 114
    .line 115
    .line 116
    const/4 p0, 0x2

    .line 117
    return p0
.end method

.method public final startRoutingControl(IILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    if-ne p1, p2, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 22
    .line 23
    .line 24
    const-class p1, Lcom/android/server/hdmi/RoutingControlAction;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Ljava/lang/Class;)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Lcom/android/server/hdmi/RoutingControlAction;

    .line 30
    .line 31
    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/hdmi/RoutingControlAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final updateActiveInput(IZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActivePath(I)V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p2, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 16
    .line 17
    iget v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p2, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    invoke-static {p1, p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_0
    invoke-virtual {p2, v0}, Lcom/android/server/hdmi/HdmiControlService;->invokeInputChangeListener(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final updateActiveSource(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getLocalActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 18
    .line 19
    iget v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 20
    .line 21
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setActiveSource(IILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget p2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    .line 25
    .line 26
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 27
    .line 28
    invoke-virtual {v1, p2}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eq p2, v1, :cond_1

    .line 43
    .line 44
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    .line 45
    .line 46
    iget-object p2, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-ne p1, p2, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActivePortId()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setPrevPortId(I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method
