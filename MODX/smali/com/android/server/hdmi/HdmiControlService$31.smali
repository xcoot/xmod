.class public final Lcom/android/server/hdmi/HdmiControlService$31;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 6
    return-void
.end method


# virtual methods
.method public final onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$31;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 6
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 8
    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$31$1;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1, p0}, Lcom/android/server/hdmi/HdmiControlService$31$1;-><init>(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 17
    new-instance p0, Lcom/android/server/hdmi/HdmiCecController$6;

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiControlService$31$1;)V

    .line 22
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method
