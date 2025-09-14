.class public final Lcom/android/server/hdmi/HdmiControlService$35;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$enabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$35;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiControlService$35;->val$enabled:Z

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onComplete(I)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string v0, "ARC termination before enabling eARC in the HAL failed with result: "

    .line 4
    .line 5
    const-string v1, "HdmiControlService"

    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$35;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mEarcController:Lcom/android/server/hdmi/HdmiEarcController;

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService$35;->val$enabled:Z

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p1, Lcom/android/server/hdmi/HdmiEarcController;->mControlHandler:Landroid/os/Handler;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-ne v1, v2, :cond_1

    .line 30
    .line 31
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiEarcController;->mEarcNativeWrapperImpl:Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;

    .line 32
    .line 33
    invoke-interface {p1, v0}, Lcom/android/server/hdmi/HdmiEarcController$EarcNativeWrapper;->nativeSetEarcEnabled(Z)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$35;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 39
    .line 40
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiControlService$35;->val$enabled:Z

    .line 41
    .line 42
    iget p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mEarcPortId:I

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string/jumbo v2, "setHpdSignalType: portId %b, signal %b"

    .line 60
    .line 61
    .line 62
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 66
    .line 67
    invoke-interface {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetHpdSignalType(II)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string p1, "Should run on service thread."

    .line 74
    .line 75
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p0
.end method
