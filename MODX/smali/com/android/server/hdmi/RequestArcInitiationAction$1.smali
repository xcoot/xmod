.class public final Lcom/android/server/hdmi/RequestArcInitiationAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/RequestArcInitiationAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/RequestArcInitiationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;

    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/RequestArcInitiationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcInitiationAction;

    .line 5
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 7
    check-cast p1, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 9
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->disableArc()V

    .line 12
    const/4 p1, 0x3

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finishWithCallback(I)V

    .line 16
    :cond_0
    return-void
.end method
