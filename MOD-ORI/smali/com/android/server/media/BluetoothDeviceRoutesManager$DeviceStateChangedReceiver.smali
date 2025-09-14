.class public final Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const/4 p1, -0x1

    .line 2
    iget v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 8
    .line 9
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMr2ServiceNonMainBgThread()Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mHandler:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->-$$Nest$mhandleBluetoothAdapterStateChange(Lcom/android/server/media/BluetoothDeviceRoutesManager;I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sparse-switch v0, :sswitch_data_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :sswitch_0
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    const/4 p1, 0x3

    .line 63
    goto :goto_1

    .line 64
    :sswitch_1
    const-string v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_2

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    const/4 p1, 0x2

    .line 74
    goto :goto_1

    .line 75
    :sswitch_2
    const-string v0, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    if-nez p2, :cond_3

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 p1, 0x1

    .line 85
    goto :goto_1

    .line 86
    :sswitch_3
    const-string v0, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    .line 87
    .line 88
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-nez p2, :cond_4

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_4
    const/4 p1, 0x0

    .line 96
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 97
    .line 98
    .line 99
    goto :goto_2

    .line 100
    :pswitch_1
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMr2ServiceNonMainBgThread()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_5

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mHandler:Landroid/os/Handler;

    .line 109
    .line 110
    new-instance p2, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-direct {p2, p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    iget-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->updateBluetoothRoutes()V

    .line 122
    .line 123
    .line 124
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    .line 125
    .line 126
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager;->mListener:Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;

    .line 127
    .line 128
    invoke-interface {p0}, Lcom/android/server/media/BluetoothRouteController$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated()V

    .line 129
    .line 130
    .line 131
    :goto_2
    return-void

    .line 132
    nop

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x693eab85 -> :sswitch_3
        -0x2486726f -> :sswitch_2
        0x46028ae6 -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
