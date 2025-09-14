.class public final Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;
.super Landroid/os/UEventObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "USB UEVENT: "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "UsbDeviceManager"

    .line 22
    .line 23
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    new-instance v3, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 31
    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v3, v1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v3}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string/jumbo v0, "sEventLogger == null"

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :goto_0
    const-string v0, "USB_STATE"

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "ACCESSORY"

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 76
    .line 77
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 78
    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const-string v0, "GETPROTOCOL"

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    const-string p1, "got accessory get protocol"

    .line 92
    .line 93
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 97
    .line 98
    iget-object p1, p1, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v0

    .line 104
    iput-wide v0, p1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 107
    .line 108
    invoke-static {p0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mresetAccessoryHandshakeTimeoutHandler(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    const-string v0, "SENDSTRING"

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    const-string p1, "got accessory send string"

    .line 121
    .line 122
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 126
    .line 127
    iget-object p1, p1, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 128
    .line 129
    const/16 v0, 0x15

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    .line 133
    .line 134
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 135
    .line 136
    invoke-static {p0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mresetAccessoryHandshakeTimeoutHandler(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    const-string v0, "START"

    .line 141
    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    if-eqz p1, :cond_4

    .line 147
    .line 148
    const-string p1, "got accessory start"

    .line 149
    .line 150
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 156
    .line 157
    const/16 v0, 0x14

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    .line 161
    .line 162
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 165
    .line 166
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 170
    .line 171
    .line 172
    :cond_4
    :goto_1
    return-void
.end method
