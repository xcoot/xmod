.class public final Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 5

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 5
    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, p2, v1}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    .line 12
    move-result v0

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const/4 v2, -0x1

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 20
    move-result v3

    .line 21
    sparse-switch v3, :sswitch_data_0

    .line 24
    :goto_0
    move v1, v2

    .line 25
    goto :goto_1

    .line 26
    :sswitch_0
    const-string/jumbo v1, "mhl_power_charge_enabled"

    .line 29
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x2

    .line 37
    goto :goto_1

    .line 38
    :sswitch_1
    const-string/jumbo v3, "mhl_input_switching_enabled"

    .line 41
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_2

    .line 47
    goto :goto_0

    .line 48
    :sswitch_2
    const-string/jumbo v1, "device_name"

    .line 51
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move v1, p1

    .line 59
    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 62
    goto/16 :goto_4

    .line 64
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 66
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    goto/16 :goto_4

    .line 73
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 75
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 82
    monitor-enter v1

    .line 83
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mMhlInputChangeEnabled:Z

    .line 85
    monitor-exit v1

    .line 86
    goto :goto_4

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0

    .line 90
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 92
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0, p2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    move-result-object p2

    .line 106
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    move-result v0

    .line 110
    if-eqz v0, :cond_3

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    move-object v1, p2

    .line 114
    :goto_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 116
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 119
    move-result-object p2

    .line 120
    check-cast p2, Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object p2

    .line 126
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_5

    .line 132
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 138
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDisplayName()Ljava/lang/String;

    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v3

    .line 150
    if-eqz v3, :cond_4

    .line 152
    goto :goto_3

    .line 153
    :cond_4
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v3, v1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDisplayName(Ljava/lang/String;)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 164
    move-result-object v3

    .line 165
    iget-object v4, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    .line 167
    monitor-enter v4

    .line 168
    :try_start_1
    iput-object v3, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 170
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 174
    move-result v0

    .line 175
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;

    .line 178
    move-result-object v0

    .line 179
    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 183
    goto :goto_3

    .line 184
    :catchall_1
    move-exception p0

    .line 185
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    throw p0

    .line 187
    :cond_5
    :goto_4
    return-void

    .line 188
    nop

    .line 189
    :sswitch_data_0
    .sparse-switch
        -0x5bf9652c -> :sswitch_2
        -0x4b40ad13 -> :sswitch_1
        -0x34cb9782 -> :sswitch_0
    .end sparse-switch

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
