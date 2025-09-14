.class public final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurrentRequest:I

.field public mCurrentUsbFunctionsRequested:Z

.field public final mGadgetProxyLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    iput p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 13
    .line 14
    sget-object p3, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 17
    .line 18
    .line 19
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    const-wide/16 p3, 0x0

    .line 21
    .line 22
    :try_start_1
    iput-wide p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 26
    .line 27
    const/4 p3, -0x1

    .line 28
    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    .line 29
    .line 30
    const/16 p3, 0xa

    .line 31
    .line 32
    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    .line 33
    .line 34
    const/16 p3, 0x17

    .line 35
    .line 36
    const/4 p4, 0x0

    .line 37
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    new-instance p1, Ljava/io/File;

    .line 42
    .line 43
    const-string p3, "/sys/class/android_usb/android0/state"

    .line 44
    .line 45
    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, p2, p4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception p0

    .line 61
    goto :goto_0

    .line 62
    :catch_1
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    :goto_0
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 68
    .line 69
    const-string p1, "UsbDeviceManager"

    .line 70
    .line 71
    const-string p2, "Error initializing UsbHandler"

    .line 72
    .line 73
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :goto_1
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 78
    .line 79
    const-string p1, "UsbDeviceManager"

    .line 80
    .line 81
    const-string p2, "Usb gadget hal not found"

    .line 82
    .line 83
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    :goto_2
    return-void
.end method


# virtual methods
.method public final getUsbSpeedCb(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    .line 2
    .line 3
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V

    .line 9
    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :pswitch_1
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const-string p0, "UsbDeviceManager"

    .line 18
    .line 19
    const-string/jumbo p1, "mUsbGadgetHal is null"

    .line 20
    .line 21
    .line 22
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto/16 :goto_7

    .line 26
    .line 27
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->getGadgetHalVersion()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto/16 :goto_7

    .line 34
    .line 35
    :catch_0
    move-exception p0

    .line 36
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 37
    .line 38
    const-string p1, "UsbDeviceManager"

    .line 39
    .line 40
    const-string/jumbo v0, "update Usb gadget version failed"

    .line 41
    .line 42
    .line 43
    invoke-static {p1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    goto/16 :goto_7

    .line 47
    .line 48
    :pswitch_2
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    const-string p1, "UsbDeviceManager"

    .line 59
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v1, "mGadgetHal is null, operationId:"

    .line 63
    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    goto/16 :goto_7

    .line 78
    .line 79
    :cond_1
    int-to-long v0, p0

    .line 80
    :try_start_1
    invoke-interface {p1, v0, v1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->getUsbSpeed(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .line 82
    .line 83
    goto/16 :goto_7

    .line 84
    .line 85
    :catch_1
    move-exception p0

    .line 86
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 87
    .line 88
    const-string p1, "UsbDeviceManager"

    .line 89
    .line 90
    const-string v0, "get UsbSpeed failed"

    .line 91
    .line 92
    invoke-static {p1, v0, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    goto/16 :goto_7

    .line 96
    .line 97
    :pswitch_3
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    .line 104
    .line 105
    monitor-enter v0

    .line 106
    :try_start_2
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 107
    .line 108
    if-nez v3, :cond_2

    .line 109
    .line 110
    const-string p0, "UsbDeviceManager"

    .line 111
    .line 112
    const-string/jumbo p1, "reset Usb Gadget mUsbGadgetHal is null"

    .line 113
    .line 114
    .line 115
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    goto/16 :goto_7

    .line 120
    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_3

    .line 123
    :cond_2
    const/16 v3, 0x8

    .line 124
    .line 125
    :try_start_3
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    .line 127
    .line 128
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 129
    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_2
    move-exception p1

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    :goto_0
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 138
    .line 139
    int-to-long v3, p1

    .line 140
    invoke-interface {v2, v3, v4}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->reset(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :goto_1
    :try_start_4
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 145
    .line 146
    const-string v2, "UsbDeviceManager"

    .line 147
    .line 148
    const-string/jumbo v3, "reset Usb Gadget failed"

    .line 149
    .line 150
    .line 151
    invoke-static {v2, v3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .line 153
    .line 154
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    .line 155
    .line 156
    :goto_2
    monitor-exit v0

    .line 157
    goto/16 :goto_7

    .line 158
    .line 159
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 160
    throw p0

    .line 161
    :pswitch_4
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 162
    .line 163
    if-ne p1, v2, :cond_4

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :cond_4
    move v2, v1

    .line 167
    :goto_4
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 168
    .line 169
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    .line 174
    .line 175
    monitor-enter v0

    .line 176
    :try_start_5
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 177
    .line 178
    invoke-static {v3}, Lcom/android/server/usb/hal/gadget/UsbGadgetHalInstance;->getInstance(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    sput-object v3, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 183
    .line 184
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 185
    .line 186
    if-nez v3, :cond_5

    .line 187
    .line 188
    if-nez v2, :cond_5

    .line 189
    .line 190
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 191
    .line 192
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(IJZ)V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    .line 194
    .line 195
    goto :goto_5

    .line 196
    :catchall_1
    move-exception p0

    .line 197
    goto :goto_6

    .line 198
    :catch_3
    move-exception p0

    .line 199
    :try_start_6
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 200
    .line 201
    const-string p1, "UsbDeviceManager"

    .line 202
    .line 203
    const-string v1, "Usb gadget hal not found"

    .line 204
    .line 205
    invoke-static {p1, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .line 207
    .line 208
    :cond_5
    :goto_5
    monitor-exit v0

    .line 209
    goto/16 :goto_7

    .line 210
    .line 211
    :goto_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 212
    throw p0

    .line 213
    :pswitch_5
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 220
    .line 221
    if-eq p1, v2, :cond_9

    .line 222
    .line 223
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 224
    .line 225
    const-wide/16 v4, 0x2

    .line 226
    .line 227
    cmp-long p1, v2, v4

    .line 228
    .line 229
    if-nez p1, :cond_6

    .line 230
    .line 231
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    .line 232
    .line 233
    .line 234
    goto/16 :goto_7

    .line 235
    .line 236
    :cond_6
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 237
    .line 238
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(IJZ)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_7

    .line 242
    .line 243
    :pswitch_6
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 244
    .line 245
    const-string v0, "UsbDeviceManager"

    .line 246
    .line 247
    const-string/jumbo v3, "processing MSG_GET_CURRENT_USB_FUNCTIONS"

    .line 248
    .line 249
    .line 250
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .line 252
    .line 253
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    .line 254
    .line 255
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 256
    .line 257
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 258
    .line 259
    if-eqz v3, :cond_8

    .line 260
    .line 261
    const-string v3, "UsbDeviceManager"

    .line 262
    .line 263
    const-string/jumbo v4, "updating mCurrentFunctions"

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v3, Ljava/lang/Long;

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 274
    .line 275
    .line 276
    move-result-wide v3

    .line 277
    const-wide/16 v5, -0x2

    .line 278
    .line 279
    and-long/2addr v3, v5

    .line 280
    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 281
    .line 282
    const-string v3, "UsbDeviceManager"

    .line 283
    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v5, "mCurrentFunctions:"

    .line 287
    .line 288
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 292
    .line 293
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v5, "applied:"

    .line 297
    .line 298
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 302
    .line 303
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v4

    .line 310
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 314
    .line 315
    if-ne p1, v2, :cond_7

    .line 316
    .line 317
    move v1, v2

    .line 318
    :cond_7
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 319
    .line 320
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :pswitch_7
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 325
    .line 326
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    const-string v3, "UsbDeviceManager"

    .line 331
    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    const-string v5, "Set functions timed out! no reply from usb hal ,operationId:"

    .line 335
    .line 336
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    .line 348
    .line 349
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 350
    .line 351
    if-eq p1, v2, :cond_9

    .line 352
    .line 353
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 354
    .line 355
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(IJZ)V

    .line 356
    .line 357
    .line 358
    goto :goto_7

    .line 359
    :pswitch_8
    sget-object p1, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    const-wide/16 v2, 0x0

    .line 366
    .line 367
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(IJZ)V

    .line 368
    .line 369
    .line 370
    :cond_9
    :goto_7
    return-void

    .line 371
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final handlerInitDone(I)V
    .locals 2

    .line 1
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 2
    .line 3
    int-to-long v0, p1

    .line 4
    invoke-interface {p0, v0, v1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->getCurrentUsbFunctions(J)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final resetCb(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 4
    .line 5
    const-string p0, "UsbDeviceManager"

    .line 6
    .line 7
    const-string/jumbo p1, "resetCb fail"

    .line 8
    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setCurrentUsbFunctionsCb(IJJIZ)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 2
    .line 3
    if-ne v0, p6, :cond_2

    .line 4
    .line 5
    const/16 v0, 0xf

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    cmp-long p2, p4, p2

    .line 14
    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    .line 20
    .line 21
    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo p3, "notifyCurrentFunction request:"

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p3, " status:"

    .line 35
    .line 36
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    const-string p3, "UsbDeviceManager"

    .line 47
    .line 48
    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    if-nez p7, :cond_2

    .line 58
    .line 59
    const-string p1, "Setting default fuctions"

    .line 60
    .line 61
    invoke-static {p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    const/16 p1, 0xe

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_0
    return-void
.end method

.method public final setEnabledFunctions(IJZ)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 10
    .line 11
    const-string v5, "UsbDeviceManager"

    .line 12
    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v7, "setEnabledFunctionsi functions="

    .line 16
    .line 17
    .line 18
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v7, ", forceRestart="

    .line 25
    .line 26
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v7, ", operationId="

    .line 33
    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    iget v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    .line 48
    .line 49
    const/16 v6, 0xc

    .line 50
    .line 51
    const-wide/16 v7, 0x0

    .line 52
    .line 53
    if-ge v5, v6, :cond_0

    .line 54
    .line 55
    const-wide/16 v5, 0x400

    .line 56
    .line 57
    and-long/2addr v5, v2

    .line 58
    cmp-long v5, v5, v7

    .line 59
    .line 60
    if-eqz v5, :cond_0

    .line 61
    .line 62
    const-string v0, "UsbDeviceManager"

    .line 63
    .line 64
    const-string v1, "Could not set unsupported function for the GadgetHal"

    .line 65
    .line 66
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    iget-wide v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 71
    .line 72
    cmp-long v5, v5, v2

    .line 73
    .line 74
    if-nez v5, :cond_1

    .line 75
    .line 76
    iget-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 77
    .line 78
    if-eqz v5, :cond_1

    .line 79
    .line 80
    if-eqz v4, :cond_6

    .line 81
    .line 82
    :cond_1
    const-string v4, "UsbDeviceManager"

    .line 83
    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v6, "Setting USB config to "

    .line 87
    .line 88
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static/range {p2 .. p3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .line 104
    .line 105
    iput-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 106
    .line 107
    const/4 v4, 0x0

    .line 108
    iput-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 109
    .line 110
    iput-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    .line 111
    .line 112
    cmp-long v5, v2, v7

    .line 113
    .line 114
    const/4 v6, 0x1

    .line 115
    if-nez v5, :cond_2

    .line 116
    .line 117
    move v5, v6

    .line 118
    goto :goto_0

    .line 119
    :cond_2
    move v5, v4

    .line 120
    :goto_0
    invoke-static/range {p2 .. p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    const-string v9, "UsbDeviceManager"

    .line 125
    .line 126
    const-string/jumbo v10, "setUsbConfig("

    .line 127
    .line 128
    .line 129
    const-string v11, ") request:"

    .line 130
    .line 131
    invoke-static {v10, v2, v3, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    iget v11, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 136
    .line 137
    add-int/2addr v11, v6

    .line 138
    iput v11, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 139
    .line 140
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    invoke-static {v9, v10}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    const/16 v15, 0x11

    .line 151
    .line 152
    invoke-virtual {v1, v15}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    .line 154
    .line 155
    const/16 v13, 0xf

    .line 156
    .line 157
    invoke-virtual {v1, v13}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    .line 159
    .line 160
    const/16 v9, 0xe

    .line 161
    .line 162
    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    .line 164
    .line 165
    iget-object v14, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    .line 166
    .line 167
    monitor-enter v14

    .line 168
    :try_start_0
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 169
    .line 170
    if-nez v9, :cond_3

    .line 171
    .line 172
    const-string v0, "UsbDeviceManager"

    .line 173
    .line 174
    const-string/jumbo v4, "setUsbConfig mUsbGadgetHal is null"

    .line 175
    .line 176
    .line 177
    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    goto/16 :goto_4

    .line 182
    .line 183
    :catchall_0
    move-exception v0

    .line 184
    move-object v4, v14

    .line 185
    goto/16 :goto_5

    .line 186
    .line 187
    :cond_3
    const-wide/16 v9, 0x1

    .line 188
    .line 189
    and-long/2addr v9, v2

    .line 190
    cmp-long v7, v9, v7

    .line 191
    .line 192
    if-eqz v7, :cond_4

    .line 193
    .line 194
    :try_start_1
    const-class v7, Landroid/debug/AdbManagerInternal;

    .line 195
    .line 196
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    check-cast v7, Landroid/debug/AdbManagerInternal;

    .line 201
    .line 202
    invoke-virtual {v7, v4}, Landroid/debug/AdbManagerInternal;->startAdbdForTransport(B)V

    .line 203
    .line 204
    .line 205
    goto :goto_1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    move-object v4, v14

    .line 208
    goto :goto_2

    .line 209
    :cond_4
    const-class v7, Landroid/debug/AdbManagerInternal;

    .line 210
    .line 211
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    check-cast v7, Landroid/debug/AdbManagerInternal;

    .line 216
    .line 217
    invoke-virtual {v7, v4}, Landroid/debug/AdbManagerInternal;->stopAdbdForTransport(B)V

    .line 218
    .line 219
    .line 220
    :goto_1
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 221
    .line 222
    iget v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .line 224
    int-to-long v7, v0

    .line 225
    move-wide v11, v2

    .line 226
    move v0, v13

    .line 227
    move-object v4, v14

    .line 228
    move-wide v13, v7

    .line 229
    move v7, v15

    .line 230
    move v15, v5

    .line 231
    :try_start_2
    invoke-interface/range {v9 .. v15}, Lcom/android/server/usb/hal/gadget/UsbGadgetHal;->setCurrentUsbFunctions(IJJZ)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 235
    .line 236
    .line 237
    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 242
    .line 243
    const-wide/16 v8, 0xbb8

    .line 244
    .line 245
    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 246
    .line 247
    .line 248
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 249
    .line 250
    if-eqz v0, :cond_5

    .line 251
    .line 252
    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 253
    .line 254
    .line 255
    invoke-static {v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 260
    .line 261
    const-wide/16 v7, 0x1388

    .line 262
    .line 263
    invoke-virtual {v1, v0, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    .line 265
    .line 266
    :cond_5
    const-string v0, "UsbDeviceManager"

    .line 267
    .line 268
    const-string/jumbo v5, "timeout message queued"

    .line 269
    .line 270
    .line 271
    invoke-static {v0, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :catchall_1
    move-exception v0

    .line 276
    goto :goto_5

    .line 277
    :catch_1
    move-exception v0

    .line 278
    :goto_2
    :try_start_3
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 279
    .line 280
    const-string v5, "UsbDeviceManager"

    .line 281
    .line 282
    const-string v7, "Remoteexception while calling setCurrentUsbFunctions"

    .line 283
    .line 284
    invoke-static {v5, v7, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    .line 286
    .line 287
    :goto_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 288
    :goto_4
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 289
    .line 290
    if-eqz v0, :cond_6

    .line 291
    .line 292
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_6

    .line 297
    .line 298
    invoke-virtual {v1, v2, v3, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    .line 299
    .line 300
    .line 301
    :cond_6
    return-void

    .line 302
    :goto_5
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 303
    throw v0
.end method
