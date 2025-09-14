.class public final Lcom/android/server/usb/UsbHostRestrictor$7;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const-string p1, "UsbHostRestrictor"

    .line 12
    .line 13
    const-string v1, "handleMessage -> MSG_ENTER_RELEASE"

    .line 14
    .line 15
    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    const-string v1, "UsbHostRestrictor"

    .line 27
    .line 28
    const-string v2, "enterRelease: Screen Lock Off"

    .line 29
    .line 30
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    sget v1, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-ne v1, v0, :cond_2

    .line 37
    .line 38
    sput-boolean v2, Lcom/android/server/usb/UsbHostRestrictor;->isLckScrBlock:Z

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->checkWriteValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->getUsbHostDisableSysNodeWritable()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v3, "ON_ALL_SCREEN"

    .line 55
    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->readDisableSysNodefromFile()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v3, "ON_ALL_BOTH"

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbHostRestrictor;->writeDisableSysNodetoFile(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    const-string v0, "0"

    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput v2, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 86
    .line 87
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->stopLockTimer()V

    .line 88
    .line 89
    .line 90
    monitor-exit p1

    .line 91
    goto :goto_3

    .line 92
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    throw p0

    .line 94
    :cond_3
    const-string p1, "UsbHostRestrictor"

    .line 95
    .line 96
    const-string v1, "handleMessage -> MSG_ENTER_RESTRICTION"

    .line 97
    .line 98
    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor$7;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    .line 102
    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const-string p1, "enterRestriction retryCnt("

    .line 107
    .line 108
    sget-object v1, Lcom/android/server/usb/UsbHostRestrictor;->mUsbRestrictLock:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter v1

    .line 111
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    iget-object v3, p0, Lcom/android/server/usb/UsbHostRestrictor;->mContext:Landroid/content/Context;

    .line 116
    .line 117
    const-class v4, Landroid/app/KeyguardManager;

    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Landroid/app/KeyguardManager;

    .line 124
    .line 125
    invoke-virtual {v3, v2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_5

    .line 130
    .line 131
    const-string p1, "UsbHostRestrictor"

    .line 132
    .line 133
    const-string v2, "enterRestriction: Screen Lock On"

    .line 134
    .line 135
    invoke-static {p1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    const-string p1, "2"

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostRestrictor;->writeScrLckBlkSysNodetoFile(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sput v0, Lcom/android/server/usb/UsbHostRestrictor;->mLockStatus:I

    .line 144
    .line 145
    sget-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->mIsDeviceConnected:Z

    .line 146
    .line 147
    if-nez p0, :cond_4

    .line 148
    .line 149
    sget-boolean p0, Lcom/android/server/usb/UsbHostRestrictor;->mIsHostConnected:Z

    .line 150
    .line 151
    if-nez p0, :cond_4

    .line 152
    .line 153
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->startLockTimer()V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :catchall_1
    move-exception p0

    .line 158
    goto :goto_4

    .line 159
    :cond_4
    :goto_2
    monitor-exit v1

    .line 160
    goto :goto_3

    .line 161
    :cond_5
    const-string v2, "UsbHostRestrictor"

    .line 162
    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    .line 169
    .line 170
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string p1, ")"

    .line 174
    .line 175
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {v2, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    sget p1, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    .line 186
    .line 187
    const/16 v2, 0xa

    .line 188
    .line 189
    if-ge p1, v2, :cond_6

    .line 190
    .line 191
    iget-object p0, p0, Lcom/android/server/usb/UsbHostRestrictor;->mHandler:Lcom/android/server/usb/UsbHostRestrictor$7;

    .line 192
    .line 193
    const-wide/16 v2, 0x64

    .line 194
    .line 195
    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 196
    .line 197
    .line 198
    :cond_6
    sget p0, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    .line 199
    .line 200
    add-int/2addr p0, v0

    .line 201
    sput p0, Lcom/android/server/usb/UsbHostRestrictor;->mRetryCntGetIsDeviceLock:I

    .line 202
    .line 203
    monitor-exit v1

    .line 204
    :goto_3
    return-void

    .line 205
    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    throw p0
.end method
