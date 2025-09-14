.class public final Lcom/android/server/hdmi/HdmiControlService$27;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$devices:Ljava/lang/Object;

.field public final synthetic val$standbyAction:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;I[I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$standbyAction:I

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$devices:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$devices:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$standbyAction:I

    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "On standby-action cleared:"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mDeviceType:I

    .line 10
    const-string v2, "HdmiControlService"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$devices:Ljava/lang/Object;

    .line 17
    check-cast v0, Ljava/util/List;

    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 22
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$devices:Ljava/lang/Object;

    .line 24
    check-cast p1, Ljava/util/List;

    .line 26
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$27;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 34
    iget p0, p0, Lcom/android/server/hdmi/HdmiControlService$27;->val$standbyAction:I

    .line 36
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->onPendingActionsCleared(I)V

    .line 39
    :cond_0
    return-void
.end method
