.class public final Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 10
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 12
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 14
    const-wide/16 v1, 0x7530

    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->wasDeviceIdleFor(J)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 24
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 26
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 32
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    .line 34
    new-instance v3, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    .line 36
    const/4 v4, 0x2

    .line 37
    invoke-direct {v3, p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V

    .line 40
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 46
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 48
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 50
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 52
    const-wide/16 v1, 0x7530

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->wasDeviceIdleFor(J)Z

    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 60
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 62
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 64
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 70
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 72
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 74
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 77
    move-result v1

    .line 78
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    .line 87
    move-result p0

    .line 88
    const/4 v2, 0x0

    .line 89
    const-string v3, "DelayedActiveSourceLostStandbyRunnable"

    .line 91
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    .line 94
    :goto_1
    return-void

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 97
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 105
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startHdmiCecActiveSourceLostActivity()V

    .line 108
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 110
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 118
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 120
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    .line 122
    const/4 v2, 0x1

    .line 123
    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V

    .line 126
    const-wide/16 v2, 0x7530

    .line 128
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 131
    :cond_2
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
