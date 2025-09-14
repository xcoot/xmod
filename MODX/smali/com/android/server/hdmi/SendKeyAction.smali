.class public final Lcom/android/server/hdmi/SendKeyAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastKeycode:I

.field public mLastSendKeyTime:J

.field public final mTargetAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 4
    iput p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    .line 6
    iput p3, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 8
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_1

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    const-string p0, "SendKeyAction"

    .line 11
    const-string p1, "Not in a valid state"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 20
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 26
    check-cast p1, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 28
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 31
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 33
    iget p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v0

    .line 42
    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 44
    iget p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 46
    const/16 v0, 0x3e8

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 51
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final processKeyEvent(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_0

    .line 9
    const-string p0, "SendKeyAction"

    .line 11
    const-string p1, "Not in a valid state"

    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 17
    :cond_0
    if-eqz p2, :cond_3

    .line 19
    iget p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 21
    if-eq p1, p2, :cond_1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    move-result-wide v2

    .line 30
    iput-wide v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 32
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    .line 35
    move-result p2

    .line 36
    if-nez p2, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 41
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 44
    return-void

    .line 45
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    move-result-wide v0

    .line 49
    iget-wide v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 51
    sub-long/2addr v0, v2

    .line 52
    const-wide/16 v2, 0x12c

    .line 54
    cmp-long p2, v0, v2

    .line 56
    if-ltz p2, :cond_2

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    move-result-wide v0

    .line 65
    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 67
    :cond_2
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 69
    check-cast p2, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 71
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 74
    iget p2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 76
    const/16 v0, 0x3e8

    .line 78
    invoke-virtual {p0, p2, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 81
    iput p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 86
    if-ne p1, p2, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 94
    :cond_4
    :goto_0
    return-void
.end method

.method public final sendKeyDown(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x5

    .line 9
    const/16 v1, 0x44

    .line 11
    iget v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    .line 13
    if-ne v2, v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 17
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 30
    move-result v0

    .line 31
    invoke-static {v0, v2, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lcom/android/server/hdmi/SendKeyAction$1;

    .line 37
    invoke-direct {v0, p0}, Lcom/android/server/hdmi/SendKeyAction$1;-><init>(Lcom/android/server/hdmi/SendKeyAction;)V

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 47
    move-result v0

    .line 48
    invoke-static {v0, v2, v1, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 55
    :goto_0
    return-void
.end method

.method public final sendKeyUp()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 3
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isVolumeKeycode(I)Z

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x45

    .line 9
    iget v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 15
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 17
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeBehaviorEnabled()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 26
    move-result v0

    .line 27
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;

    .line 33
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/SendKeyAction;)V

    .line 36
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 43
    move-result v0

    .line 44
    invoke-static {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 51
    :goto_0
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastSendKeyTime:J

    .line 12
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    .line 14
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 27
    return-void

    .line 28
    :cond_0
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 30
    const/16 v0, 0x190

    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 35
    return-void
.end method
