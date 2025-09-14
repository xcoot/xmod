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

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 13
    .line 14
    const-wide/16 v1, 0x7530

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->wasDeviceIdleFor(J)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyHandler:Landroid/os/Handler;

    .line 33
    .line 34
    new-instance v3, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    invoke-direct {v3, p0, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void

    .line 44
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService;->mPowerManagerInternal:Lcom/android/server/hdmi/PowerManagerInternalWrapper;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/android/server/hdmi/PowerManagerInternalWrapper;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 51
    .line 52
    const-wide/16 v1, 0x7530

    .line 53
    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManagerInternal;->wasDeviceIdleFor(J)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 71
    .line 72
    iget-object v1, v0, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDeviceType()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    const/4 v2, 0x0

    .line 89
    const-string v3, "DelayedActiveSourceLostStandbyRunnable"

    .line 90
    .line 91
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->setAndBroadcastActiveSource(IIILjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    return-void

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->startHdmiCecActiveSourceLostActivity()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->mDelayedStandbyOnActiveSourceLostHandler:Landroid/os/Handler;

    .line 119
    .line 120
    new-instance v1, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$6;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;I)V

    .line 124
    .line 125
    .line 126
    const-wide/16 v2, 0x7530

    .line 127
    .line 128
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    .line 130
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
