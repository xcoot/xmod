.class public final Lcom/android/server/usb/UsbUI;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# instance fields
.field public final isSupportWirelessCharging:Z

.field public final mBatteryEventReceiver:Lcom/android/server/usb/UsbUI$1;

.field public mBootCompleted:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mEmergencyModeReceiver:Lcom/android/server/usb/UsbUI$1;

.field public final mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

.field public final mHostInterfaceObserver:Lcom/android/server/usb/UsbUI$6;

.field public final mHostPathObserver:Lcom/android/server/usb/UsbUI$6;

.field public mIsEmergencyMode:Z

.field public mIsHiccupState:Z

.field public mIsHostConnected:Z

.field public mIsUsbBlkNotiShown:Z

.field public mIsUsbPortWet:Z

.field public final mLocaleChangedReceiver:Lcom/android/server/usb/UsbUI$1;

.field public final mLoggingLock:Ljava/lang/Object;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mPortReceiver:Lcom/android/server/usb/UsbUI$1;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSourcePower:Z

.field public final mSupportDualRole:Z

.field public mSystemReady:Z

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public mUsbBlkPendingIntent:Ljava/lang/String;

.field public final mUsbCcicObserver:Lcom/android/server/usb/UsbUI$6;

.field public final mUsbControlObserver:Lcom/android/server/usb/UsbUI$6;

.field public final mUsbWetStateReceiver:Lcom/android/server/usb/UsbUI$1;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static -$$Nest$mnotifyIncreaseBatteryUsage(Lcom/android/server/usb/UsbUI;Z)V
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const v1, 0x1040fab

    .line 18
    .line 19
    .line 20
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    const v5, 0x1040fab

    .line 26
    .line 27
    .line 28
    const-wide/16 v6, 0x8a

    .line 29
    .line 30
    const/16 v3, 0x6b

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    move-object v2, p0

    .line 34
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 p1, 0x6b

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-void
.end method

.method public static -$$Nest$smisIncludeOption(JJ)Z
    .locals 0

    .line 1
    and-long/2addr p0, p2

    .line 2
    const-wide/16 p2, 0x0

    .line 3
    .line 4
    cmp-long p0, p0, p2

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 12

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 20
    .line 21
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "SEC_FLOATING_FEATURE_BATTERY_SUPPORT_WIRELESS_HV"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->isSupportWirelessCharging:Z

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    iput-object v1, p0, Lcom/android/server/usb/UsbUI;->mUsbBlkPendingIntent:Ljava/lang/String;

    .line 38
    .line 39
    new-instance v1, Lcom/android/server/usb/UsbUI$1;

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Lcom/android/server/usb/UsbUI$1;

    .line 46
    .line 47
    const/4 v3, 0x1

    .line 48
    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Lcom/android/server/usb/UsbUI$1;

    .line 52
    .line 53
    const/4 v4, 0x2

    .line 54
    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    .line 55
    .line 56
    .line 57
    new-instance v4, Lcom/android/server/usb/UsbUI$1;

    .line 58
    .line 59
    const/4 v5, 0x3

    .line 60
    invoke-direct {v4, p0, v5}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    .line 61
    .line 62
    .line 63
    new-instance v5, Lcom/android/server/usb/UsbUI$1;

    .line 64
    .line 65
    const/4 v6, 0x4

    .line 66
    invoke-direct {v5, p0, v6}, Lcom/android/server/usb/UsbUI$1;-><init>(Lcom/android/server/usb/UsbUI;I)V

    .line 67
    .line 68
    .line 69
    new-instance v6, Lcom/android/server/usb/UsbUI$6;

    .line 70
    .line 71
    const/4 v7, 0x0

    .line 72
    invoke-direct {v6, p0, v7}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;I)V

    .line 73
    .line 74
    .line 75
    new-instance v7, Lcom/android/server/usb/UsbUI$6;

    .line 76
    .line 77
    const/4 v8, 0x1

    .line 78
    invoke-direct {v7, p0, v8}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;I)V

    .line 79
    .line 80
    .line 81
    new-instance v8, Lcom/android/server/usb/UsbUI$6;

    .line 82
    .line 83
    const/4 v9, 0x2

    .line 84
    invoke-direct {v8, p0, v9}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;I)V

    .line 85
    .line 86
    .line 87
    new-instance v9, Lcom/android/server/usb/UsbUI$6;

    .line 88
    .line 89
    const/4 v10, 0x3

    .line 90
    invoke-direct {v9, p0, v10}, Lcom/android/server/usb/UsbUI$6;-><init>(Lcom/android/server/usb/UsbUI;I)V

    .line 91
    .line 92
    .line 93
    new-instance v10, Ljava/lang/Object;

    .line 94
    .line 95
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 96
    .line 97
    .line 98
    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mContentResolver:Landroid/content/ContentResolver;

    .line 107
    .line 108
    new-instance v10, Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 109
    .line 110
    invoke-direct {v10, p0, p2}, Lcom/android/server/usb/UsbUI$UsbUIHandler;-><init>(Lcom/android/server/usb/UsbUI;Landroid/os/Looper;)V

    .line 111
    .line 112
    .line 113
    iput-object v10, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 114
    .line 115
    const-string/jumbo p2, "power"

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    check-cast p2, Landroid/os/PowerManager;

    .line 123
    .line 124
    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    .line 125
    .line 126
    const/4 v10, 0x1

    .line 127
    const-string v11, "UsbUI"

    .line 128
    .line 129
    invoke-virtual {p2, v10, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 134
    .line 135
    invoke-virtual {p2, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 136
    .line 137
    .line 138
    const-string/jumbo p2, "telecom"

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Landroid/telecom/TelecomManager;

    .line 146
    .line 147
    iput-object p2, p0, Lcom/android/server/usb/UsbUI;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 148
    .line 149
    const-string p2, "/sys/class/typec"

    .line 150
    .line 151
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    iput-boolean p2, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 156
    .line 157
    const-string p0, "DEVPATH=/devices/virtual/host_notify"

    .line 158
    .line 159
    invoke-virtual {v6, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string p0, "DEVTYPE=usb_interface"

    .line 163
    .line 164
    invoke-virtual {v7, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string p0, "DEVPATH=/devices/virtual/sec/ccic"

    .line 168
    .line 169
    invoke-virtual {v9, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string p0, "DEVPATH=/devices/virtual/usb_notify/usb_control"

    .line 173
    .line 174
    invoke-virtual {v8, p0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    new-instance p0, Landroid/content/IntentFilter;

    .line 178
    .line 179
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 180
    .line 181
    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const/4 p2, 0x2

    .line 185
    invoke-virtual {p1, v1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    new-instance p0, Landroid/content/IntentFilter;

    .line 189
    .line 190
    const-string v0, "com.samsung.intent.action.USB_WET_STATE"

    .line 191
    .line 192
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1, v2, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 196
    .line 197
    .line 198
    new-instance p0, Landroid/content/IntentFilter;

    .line 199
    .line 200
    const-string v0, "android.hardware.usb.action.USB_PORT_CHANGED"

    .line 201
    .line 202
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v3, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 206
    .line 207
    .line 208
    new-instance p0, Landroid/content/IntentFilter;

    .line 209
    .line 210
    const-string v0, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    .line 211
    .line 212
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p1, v4, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 216
    .line 217
    .line 218
    new-instance p0, Landroid/content/IntentFilter;

    .line 219
    .line 220
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 221
    .line 222
    invoke-direct {p0, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v5, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 226
    .line 227
    .line 228
    return-void
.end method


# virtual methods
.method public final cancelNotification(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "UsbUI:"

    .line 2
    .line 3
    const-string v1, "  mSystemReady="

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m$1(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 10
    .line 11
    const-string v2, "  mBootCompleted="

    .line 12
    .line 13
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    .line 18
    .line 19
    const-string v2, "  mSupportDualRole="

    .line 20
    .line 21
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mSupportDualRole:Z

    .line 26
    .line 27
    const-string v2, "  mIsEmergencyMode="

    .line 28
    .line 29
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsEmergencyMode:Z

    .line 34
    .line 35
    const-string v2, "  mIsHostConnected="

    .line 36
    .line 37
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsHostConnected:Z

    .line 42
    .line 43
    const-string v2, "  mSourcePower="

    .line 44
    .line 45
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mSourcePower:Z

    .line 50
    .line 51
    const-string v2, "  mIsHiccupState="

    .line 52
    .line 53
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsHiccupState:Z

    .line 58
    .line 59
    const-string v2, "  mIsUsbPortWet="

    .line 60
    .line 61
    invoke-static {v0, v1, p1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-boolean p0, p0, Lcom/android/server/usb/UsbUI;->mIsUsbPortWet:Z

    .line 66
    .line 67
    invoke-static {v0, p0, p1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final loggingUsbWetDetection(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mLoggingLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 6
    .line 7
    const-string/jumbo v2, "yyyy/MM/dd/HH:mm"

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/io/File;

    .line 26
    .line 27
    const-string v3, "/data/log/wet_detect.log"

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    invoke-virtual {v2, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 35
    .line 36
    .line 37
    new-instance v3, Ljava/io/FileWriter;

    .line 38
    .line 39
    invoke-direct {v3, v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 40
    .line 41
    .line 42
    :try_start_1
    const-string v0, "%s %s%n"

    .line 43
    .line 44
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v3, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_5

    .line 61
    :catch_0
    :try_start_3
    const-string p1, "UsbUI"

    .line 62
    .line 63
    const-string v0, "Can\'t close stream"

    .line 64
    .line 65
    :goto_0
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_1
    move-exception p1

    .line 70
    move-object v0, v3

    .line 71
    goto :goto_3

    .line 72
    :catch_1
    move-object v0, v3

    .line 73
    goto :goto_1

    .line 74
    :catchall_2
    move-exception p1

    .line 75
    goto :goto_3

    .line 76
    :catch_2
    :goto_1
    :try_start_4
    const-string p1, "UsbUI"

    .line 77
    .line 78
    const-string v1, "Can\'t write to /data/log/wet_detect.log"

    .line 79
    .line 80
    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 81
    .line 82
    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :catch_3
    :try_start_6
    const-string p1, "UsbUI"

    .line 90
    .line 91
    const-string v0, "Can\'t close stream"

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 95
    return-void

    .line 96
    :goto_3
    if-eqz v0, :cond_1

    .line 97
    .line 98
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :catch_4
    :try_start_8
    const-string v0, "UsbUI"

    .line 103
    .line 104
    const-string v1, "Can\'t close stream"

    .line 105
    .line 106
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :cond_1
    :goto_4
    throw p1

    .line 110
    :goto_5
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 111
    throw p1
.end method

.method public final notifyUsbInterface(IIILjava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "add"

    .line 2
    .line 3
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string/jumbo v2, "remove"

    .line 8
    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    filled-new-array {v1, p2, p3}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    const-string/jumbo p3, "notifyUsbInterface: [%d, %d, %d]"

    .line 36
    .line 37
    .line 38
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    const-string p3, "UsbUI"

    .line 43
    .line 44
    invoke-static {p3, p2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/4 p3, 0x6

    .line 52
    if-eqz p2, :cond_1

    .line 53
    .line 54
    if-ne p1, p3, :cond_2

    .line 55
    .line 56
    const/4 v6, 0x0

    .line 57
    const-wide/16 v7, 0x2

    .line 58
    .line 59
    const/16 v4, 0x7c

    .line 60
    .line 61
    const v5, 0x1040f94

    .line 62
    .line 63
    .line 64
    move-object v3, p0

    .line 65
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    if-ne p1, p3, :cond_2

    .line 76
    .line 77
    const/16 p1, 0x7c

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 80
    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    const-wide/16 v4, 0x3

    .line 84
    .line 85
    const/16 v1, 0x6f

    .line 86
    .line 87
    const v2, 0x1040f95

    .line 88
    .line 89
    .line 90
    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUI;->postNotification(IIIJ)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    return-void
.end method

.method public final notifyUsbRestrict(Z)V
    .locals 10

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    .line 5
    .line 6
    new-instance v1, Landroid/content/ComponentName;

    .line 7
    .line 8
    const-string v2, "com.android.keyguard"

    .line 9
    .line 10
    const-string v3, "com.android.keyguard.KeyguardSecUpdateMonitorImpl"

    .line 11
    .line 12
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    iget-object v4, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/high16 v7, 0x4000000

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    invoke-static/range {v4 .. v9}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const v4, 0x1080b9f

    .line 32
    .line 33
    .line 34
    const-wide/16 v7, 0x8a

    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const v3, 0x1040fd6

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    move-object v0, p0

    .line 44
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    .line 50
    .line 51
    const/16 v1, 0x7d

    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public final notifyUsbWetDetection(Z)V
    .locals 14

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const v0, 0x1040fef

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    const-string v2, "com.samsung.intent.action.USB_WET_STATE"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/high16 v2, 0x4000000

    .line 22
    .line 23
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {v0, v4, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "UsbUI"

    .line 31
    .line 32
    const-string/jumbo v2, "turnOnDisplay()"

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/android/server/usb/UsbUI;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const-wide/16 v5, 0x1770

    .line 43
    .line 44
    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    const/4 v3, 0x3

    .line 56
    invoke-virtual {v2, v5, v6, v3, v1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mPowerManager:Landroid/os/PowerManager;

    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 66
    .line 67
    .line 68
    :cond_1
    new-instance v11, Landroid/app/Notification$Action;

    .line 69
    .line 70
    invoke-direct {v11, v4, p1, v0}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 71
    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    const/16 v6, 0x66

    .line 75
    .line 76
    const v7, 0x1040ff0

    .line 77
    .line 78
    .line 79
    const v8, 0x1040fed

    .line 80
    .line 81
    .line 82
    const v9, 0x1080b76

    .line 83
    .line 84
    .line 85
    const-wide/16 v12, 0xe

    .line 86
    .line 87
    move-object v5, p0

    .line 88
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    .line 89
    .line 90
    .line 91
    const-string p1, "WD"

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const/16 p1, 0x66

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->cancelNotification(I)V

    .line 100
    .line 101
    .line 102
    const-string p1, "DD"

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->loggingUsbWetDetection(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    return-void
.end method

.method public final onAwakeStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onKeyguardStateChanged(Z)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    const-class v2, Landroid/app/KeyguardManager;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/app/KeyguardManager;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    const-class v3, Landroid/app/KeyguardManager;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Landroid/app/KeyguardManager;

    .line 28
    .line 29
    invoke-virtual {v2, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/usb/UsbUI;->mIsUsbBlkNotiShown:Z

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const-string p1, "UsbUI"

    .line 45
    .line 46
    const-string v0, "Clear USB Restriction Noti by Screen Unlock"

    .line 47
    .line 48
    invoke-static {p1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->notifyUsbRestrict(Z)V

    .line 53
    .line 54
    .line 55
    const-string p1, "OFF"

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI;->sendingUsbRestrictionStateIntent(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_0
    return-void
.end method

.method public final postNotification(IIIJ)V
    .locals 9

    .line 1
    const/4 v6, 0x0

    .line 2
    const v4, 0x1080ba0

    .line 3
    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move v2, p2

    .line 9
    move v3, p3

    .line 10
    move-wide v7, p4

    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/usb/UsbUI;->postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final postNotificationInternal(IIIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V
    .locals 12

    .line 1
    move-object v9, p0

    .line 2
    move v10, p1

    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v2, p7, v0

    .line 6
    .line 7
    if-eqz v2, :cond_1

    .line 8
    .line 9
    const-wide/16 v2, -0x200

    .line 10
    .line 11
    and-long v2, p7, v2

    .line 12
    .line 13
    cmp-long v0, v2, v0

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 22
    .line 23
    .line 24
    new-instance v11, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 25
    .line 26
    move-object v0, v11

    .line 27
    move-object v1, p0

    .line 28
    move v2, p2

    .line 29
    move v3, p3

    .line 30
    move/from16 v4, p4

    .line 31
    .line 32
    move-object/from16 v5, p5

    .line 33
    .line 34
    move-object/from16 v6, p6

    .line 35
    .line 36
    move-wide/from16 v7, p7

    .line 37
    .line 38
    invoke-direct/range {v0 .. v8}, Lcom/android/server/usb/UsbUI$NotificationWrapper;-><init>(Lcom/android/server/usb/UsbUI;IIILandroid/app/PendingIntent;Landroid/app/Notification$Action;J)V

    .line 39
    .line 40
    .line 41
    iget-boolean v0, v9, Lcom/android/server/usb/UsbUI;->mSystemReady:Z

    .line 42
    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    iget-object v0, v9, Lcom/android/server/usb/UsbUI;->mNotificationManager:Landroid/app/NotificationManager;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-boolean v1, v11, Lcom/android/server/usb/UsbUI$NotificationWrapper;->instant:Z

    .line 50
    .line 51
    if-nez v1, :cond_3

    .line 52
    .line 53
    iget-boolean v1, v11, Lcom/android/server/usb/UsbUI$NotificationWrapper;->ongoing:Z

    .line 54
    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {v11}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->build()Landroid/app/Notification;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    :goto_2
    iget-object v0, v9, Lcom/android/server/usb/UsbUI;->mHandler:Lcom/android/server/usb/UsbUI$UsbUIHandler;

    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x2

    .line 75
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iput v10, v1, Landroid/os/Message;->arg1:I

    .line 80
    .line 81
    iput-object v11, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_4
    iget-object v0, v9, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 88
    .line 89
    move v1, p2

    .line 90
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string v2, "Before system ready: title="

    .line 97
    .line 98
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "UsbUI"

    .line 109
    .line 110
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :goto_3
    return-void
.end method

.method public final sendingUsbRestrictionStateIntent(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbUI;->mBootCompleted:Z

    .line 2
    .line 3
    const-string v1, "UsbUI"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v2, "com.samsung.intent.action.USB_RESTRICTION_STATE"

    .line 10
    .line 11
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "RestrictionState"

    .line 15
    .line 16
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    const-string p1, "broadcasting intent to Lock Screen"

    .line 20
    .line 21
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/usb/UsbUI;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 27
    .line 28
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const-string p0, "Failed to broadcast intent to Lock Screen"

    .line 33
    .line 34
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/android/server/usb/UsbUI;->mUsbBlkPendingIntent:Ljava/lang/String;

    .line 39
    .line 40
    const-string p0, "Pending intent to Lock Screen"

    .line 41
    .line 42
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
