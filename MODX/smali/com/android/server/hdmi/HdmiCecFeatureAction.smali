.class public abstract Lcom/android/server/hdmi/HdmiCecFeatureAction;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

.field public final mCallbacks:Ljava/util/List;

.field public mOnFinishedCallbacks:Ljava/util/ArrayList;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;

.field public final mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public mState:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Landroid/hardware/hdmi/IHdmiControlCallback;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Ljava/util/List;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 9
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 12
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 13
    new-instance p2, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    invoke-direct {p2, p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;-><init>(Lcom/android/server/hdmi/HdmiCecFeatureAction;Landroid/os/Looper;)V

    .line 14
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    return-void
.end method


# virtual methods
.method public final addTimer(II)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 3
    int-to-long v0, p2

    .line 4
    check-cast p0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 6
    const/16 p2, 0x64

    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, p2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 16
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 6
    check-cast p0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 8
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 11
    return-void
.end method

.method public final finish(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 8
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 15
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mActions:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->checkIfPendingActionsCleared()V

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    .line 25
    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/util/Pair;

    .line 43
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 45
    check-cast v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 47
    iget v1, v1, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 49
    if-eqz v1, :cond_1

    .line 51
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 53
    check-cast v0, Ljava/lang/Runnable;

    .line 55
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    .line 62
    :cond_3
    return-void
.end method

.method public final finishWithCallback(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mCallbacks:Ljava/util/List;

    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 21
    if-nez v1, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const-string v0, "Callback failed:"

    .line 31
    const-string v1, "HdmiCecFeatureAction"

    .line 33
    invoke-static {v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 36
    :cond_1
    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 40
    return-void
.end method

.method public final getSourceAddress()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public abstract handleTimerEvent(I)V
.end method

.method public final pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IJ)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 4
    move-result v2

    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 12
    and-int/lit8 v0, p2, 0x3

    .line 14
    if-eqz v0, :cond_6

    .line 16
    const/high16 v1, 0x30000

    .line 18
    and-int/2addr v1, p2

    .line 19
    if-eqz v1, :cond_5

    .line 21
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 24
    const/4 p2, 0x2

    .line 25
    if-eq v0, p2, :cond_0

    .line 27
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Lcom/android/server/hdmi/HdmiCecController$1;

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Lcom/android/server/hdmi/HdmiCecController$2;

    .line 32
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    const/high16 v0, 0x10000

    .line 39
    const/16 v4, 0xe

    .line 41
    if-eq v1, v0, :cond_2

    .line 43
    :goto_1
    if-ltz v4, :cond_4

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v0

    .line 49
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 55
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, 0x0

    .line 66
    :goto_2
    if-gt v0, v4, :cond_4

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v1

    .line 72
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 90
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 95
    new-instance v8, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;

    .line 97
    move-object v0, v8

    .line 98
    move-object v1, p0

    .line 99
    move-object v4, p1

    .line 100
    move-wide v6, p3

    .line 101
    invoke-direct/range {v0 .. v7}, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/ArrayList;J)V

    .line 104
    iget-wide p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mPollDevicesDelay:J

    .line 106
    invoke-virtual {p2, v8, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    return-void

    .line 110
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 112
    const-string p1, "Invalid iteration strategy:"

    .line 114
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p0

    .line 122
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 124
    const-string p1, "Invalid poll strategy:"

    .line 126
    invoke-static {p2, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    throw p0
.end method

.method public abstract processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
.end method

.method public final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public setActionTimer(Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 3
    return-void
.end method

.method public abstract start()V
.end method
