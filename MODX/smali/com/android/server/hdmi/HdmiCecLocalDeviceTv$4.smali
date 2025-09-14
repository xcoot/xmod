.class public final Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Lcom/android/server/hdmi/HdmiControlService$27;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    .line 8
    return-void
.end method


# virtual methods
.method public final onSendCompleted(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$4;->val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    .line 5
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 8
    return-void
.end method
