.class public final Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;->this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    .line 7
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->disableArc()V

    .line 10
    const/4 p1, 0x0

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    const-string v1, "Failed to send <Report Arc Initiated>."

    .line 15
    invoke-static {v1, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    .line 21
    :goto_0
    return-void
.end method
