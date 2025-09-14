.class public final Lcom/android/server/hdmi/HdmiCecLocalDevice$4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field public final synthetic val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Lcom/android/server/hdmi/HdmiCecLocalDevice$1;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$4;->val$originalCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    .line 10
    .line 11
    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
