.class public final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
.implements Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$ActiveWakeLock;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

.field public final val$callback:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 3
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 4
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mPowerManager:Lcom/android/server/hdmi/PowerManagerWrapper;

    .line 5
    new-instance v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 6
    iget-object p1, p1, Lcom/android/server/hdmi/PowerManagerWrapper;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x1

    .line 7
    const-string v2, "HdmiCecLocalDevicePlayback"

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 8
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    const/4 p0, 0x0

    .line 9
    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Lcom/android/server/hdmi/HdmiControlService$27;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    .line 3
    check-cast v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 5
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 10
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 12
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    .line 15
    move-result p0

    .line 16
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object p0

    .line 20
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    const-string v0, "active source: %b. Wake lock acquired"

    .line 26
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public isHeld()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    .line 3
    check-cast p0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 7
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public onSendCompleted(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    .line 5
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    .line 7
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    .line 10
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Ljava/lang/Object;

    .line 3
    check-cast p0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;

    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/PowerManagerWrapper$DefaultWakeLockWrapper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 7
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 10
    const/4 p0, 0x0

    .line 11
    new-array p0, p0, [Ljava/lang/Object;

    .line 13
    const-string v0, "Wake lock released"

    .line 15
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method
