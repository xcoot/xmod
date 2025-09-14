.class public final Lcom/android/server/hdmi/OneTouchRecordAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRecordSource:[B

.field public final mRecorderAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecordSource:[B

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "Timeout in invalid state:[Expected:"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 13
    .line 14
    const-string v1, ", Actual:"

    .line 15
    .line 16
    const-string v2, "]"

    .line 17
    .line 18
    invoke-static {p0, p1, v1, v2, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string p1, "OneTouchRecordAction"

    .line 23
    .line 24
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 29
    .line 30
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 31
    .line 32
    iget v0, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    .line 33
    .line 34
    const/16 v1, 0x31

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne v0, v2, :cond_4

    .line 6
    .line 7
    iget v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    .line 10
    .line 11
    if-eq v3, v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/16 v4, 0xa

    .line 15
    .line 16
    iget v5, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 17
    .line 18
    if-eq v5, v4, :cond_1

    .line 19
    .line 20
    return v1

    .line 21
    :cond_1
    if-eq v0, v3, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 25
    .line 26
    aget-byte v0, v0, v1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 29
    .line 30
    check-cast v1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 31
    .line 32
    invoke-virtual {v1, v3, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceOneTouchRecordResult(II)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v3, "Got record status:"

    .line 38
    .line 39
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, " from "

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 51
    .line 52
    const-string v3, "OneTouchRecordAction"

    .line 53
    .line 54
    invoke-static {v1, p1, v3}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 p1, 0x2

    .line 58
    if-eq v0, v2, :cond_3

    .line 59
    .line 60
    if-eq v0, p1, :cond_3

    .line 61
    .line 62
    const/4 v1, 0x3

    .line 63
    if-eq v0, v1, :cond_3

    .line 64
    .line 65
    const/4 v1, 0x4

    .line 66
    if-eq v0, v1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    .line 75
    .line 76
    check-cast p0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->clearTimerMessage()V

    .line 79
    .line 80
    .line 81
    :goto_0
    move v1, v2

    .line 82
    :cond_4
    :goto_1
    return v1
.end method

.method public final start()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecordSource:[B

    .line 6
    .line 7
    const/16 v2, 0x9

    .line 8
    .line 9
    iget v3, p0, Lcom/android/server/hdmi/OneTouchRecordAction;->mRecorderAddress:I

    .line 10
    .line 11
    invoke-static {v0, v3, v2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/android/server/hdmi/OneTouchRecordAction$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/android/server/hdmi/OneTouchRecordAction$1;-><init>(Lcom/android/server/hdmi/OneTouchRecordAction;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    .line 22
    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 27
    .line 28
    const v1, 0x1d4c0

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
