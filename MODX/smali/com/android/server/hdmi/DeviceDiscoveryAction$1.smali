.class public final Lcom/android/server/hdmi/DeviceDiscoveryAction$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 6
    return-void
.end method


# virtual methods
.method public final onPollingFinished(Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "DeviceDiscoveryAction"

    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string p1, "No device is detected."

    .line 13
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 19
    return-void

    .line 20
    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    .line 22
    if-nez v0, :cond_1

    .line 24
    const-string p1, "Action was already finished before the callback was called."

    .line 26
    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->wrapUpAndFinish()V

    .line 32
    return-void

    .line 33
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "Device detected: "

    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    move-result-object p1

    .line 54
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/Integer;

    .line 66
    new-instance v1, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;

    .line 68
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 71
    move-result v0

    .line 72
    invoke-direct {v1, v0}, Lcom/android/server/hdmi/DeviceDiscoveryAction$DeviceInfo;-><init>(I)V

    .line 75
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction;->mDevices:Ljava/util/ArrayList;

    .line 77
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->startPhysicalAddressStage()V

    .line 84
    return-void
.end method
