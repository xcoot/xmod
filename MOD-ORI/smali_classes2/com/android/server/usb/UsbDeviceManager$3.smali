.class public final Lcom/android/server/usb/UsbDeviceManager$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/usb/UsbDeviceManager$3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$3;->this$0:Lcom/android/server/usb/UsbDeviceManager;

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
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "UsbDeviceManager"

    .line 4
    .line 5
    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$3;->$r8$classId:I

    .line 6
    .line 7
    packed-switch v3, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$3;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 13
    .line 14
    const/16 p1, 0xb

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 21
    .line 22
    const-string/jumbo v3, "received ACTION_USB_DEVICE_ATTACHED / ACTION_USB_DEVICE_DETACHED"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "usb"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 54
    .line 55
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    const/16 v2, 0xa

    .line 60
    .line 61
    if-eqz p2, :cond_0

    .line 62
    .line 63
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$3;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    iput v1, p2, Landroid/os/Message;->arg1:I

    .line 77
    .line 78
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$3;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    .line 88
    .line 89
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    .line 95
    iput v0, p2, Landroid/os/Message;->arg1:I

    .line 96
    .line 97
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void

    .line 101
    :pswitch_1
    const-string/jumbo p1, "plugged"

    .line 102
    .line 103
    .line 104
    const/4 v2, -0x1

    .line 105
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const/4 p2, 0x2

    .line 110
    if-ne p1, p2, :cond_1

    .line 111
    .line 112
    move v0, v1

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$3;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 116
    .line 117
    const/16 p1, 0x9

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    .line 121
    .line 122
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :pswitch_2
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 133
    .line 134
    const-string/jumbo v0, "received ACTION_USB_PORT_CHANGED"

    .line 135
    .line 136
    .line 137
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    const-string/jumbo v0, "port"

    .line 141
    .line 142
    .line 143
    const-class v1, Landroid/hardware/usb/ParcelableUsbPort;

    .line 144
    .line 145
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Landroid/hardware/usb/ParcelableUsbPort;

    .line 150
    .line 151
    const-string/jumbo v1, "portStatus"

    .line 152
    .line 153
    .line 154
    const-class v3, Landroid/hardware/usb/UsbPortStatus;

    .line 155
    .line 156
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    check-cast p2, Landroid/hardware/usb/UsbPortStatus;

    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$3;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 165
    .line 166
    const-class v1, Landroid/hardware/usb/UsbManager;

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Landroid/hardware/usb/UsbManager;

    .line 173
    .line 174
    invoke-virtual {v0, p1}, Landroid/hardware/usb/ParcelableUsbPort;->getUsbPort(Landroid/hardware/usb/UsbManager;)Landroid/hardware/usb/UsbPort;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string/jumbo v1, "updateHostState "

    .line 184
    .line 185
    .line 186
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, " status="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 212
    .line 213
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 214
    .line 215
    const/4 p1, 0x7

    .line 216
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const-wide/16 v0, 0x3e8

    .line 224
    .line 225
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 226
    .line 227
    .line 228
    return-void

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
