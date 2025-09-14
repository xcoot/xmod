.class public abstract Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAccessoryConnectionStartTime:J

.field public mAudioAccessoryConnected:Z

.field public mAudioAccessorySupported:Z

.field public mBootCompleted:Z

.field public mBroadcastedIntent:Landroid/content/Intent;

.field public mConfigured:Z

.field public mConnected:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field public mCurrentFunctions:J

.field public mCurrentFunctionsApplied:Z

.field public mCurrentGadgetHalVersion:I

.field public mCurrentUsbFunctionsReceived:Z

.field public mCurrentUser:I

.field public mHideUsbNotiForSecUsbSmartEP:Z

.field public mHideUsbNotification:Z

.field public mHostConnected:Z

.field public mInHostModeWithNoAccessoryConnected:Z

.field public mIsMtpServiceBound:Z

.field public mMidiCard:I

.field public mMidiDevice:I

.field public mMidiEnabled:Z

.field public final mMtpServiceConnection:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mPendingBootAccessoryHandshakeBroadcast:Z

.field public mPendingBootBroadcast:Z

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public mResetUsbGadgetDisableDebounce:Z

.field public mScreenLocked:Z

.field public mScreenUnlockedFunctions:J

.field public mSecCurrentFunctions:J

.field public mSendStringCount:I

.field public final mSettings:Landroid/content/SharedPreferences;

.field public mSinkPower:Z

.field public mSourcePower:Z

.field public mStartAccessory:Z

.field public mSupportsAllCombinations:Z

.field public mSystemReady:Z

.field public mUsbAccessoryConnected:Z

.field public final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field public mUsbCharging:Z

.field public final mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mUsbNotificationId:I

.field public mUsbSpeed:I

.field public final mUseUsbNotification:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    .line 12
    .line 13
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    .line 14
    .line 15
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMtpServiceConnection:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 27
    .line 28
    iput-object p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 38
    .line 39
    const/4 p3, 0x1

    .line 40
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 41
    .line 42
    new-instance p4, Ljava/io/File;

    .line 43
    .line 44
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 45
    .line 46
    .line 47
    move-result-object p5

    .line 48
    const-string v0, "UsbDeviceManagerPrefs.xml"

    .line 49
    .line 50
    invoke-direct {p4, p5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object p5

    .line 57
    invoke-virtual {p5, p4, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 58
    .line 59
    .line 60
    move-result-object p4

    .line 61
    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    .line 62
    .line 63
    if-nez p4, :cond_0

    .line 64
    .line 65
    sget-object p4, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 66
    .line 67
    const-string p4, "UsbDeviceManager"

    .line 68
    .line 69
    const-string p5, "Couldn\'t load shared preferences"

    .line 70
    .line 71
    invoke-static {p4, p5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 76
    .line 77
    iget p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v1, "usb-screen-unlocked-config-"

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p5

    .line 94
    const-string v0, ""

    .line 95
    .line 96
    invoke-interface {p4, p5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    invoke-static {p4}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 101
    .line 102
    .line 103
    move-result-wide p4

    .line 104
    iput-wide p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 105
    .line 106
    :goto_0
    invoke-static {p2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    if-eqz p4, :cond_1

    .line 111
    .line 112
    invoke-virtual {p4}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    const/4 p4, 0x0

    .line 118
    :goto_1
    if-eqz p4, :cond_2

    .line 119
    .line 120
    invoke-virtual {p4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    .line 121
    .line 122
    .line 123
    move-result p4

    .line 124
    if-eqz p4, :cond_2

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    const p4, 0x111026c

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_3

    .line 139
    .line 140
    move p1, p3

    .line 141
    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    .line 142
    .line 143
    return-void
.end method

.method public static dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/16 v1, 0x3f

    .line 3
    .line 4
    if-ge v0, v1, :cond_2

    .line 5
    .line 6
    const-wide/16 v1, 0x1

    .line 7
    .line 8
    shl-long v7, v1, v0

    .line 9
    .line 10
    and-long v1, p4, v7

    .line 11
    .line 12
    const-wide/16 v3, 0x0

    .line 13
    .line 14
    cmp-long v1, v1, v3

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move-object v3, p0

    .line 25
    move-object v4, p1

    .line 26
    move-wide v5, p2

    .line 27
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-static {v7, v8}, Landroid/hardware/usb/gadget/V1_0/GadgetFunction;->toString(J)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-void
.end method

.method public static getAppliedFunctions(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p0, v0

    .line 4
    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/16 v1, 0x4

    .line 17
    .line 18
    :goto_0
    return-wide v1

    .line 19
    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    or-long/2addr p0, v1

    .line 26
    :cond_2
    return-wide p0
.end method

.method public static isAdbEnabled()Z
    .locals 2

    .line 1
    const-class v0, Landroid/debug/AdbManagerInternal;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/debug/AdbManagerInternal;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/debug/AdbManagerInternal;->isAdbEnabled(B)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public static isEDMRestrictionPolicy()Z
    .locals 4

    .line 1
    const-string v0, "UsbDeviceManager"

    .line 2
    .line 3
    :try_start_0
    const-string/jumbo v1, "restriction_policy"

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-direct {v2, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-interface {v1, v2, v3}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isUsbMediaPlayerAvailable(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 33
    .line 34
    const-string v1, "USB_MEDIA_PLAYER_AVAILABLE is false"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return v3

    .line 40
    :catch_0
    move-exception v1

    .line 41
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 42
    .line 43
    const-string v2, " Error while communicating with RestrictionPolicy : "

    .line 44
    .line 45
    invoke-static {v0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    const/4 v0, 0x1

    .line 49
    return v0
.end method

.method public static isUsbDataTransferActive(J)Z
    .locals 4

    .line 1
    const-wide/16 v0, 0x4

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-wide/16 v0, 0x10

    .line 11
    .line 12
    and-long/2addr p0, v0

    .line 13
    cmp-long p0, p0, v2

    .line 14
    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method


# virtual methods
.method public final broadcastUsbAccessoryHandshake()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_HANDSHAKE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x11000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "android.hardware.usb.extra.ACCESSORY_UEVENT_TIME"

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "android.hardware.usb.extra.ACCESSORY_STRING_COUNT"

    .line 23
    .line 24
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "android.hardware.usb.extra.ACCESSORY_START"

    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "android.hardware.usb.extra.ACCESSORY_HANDSHAKE_END"

    .line 39
    .line 40
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 41
    .line 42
    .line 43
    move-result-wide v2

    .line 44
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "broadcasting "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, " extras: "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "UsbDeviceManager"

    .line 77
    .line 78
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    const-wide/16 v0, 0x0

    .line 85
    .line 86
    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    .line 87
    .line 88
    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 90
    .line 91
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    .line 92
    .line 93
    return-void
.end method

.method public final finishBoot(I)V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 2
    .line 3
    const-string v0, "finishBoot"

    .line 4
    .line 5
    const-string v1, "UsbDeviceManager"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 11
    .line 12
    if-eqz v0, :cond_4

    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    .line 15
    .line 16
    if-eqz v0, :cond_4

    .line 17
    .line 18
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    .line 19
    .line 20
    if-eqz v0, :cond_4

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 28
    .line 29
    invoke-static {v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {p0, v3, v4, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    .line 34
    .line 35
    .line 36
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 37
    .line 38
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 43
    .line 44
    const-wide/16 v5, 0x0

    .line 45
    .line 46
    cmp-long v0, v3, v5

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v3, "finishBoot mScreenUnlockedFunctions="

    .line 53
    .line 54
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 58
    .line 59
    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 82
    .line 83
    .line 84
    :goto_0
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 85
    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 89
    .line 90
    iget-object v0, p1, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 91
    .line 92
    monitor-enter v0

    .line 93
    :try_start_0
    iget-object p1, p1, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 94
    .line 95
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    .line 109
    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    .line 113
    .line 114
    .line 115
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    .line 116
    .line 117
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    .line 121
    .line 122
    .line 123
    :cond_4
    return-void
.end method

.method public final getMidiCardDevice()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string/jumbo v2, "sys.usb.controller"

    .line 4
    .line 5
    .line 6
    const-string v3, ""

    .line 7
    .line 8
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_4

    .line 17
    .line 18
    new-instance v3, Ljava/io/File;

    .line 19
    .line 20
    const-string v4, "/sys/class/udc/"

    .line 21
    .line 22
    const-string v5, "/gadget/sound"

    .line 23
    .line 24
    invoke-static {v4, v2, v5}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-direct {v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-static {v3, v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    array-length v3, v2

    .line 47
    if-ne v3, v0, :cond_2

    .line 48
    .line 49
    aget-object v2, v2, v1

    .line 50
    .line 51
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;

    .line 52
    .line 53
    invoke-direct {v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v2, v3}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    array-length v3, v2

    .line 61
    if-ne v3, v0, :cond_1

    .line 62
    .line 63
    const-string/jumbo v3, "midiC(\\d+)D(\\d+)"

    .line 64
    .line 65
    .line 66
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    aget-object v1, v2, v1

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    .line 95
    .line 96
    const/4 v0, 0x2

    .line 97
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    .line 106
    .line 107
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v1, "Found MIDI card "

    .line 112
    .line 113
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, " device "

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    .line 127
    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    const-string v0, "UsbDeviceManager"

    .line 136
    .line 137
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 142
    .line 143
    const-string v0, "MIDI name not match"

    .line 144
    .line 145
    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p0

    .line 149
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 150
    .line 151
    const-string v0, "MIDI device not match"

    .line 152
    .line 153
    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 158
    .line 159
    const-string/jumbo v0, "sound card not match"

    .line 160
    .line 161
    .line 162
    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 167
    .line 168
    const-string/jumbo v0, "sound device not found"

    .line 169
    .line 170
    .line 171
    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    .line 176
    .line 177
    const-string v0, "controller name not found"

    .line 178
    .line 179
    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    throw p0
.end method

.method public abstract getUsbSpeedCb(I)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    iget v3, v0, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/16 v4, 0x14

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    if-eq v3, v4, :cond_41

    .line 12
    .line 13
    const/16 v6, 0x15

    .line 14
    .line 15
    if-eq v3, v6, :cond_40

    .line 16
    .line 17
    const/16 v6, 0x18

    .line 18
    .line 19
    const-wide/16 v7, 0x0

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    if-eq v3, v6, :cond_3f

    .line 23
    .line 24
    const/16 v6, 0x65

    .line 25
    .line 26
    if-eq v3, v6, :cond_3d

    .line 27
    .line 28
    const-wide/16 v10, 0x2

    .line 29
    .line 30
    const-wide/32 v12, 0x40000

    .line 31
    .line 32
    .line 33
    const-wide/16 v14, 0x4

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v4, 0x2

    .line 37
    packed-switch v3, :pswitch_data_0

    .line 38
    .line 39
    .line 40
    goto/16 :goto_2e

    .line 41
    .line 42
    :pswitch_0
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 49
    .line 50
    if-ne v3, v5, :cond_0

    .line 51
    .line 52
    move v3, v5

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    move v3, v9

    .line 55
    :goto_0
    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 56
    .line 57
    if-ne v3, v4, :cond_1

    .line 58
    .line 59
    goto/16 :goto_2e

    .line 60
    .line 61
    :cond_1
    const-string v3, "UsbDeviceManager"

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v6, "handleMessage -> MSG_UPDATE_SCREEN_LOCK: mScreenLocked="

    .line 66
    .line 67
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 71
    .line 72
    if-ne v6, v5, :cond_2

    .line 73
    .line 74
    move v6, v5

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    move v6, v9

    .line 77
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 88
    .line 89
    if-ne v0, v5, :cond_3

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    move v5, v9

    .line 93
    :goto_2
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 94
    .line 95
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 96
    .line 97
    if-nez v0, :cond_4

    .line 98
    .line 99
    goto/16 :goto_2e

    .line 100
    .line 101
    :cond_4
    if-eqz v5, :cond_5

    .line 102
    .line 103
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 104
    .line 105
    if-nez v0, :cond_43

    .line 106
    .line 107
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_2e

    .line 115
    .line 116
    :cond_5
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 117
    .line 118
    cmp-long v0, v3, v7

    .line 119
    .line 120
    if-eqz v0, :cond_43

    .line 121
    .line 122
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 123
    .line 124
    and-long/2addr v3, v14

    .line 125
    cmp-long v0, v3, v7

    .line 126
    .line 127
    if-eqz v0, :cond_43

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_2e

    .line 133
    .line 134
    :pswitch_1
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v0, Ljava/lang/Long;

    .line 143
    .line 144
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 145
    .line 146
    .line 147
    move-result-wide v3

    .line 148
    iput-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 149
    .line 150
    const-string v0, "UsbDeviceManager"

    .line 151
    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    const-string v4, "handleMessage -> MSG_SET_SCREEN_UNLOCKED_FUNCTIONS: mScreenUnlockedFunctions="

    .line 155
    .line 156
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    iget-wide v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 160
    .line 161
    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 176
    .line 177
    and-long/2addr v3, v12

    .line 178
    cmp-long v0, v3, v7

    .line 179
    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_6

    .line 187
    .line 188
    iput-wide v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 189
    .line 190
    const-string/jumbo v0, "persist.sys.usb.config"

    .line 191
    .line 192
    .line 193
    const-string v3, "adb"

    .line 194
    .line 195
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const-string v0, "UsbDeviceManager"

    .line 199
    .line 200
    const-string v3, "Set persist.sys.usb.config to adb"

    .line 201
    .line 202
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :cond_6
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_7

    .line 211
    .line 212
    const-wide/16 v14, 0x5

    .line 213
    .line 214
    :cond_7
    invoke-static {v14, v15}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    const-string/jumbo v3, "persist.sys.usb.config"

    .line 219
    .line 220
    .line 221
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const-string v3, "UsbDeviceManager"

    .line 225
    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    const-string v5, "Set persist.sys.usb.config to "

    .line 229
    .line 230
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    :goto_3
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    .line 244
    .line 245
    if-eqz v0, :cond_8

    .line 246
    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 252
    .line 253
    iget v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 254
    .line 255
    const-string/jumbo v4, "usb-screen-unlocked-config-"

    .line 256
    .line 257
    .line 258
    invoke-static {v3, v4}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    iget-wide v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 263
    .line 264
    invoke-static {v4, v5}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    .line 270
    .line 271
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    .line 273
    .line 274
    :cond_8
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 275
    .line 276
    if-nez v0, :cond_9

    .line 277
    .line 278
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 279
    .line 280
    cmp-long v0, v3, v7

    .line 281
    .line 282
    if-eqz v0, :cond_9

    .line 283
    .line 284
    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_2e

    .line 288
    .line 289
    :cond_9
    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 290
    .line 291
    .line 292
    goto/16 :goto_2e

    .line 293
    .line 294
    :pswitch_2
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 295
    .line 296
    const-string v0, "UsbDeviceManager"

    .line 297
    .line 298
    const-string v2, "handleMessage -> MSG_LOCALE_CHANGED"

    .line 299
    .line 300
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 304
    .line 305
    .line 306
    goto/16 :goto_2e

    .line 307
    .line 308
    :pswitch_3
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 309
    .line 310
    const-string v3, "UsbDeviceManager"

    .line 311
    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v6, "handleMessage -> MSG_UPDATE_HOST_STATE: connected="

    .line 315
    .line 316
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 320
    .line 321
    if-ne v6, v5, :cond_a

    .line 322
    .line 323
    move v6, v5

    .line 324
    goto :goto_4

    .line 325
    :cond_a
    move v6, v9

    .line 326
    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 337
    .line 338
    check-cast v3, Ljava/util/Iterator;

    .line 339
    .line 340
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 341
    .line 342
    if-ne v0, v5, :cond_b

    .line 343
    .line 344
    move v0, v5

    .line 345
    goto :goto_5

    .line 346
    :cond_b
    move v0, v9

    .line 347
    :goto_5
    iput-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    .line 348
    .line 349
    const-string v0, "UsbDeviceManager"

    .line 350
    .line 351
    new-instance v4, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    const-string v6, "HOST_STATE connected:"

    .line 354
    .line 355
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-boolean v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    .line 359
    .line 360
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-static {v0, v4}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_c

    .line 375
    .line 376
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    .line 377
    .line 378
    goto :goto_6

    .line 379
    :cond_c
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    .line 380
    .line 381
    :goto_6
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 382
    .line 383
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_10

    .line 388
    .line 389
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    check-cast v0, Ljava/util/Map$Entry;

    .line 394
    .line 395
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 396
    .line 397
    const-string v4, "UsbDeviceManager"

    .line 398
    .line 399
    new-instance v6, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v7

    .line 408
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    const-string v7, " = "

    .line 412
    .line 413
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v7

    .line 420
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v6

    .line 427
    invoke-static {v4, v6}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    .line 429
    .line 430
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 435
    .line 436
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    .line 437
    .line 438
    .line 439
    move-result v4

    .line 440
    sub-int/2addr v4, v5

    .line 441
    :cond_e
    :goto_7
    if-ltz v4, :cond_d

    .line 442
    .line 443
    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    add-int/2addr v4, v2

    .line 448
    invoke-virtual {v6}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    .line 449
    .line 450
    .line 451
    move-result v7

    .line 452
    sub-int/2addr v7, v5

    .line 453
    :cond_f
    if-ltz v7, :cond_e

    .line 454
    .line 455
    invoke-virtual {v6, v7}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 456
    .line 457
    .line 458
    move-result-object v8

    .line 459
    add-int/2addr v7, v2

    .line 460
    sget-object v10, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 461
    .line 462
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 463
    .line 464
    .line 465
    move-result v11

    .line 466
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v11

    .line 470
    check-cast v10, Ljava/util/HashSet;

    .line 471
    .line 472
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    if-eqz v10, :cond_f

    .line 477
    .line 478
    invoke-virtual {v8}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    .line 479
    .line 480
    .line 481
    move-result v8

    .line 482
    if-ne v8, v5, :cond_f

    .line 483
    .line 484
    const-string v6, "UsbDeviceManager"

    .line 485
    .line 486
    const-string v7, "Clear notification: USB Audio connected"

    .line 487
    .line 488
    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    .line 490
    .line 491
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 492
    .line 493
    goto :goto_7

    .line 494
    :cond_10
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    .line 495
    .line 496
    if-eqz v0, :cond_43

    .line 497
    .line 498
    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 499
    .line 500
    .line 501
    goto/16 :goto_2e

    .line 502
    .line 503
    :pswitch_4
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 504
    .line 505
    if-ne v0, v5, :cond_11

    .line 506
    .line 507
    goto :goto_8

    .line 508
    :cond_11
    move v5, v9

    .line 509
    :goto_8
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 510
    .line 511
    if-eq v0, v5, :cond_43

    .line 512
    .line 513
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 514
    .line 515
    const-string v0, "UsbDeviceManager"

    .line 516
    .line 517
    const-string v2, "handleMessage -> MSG_UPDATE_CHARGING_STATE"

    .line 518
    .line 519
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 523
    .line 524
    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 525
    .line 526
    .line 527
    goto/16 :goto_2e

    .line 528
    .line 529
    :pswitch_5
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 530
    .line 531
    const-string v0, "UsbDeviceManager"

    .line 532
    .line 533
    const-string v2, "handleMessage -> MSG_ACCESSORY_MODE_ENTER_TIMEOUT"

    .line 534
    .line 535
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 539
    .line 540
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 541
    .line 542
    .line 543
    move-result v0

    .line 544
    const-string v2, "UsbDeviceManager"

    .line 545
    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    const-string v4, "Accessory mode enter timeout: "

    .line 549
    .line 550
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 554
    .line 555
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    const-string v4, " ,operationId: "

    .line 559
    .line 560
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    iget-boolean v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 574
    .line 575
    if-eqz v2, :cond_12

    .line 576
    .line 577
    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 578
    .line 579
    and-long/2addr v2, v10

    .line 580
    cmp-long v2, v2, v7

    .line 581
    .line 582
    if-nez v2, :cond_43

    .line 583
    .line 584
    :cond_12
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    .line 585
    .line 586
    .line 587
    goto/16 :goto_2e

    .line 588
    .line 589
    :pswitch_6
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 592
    .line 593
    iget-boolean v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 594
    .line 595
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 596
    .line 597
    check-cast v3, Landroid/hardware/usb/UsbPort;

    .line 598
    .line 599
    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 600
    .line 601
    check-cast v7, Landroid/hardware/usb/UsbPortStatus;

    .line 602
    .line 603
    if-eqz v7, :cond_19

    .line 604
    .line 605
    invoke-virtual {v7}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    .line 606
    .line 607
    .line 608
    move-result v8

    .line 609
    if-ne v8, v5, :cond_13

    .line 610
    .line 611
    move v8, v5

    .line 612
    goto :goto_9

    .line 613
    :cond_13
    move v8, v9

    .line 614
    :goto_9
    iput-boolean v8, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 615
    .line 616
    invoke-virtual {v7}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    .line 617
    .line 618
    .line 619
    move-result v8

    .line 620
    if-ne v8, v5, :cond_14

    .line 621
    .line 622
    move v8, v5

    .line 623
    goto :goto_a

    .line 624
    :cond_14
    move v8, v9

    .line 625
    :goto_a
    iput-boolean v8, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 626
    .line 627
    invoke-virtual {v7}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    .line 628
    .line 629
    .line 630
    move-result v8

    .line 631
    if-ne v8, v4, :cond_15

    .line 632
    .line 633
    move v8, v5

    .line 634
    goto :goto_b

    .line 635
    :cond_15
    move v8, v9

    .line 636
    :goto_b
    iput-boolean v8, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 637
    .line 638
    invoke-virtual {v7}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    .line 639
    .line 640
    .line 641
    move-result v8

    .line 642
    if-ne v8, v6, :cond_16

    .line 643
    .line 644
    move v8, v5

    .line 645
    goto :goto_c

    .line 646
    :cond_16
    move v8, v9

    .line 647
    :goto_c
    iput-boolean v8, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 648
    .line 649
    invoke-virtual {v7, v5, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    if-eqz v8, :cond_17

    .line 654
    .line 655
    invoke-virtual {v7, v4, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    .line 656
    .line 657
    .line 658
    move-result v8

    .line 659
    if-eqz v8, :cond_17

    .line 660
    .line 661
    invoke-virtual {v7, v5, v4}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    .line 662
    .line 663
    .line 664
    move-result v8

    .line 665
    if-eqz v8, :cond_17

    .line 666
    .line 667
    invoke-virtual {v7, v4, v4}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    if-eqz v4, :cond_17

    .line 672
    .line 673
    move v4, v5

    .line 674
    goto :goto_d

    .line 675
    :cond_17
    move v4, v9

    .line 676
    :goto_d
    iput-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 677
    .line 678
    invoke-virtual {v7}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    if-eq v4, v5, :cond_18

    .line 683
    .line 684
    move v4, v5

    .line 685
    goto :goto_e

    .line 686
    :cond_18
    move v4, v9

    .line 687
    :goto_e
    invoke-virtual {v7}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 688
    .line 689
    .line 690
    move-result v8

    .line 691
    invoke-virtual {v7}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    .line 692
    .line 693
    .line 694
    goto :goto_f

    .line 695
    :cond_19
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 696
    .line 697
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 698
    .line 699
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 700
    .line 701
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 702
    .line 703
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 704
    .line 705
    :goto_f
    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 706
    .line 707
    if-eqz v4, :cond_1b

    .line 708
    .line 709
    iget-boolean v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    .line 710
    .line 711
    if-nez v4, :cond_1a

    .line 712
    .line 713
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    .line 714
    .line 715
    goto :goto_10

    .line 716
    :cond_1a
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    .line 717
    .line 718
    goto :goto_10

    .line 719
    :cond_1b
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    .line 720
    .line 721
    :goto_10
    invoke-virtual {v3, v6}, Landroid/hardware/usb/UsbPort;->isModeSupported(I)Z

    .line 722
    .line 723
    .line 724
    move-result v3

    .line 725
    iput-boolean v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    .line 726
    .line 727
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 728
    .line 729
    const-string v3, "UsbDeviceManager"

    .line 730
    .line 731
    new-instance v4, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    const-string v6, "handleMessage -> MSG_UPDATE_PORT_STATE: mSupportsAllCombinations="

    .line 734
    .line 735
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    iget-boolean v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 739
    .line 740
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    const-string v6, " mAudioAccessorySupported="

    .line 744
    .line 745
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    iget-boolean v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    .line 749
    .line 750
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    const-string v6, " mAudioAccessoryConnected="

    .line 754
    .line 755
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    .line 757
    .line 758
    iget-boolean v6, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 759
    .line 760
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 764
    .line 765
    .line 766
    move-result-object v4

    .line 767
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .line 769
    .line 770
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 771
    .line 772
    .line 773
    const-string v0, "/sys/class/sec/ccic/usbpd_ids"

    .line 774
    .line 775
    const-string v3, "IOException(iex): "

    .line 776
    .line 777
    const-string v4, "UsbDeviceManager"

    .line 778
    .line 779
    const-string v6, "File not Found exception: "

    .line 780
    .line 781
    const-string v7, "IOException: "

    .line 782
    .line 783
    const-string v8, "IllegalArgumentException: "

    .line 784
    .line 785
    const-string/jumbo v10, "null"

    .line 786
    .line 787
    .line 788
    :try_start_0
    new-instance v11, Ljava/io/File;

    .line 789
    .line 790
    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 794
    .line 795
    .line 796
    move-result v11

    .line 797
    if-eqz v11, :cond_1c

    .line 798
    .line 799
    new-instance v11, Ljava/io/FileReader;

    .line 800
    .line 801
    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 802
    .line 803
    .line 804
    :try_start_1
    new-instance v12, Ljava/io/BufferedReader;

    .line 805
    .line 806
    invoke-direct {v12, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 807
    .line 808
    .line 809
    :try_start_2
    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v10
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 813
    move-object v6, v11

    .line 814
    move-object/from16 v16, v12

    .line 815
    .line 816
    goto :goto_15

    .line 817
    :catchall_0
    move-exception v0

    .line 818
    move-object v1, v0

    .line 819
    move-object v6, v11

    .line 820
    :goto_11
    move-object/from16 v16, v12

    .line 821
    .line 822
    goto/16 :goto_23

    .line 823
    .line 824
    :catch_0
    move-exception v0

    .line 825
    move-object v6, v11

    .line 826
    move-object/from16 v16, v12

    .line 827
    .line 828
    goto/16 :goto_19

    .line 829
    .line 830
    :catch_1
    move-exception v0

    .line 831
    move-object v6, v11

    .line 832
    move-object/from16 v16, v12

    .line 833
    .line 834
    goto/16 :goto_1c

    .line 835
    .line 836
    :catch_2
    move-exception v0

    .line 837
    move-object/from16 v16, v11

    .line 838
    .line 839
    goto/16 :goto_1f

    .line 840
    .line 841
    :catchall_1
    move-exception v0

    .line 842
    move-object v1, v0

    .line 843
    move-object v6, v11

    .line 844
    :goto_12
    const/16 v16, 0x0

    .line 845
    .line 846
    goto/16 :goto_23

    .line 847
    .line 848
    :catch_3
    move-exception v0

    .line 849
    move-object v6, v11

    .line 850
    :goto_13
    const/16 v16, 0x0

    .line 851
    .line 852
    goto :goto_19

    .line 853
    :catch_4
    move-exception v0

    .line 854
    move-object v6, v11

    .line 855
    :goto_14
    const/16 v16, 0x0

    .line 856
    .line 857
    goto/16 :goto_1c

    .line 858
    .line 859
    :catch_5
    move-exception v0

    .line 860
    move-object/from16 v16, v11

    .line 861
    .line 862
    const/4 v12, 0x0

    .line 863
    goto/16 :goto_1f

    .line 864
    .line 865
    :catchall_2
    move-exception v0

    .line 866
    move-object v1, v0

    .line 867
    const/4 v6, 0x0

    .line 868
    goto :goto_12

    .line 869
    :catch_6
    move-exception v0

    .line 870
    const/4 v6, 0x0

    .line 871
    goto :goto_13

    .line 872
    :catch_7
    move-exception v0

    .line 873
    const/4 v6, 0x0

    .line 874
    goto :goto_14

    .line 875
    :catch_8
    move-exception v0

    .line 876
    const/4 v12, 0x0

    .line 877
    const/16 v16, 0x0

    .line 878
    .line 879
    goto/16 :goto_1f

    .line 880
    .line 881
    :cond_1c
    :try_start_3
    const-string v0, "USB Check File does not exist"

    .line 882
    .line 883
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 884
    .line 885
    .line 886
    const/4 v6, 0x0

    .line 887
    const/16 v16, 0x0

    .line 888
    .line 889
    :goto_15
    if-eqz v6, :cond_1d

    .line 890
    .line 891
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 892
    .line 893
    .line 894
    goto :goto_16

    .line 895
    :catch_9
    move-exception v0

    .line 896
    goto :goto_17

    .line 897
    :cond_1d
    :goto_16
    if-eqz v16, :cond_21

    .line 898
    .line 899
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 900
    .line 901
    .line 902
    goto/16 :goto_22

    .line 903
    .line 904
    :goto_17
    new-instance v6, Ljava/lang/StringBuilder;

    .line 905
    .line 906
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 907
    .line 908
    .line 909
    :goto_18
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .line 922
    .line 923
    goto/16 :goto_22

    .line 924
    .line 925
    :goto_19
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 926
    .line 927
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v0

    .line 934
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    .line 936
    .line 937
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 938
    .line 939
    .line 940
    move-result-object v0

    .line 941
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 942
    .line 943
    .line 944
    if-eqz v6, :cond_1e

    .line 945
    .line 946
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 947
    .line 948
    .line 949
    goto :goto_1a

    .line 950
    :catch_a
    move-exception v0

    .line 951
    goto :goto_1b

    .line 952
    :cond_1e
    :goto_1a
    if-eqz v16, :cond_21

    .line 953
    .line 954
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 955
    .line 956
    .line 957
    goto :goto_22

    .line 958
    :goto_1b
    new-instance v6, Ljava/lang/StringBuilder;

    .line 959
    .line 960
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    goto :goto_18

    .line 964
    :catchall_3
    move-exception v0

    .line 965
    move-object v1, v0

    .line 966
    goto/16 :goto_23

    .line 967
    .line 968
    :goto_1c
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    .line 969
    .line 970
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 971
    .line 972
    .line 973
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    .line 979
    .line 980
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 985
    .line 986
    .line 987
    if-eqz v6, :cond_1f

    .line 988
    .line 989
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 990
    .line 991
    .line 992
    goto :goto_1d

    .line 993
    :catch_b
    move-exception v0

    .line 994
    goto :goto_1e

    .line 995
    :cond_1f
    :goto_1d
    if-eqz v16, :cond_21

    .line 996
    .line 997
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 998
    .line 999
    .line 1000
    goto :goto_22

    .line 1001
    :goto_1e
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1002
    .line 1003
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1004
    .line 1005
    .line 1006
    goto :goto_18

    .line 1007
    :goto_1f
    :try_start_9
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v0

    .line 1016
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v0

    .line 1023
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1024
    .line 1025
    .line 1026
    if-eqz v16, :cond_20

    .line 1027
    .line 1028
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileReader;->close()V

    .line 1029
    .line 1030
    .line 1031
    goto :goto_20

    .line 1032
    :catch_c
    move-exception v0

    .line 1033
    goto :goto_21

    .line 1034
    :cond_20
    :goto_20
    if-eqz v12, :cond_21

    .line 1035
    .line 1036
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 1037
    .line 1038
    .line 1039
    goto :goto_22

    .line 1040
    :goto_21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1043
    .line 1044
    .line 1045
    goto/16 :goto_18

    .line 1046
    .line 1047
    :cond_21
    :goto_22
    iput-boolean v9, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    .line 1048
    .line 1049
    const-string v0, "04E8:B007"

    .line 1050
    .line 1051
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1052
    .line 1053
    .line 1054
    move-result v0

    .line 1055
    if-eqz v0, :cond_22

    .line 1056
    .line 1057
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1058
    .line 1059
    const-string v0, "UsbDeviceManager"

    .line 1060
    .line 1061
    const-string v3, "Clear notification: SAMSUNG USB Smart Earphone connected"

    .line 1062
    .line 1063
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    .line 1065
    .line 1066
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    .line 1067
    .line 1068
    :cond_22
    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1069
    .line 1070
    .line 1071
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 1072
    .line 1073
    if-eqz v0, :cond_24

    .line 1074
    .line 1075
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 1076
    .line 1077
    if-nez v0, :cond_23

    .line 1078
    .line 1079
    if-eqz v2, :cond_43

    .line 1080
    .line 1081
    :cond_23
    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 1082
    .line 1083
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    .line 1084
    .line 1085
    .line 1086
    move-result-wide v2

    .line 1087
    invoke-virtual {v1, v2, v3, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    .line 1088
    .line 1089
    .line 1090
    goto/16 :goto_2e

    .line 1091
    .line 1092
    :cond_24
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1093
    .line 1094
    goto/16 :goto_2e

    .line 1095
    .line 1096
    :catchall_4
    move-exception v0

    .line 1097
    move-object v1, v0

    .line 1098
    move-object/from16 v6, v16

    .line 1099
    .line 1100
    goto/16 :goto_11

    .line 1101
    .line 1102
    :goto_23
    if-eqz v6, :cond_25

    .line 1103
    .line 1104
    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    .line 1105
    .line 1106
    .line 1107
    goto :goto_24

    .line 1108
    :catch_d
    move-exception v0

    .line 1109
    goto :goto_25

    .line 1110
    :cond_25
    :goto_24
    if-eqz v16, :cond_26

    .line 1111
    .line 1112
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 1113
    .line 1114
    .line 1115
    goto :goto_26

    .line 1116
    :goto_25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1117
    .line 1118
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 1122
    .line 1123
    .line 1124
    move-result-object v0

    .line 1125
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1126
    .line 1127
    .line 1128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v0

    .line 1132
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .line 1134
    .line 1135
    :cond_26
    :goto_26
    throw v1

    .line 1136
    :pswitch_7
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1137
    .line 1138
    const-string v0, "UsbDeviceManager"

    .line 1139
    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    const-string v3, "handleMessage -> MSG_UPDATE_USER_RESTRICTIONS mCurrentFunctions="

    .line 1143
    .line 1144
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 1148
    .line 1149
    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v3

    .line 1153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    .line 1155
    .line 1156
    const-string v3, " isUsbTransferAllowed()="

    .line 1157
    .line 1158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    .line 1162
    .line 1163
    .line 1164
    move-result v3

    .line 1165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v2

    .line 1172
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    .line 1174
    .line 1175
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1176
    .line 1177
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1178
    .line 1179
    .line 1180
    move-result v0

    .line 1181
    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 1182
    .line 1183
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    .line 1184
    .line 1185
    .line 1186
    move-result v2

    .line 1187
    if-nez v2, :cond_27

    .line 1188
    .line 1189
    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 1190
    .line 1191
    invoke-static {v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    .line 1192
    .line 1193
    .line 1194
    move-result v2

    .line 1195
    if-eqz v2, :cond_43

    .line 1196
    .line 1197
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    .line 1198
    .line 1199
    .line 1200
    move-result v2

    .line 1201
    if-nez v2, :cond_43

    .line 1202
    .line 1203
    invoke-virtual {v1, v0, v7, v8, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 1204
    .line 1205
    .line 1206
    goto/16 :goto_2e

    .line 1207
    .line 1208
    :pswitch_8
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1209
    .line 1210
    const-string v2, "UsbDeviceManager"

    .line 1211
    .line 1212
    const-string v3, "handleMessage -> MSG_USER_SWITCHED"

    .line 1213
    .line 1214
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    .line 1216
    .line 1217
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1218
    .line 1219
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1220
    .line 1221
    .line 1222
    move-result v2

    .line 1223
    iget v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 1224
    .line 1225
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1226
    .line 1227
    if-eq v3, v4, :cond_43

    .line 1228
    .line 1229
    const-string v3, "UsbDeviceManager"

    .line 1230
    .line 1231
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1232
    .line 1233
    const-string v6, "Current user switched to "

    .line 1234
    .line 1235
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1236
    .line 1237
    .line 1238
    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 1239
    .line 1240
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1244
    .line 1245
    .line 1246
    move-result-object v4

    .line 1247
    invoke-static {v3, v4}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    .line 1249
    .line 1250
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1251
    .line 1252
    iput v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 1253
    .line 1254
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 1255
    .line 1256
    iput-wide v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1257
    .line 1258
    iget-object v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    .line 1259
    .line 1260
    if-eqz v3, :cond_28

    .line 1261
    .line 1262
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1263
    .line 1264
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1265
    .line 1266
    const-string/jumbo v5, "usb-screen-unlocked-config-"

    .line 1267
    .line 1268
    .line 1269
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1270
    .line 1271
    .line 1272
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    .line 1275
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v0

    .line 1279
    const-string v4, ""

    .line 1280
    .line 1281
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1282
    .line 1283
    .line 1284
    move-result-object v0

    .line 1285
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 1286
    .line 1287
    .line 1288
    move-result-wide v3

    .line 1289
    iput-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1290
    .line 1291
    :cond_28
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 1292
    .line 1293
    invoke-virtual {v1, v2, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 1294
    .line 1295
    .line 1296
    goto/16 :goto_2e

    .line 1297
    .line 1298
    :pswitch_9
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1299
    .line 1300
    const-string v0, "UsbDeviceManager"

    .line 1301
    .line 1302
    const-string v2, "handleMessage -> MSG_BOOT_COMPLETED"

    .line 1303
    .line 1304
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    .line 1306
    .line 1307
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1308
    .line 1309
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1310
    .line 1311
    .line 1312
    move-result v0

    .line 1313
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 1314
    .line 1315
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    .line 1316
    .line 1317
    .line 1318
    goto/16 :goto_2e

    .line 1319
    .line 1320
    :pswitch_a
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1321
    .line 1322
    const-string v0, "UsbDeviceManager"

    .line 1323
    .line 1324
    const-string v2, "handleMessage -> MSG_SYSTEM_READY"

    .line 1325
    .line 1326
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    .line 1328
    .line 1329
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1330
    .line 1331
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1332
    .line 1333
    .line 1334
    move-result v0

    .line 1335
    iget-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 1336
    .line 1337
    const-string/jumbo v3, "notification"

    .line 1338
    .line 1339
    .line 1340
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1341
    .line 1342
    .line 1343
    move-result-object v2

    .line 1344
    check-cast v2, Landroid/app/NotificationManager;

    .line 1345
    .line 1346
    iput-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1347
    .line 1348
    const-class v2, Landroid/debug/AdbManagerInternal;

    .line 1349
    .line 1350
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 1351
    .line 1352
    .line 1353
    move-result-object v2

    .line 1354
    check-cast v2, Landroid/debug/AdbManagerInternal;

    .line 1355
    .line 1356
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;

    .line 1357
    .line 1358
    invoke-direct {v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 1359
    .line 1360
    .line 1361
    invoke-virtual {v2, v3}, Landroid/debug/AdbManagerInternal;->registerTransport(Landroid/debug/IAdbTransport;)V

    .line 1362
    .line 1363
    .line 1364
    iget-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 1365
    .line 1366
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1367
    .line 1368
    .line 1369
    move-result-object v2

    .line 1370
    const-string v3, "android.software.leanback"

    .line 1371
    .line 1372
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 1373
    .line 1374
    .line 1375
    move-result v2

    .line 1376
    if-eqz v2, :cond_29

    .line 1377
    .line 1378
    iget-object v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1379
    .line 1380
    new-instance v3, Landroid/app/NotificationChannel;

    .line 1381
    .line 1382
    const-string/jumbo v4, "usbdevicemanager.adb.tv"

    .line 1383
    .line 1384
    .line 1385
    iget-object v7, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 1386
    .line 1387
    const v8, 0x104019a

    .line 1388
    .line 1389
    .line 1390
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1391
    .line 1392
    .line 1393
    move-result-object v7

    .line 1394
    invoke-direct {v3, v4, v7, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1395
    .line 1396
    .line 1397
    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1398
    .line 1399
    .line 1400
    :cond_29
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    .line 1401
    .line 1402
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    .line 1403
    .line 1404
    .line 1405
    goto/16 :goto_2e

    .line 1406
    .line 1407
    :pswitch_b
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1408
    .line 1409
    const-string v2, "UsbDeviceManager"

    .line 1410
    .line 1411
    const-string v3, "handleMessage -> MSG_SET_CURRENT_FUNCTION"

    .line 1412
    .line 1413
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    .line 1415
    .line 1416
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1417
    .line 1418
    check-cast v2, Ljava/lang/Long;

    .line 1419
    .line 1420
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1421
    .line 1422
    .line 1423
    move-result-wide v2

    .line 1424
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1425
    .line 1426
    invoke-virtual {v1, v0, v2, v3, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 1427
    .line 1428
    .line 1429
    goto/16 :goto_2e

    .line 1430
    .line 1431
    :pswitch_c
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1432
    .line 1433
    if-ne v2, v5, :cond_2a

    .line 1434
    .line 1435
    move v9, v5

    .line 1436
    :cond_2a
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1437
    .line 1438
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1439
    .line 1440
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1441
    .line 1442
    const-string/jumbo v3, "setAdbEnabled: enable="

    .line 1443
    .line 1444
    .line 1445
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1446
    .line 1447
    .line 1448
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1452
    .line 1453
    .line 1454
    move-result-object v2

    .line 1455
    const-string v3, "UsbDeviceManager"

    .line 1456
    .line 1457
    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    .line 1459
    .line 1460
    const-string/jumbo v2, "persist.sys.usb.config"

    .line 1461
    .line 1462
    .line 1463
    const-string/jumbo v4, "none"

    .line 1464
    .line 1465
    .line 1466
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v4

    .line 1470
    const-string v6, "adb"

    .line 1471
    .line 1472
    const/16 v7, 0xc

    .line 1473
    .line 1474
    if-eqz v9, :cond_2b

    .line 1475
    .line 1476
    iget-wide v10, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1477
    .line 1478
    cmp-long v6, v10, v12

    .line 1479
    .line 1480
    if-nez v6, :cond_2c

    .line 1481
    .line 1482
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v0

    .line 1486
    invoke-virtual {v1, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 1487
    .line 1488
    .line 1489
    goto/16 :goto_2e

    .line 1490
    .line 1491
    :cond_2b
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1492
    .line 1493
    .line 1494
    move-result v6

    .line 1495
    if-eqz v6, :cond_2c

    .line 1496
    .line 1497
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v0

    .line 1501
    invoke-virtual {v1, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 1502
    .line 1503
    .line 1504
    goto/16 :goto_2e

    .line 1505
    .line 1506
    :cond_2c
    if-eqz v9, :cond_2d

    .line 1507
    .line 1508
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->addFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 1509
    .line 1510
    .line 1511
    move-result-object v4

    .line 1512
    goto :goto_27

    .line 1513
    :cond_2d
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->removeFunction(Ljava/lang/String;)Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v4

    .line 1517
    :goto_27
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    .line 1519
    .line 1520
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1521
    .line 1522
    const-string v6, "Set persist.sys.usb.config to "

    .line 1523
    .line 1524
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v2

    .line 1534
    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    .line 1536
    .line 1537
    iget-wide v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 1538
    .line 1539
    invoke-virtual {v1, v0, v2, v3, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 1540
    .line 1541
    .line 1542
    goto/16 :goto_2e

    .line 1543
    .line 1544
    :pswitch_d
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1545
    .line 1546
    const-string v3, "UsbDeviceManager"

    .line 1547
    .line 1548
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1549
    .line 1550
    const-string v13, "handleMessage -> MSG_UPDATE_STATE: connected="

    .line 1551
    .line 1552
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1553
    .line 1554
    .line 1555
    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1556
    .line 1557
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1558
    .line 1559
    .line 1560
    const-string v13, " configured="

    .line 1561
    .line 1562
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    .line 1564
    .line 1565
    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 1566
    .line 1567
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1568
    .line 1569
    .line 1570
    const-string v13, " mCurrentFunctions="

    .line 1571
    .line 1572
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1573
    .line 1574
    .line 1575
    iget-wide v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 1576
    .line 1577
    invoke-static {v13, v14}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 1578
    .line 1579
    .line 1580
    move-result-object v13

    .line 1581
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    .line 1583
    .line 1584
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1585
    .line 1586
    .line 1587
    move-result-object v12

    .line 1588
    invoke-static {v3, v12}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    .line 1590
    .line 1591
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1592
    .line 1593
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1594
    .line 1595
    .line 1596
    move-result v12

    .line 1597
    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1598
    .line 1599
    if-ne v13, v5, :cond_2e

    .line 1600
    .line 1601
    move v13, v5

    .line 1602
    goto :goto_28

    .line 1603
    :cond_2e
    move v13, v9

    .line 1604
    :goto_28
    iput-boolean v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 1605
    .line 1606
    iget v0, v0, Landroid/os/Message;->arg2:I

    .line 1607
    .line 1608
    if-ne v0, v5, :cond_2f

    .line 1609
    .line 1610
    move v0, v5

    .line 1611
    goto :goto_29

    .line 1612
    :cond_2f
    move v0, v9

    .line 1613
    :goto_29
    iput-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1614
    .line 1615
    const-string v0, "UsbDeviceManager"

    .line 1616
    .line 1617
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1618
    .line 1619
    const-string v14, "handleMessage MSG_UPDATE_STATE mConnected:"

    .line 1620
    .line 1621
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1622
    .line 1623
    .line 1624
    iget-boolean v14, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 1625
    .line 1626
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1627
    .line 1628
    .line 1629
    const-string v14, " mConfigured:"

    .line 1630
    .line 1631
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1632
    .line 1633
    .line 1634
    iget-boolean v14, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1635
    .line 1636
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1637
    .line 1638
    .line 1639
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1640
    .line 1641
    .line 1642
    move-result-object v13

    .line 1643
    invoke-static {v0, v13}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    .line 1645
    .line 1646
    invoke-virtual {v1, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1647
    .line 1648
    .line 1649
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 1650
    .line 1651
    if-eqz v0, :cond_30

    .line 1652
    .line 1653
    iget-wide v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 1654
    .line 1655
    invoke-static {v13, v14}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    .line 1656
    .line 1657
    .line 1658
    move-result-wide v13

    .line 1659
    invoke-virtual {v1, v13, v14, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    .line 1660
    .line 1661
    .line 1662
    :cond_30
    iget-wide v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 1663
    .line 1664
    and-long/2addr v10, v13

    .line 1665
    cmp-long v0, v10, v7

    .line 1666
    .line 1667
    const/16 v10, 0x8

    .line 1668
    .line 1669
    if-eqz v0, :cond_35

    .line 1670
    .line 1671
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1672
    .line 1673
    .line 1674
    move-result v0

    .line 1675
    invoke-virtual {v1, v10}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1676
    .line 1677
    .line 1678
    move-result v3

    .line 1679
    iget-boolean v11, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1680
    .line 1681
    if-eqz v11, :cond_33

    .line 1682
    .line 1683
    if-eqz v3, :cond_33

    .line 1684
    .line 1685
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 1686
    .line 1687
    iget-object v11, v0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 1688
    .line 1689
    monitor-enter v11

    .line 1690
    :try_start_c
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 1691
    .line 1692
    monitor-exit v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 1693
    if-eqz v0, :cond_32

    .line 1694
    .line 1695
    new-instance v3, Lcom/android/server/usb/UsbSerialReader;

    .line 1696
    .line 1697
    iget-object v11, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 1698
    .line 1699
    iget-object v13, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 1700
    .line 1701
    const/4 v14, 0x5

    .line 1702
    aget-object v14, v0, v14

    .line 1703
    .line 1704
    invoke-direct {v3, v11, v13, v14}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V

    .line 1705
    .line 1706
    .line 1707
    aget-object v11, v0, v9

    .line 1708
    .line 1709
    if-eqz v11, :cond_31

    .line 1710
    .line 1711
    aget-object v11, v0, v5

    .line 1712
    .line 1713
    if-eqz v11, :cond_31

    .line 1714
    .line 1715
    new-instance v11, Landroid/hardware/usb/UsbAccessory;

    .line 1716
    .line 1717
    aget-object v18, v0, v9

    .line 1718
    .line 1719
    aget-object v19, v0, v5

    .line 1720
    .line 1721
    aget-object v20, v0, v4

    .line 1722
    .line 1723
    const/4 v4, 0x3

    .line 1724
    aget-object v21, v0, v4

    .line 1725
    .line 1726
    aget-object v22, v0, v6

    .line 1727
    .line 1728
    move-object/from16 v17, v11

    .line 1729
    .line 1730
    move-object/from16 v23, v3

    .line 1731
    .line 1732
    invoke-direct/range {v17 .. v23}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V

    .line 1733
    .line 1734
    .line 1735
    iput-object v11, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1736
    .line 1737
    iput-object v11, v3, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    .line 1738
    .line 1739
    const-string v0, "UsbDeviceManager"

    .line 1740
    .line 1741
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1742
    .line 1743
    const-string v4, "entering USB accessory mode: "

    .line 1744
    .line 1745
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1746
    .line 1747
    .line 1748
    iget-object v4, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1749
    .line 1750
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v3

    .line 1757
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    .line 1759
    .line 1760
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 1761
    .line 1762
    if-eqz v0, :cond_35

    .line 1763
    .line 1764
    iget-object v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 1765
    .line 1766
    iget-object v3, v0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 1767
    .line 1768
    monitor-enter v3

    .line 1769
    :try_start_d
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 1770
    .line 1771
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1772
    iget-object v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1773
    .line 1774
    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1775
    .line 1776
    .line 1777
    const/16 v0, 0x14

    .line 1778
    .line 1779
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1780
    .line 1781
    .line 1782
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    .line 1783
    .line 1784
    .line 1785
    goto :goto_2a

    .line 1786
    :catchall_5
    move-exception v0

    .line 1787
    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1788
    throw v0

    .line 1789
    :cond_31
    const-string v0, "UsbDeviceManager"

    .line 1790
    .line 1791
    const-string v3, "Null object included. Manufacturer, Model, SerialNumberReader must be NonNull."

    .line 1792
    .line 1793
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    .line 1795
    .line 1796
    goto :goto_2a

    .line 1797
    :cond_32
    const-string v0, "UsbDeviceManager"

    .line 1798
    .line 1799
    const-string/jumbo v3, "nativeGetAccessoryStrings failed"

    .line 1800
    .line 1801
    .line 1802
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    .line 1804
    .line 1805
    goto :goto_2a

    .line 1806
    :catchall_6
    move-exception v0

    .line 1807
    :try_start_f
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1808
    throw v0

    .line 1809
    :cond_33
    if-nez v3, :cond_34

    .line 1810
    .line 1811
    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    .line 1812
    .line 1813
    .line 1814
    goto :goto_2a

    .line 1815
    :cond_34
    const-string v0, "UsbDeviceManager"

    .line 1816
    .line 1817
    const-string v3, "Debouncing accessory mode exit"

    .line 1818
    .line 1819
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    .line 1821
    .line 1822
    :cond_35
    :goto_2a
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 1823
    .line 1824
    if-eqz v0, :cond_3a

    .line 1825
    .line 1826
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 1827
    .line 1828
    if-nez v0, :cond_37

    .line 1829
    .line 1830
    invoke-virtual {v1, v10}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1831
    .line 1832
    .line 1833
    move-result v0

    .line 1834
    if-nez v0, :cond_37

    .line 1835
    .line 1836
    const/16 v0, 0x11

    .line 1837
    .line 1838
    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 1839
    .line 1840
    .line 1841
    move-result v0

    .line 1842
    if-nez v0, :cond_37

    .line 1843
    .line 1844
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 1845
    .line 1846
    if-nez v0, :cond_36

    .line 1847
    .line 1848
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1849
    .line 1850
    cmp-long v0, v3, v7

    .line 1851
    .line 1852
    if-eqz v0, :cond_36

    .line 1853
    .line 1854
    invoke-virtual {v1, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    .line 1855
    .line 1856
    .line 1857
    goto :goto_2b

    .line 1858
    :cond_36
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    .line 1859
    .line 1860
    .line 1861
    move-result-wide v3

    .line 1862
    invoke-virtual {v1, v12, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 1863
    .line 1864
    .line 1865
    goto :goto_2b

    .line 1866
    :cond_37
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 1867
    .line 1868
    if-ne v0, v5, :cond_38

    .line 1869
    .line 1870
    sget-boolean v3, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    .line 1871
    .line 1872
    if-ne v3, v5, :cond_38

    .line 1873
    .line 1874
    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    .line 1875
    .line 1876
    if-ne v0, v5, :cond_39

    .line 1877
    .line 1878
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1879
    .line 1880
    cmp-long v0, v3, v7

    .line 1881
    .line 1882
    if-nez v0, :cond_39

    .line 1883
    .line 1884
    const-string v0, "UsbDeviceManager"

    .line 1885
    .line 1886
    const-string/jumbo v3, "mSetNextUsbModeToDefault: Set default functions!"

    .line 1887
    .line 1888
    .line 1889
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    .line 1891
    .line 1892
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    .line 1893
    .line 1894
    .line 1895
    move-result-wide v3

    .line 1896
    invoke-virtual {v1, v12, v3, v4, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 1897
    .line 1898
    .line 1899
    sput-boolean v9, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    .line 1900
    .line 1901
    goto :goto_2b

    .line 1902
    :cond_38
    if-nez v0, :cond_39

    .line 1903
    .line 1904
    sget-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    .line 1905
    .line 1906
    if-eqz v0, :cond_39

    .line 1907
    .line 1908
    sput-boolean v9, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    .line 1909
    .line 1910
    const-string v0, "UsbDeviceManager"

    .line 1911
    .line 1912
    const-string v3, "Disable USB Hidden Menu"

    .line 1913
    .line 1914
    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    .line 1916
    .line 1917
    :cond_39
    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    .line 1918
    .line 1919
    .line 1920
    goto :goto_2c

    .line 1921
    :cond_3a
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1922
    .line 1923
    :goto_2c
    iget v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    .line 1924
    .line 1925
    const/16 v3, 0xa

    .line 1926
    .line 1927
    if-ge v0, v3, :cond_3b

    .line 1928
    .line 1929
    iput v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    .line 1930
    .line 1931
    goto/16 :goto_2e

    .line 1932
    .line 1933
    :cond_3b
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 1934
    .line 1935
    if-eqz v0, :cond_3c

    .line 1936
    .line 1937
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1938
    .line 1939
    if-eqz v0, :cond_3c

    .line 1940
    .line 1941
    const/16 v0, 0x16

    .line 1942
    .line 1943
    const/4 v2, 0x0

    .line 1944
    invoke-virtual {v1, v0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    .line 1945
    .line 1946
    .line 1947
    goto/16 :goto_2e

    .line 1948
    .line 1949
    :cond_3c
    iput v2, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    .line 1950
    .line 1951
    goto/16 :goto_2e

    .line 1952
    .line 1953
    :cond_3d
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1954
    .line 1955
    const-string v2, "UsbDeviceManager"

    .line 1956
    .line 1957
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1958
    .line 1959
    const-string v4, "handleMessage -> MSG_USB_NOTI_UPDATE: isForce="

    .line 1960
    .line 1961
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1962
    .line 1963
    .line 1964
    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 1965
    .line 1966
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1967
    .line 1968
    .line 1969
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1970
    .line 1971
    .line 1972
    move-result-object v3

    .line 1973
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    .line 1975
    .line 1976
    iget v0, v0, Landroid/os/Message;->arg1:I

    .line 1977
    .line 1978
    if-ne v0, v5, :cond_3e

    .line 1979
    .line 1980
    goto :goto_2d

    .line 1981
    :cond_3e
    move v5, v9

    .line 1982
    :goto_2d
    invoke-virtual {v1, v5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1983
    .line 1984
    .line 1985
    goto :goto_2e

    .line 1986
    :cond_3f
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 1987
    .line 1988
    const-string v0, "UsbDeviceManager"

    .line 1989
    .line 1990
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1991
    .line 1992
    const-string v3, "handleMessage -> MSG_UPDATE_MTP_RESTRICTIONS mCurrentFunctions="

    .line 1993
    .line 1994
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1995
    .line 1996
    .line 1997
    iget-wide v3, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 1998
    .line 1999
    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 2000
    .line 2001
    .line 2002
    move-result-object v3

    .line 2003
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2004
    .line 2005
    .line 2006
    const-string v3, " isEDMRestrictionPolicy = "

    .line 2007
    .line 2008
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2009
    .line 2010
    .line 2011
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isEDMRestrictionPolicy()Z

    .line 2012
    .line 2013
    .line 2014
    move-result v3

    .line 2015
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 2016
    .line 2017
    .line 2018
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2019
    .line 2020
    .line 2021
    move-result-object v2

    .line 2022
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    .line 2024
    .line 2025
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2026
    .line 2027
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2028
    .line 2029
    .line 2030
    move-result v0

    .line 2031
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2032
    .line 2033
    .line 2034
    move-result v2

    .line 2035
    add-int/2addr v2, v0

    .line 2036
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isEDMRestrictionPolicy()Z

    .line 2037
    .line 2038
    .line 2039
    move-result v0

    .line 2040
    if-nez v0, :cond_43

    .line 2041
    .line 2042
    invoke-virtual {v1, v2, v7, v8, v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 2043
    .line 2044
    .line 2045
    goto :goto_2e

    .line 2046
    :cond_40
    iget v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 2047
    .line 2048
    add-int/2addr v0, v5

    .line 2049
    iput v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 2050
    .line 2051
    goto :goto_2e

    .line 2052
    :cond_41
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 2053
    .line 2054
    const-string v0, "UsbDeviceManager"

    .line 2055
    .line 2056
    const-string v2, "Accessory handshake timeout"

    .line 2057
    .line 2058
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    .line 2060
    .line 2061
    iget-boolean v0, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 2062
    .line 2063
    if-eqz v0, :cond_42

    .line 2064
    .line 2065
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    .line 2066
    .line 2067
    .line 2068
    goto :goto_2e

    .line 2069
    :cond_42
    const-string v0, "UsbDeviceManager"

    .line 2070
    .line 2071
    const-string v2, "Pending broadcasting intent as not boot completed yet."

    .line 2072
    .line 2073
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    .line 2075
    .line 2076
    iput-boolean v5, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    .line 2077
    .line 2078
    :cond_43
    :goto_2e
    return-void

    .line 2079
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract handlerInitDone(I)V
.end method

.method public final isUsbTransferAllowed()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "user"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/os/UserManager;

    .line 11
    .line 12
    const-string/jumbo v0, "no_usb_file_transfer"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    xor-int/lit8 p0, p0, 0x1

    .line 20
    .line 21
    return p0
.end method

.method public final notifyAccessoryModeExit(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 2
    .line 3
    const-string v0, "UsbDeviceManager"

    .line 4
    .line 5
    const-string v1, "exited USB accessory mode"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$smgetDefaultUsbValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 27
    .line 28
    iget-object v1, v0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    .line 29
    .line 30
    monitor-enter v1

    .line 31
    :goto_0
    :try_start_0
    iget-object v3, v0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-ge v2, v3, :cond_0

    .line 38
    .line 39
    iget-object v3, v0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Lcom/android/server/usb/UsbUserPermissionManager;

    .line 46
    .line 47
    iget-object v4, v3, Lcom/android/server/usb/UsbUserPermissionManager;->mLock:Ljava/lang/Object;

    .line 48
    .line 49
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v3, v3, Lcom/android/server/usb/UsbUserPermissionManager;->mAccessoryPermissionMap:Landroid/util/ArrayMap;

    .line 51
    .line 52
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    monitor-exit v4

    .line 56
    add-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :try_start_2
    throw p0

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    new-instance v1, Landroid/content/Intent;

    .line 66
    .line 67
    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/high16 v2, 0x1000000

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const-string v2, "accessory"

    .line 78
    .line 79
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    iget-object p1, v0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 85
    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 91
    throw p0

    .line 92
    :cond_1
    :goto_2
    const/4 p1, 0x0

    .line 93
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 94
    .line 95
    :cond_2
    return-void
.end method

.method public abstract resetCb(I)V
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 9
    .line 10
    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v2, "USB intent: "

    .line 15
    .line 16
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public abstract setCurrentUsbFunctionsCb(IJJIZ)V
.end method

.method public abstract setEnabledFunctions(IJZ)V
.end method

.method public final setScreenUnlockedFunctions(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "setScreenUnlockedFunctions: mScreenUnlockedFunctions="

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "UsbDeviceManager"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(IJZ)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final updateState(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "DISCONNECTED"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string/jumbo v1, "sys.usb.configured"

    .line 8
    .line 9
    .line 10
    const-string v2, "UsbDeviceManager"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string/jumbo p1, "none"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    move p1, v4

    .line 23
    :goto_0
    move v0, p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string v0, "CONNECTED"

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    move p1, v3

    .line 34
    move v0, v4

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const-string v0, "CONFIGURED"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_9

    .line 43
    .line 44
    const-string p1, "configured"

    .line 45
    .line 46
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    move p1, v3

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    const/16 v1, 0x11

    .line 52
    .line 53
    if-ne p1, v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 56
    .line 57
    .line 58
    :cond_2
    invoke-static {p0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 63
    .line 64
    iput v0, v5, Landroid/os/Message;->arg2:I

    .line 65
    .line 66
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 67
    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string/jumbo v7, "mResetUsbGadgetDisableDebounce:"

    .line 71
    .line 72
    .line 73
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    .line 77
    .line 78
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v7, " connected:"

    .line 82
    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v7, "configured:"

    .line 90
    .line 91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-static {v2, v6}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iget-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    .line 105
    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    .line 110
    .line 111
    if-ne p1, v3, :cond_8

    .line 112
    .line 113
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_3
    if-nez v0, :cond_4

    .line 117
    .line 118
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    .line 120
    .line 121
    const-string/jumbo v0, "removeMessages MSG_UPDATE_STATE"

    .line 122
    .line 123
    .line 124
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    :cond_4
    if-ne p1, v3, :cond_5

    .line 128
    .line 129
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    .line 131
    .line 132
    :cond_5
    if-nez p1, :cond_7

    .line 133
    .line 134
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 135
    .line 136
    if-eqz p1, :cond_6

    .line 137
    .line 138
    const/16 p1, 0x3e8

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    const/16 p1, 0xbb8

    .line 142
    .line 143
    :goto_2
    int-to-long v0, p1

    .line 144
    goto :goto_3

    .line 145
    :cond_7
    const-wide/16 v0, 0x0

    .line 146
    .line 147
    :goto_3
    invoke-virtual {p0, v5, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 148
    .line 149
    .line 150
    :cond_8
    :goto_4
    return-void

    .line 151
    :cond_9
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 152
    .line 153
    new-instance p0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string/jumbo v0, "unknown state "

    .line 156
    .line 157
    .line 158
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method public final updateUsbFunctions()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMtpServiceConnection:Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 4
    .line 5
    const-wide/16 v3, 0x8

    .line 6
    .line 7
    and-long/2addr v1, v3

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v1, v1, v3

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v5, 0x1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    move v1, v5

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    :goto_0
    iget-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    .line 20
    .line 21
    const-string v7, "UsbDeviceManager"

    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    if-eq v1, v6, :cond_5

    .line 25
    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/usb/flags/Flags;->enableUsbSysfsMidiIdentification()Z

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eqz v6, :cond_2

    .line 33
    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getMidiCardDevice()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_4

    .line 38
    :catch_0
    move-exception v1

    .line 39
    sget-object v6, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 40
    .line 41
    const-string v6, "could not identify MIDI device"

    .line 42
    .line 43
    invoke-static {v7, v6, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_1
    move v1, v2

    .line 47
    goto :goto_4

    .line 48
    :cond_2
    :try_start_1
    new-instance v6, Ljava/util/Scanner;

    .line 49
    .line 50
    new-instance v9, Ljava/io/File;

    .line 51
    .line 52
    const-string v10, "/sys/class/android_usb/android0/f_midi/alsa"

    .line 53
    .line 54
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-direct {v6, v9}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    .line 59
    .line 60
    :try_start_2
    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    .line 61
    .line 62
    .line 63
    move-result v9

    .line 64
    iput v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/util/Scanner;->nextInt()I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    iput v9, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 73
    .line 74
    .line 75
    goto :goto_4

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    move-object v8, v6

    .line 78
    goto :goto_3

    .line 79
    :catch_1
    move-exception v1

    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    goto :goto_3

    .line 83
    :catch_2
    move-exception v1

    .line 84
    move-object v6, v8

    .line 85
    :goto_2
    :try_start_3
    sget-object v9, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 86
    .line 87
    const-string v9, "could not open MIDI file"

    .line 88
    .line 89
    invoke-static {v7, v9, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    .line 91
    .line 92
    if-eqz v6, :cond_1

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :goto_3
    if-eqz v8, :cond_3

    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V

    .line 101
    .line 102
    .line 103
    :cond_3
    throw p0

    .line 104
    :cond_4
    :goto_4
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    .line 105
    .line 106
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    .line 107
    .line 108
    if-eqz v1, :cond_6

    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 111
    .line 112
    if-eqz v1, :cond_6

    .line 113
    .line 114
    move v1, v5

    .line 115
    goto :goto_5

    .line 116
    :cond_6
    move v1, v2

    .line 117
    :goto_5
    iget v11, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    .line 118
    .line 119
    iget v12, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    .line 120
    .line 121
    iget-object v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 122
    .line 123
    iget-boolean v9, v6, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    .line 124
    .line 125
    if-nez v9, :cond_7

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_7
    if-eqz v1, :cond_8

    .line 129
    .line 130
    iget-object v9, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 131
    .line 132
    if-nez v9, :cond_8

    .line 133
    .line 134
    new-instance v10, Landroid/os/Bundle;

    .line 135
    .line 136
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 137
    .line 138
    .line 139
    iget-object v1, v6, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const v8, 0x1040fb1

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v8

    .line 152
    const-string/jumbo v9, "name"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const v8, 0x1040fb0

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v8

    .line 165
    const-string/jumbo v9, "manufacturer"

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    const v8, 0x1040fb2

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string/jumbo v8, "product"

    .line 179
    .line 180
    .line 181
    invoke-virtual {v10, v8, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const-string v1, "alsa_card"

    .line 185
    .line 186
    invoke-virtual {v10, v1, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    .line 188
    .line 189
    const-string v1, "alsa_device"

    .line 190
    .line 191
    invoke-virtual {v10, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    iget-object v9, v6, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 195
    .line 196
    const/4 v13, 0x1

    .line 197
    const/4 v14, 0x1

    .line 198
    invoke-static/range {v9 .. v14}, Lcom/android/server/usb/UsbAlsaMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    iput-object v1, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 203
    .line 204
    goto :goto_6

    .line 205
    :cond_8
    if-nez v1, :cond_9

    .line 206
    .line 207
    iget-object v1, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 208
    .line 209
    if-eqz v1, :cond_9

    .line 210
    .line 211
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 212
    .line 213
    .line 214
    iput-object v8, v6, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbAlsaMidiDevice;

    .line 215
    .line 216
    :cond_9
    :goto_6
    invoke-static {}, Lcom/android/server/usb/flags/Flags;->enableBindToMtpService()Z

    .line 217
    .line 218
    .line 219
    iget-wide v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 220
    .line 221
    const-wide/16 v10, 0x4

    .line 222
    .line 223
    and-long/2addr v10, v8

    .line 224
    cmp-long v1, v10, v3

    .line 225
    .line 226
    if-eqz v1, :cond_a

    .line 227
    .line 228
    move v1, v5

    .line 229
    goto :goto_7

    .line 230
    :cond_a
    move v1, v2

    .line 231
    :goto_7
    const-wide/16 v10, 0x10

    .line 232
    .line 233
    and-long/2addr v8, v10

    .line 234
    cmp-long v3, v8, v3

    .line 235
    .line 236
    if-eqz v3, :cond_b

    .line 237
    .line 238
    move v3, v5

    .line 239
    goto :goto_8

    .line 240
    :cond_b
    move v3, v2

    .line 241
    :goto_8
    sget-object v4, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 242
    .line 243
    const-string/jumbo v4, "updateMtpFunction , mtpEnabled: "

    .line 244
    .line 245
    .line 246
    const-string v6, ", ptpEnabled: "

    .line 247
    .line 248
    const-string v8, ", mIsMtpServiceBound: "

    .line 249
    .line 250
    invoke-static {v4, v1, v6, v3, v8}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    iget-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    .line 255
    .line 256
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v4

    .line 263
    invoke-static {v7, v4}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 267
    .line 268
    const-string v6, "Unbinding from MtpService"

    .line 269
    .line 270
    if-eqz v4, :cond_e

    .line 271
    .line 272
    if-nez v1, :cond_c

    .line 273
    .line 274
    if-eqz v3, :cond_e

    .line 275
    .line 276
    :cond_c
    new-instance v1, Landroid/content/Intent;

    .line 277
    .line 278
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 279
    .line 280
    .line 281
    new-instance v3, Landroid/content/ComponentName;

    .line 282
    .line 283
    const-string v4, "com.android.mtp"

    .line 284
    .line 285
    const-string v8, "com.android.mtp.MtpService"

    .line 286
    .line 287
    invoke-direct {v3, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 291
    .line 292
    .line 293
    const-string v3, "Binding to MtpService"

    .line 294
    .line 295
    invoke-static {v7, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    .line 297
    .line 298
    :try_start_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 301
    .line 302
    invoke-virtual {v3, v1, v0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 303
    .line 304
    .line 305
    move-result v1

    .line 306
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .line 307
    .line 308
    goto :goto_9

    .line 309
    :catch_3
    move-exception v1

    .line 310
    sget-object v3, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 311
    .line 312
    const-string v3, "Unable to bind to MtpService due to SecurityException"

    .line 313
    .line 314
    invoke-static {v7, v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    .line 316
    .line 317
    :goto_9
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    .line 318
    .line 319
    if-nez v1, :cond_d

    .line 320
    .line 321
    invoke-static {v7, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 325
    .line 326
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 327
    .line 328
    .line 329
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    .line 330
    .line 331
    const-string v0, "Binding to MtpService failed"

    .line 332
    .line 333
    invoke-static {v7, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .line 335
    .line 336
    :cond_d
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    .line 337
    .line 338
    if-eqz p0, :cond_f

    .line 339
    .line 340
    const-string p0, "Successfully bound to MtpService"

    .line 341
    .line 342
    invoke-static {v7, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .line 344
    .line 345
    goto :goto_a

    .line 346
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    .line 347
    .line 348
    if-eqz v1, :cond_f

    .line 349
    .line 350
    invoke-static {v7, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 354
    .line 355
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 356
    .line 357
    .line 358
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    .line 359
    .line 360
    :cond_f
    :goto_a
    return-void
.end method

.method public final updateUsbNotification(Z)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    sget-object v2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 6
    .line 7
    const-string/jumbo v2, "updateUsbNotification("

    .line 8
    .line 9
    .line 10
    const-string v3, "): mConnected="

    .line 11
    .line 12
    invoke-static {v2, v3, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v3, " mHostConnected="

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v3, " mSourcePower="

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v3, " mSinkPower="

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v3, " mUsbCharging="

    .line 52
    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "UsbDeviceManager"

    .line 66
    .line 67
    invoke-static {v3, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 71
    .line 72
    if-eqz v2, :cond_24

    .line 73
    .line 74
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    .line 75
    .line 76
    if-eqz v2, :cond_24

    .line 77
    .line 78
    const-string/jumbo v2, "persist.charging.notify"

    .line 79
    .line 80
    .line 81
    const-string v4, ""

    .line 82
    .line 83
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    const-string v4, "0"

    .line 88
    .line 89
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_0

    .line 94
    .line 95
    goto/16 :goto_9

    .line 96
    .line 97
    :cond_0
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    const/4 v5, 0x0

    .line 101
    if-nez v2, :cond_1

    .line 102
    .line 103
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    .line 104
    .line 105
    if-eqz v2, :cond_3

    .line 106
    .line 107
    :cond_1
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 108
    .line 109
    if-nez v2, :cond_3

    .line 110
    .line 111
    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 112
    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 116
    .line 117
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 118
    .line 119
    invoke-virtual {v2, v4, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 120
    .line 121
    .line 122
    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 123
    .line 124
    const-string v0, "Clear notification"

    .line 125
    .line 126
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    :cond_2
    return-void

    .line 130
    :cond_3
    iget-boolean v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    .line 131
    .line 132
    if-eqz v2, :cond_5

    .line 133
    .line 134
    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 135
    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 139
    .line 140
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 141
    .line 142
    invoke-virtual {v2, v4, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 143
    .line 144
    .line 145
    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 146
    .line 147
    const-string v0, "Clear notification by SEC USB SmartEP"

    .line 148
    .line 149
    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    :cond_4
    return-void

    .line 153
    :cond_5
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 154
    .line 155
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const v6, 0x1040fbc

    .line 160
    .line 161
    .line 162
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    iget-wide v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 167
    .line 168
    const-wide/16 v9, 0x1

    .line 169
    .line 170
    cmp-long v11, v7, v9

    .line 171
    .line 172
    if-eqz v11, :cond_6

    .line 173
    .line 174
    const-wide/32 v11, -0x400002

    .line 175
    .line 176
    .line 177
    and-long/2addr v7, v11

    .line 178
    :cond_6
    iget-boolean v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 179
    .line 180
    const/16 v12, 0x20

    .line 181
    .line 182
    const v13, 0x1040fda

    .line 183
    .line 184
    .line 185
    const/16 v14, 0x1f

    .line 186
    .line 187
    if-eqz v11, :cond_7

    .line 188
    .line 189
    iget-boolean v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    .line 190
    .line 191
    if-nez v11, :cond_7

    .line 192
    .line 193
    const/16 v7, 0x29

    .line 194
    .line 195
    move v15, v13

    .line 196
    goto/16 :goto_4

    .line 197
    .line 198
    :cond_7
    iget-boolean v11, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 199
    .line 200
    const v15, 0x1040fbd

    .line 201
    .line 202
    .line 203
    const v16, 0x1040fcd

    .line 204
    .line 205
    .line 206
    if-eqz v11, :cond_15

    .line 207
    .line 208
    const-wide/16 v17, 0x4

    .line 209
    .line 210
    cmp-long v11, v7, v17

    .line 211
    .line 212
    if-nez v11, :cond_8

    .line 213
    .line 214
    const v7, 0x1040fb8

    .line 215
    .line 216
    .line 217
    const/16 v8, 0x1b

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_8
    const-wide/16 v17, 0x10

    .line 221
    .line 222
    cmp-long v11, v7, v17

    .line 223
    .line 224
    if-nez v11, :cond_9

    .line 225
    .line 226
    const v7, 0x1040fbf

    .line 227
    .line 228
    .line 229
    const/16 v8, 0x1c

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_9
    const-wide/16 v17, 0x8

    .line 233
    .line 234
    cmp-long v11, v7, v17

    .line 235
    .line 236
    if-nez v11, :cond_a

    .line 237
    .line 238
    const v7, 0x1040faf

    .line 239
    .line 240
    .line 241
    const/16 v8, 0x1d

    .line 242
    .line 243
    goto :goto_1

    .line 244
    :cond_a
    const-wide/16 v17, 0x20

    .line 245
    .line 246
    cmp-long v11, v7, v17

    .line 247
    .line 248
    if-eqz v11, :cond_10

    .line 249
    .line 250
    const-wide/16 v17, 0x400

    .line 251
    .line 252
    cmp-long v11, v7, v17

    .line 253
    .line 254
    if-nez v11, :cond_b

    .line 255
    .line 256
    goto :goto_0

    .line 257
    :cond_b
    const-wide/16 v17, 0x80

    .line 258
    .line 259
    cmp-long v11, v7, v17

    .line 260
    .line 261
    if-nez v11, :cond_c

    .line 262
    .line 263
    const v7, 0x1040fdd

    .line 264
    .line 265
    .line 266
    const/16 v8, 0x4b

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_c
    const-wide/16 v17, 0x2

    .line 270
    .line 271
    cmp-long v11, v7, v17

    .line 272
    .line 273
    if-nez v11, :cond_d

    .line 274
    .line 275
    const v7, 0x1040f8d

    .line 276
    .line 277
    .line 278
    const/16 v8, 0x1e

    .line 279
    .line 280
    goto :goto_1

    .line 281
    :cond_d
    const-wide/32 v17, 0x80000

    .line 282
    .line 283
    .line 284
    cmp-long v11, v7, v17

    .line 285
    .line 286
    if-nez v11, :cond_e

    .line 287
    .line 288
    const v7, 0x1040f96

    .line 289
    .line 290
    .line 291
    const/16 v8, 0x64

    .line 292
    .line 293
    goto :goto_1

    .line 294
    :cond_e
    cmp-long v7, v7, v9

    .line 295
    .line 296
    if-nez v7, :cond_f

    .line 297
    .line 298
    const v7, 0x1040f9f

    .line 299
    .line 300
    .line 301
    const/16 v8, 0x6e

    .line 302
    .line 303
    goto :goto_1

    .line 304
    :cond_f
    move v7, v5

    .line 305
    move v8, v7

    .line 306
    goto :goto_1

    .line 307
    :cond_10
    :goto_0
    const v7, 0x1040fce

    .line 308
    .line 309
    .line 310
    const/16 v8, 0x2f

    .line 311
    .line 312
    :goto_1
    iget-boolean v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 313
    .line 314
    if-eqz v9, :cond_13

    .line 315
    .line 316
    if-eqz v7, :cond_12

    .line 317
    .line 318
    const v6, 0x1040fbe

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    :cond_11
    move v15, v7

    .line 326
    move v7, v8

    .line 327
    goto :goto_4

    .line 328
    :cond_12
    :goto_2
    move v7, v14

    .line 329
    move/from16 v15, v16

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_13
    if-nez v7, :cond_11

    .line 333
    .line 334
    :cond_14
    :goto_3
    move v7, v12

    .line 335
    goto :goto_4

    .line 336
    :cond_15
    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 337
    .line 338
    if-eqz v7, :cond_16

    .line 339
    .line 340
    goto :goto_2

    .line 341
    :cond_16
    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 342
    .line 343
    if-eqz v7, :cond_17

    .line 344
    .line 345
    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 346
    .line 347
    if-eqz v7, :cond_17

    .line 348
    .line 349
    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 350
    .line 351
    if-nez v7, :cond_14

    .line 352
    .line 353
    iget-boolean v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    .line 354
    .line 355
    if-eqz v7, :cond_17

    .line 356
    .line 357
    goto :goto_3

    .line 358
    :cond_17
    move v7, v5

    .line 359
    move v15, v7

    .line 360
    :goto_4
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    .line 361
    .line 362
    if-eqz v8, :cond_19

    .line 363
    .line 364
    invoke-virtual {v8}, Landroid/util/sysfwutil/DexObserver;->isDexModeOn()Z

    .line 365
    .line 366
    .line 367
    move-result v8

    .line 368
    if-nez v8, :cond_18

    .line 369
    .line 370
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    .line 371
    .line 372
    invoke-virtual {v8}, Landroid/util/sysfwutil/DexObserver;->isSemiDexModeOn()Z

    .line 373
    .line 374
    .line 375
    move-result v8

    .line 376
    if-eqz v8, :cond_19

    .line 377
    .line 378
    :cond_18
    const-string v7, "Clear notification: Dex is on"

    .line 379
    .line 380
    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    .line 382
    .line 383
    :goto_5
    move v7, v5

    .line 384
    goto :goto_6

    .line 385
    :cond_19
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    .line 386
    .line 387
    const-string v9, "ON_ALL"

    .line 388
    .line 389
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v8

    .line 393
    if-eqz v8, :cond_1a

    .line 394
    .line 395
    const-string v7, "Clear notification: ON_ALL"

    .line 396
    .line 397
    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    goto :goto_5

    .line 401
    :cond_1a
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    .line 402
    .line 403
    const-string v9, "ON_HOST"

    .line 404
    .line 405
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 406
    .line 407
    .line 408
    move-result v8

    .line 409
    if-eqz v8, :cond_1b

    .line 410
    .line 411
    if-ne v7, v14, :cond_1b

    .line 412
    .line 413
    const-string v7, "Clear notification: ON_HOST"

    .line 414
    .line 415
    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .line 417
    .line 418
    goto :goto_5

    .line 419
    :cond_1b
    sget-object v8, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    .line 420
    .line 421
    const-string v9, "ON_DEVICE"

    .line 422
    .line 423
    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 424
    .line 425
    .line 426
    move-result v8

    .line 427
    if-eqz v8, :cond_1c

    .line 428
    .line 429
    if-eq v7, v14, :cond_1c

    .line 430
    .line 431
    const-string v7, "Clear notification: ON_DEVICE"

    .line 432
    .line 433
    invoke-static {v3, v7}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    .line 435
    .line 436
    goto :goto_5

    .line 437
    :cond_1c
    :goto_6
    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 438
    .line 439
    if-ne v7, v8, :cond_1d

    .line 440
    .line 441
    if-eqz v1, :cond_24

    .line 442
    .line 443
    :cond_1d
    if-eqz v8, :cond_1e

    .line 444
    .line 445
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 446
    .line 447
    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 448
    .line 449
    invoke-virtual {v1, v4, v8, v9}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 450
    .line 451
    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    .line 453
    .line 454
    const-string v8, "cancelAsUser: id="

    .line 455
    .line 456
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 457
    .line 458
    .line 459
    iget v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 460
    .line 461
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .line 470
    .line 471
    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 472
    .line 473
    :cond_1e
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 474
    .line 475
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 476
    .line 477
    .line 478
    move-result-object v1

    .line 479
    const-string v8, "android.hardware.type.automotive"

    .line 480
    .line 481
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 482
    .line 483
    .line 484
    move-result v1

    .line 485
    if-nez v1, :cond_1f

    .line 486
    .line 487
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 488
    .line 489
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    const-string v8, "android.hardware.type.watch"

    .line 494
    .line 495
    invoke-virtual {v1, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 496
    .line 497
    .line 498
    move-result v1

    .line 499
    if-eqz v1, :cond_20

    .line 500
    .line 501
    :cond_1f
    if-ne v7, v12, :cond_20

    .line 502
    .line 503
    iput v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 504
    .line 505
    return-void

    .line 506
    :cond_20
    if-eqz v7, :cond_24

    .line 507
    .line 508
    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    const-string v8, "com.android.settings"

    .line 513
    .line 514
    if-eq v15, v13, :cond_21

    .line 515
    .line 516
    new-instance v2, Landroid/content/ComponentName;

    .line 517
    .line 518
    const-string v9, "com.android.settings.Settings$UsbDetailsActivity"

    .line 519
    .line 520
    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    .line 522
    .line 523
    invoke-static {v2}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 524
    .line 525
    .line 526
    move-result-object v18

    .line 527
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 528
    .line 529
    const/16 v20, 0x0

    .line 530
    .line 531
    sget-object v21, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 532
    .line 533
    const/16 v17, 0x0

    .line 534
    .line 535
    const/high16 v19, 0x4000000

    .line 536
    .line 537
    move-object/from16 v16, v2

    .line 538
    .line 539
    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    .line 544
    .line 545
    goto :goto_8

    .line 546
    :cond_21
    new-instance v6, Landroid/content/Intent;

    .line 547
    .line 548
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 549
    .line 550
    .line 551
    const-string v9, "com.android.settings.HelpTrampoline"

    .line 552
    .line 553
    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 554
    .line 555
    .line 556
    const-string v8, "android.intent.extra.TEXT"

    .line 557
    .line 558
    const-string v9, "help_url_audio_accessory_not_supported"

    .line 559
    .line 560
    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    .line 562
    .line 563
    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 564
    .line 565
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 566
    .line 567
    .line 568
    move-result-object v8

    .line 569
    invoke-virtual {v8, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 570
    .line 571
    .line 572
    move-result-object v8

    .line 573
    if-eqz v8, :cond_22

    .line 574
    .line 575
    iget-object v8, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 576
    .line 577
    const/high16 v9, 0x4000000

    .line 578
    .line 579
    invoke-static {v8, v5, v6, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 580
    .line 581
    .line 582
    move-result-object v6

    .line 583
    goto :goto_7

    .line 584
    :cond_22
    move-object v6, v4

    .line 585
    :goto_7
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 586
    .line 587
    const v9, 0x1040fd9

    .line 588
    .line 589
    .line 590
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    move-object/from16 v22, v6

    .line 595
    .line 596
    move-object v6, v2

    .line 597
    move-object/from16 v2, v22

    .line 598
    .line 599
    :goto_8
    new-instance v9, Landroid/app/Notification$Builder;

    .line 600
    .line 601
    iget-object v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 602
    .line 603
    invoke-direct {v9, v10, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    const v8, 0x1080b7e

    .line 607
    .line 608
    .line 609
    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 610
    .line 611
    .line 612
    move-result-object v8

    .line 613
    const-wide/16 v9, 0x0

    .line 614
    .line 615
    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 616
    .line 617
    .line 618
    move-result-object v8

    .line 619
    const/4 v9, 0x1

    .line 620
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 625
    .line 626
    .line 627
    move-result-object v8

    .line 628
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 629
    .line 630
    .line 631
    move-result-object v5

    .line 632
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 633
    .line 634
    .line 635
    move-result-object v5

    .line 636
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 637
    .line 638
    .line 639
    move-result-object v5

    .line 640
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 645
    .line 646
    .line 647
    move-result-object v2

    .line 648
    if-ne v15, v13, :cond_23

    .line 649
    .line 650
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    .line 651
    .line 652
    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v5, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 656
    .line 657
    .line 658
    move-result-object v5

    .line 659
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 660
    .line 661
    .line 662
    :cond_23
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    iget-object v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 667
    .line 668
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 669
    .line 670
    invoke-virtual {v5, v4, v7, v2, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 671
    .line 672
    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    .line 674
    .line 675
    const-string/jumbo v4, "notifyAsUser: id="

    .line 676
    .line 677
    .line 678
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    iget v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 682
    .line 683
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    const-string v4, " title="

    .line 687
    .line 688
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object v1

    .line 698
    invoke-static {v3, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    .line 700
    .line 701
    iput v7, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 702
    .line 703
    :cond_24
    :goto_9
    return-void
.end method

.method public final updateUsbStateBroadcastIfNeeded(JZ)V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v1, "updateUsbStateBroadcastIfNeeded: functions="

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "UsbDeviceManager"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v2, "android.hardware.usb.action.USB_STATE"

    .line 30
    .line 31
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/high16 v2, 0x31000000

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    const-string v2, "connected"

    .line 40
    .line 41
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 42
    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    const-string v2, "host_connected"

    .line 47
    .line 48
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 49
    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    const-string v2, "configured"

    .line 54
    .line 55
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v4, 0x1

    .line 66
    if-eqz v2, :cond_1

    .line 67
    .line 68
    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 69
    .line 70
    invoke-static {v5, v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_1

    .line 75
    .line 76
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isEDMRestrictionPolicy()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    .line 82
    const-string v2, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    .line 83
    .line 84
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    const/4 v9, 0x0

    .line 95
    const/4 v10, 0x0

    .line 96
    const/4 v7, 0x0

    .line 97
    const-string v8, "getSealedUsbMassStorageState"

    .line 98
    .line 99
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    if-eqz v2, :cond_0

    .line 104
    .line 105
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 106
    .line 107
    .line 108
    const-string v5, "getSealedUsbMassStorageState"

    .line 109
    .line 110
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const-string/jumbo v6, "true"

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    goto :goto_0

    .line 131
    :catch_0
    :try_start_1
    sget-object v5, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 132
    .line 133
    const-string v5, "exception SEALED_USB_MASSSTORAGE_STATE."

    .line 134
    .line 135
    invoke-static {v1, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .line 137
    .line 138
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 139
    .line 140
    .line 141
    move v2, v3

    .line 142
    goto :goto_2

    .line 143
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 144
    .line 145
    .line 146
    throw p0

    .line 147
    :cond_0
    move v5, v4

    .line 148
    :goto_1
    xor-int/lit8 v2, v5, 0x1

    .line 149
    .line 150
    :goto_2
    if-nez v2, :cond_1

    .line 151
    .line 152
    move v2, v4

    .line 153
    goto :goto_3

    .line 154
    :cond_1
    move v2, v3

    .line 155
    :goto_3
    const-string/jumbo v5, "unlocked"

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    .line 160
    .line 161
    const-string v2, "config_changed"

    .line 162
    .line 163
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    :goto_4
    const-wide/16 v5, 0x0

    .line 167
    .line 168
    cmp-long p3, p1, v5

    .line 169
    .line 170
    if-eqz p3, :cond_2

    .line 171
    .line 172
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    .line 173
    .line 174
    .line 175
    move-result-wide v5

    .line 176
    invoke-static {v5, v6}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p3

    .line 180
    invoke-virtual {v0, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    .line 182
    .line 183
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    .line 184
    .line 185
    .line 186
    move-result-wide v5

    .line 187
    sub-long/2addr p1, v5

    .line 188
    goto :goto_4

    .line 189
    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 198
    .line 199
    if-nez p2, :cond_4

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    if-eqz p2, :cond_7

    .line 210
    .line 211
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    check-cast p2, Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 218
    .line 219
    .line 220
    move-result p2

    .line 221
    if-eqz p2, :cond_3

    .line 222
    .line 223
    :goto_5
    move v3, v4

    .line 224
    goto :goto_6

    .line 225
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 226
    .line 227
    .line 228
    move-result-object p2

    .line 229
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 230
    .line 231
    .line 232
    move-result-object p2

    .line 233
    invoke-interface {p1, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result p2

    .line 237
    if-nez p2, :cond_5

    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    if-eqz p2, :cond_7

    .line 249
    .line 250
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object p2

    .line 254
    check-cast p2, Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {v0, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 257
    .line 258
    .line 259
    move-result p3

    .line 260
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 261
    .line 262
    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 263
    .line 264
    .line 265
    move-result p2

    .line 266
    if-eq p3, p2, :cond_6

    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_7
    :goto_6
    const-string p1, " extras: "

    .line 270
    .line 271
    if-nez v3, :cond_8

    .line 272
    .line 273
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 274
    .line 275
    new-instance p0, Ljava/lang/StringBuilder;

    .line 276
    .line 277
    const-string/jumbo p2, "skip broadcasting "

    .line 278
    .line 279
    .line 280
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    return-void

    .line 304
    :cond_8
    sget-object p2, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 305
    .line 306
    new-instance p2, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    const-string p3, "broadcasting "

    .line 309
    .line 310
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    .line 332
    .line 333
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 334
    .line 335
    .line 336
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 337
    .line 338
    return-void
.end method
