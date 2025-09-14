.class public final Lcom/android/server/camera/CameraServiceProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 p1, 0x3

    .line 2
    const/4 v0, 0x2

    .line 3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v2, -0x1

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    sparse-switch v3, :sswitch_data_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :sswitch_0
    const-string v3, "android.intent.action.USER_ADDED"

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v2, 0x6

    .line 29
    goto :goto_0

    .line 30
    :sswitch_1
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 31
    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v2, 0x5

    .line 40
    goto :goto_0

    .line 41
    :sswitch_2
    const-string v3, "android.intent.action.USER_INFO_CHANGED"

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    const/4 v2, 0x4

    .line 51
    goto :goto_0

    .line 52
    :sswitch_3
    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_4

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    move v2, p1

    .line 62
    goto :goto_0

    .line 63
    :sswitch_4
    const-string v3, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    move v2, v0

    .line 73
    goto :goto_0

    .line 74
    :sswitch_5
    const-string v3, "android.intent.action.USER_REMOVED"

    .line 75
    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-nez v3, :cond_6

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_6
    const/4 v2, 0x1

    .line 84
    goto :goto_0

    .line 85
    :sswitch_6
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-nez v3, :cond_7

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_7
    const/4 v2, 0x0

    .line 95
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 100
    .line 101
    iget-object v2, p1, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 102
    .line 103
    monitor-enter v2

    .line 104
    :try_start_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 105
    .line 106
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 107
    .line 108
    if-nez p1, :cond_8

    .line 109
    .line 110
    monitor-exit v2

    .line 111
    return-void

    .line 112
    :catchall_0
    move-exception p0

    .line 113
    goto :goto_1

    .line 114
    :cond_8
    iget p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 117
    .line 118
    .line 119
    monitor-exit v2

    .line 120
    goto :goto_3

    .line 121
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    throw p0

    .line 123
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 126
    .line 127
    monitor-enter v2

    .line 128
    :try_start_1
    const-string/jumbo v3, "device"

    .line 129
    .line 130
    .line 131
    const-class v4, Landroid/hardware/usb/UsbDevice;

    .line 132
    .line 133
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    check-cast p2, Landroid/hardware/usb/UsbDevice;

    .line 138
    .line 139
    if-eqz p2, :cond_b

    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    .line 142
    .line 143
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 144
    .line 145
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getHasVideoCapture()Z

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-eqz v3, :cond_b

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    const-string v4, "CameraService_proxy"

    .line 163
    .line 164
    if-nez v3, :cond_9

    .line 165
    .line 166
    const-string p0, "Could not notify cameraserver, camera service not available."

    .line 167
    .line 168
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_9
    if-eqz v1, :cond_a

    .line 173
    .line 174
    move p1, v0

    .line 175
    :cond_a
    :try_start_2
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 176
    .line 177
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    .line 178
    .line 179
    .line 180
    move-result p2

    .line 181
    filled-new-array {p2}, [I

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-interface {p0, p1, p2}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :catch_0
    move-exception p0

    .line 190
    :try_start_3
    const-string p1, "Could not notify cameraserver, remote exception: "

    .line 191
    .line 192
    invoke-static {p1, p0, v4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_2

    .line 196
    :catchall_1
    move-exception p0

    .line 197
    goto :goto_4

    .line 198
    :cond_b
    :goto_2
    monitor-exit v2

    .line 199
    :goto_3
    return-void

    .line 200
    :goto_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    throw p0

    .line 202
    nop

    .line 203
    :sswitch_data_0
    .sparse-switch
        -0x7e02a835 -> :sswitch_6
        -0x7ad942ef -> :sswitch_5
        -0x5fdc9a67 -> :sswitch_4
        -0x16fbb1bb -> :sswitch_3
        -0xc02da2e -> :sswitch_2
        0x3eac4465 -> :sswitch_1
        0x42dd01f1 -> :sswitch_0
    .end sparse-switch

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
