.class public final Lcom/android/server/hdmi/HdmiControlService$22;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field public final synthetic val$command:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final synthetic val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$command:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 8
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .line 10
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/android/server/hdmi/ResendCecCommandAction;

    .line 5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$command:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 7
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .line 9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$22;->val$localDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 11
    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/hdmi/ResendCecCommandAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    .line 17
    :cond_0
    return-void
.end method
