.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService$8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field public final synthetic val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field public final synthetic val$enabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->val$enabled:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "HdmiControlService"

    .line 12
    .line 13
    const-string v1, "Local tv device not available"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiControlService;->invokeCallback(ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->val$enabled:Z

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;->val$callback:Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->changeSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
