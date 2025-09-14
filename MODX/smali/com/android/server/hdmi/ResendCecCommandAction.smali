.class public final Lcom/android/server/hdmi/ResendCecCommandAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/hdmi/ResendCecCommandAction$1;

.field public final mCommand:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mResultCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field public mRetransmissionCount:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mRetransmissionCount:I

    .line 7
    new-instance p1, Lcom/android/server/hdmi/ResendCecCommandAction$1;

    .line 9
    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ResendCecCommandAction$1;-><init>(Lcom/android/server/hdmi/ResendCecCommandAction;)V

    .line 12
    iput-object p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCallback:Lcom/android/server/hdmi/ResendCecCommandAction$1;

    .line 14
    iput-object p2, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCommand:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 16
    iput-object p3, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mResultCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .line 18
    const/4 p1, 0x1

    .line 19
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 21
    const/16 p2, 0x12c

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    .line 26
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 3
    const-string v1, "ResendCecCommandAction"

    .line 5
    if-eq v0, p1, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "Timeout in invalid state:[Expected:"

    .line 11
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 16
    const-string v2, ", Actual:"

    .line 18
    const-string v3, "]"

    .line 20
    invoke-static {p0, p1, v2, v3, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_0
    const/4 p1, 0x1

    .line 29
    if-ne v0, p1, :cond_1

    .line 31
    const-string/jumbo p1, "sendCommandWithoutRetries failed, retry"

    .line 34
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 39
    iget-object v0, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCommand:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 41
    iget-object p0, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCallback:Lcom/android/server/hdmi/ResendCecCommandAction$1;

    .line 43
    invoke-virtual {p1, v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 46
    :cond_1
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final start()V
    .locals 1

    .line 1
    const-string p0, "ResendCecCommandAction"

    .line 3
    const-string v0, "ResendCecCommandAction started"

    .line 5
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void
.end method
