.class public final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 6
    return-void
.end method


# virtual methods
.method public onCecMessage(II[B)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;

    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;II[B)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

.method public onHotplugEvent(IZ)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;

    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;IZ)V

    .line 6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method
