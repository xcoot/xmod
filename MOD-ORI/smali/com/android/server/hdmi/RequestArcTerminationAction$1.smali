.class public final Lcom/android/server/hdmi/RequestArcTerminationAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/RequestArcTerminationAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/RequestArcTerminationAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/RequestArcTerminationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcTerminationAction;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/RequestArcTerminationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcTerminationAction;

    .line 6
    .line 7
    iget v0, p0, Lcom/android/server/hdmi/RequestArcAction;->mAvrAddress:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {p1, v1, v0, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x3

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
