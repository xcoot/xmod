.class public final synthetic Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/ArcTerminationActionFromAvr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/ArcTerminationActionFromAvr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/ArcTerminationActionFromAvr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/ArcTerminationActionFromAvr;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 13
    .line 14
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->setArcStatus(Z)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const-string p1, "Terminate ARC was not successfully sent."

    .line 20
    .line 21
    new-array v0, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x3

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
