.class public final Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 5
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 8
    const-string/jumbo v1, "sys.shutdown.requested"

    .line 11
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "1"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 32
    move-result v3

    .line 33
    sparse-switch v3, :sswitch_data_0

    .line 36
    goto :goto_0

    .line 37
    :sswitch_0
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 39
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x3

    .line 47
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    .line 50
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 v2, 0x2

    .line 58
    goto :goto_0

    .line 59
    :sswitch_2
    const-string v3, "android.intent.action.SCREEN_ON"

    .line 61
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p2

    .line 65
    if-nez p2, :cond_2

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v2, p1

    .line 69
    goto :goto_0

    .line 70
    :sswitch_3
    const-string v3, "android.intent.action.SCREEN_OFF"

    .line 72
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_3

    .line 78
    goto :goto_0

    .line 79
    :cond_3
    move v2, v0

    .line 80
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 83
    goto :goto_1

    .line 84
    :pswitch_0
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 86
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_5

    .line 92
    if-nez v1, :cond_5

    .line 94
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V

    .line 99
    goto :goto_1

    .line 100
    :pswitch_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->localeToMenuLanguage(Ljava/util/Locale;)Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 110
    iget-object p2, p2, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 112
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result p2

    .line 116
    if-nez p2, :cond_5

    .line 118
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 120
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->assertRunOnServiceThread()V

    .line 123
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService;->mMenuLanguage:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_5

    .line 131
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 134
    move-result-object p2

    .line 135
    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->broadcastMenuLanguage(Ljava/lang/String;)Z

    .line 138
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 140
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 143
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecController;->isLanguage(Ljava/lang/String;)Z

    .line 146
    move-result p2

    .line 147
    if-nez p2, :cond_4

    .line 149
    goto :goto_1

    .line 150
    :cond_4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 152
    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetLanguage(Ljava/lang/String;)V

    .line 155
    goto :goto_1

    .line 156
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 158
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerStandbyOrTransient()Z

    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_5

    .line 164
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->onWakeUp(I)V

    .line 169
    goto :goto_1

    .line 170
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 172
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isPowerOnOrTransient()Z

    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_5

    .line 178
    if-nez v1, :cond_5

    .line 180
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$HdmiControlBroadcastReceiver;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->onStandby(I)V

    .line 185
    :cond_5
    :goto_1
    return-void

    .line 186
    nop

    .line 187
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_3
        -0x56ac2893 -> :sswitch_2
        0x9780086 -> :sswitch_1
        0x741706da -> :sswitch_0
    .end sparse-switch

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
