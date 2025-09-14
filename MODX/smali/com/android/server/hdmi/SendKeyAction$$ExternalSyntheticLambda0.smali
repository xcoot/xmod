.class public final synthetic Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/SendKeyAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SendKeyAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SendKeyAction;

    .line 6
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/SendKeyAction$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/hdmi/SendKeyAction;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 9
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->findAudioReceiverAddress()I

    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x71

    .line 15
    invoke-static {p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 22
    return-void
.end method
