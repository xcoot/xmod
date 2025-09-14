.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# static fields
.field public static mDexObserver:Landroid/util/sysfwutil/DexObserver;

.field public static mEnableUsbHiddenMenu:Z

.field public static mSetNextUsbModeToDefault:Z

.field public static mSupportDualRole:Z

.field public static mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

.field public static final sDenyInterfaces:Ljava/util/Set;

.field public static sEventLogger:Lcom/android/server/utils/EventLogger;

.field public static final sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static usbDisableSettingVal:Ljava/lang/String;


# instance fields
.field public mAccessoryStrings:[Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mControlFds:Ljava/util/HashMap;

.field public mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

.field public final mDexListener:Lcom/android/server/usb/UsbDeviceManager$1;

.field public final mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field public final mHasUsbAccessory:Z

.field public final mHostConnectionReceiver:Lcom/android/server/usb/UsbDeviceManager$2;

.field public final mLock:Ljava/lang/Object;

.field public final mUEventObserver:Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;


# direct methods
.method public static -$$Nest$mresetAccessoryHandshakeTimeoutHandler(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 2
    .line 3
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 4
    .line 5
    const-wide/16 v2, 0x2

    .line 6
    .line 7
    and-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x14

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-wide/16 v1, 0x2710

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public static -$$Nest$smgetDefaultUsbValue()J
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "knoxcustom"

    .line 3
    .line 4
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/custom/IKnoxCustomManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Lcom/samsung/android/knox/custom/IKnoxCustomManager;->getUsbConnectionTypeInternal()I

    .line 15
    .line 16
    .line 17
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 24
    const-string v2, "UsbDeviceManager"

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    const-string v0, "getDefaultUsbValue :: knoxUsb returns MTP"

    .line 29
    .line 30
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const-wide/16 v0, 0x4

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v1, 0x2

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    const-string v0, "getDefaultUsbValue :: knoxUsb returns PTP"

    .line 40
    .line 41
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const-wide/16 v0, 0x10

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    const/4 v1, 0x3

    .line 48
    if-ne v0, v1, :cond_3

    .line 49
    .line 50
    const-string v0, "getDefaultUsbValue :: knoxUsb returns MIDI"

    .line 51
    .line 52
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    const-wide/16 v0, 0x8

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 v1, 0x4

    .line 59
    if-ne v0, v1, :cond_4

    .line 60
    .line 61
    const-string v0, "getDefaultUsbValue :: knoxUsb returns CHARGING"

    .line 62
    .line 63
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    const-wide/32 v0, 0x40000

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    const/4 v1, 0x5

    .line 71
    if-ne v0, v1, :cond_5

    .line 72
    .line 73
    const-string v0, "getDefaultUsbValue :: knoxUsb returns TETHERING"

    .line 74
    .line 75
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    const-wide/16 v0, 0x20

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_5
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string/jumbo v1, "none"

    .line 86
    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string/jumbo v3, "persist.sys.usb.q_config"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_6

    .line 100
    .line 101
    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    goto :goto_1

    .line 106
    :cond_6
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_7

    .line 111
    .line 112
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->isMassTestEnabled()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_8

    .line 117
    .line 118
    :cond_7
    const-string v0, "Prevent temporary usb disconnection for Factory Binary or JIG connection"

    .line 119
    .line 120
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    const-string/jumbo v1, "mtp,adb"

    .line 124
    .line 125
    .line 126
    :cond_8
    invoke-static {v1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 127
    .line 128
    .line 129
    move-result-wide v0

    .line 130
    :goto_1
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashSet;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x7

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x8

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x9

    .line 57
    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    const/16 v1, 0xa

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    const/16 v1, 0xb

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    const/16 v1, 0xd

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    const/16 v1, 0xe

    .line 93
    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    const/16 v1, 0xe0

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    .line 112
    .line 113
    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSetNextUsbModeToDefault:Z

    .line 114
    .line 115
    const-string v1, "OFF"

    .line 116
    .line 117
    sput-object v1, Lcom/android/server/usb/UsbDeviceManager;->usbDisableSettingVal:Ljava/lang/String;

    .line 118
    .line 119
    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    .line 120
    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;Landroid/util/sysfwutil/DexObserver;)V
    .locals 18

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    const-string v9, "UsbDeviceManager"

    .line 6
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$1;

    .line 18
    .line 19
    invoke-direct {v0, v7}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mDexListener:Lcom/android/server/usb/UsbDeviceManager$1;

    .line 23
    .line 24
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$2;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mHostConnectionReceiver:Lcom/android/server/usb/UsbDeviceManager$2;

    .line 30
    .line 31
    move-object/from16 v0, p1

    .line 32
    .line 33
    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 36
    .line 37
    .line 38
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "android.hardware.usb.accessory"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iput-boolean v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 49
    .line 50
    const/4 v0, 0x6

    .line 51
    new-array v0, v0, [I

    .line 52
    .line 53
    const/4 v10, 0x0

    .line 54
    const/4 v1, 0x2

    .line 55
    aput v1, v0, v10

    .line 56
    .line 57
    const-string/jumbo v2, "ro.serialno"

    .line 58
    .line 59
    .line 60
    const-string v3, "1234567890ABCDEF"

    .line 61
    .line 62
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    move v4, v10

    .line 71
    :goto_0
    const/4 v11, 0x1

    .line 72
    if-ge v4, v3, :cond_0

    .line 73
    .line 74
    rem-int/lit8 v5, v4, 0x5

    .line 75
    .line 76
    add-int/2addr v5, v11

    .line 77
    aget v6, v0, v5

    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 80
    .line 81
    .line 82
    move-result v11

    .line 83
    xor-int/2addr v6, v11

    .line 84
    aput v6, v0, v5

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 90
    .line 91
    aget v3, v0, v10

    .line 92
    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v12

    .line 97
    aget v3, v0, v11

    .line 98
    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v13

    .line 103
    aget v1, v0, v1

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    const/4 v1, 0x3

    .line 110
    aget v1, v0, v1

    .line 111
    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    const/4 v1, 0x4

    .line 117
    aget v1, v0, v1

    .line 118
    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v16

    .line 123
    const/4 v1, 0x5

    .line 124
    aget v0, v0, v1

    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v17

    .line 130
    filled-new-array/range {v12 .. v17}, [Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v1, "%02X:%02X:%02X:%02X:%02X:%02X"

    .line 135
    .line 136
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    :try_start_0
    const-string v1, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    .line 141
    .line 142
    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_1

    .line 146
    :catch_0
    const-string v0, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    .line 147
    .line 148
    invoke-static {v9, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .line 150
    .line 151
    :goto_1
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    invoke-static/range {p0 .. p0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHalInstance;->getInstance(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 162
    .line 163
    const-string v0, "getInstance done"

    .line 164
    .line 165
    invoke-static {v9, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    new-instance v0, Ljava/util/HashMap;

    .line 169
    .line 170
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 171
    .line 172
    .line 173
    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    .line 174
    .line 175
    const-string/jumbo v1, "mtp"

    .line 176
    .line 177
    .line 178
    invoke-direct {v7, v1}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-nez v1, :cond_1

    .line 183
    .line 184
    const-string v2, "Failed to open control for mtp"

    .line 185
    .line 186
    invoke-static {v9, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .line 188
    .line 189
    :cond_1
    const-wide/16 v2, 0x4

    .line 190
    .line 191
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    const-string/jumbo v1, "ptp"

    .line 199
    .line 200
    .line 201
    invoke-direct {v7, v1}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-nez v1, :cond_2

    .line 206
    .line 207
    const-string v2, "Failed to open control for ptp"

    .line 208
    .line 209
    invoke-static {v9, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    :cond_2
    const-wide/16 v2, 0x10

    .line 213
    .line 214
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 222
    .line 223
    if-nez v0, :cond_8

    .line 224
    .line 225
    new-instance v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;

    .line 226
    .line 227
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    iget-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 236
    .line 237
    const-string/jumbo v14, "none"

    .line 238
    .line 239
    .line 240
    const-string v15, "Init mCurrentFunctions="

    .line 241
    .line 242
    move-object v1, v13

    .line 243
    move-object v3, v0

    .line 244
    move-object/from16 v4, p0

    .line 245
    .line 246
    move-object/from16 v5, p2

    .line 247
    .line 248
    move-object/from16 v6, p3

    .line 249
    .line 250
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    .line 251
    .line 252
    .line 253
    :try_start_1
    invoke-virtual {v13, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->readOemUsbOverrideConfig(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-static {v0, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    iput-object v0, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentOemFunctions:Ljava/lang/String;

    .line 265
    .line 266
    const-string/jumbo v0, "ro.bootmode"

    .line 267
    .line 268
    .line 269
    const-string/jumbo v1, "unknown"

    .line 270
    .line 271
    .line 272
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    const-string/jumbo v2, "normal"

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-nez v2, :cond_4

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    if-eqz v0, :cond_3

    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_3
    move v0, v10

    .line 293
    goto :goto_3

    .line 294
    :cond_4
    :goto_2
    move v0, v11

    .line 295
    :goto_3
    const-string/jumbo v1, "sys.usb.state"

    .line 296
    .line 297
    .line 298
    const-wide/16 v2, -0x2

    .line 299
    .line 300
    const-string/jumbo v4, "sys.usb.config"

    .line 301
    .line 302
    .line 303
    if-eqz v0, :cond_6

    .line 304
    .line 305
    :try_start_2
    invoke-static {v4, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 310
    .line 311
    .line 312
    move-result-wide v5

    .line 313
    iput-wide v5, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 314
    .line 315
    iput-wide v5, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 316
    .line 317
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-nez v0, :cond_5

    .line 322
    .line 323
    iget-wide v5, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 324
    .line 325
    and-long/2addr v2, v5

    .line 326
    iput-wide v2, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 327
    .line 328
    goto :goto_4

    .line 329
    :catch_1
    move-exception v0

    .line 330
    goto/16 :goto_6

    .line 331
    .line 332
    :cond_5
    :goto_4
    invoke-static {v4, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    iput-object v0, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 337
    .line 338
    invoke-static {v1, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    iput-boolean v0, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 347
    .line 348
    goto :goto_5

    .line 349
    :cond_6
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v0, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v0}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    .line 358
    .line 359
    .line 360
    move-result-wide v5

    .line 361
    iput-wide v5, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 362
    .line 363
    iput-wide v5, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSecCurrentFunctions:J

    .line 364
    .line 365
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_7

    .line 370
    .line 371
    iget-wide v5, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 372
    .line 373
    and-long/2addr v2, v5

    .line 374
    iput-wide v2, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 375
    .line 376
    :cond_7
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->getPersistProp()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    invoke-static {v0, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    iput-object v0, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;->mCurrentFunctionsStr:Ljava/lang/String;

    .line 385
    .line 386
    invoke-static {v4, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-static {v1, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    iput-boolean v0, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 399
    .line 400
    :goto_5
    iput-boolean v11, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    .line 401
    .line 402
    const/4 v0, -0x1

    .line 403
    iput v0, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    .line 404
    .line 405
    iput v0, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    .line 406
    .line 407
    const-string/jumbo v0, "sys.usb.configured"

    .line 408
    .line 409
    .line 410
    invoke-static {v0, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    new-instance v0, Ljava/io/File;

    .line 414
    .line 415
    const-string v1, "/sys/class/android_usb/android0/state"

    .line 416
    .line 417
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .line 419
    .line 420
    const/4 v1, 0x0

    .line 421
    invoke-static {v0, v10, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    .line 430
    .line 431
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 432
    .line 433
    .line 434
    iget-wide v2, v13, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 435
    .line 436
    invoke-static {v2, v3}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    const-string v2, " state="

    .line 444
    .line 445
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-static {v9, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    .line 457
    .line 458
    invoke-virtual {v13, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 459
    .line 460
    .line 461
    goto :goto_7

    .line 462
    :goto_6
    const-string v1, "Error initializing UsbHandler"

    .line 463
    .line 464
    invoke-static {v9, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    .line 466
    .line 467
    :goto_7
    iput-object v13, v7, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_8
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    .line 471
    .line 472
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    iget-object v3, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 481
    .line 482
    move-object v1, v0

    .line 483
    move-object/from16 v4, p0

    .line 484
    .line 485
    move-object/from16 v5, p2

    .line 486
    .line 487
    move-object/from16 v6, p3

    .line 488
    .line 489
    invoke-direct/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    .line 490
    .line 491
    .line 492
    iput-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 493
    .line 494
    :goto_8
    iget-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 495
    .line 496
    invoke-virtual {v0, v12}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handlerInitDone(I)V

    .line 497
    .line 498
    .line 499
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    .line 500
    .line 501
    .line 502
    move-result v0

    .line 503
    if-eqz v0, :cond_9

    .line 504
    .line 505
    const-string v0, "accessory attached at boot"

    .line 506
    .line 507
    invoke-static {v9, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .line 509
    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 511
    .line 512
    .line 513
    :cond_9
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$3;

    .line 514
    .line 515
    const/4 v1, 0x0

    .line 516
    invoke-direct {v0, v7, v1}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;I)V

    .line 517
    .line 518
    .line 519
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$3;

    .line 520
    .line 521
    const/4 v2, 0x1

    .line 522
    invoke-direct {v1, v7, v2}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;I)V

    .line 523
    .line 524
    .line 525
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$3;

    .line 526
    .line 527
    const/4 v3, 0x2

    .line 528
    invoke-direct {v2, v7, v3}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;I)V

    .line 529
    .line 530
    .line 531
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$3;

    .line 532
    .line 533
    const/4 v4, 0x3

    .line 534
    invoke-direct {v3, v7, v4}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;I)V

    .line 535
    .line 536
    .line 537
    iget-object v4, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 538
    .line 539
    new-instance v5, Landroid/content/IntentFilter;

    .line 540
    .line 541
    const-string v6, "android.hardware.usb.action.USB_PORT_CHANGED"

    .line 542
    .line 543
    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 547
    .line 548
    .line 549
    iget-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 550
    .line 551
    new-instance v4, Landroid/content/IntentFilter;

    .line 552
    .line 553
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    .line 554
    .line 555
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    .line 560
    .line 561
    new-instance v0, Landroid/content/IntentFilter;

    .line 562
    .line 563
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 564
    .line 565
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 569
    .line 570
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    .line 572
    .line 573
    iget-object v1, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 574
    .line 575
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 576
    .line 577
    .line 578
    iget-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 579
    .line 580
    new-instance v1, Landroid/content/IntentFilter;

    .line 581
    .line 582
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 583
    .line 584
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 588
    .line 589
    .line 590
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;

    .line 591
    .line 592
    invoke-direct {v0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 593
    .line 594
    .line 595
    const-string v1, "DEVPATH=/devices/virtual/android_usb/android0"

    .line 596
    .line 597
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    const-string v1, "DEVPATH=/devices/virtual/misc/usb_accessory"

    .line 601
    .line 602
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    new-instance v0, Lcom/android/server/utils/EventLogger;

    .line 606
    .line 607
    const/16 v1, 0xc8

    .line 608
    .line 609
    const-string v2, "UsbDeviceManager activity"

    .line 610
    .line 611
    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    .line 612
    .line 613
    .line 614
    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 615
    .line 616
    if-eqz v8, :cond_a

    .line 617
    .line 618
    sput-object v8, Lcom/android/server/usb/UsbDeviceManager;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    .line 619
    .line 620
    iget-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mDexListener:Lcom/android/server/usb/UsbDeviceManager$1;

    .line 621
    .line 622
    invoke-virtual {v8, v0}, Landroid/util/sysfwutil/DexObserver;->addListener(Landroid/util/sysfwutil/DexConnectionListener;)V

    .line 623
    .line 624
    .line 625
    :cond_a
    iget-object v0, v7, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 626
    .line 627
    iget-object v1, v7, Lcom/android/server/usb/UsbDeviceManager;->mHostConnectionReceiver:Lcom/android/server/usb/UsbDeviceManager$2;

    .line 628
    .line 629
    new-instance v2, Landroid/content/IntentFilter;

    .line 630
    .line 631
    const-string v3, "com.samsung.UsbOtgCableConnection"

    .line 632
    .line 633
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    .line 638
    .line 639
    new-instance v0, Ljava/io/File;

    .line 640
    .line 641
    const-string v1, "/sys/class/typec"

    .line 642
    .line 643
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    .line 645
    .line 646
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 647
    .line 648
    .line 649
    move-result v0

    .line 650
    sput-boolean v0, Lcom/android/server/usb/UsbDeviceManager;->mSupportDualRole:Z

    .line 651
    .line 652
    return-void
.end method

.method public static getPersistProp()Ljava/lang/String;
    .locals 3

    .line 1
    const-string/jumbo v0, "persist.sys.usb.q_config"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "none"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    xor-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string/jumbo v0, "persist.sys.usb.config"

    .line 21
    .line 22
    .line 23
    :goto_0
    const-string v1, "getPersistProp: return="

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "UsbDeviceManager"

    .line 30
    .line 31
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public static isMassTestEnabled()Z
    .locals 5

    .line 1
    const-string v0, "UsbDeviceManager"

    .line 2
    .line 3
    const-string v1, "isMassTestEnabled: state="

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 7
    .line 8
    const-string v4, "/sys/class/sec/rid_adc/rid_adc"

    .line 9
    .line 10
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x0

    .line 20
    invoke-static {v3, v2, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    const-string v1, "255K"

    .line 44
    .line 45
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    const-string v1, "302K"

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_0

    .line 58
    .line 59
    const-string v1, "523K"

    .line 60
    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    const-string v1, "619K"

    .line 68
    .line 69
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 79
    return v0

    .line 80
    :goto_1
    const-string v3, "Could\'t read /sys/class/sec/rid_adc/rid_adc"

    .line 81
    .line 82
    invoke-static {v0, v3, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    :cond_1
    return v2
.end method

.method public static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "UsbDeviceManager"

    .line 2
    .line 3
    invoke-static {p0, v0, p2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public static logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const-string v0, "UsbDeviceManager"

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private native nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;
.end method


# virtual methods
.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 12

    .line 1
    const-string v0, "device_manager"

    .line 2
    .line 3
    const-wide v1, 0x10b00000001L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v7

    .line 12
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string v9, "UsbDeviceManager"

    .line 17
    .line 18
    const-string v3, "handler"

    .line 19
    .line 20
    invoke-virtual {p1, v3, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 21
    .line 22
    .line 23
    move-result-wide v10

    .line 24
    iget-wide v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 25
    .line 26
    const-string v2, "current_functions"

    .line 27
    .line 28
    const-wide v3, 0x20e00000001L

    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    move-object v1, p1

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 35
    .line 36
    .line 37
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 38
    .line 39
    const-string v2, "current_functions_applied"

    .line 40
    .line 41
    const-wide v3, 0x10800000002L

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 47
    .line 48
    .line 49
    iget-wide v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 50
    .line 51
    const-string/jumbo v2, "screen_unlocked_functions"

    .line 52
    .line 53
    .line 54
    const-wide v3, 0x20e00000003L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    move-object v1, p1

    .line 60
    invoke-static/range {v1 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 64
    .line 65
    const-string/jumbo v2, "screen_locked"

    .line 66
    .line 67
    .line 68
    const-wide v3, 0x10800000004L

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 74
    .line 75
    .line 76
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 77
    .line 78
    const-string v2, "connected"

    .line 79
    .line 80
    const-wide v3, 0x10800000005L

    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 86
    .line 87
    .line 88
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 89
    .line 90
    const-string v2, "configured"

    .line 91
    .line 92
    const-wide v3, 0x10800000006L

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 101
    .line 102
    if-eqz v1, :cond_0

    .line 103
    .line 104
    const-string v2, "current_accessory"

    .line 105
    .line 106
    const-wide v3, 0x10b00000007L

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V

    .line 112
    .line 113
    .line 114
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 115
    .line 116
    const-string v2, "host_connected"

    .line 117
    .line 118
    const-wide v3, 0x10800000008L

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 124
    .line 125
    .line 126
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 127
    .line 128
    const-string/jumbo v2, "source_power"

    .line 129
    .line 130
    .line 131
    const-wide v3, 0x10800000009L

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 137
    .line 138
    .line 139
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 140
    .line 141
    const-string/jumbo v2, "sink_power"

    .line 142
    .line 143
    .line 144
    const-wide v3, 0x1080000000aL

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 150
    .line 151
    .line 152
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 153
    .line 154
    const-string/jumbo v2, "usb_charging"

    .line 155
    .line 156
    .line 157
    const-wide v3, 0x1080000000bL

    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 163
    .line 164
    .line 165
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 166
    .line 167
    const-string v2, "hide_usb_notification"

    .line 168
    .line 169
    const-wide v3, 0x1080000000cL

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 175
    .line 176
    .line 177
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotiForSecUsbSmartEP:Z

    .line 178
    .line 179
    invoke-virtual {p1, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 180
    .line 181
    .line 182
    iget-boolean v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 183
    .line 184
    const-string v1, "audio_accessory_connected"

    .line 185
    .line 186
    const-wide v2, 0x1080000000dL

    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 192
    .line 193
    .line 194
    const/4 v1, 0x0

    .line 195
    const/4 v2, 0x0

    .line 196
    :try_start_0
    const-string v0, "kernel_state"

    .line 197
    .line 198
    new-instance v3, Ljava/io/File;

    .line 199
    .line 200
    const-string v4, "/sys/class/android_usb/android0/state"

    .line 201
    .line 202
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-static {v3, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v3

    .line 209
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    const-wide v4, 0x1090000000fL

    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    invoke-static {p1, v0, v4, v5, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .line 220
    .line 221
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v3, "Could not read kernel state"

    .line 224
    .line 225
    invoke-static {v9, v3, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .line 227
    .line 228
    goto :goto_0

    .line 229
    :catch_1
    const-string v0, "Ignore missing legacy kernel path in bugreport dump: kernel state:/sys/class/android_usb/android0/state"

    .line 230
    .line 231
    invoke-static {v9, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    :goto_0
    :try_start_1
    const-string v0, "kernel_function_list"

    .line 235
    .line 236
    new-instance v3, Ljava/io/File;

    .line 237
    .line 238
    const-string v4, "/sys/class/android_usb/android0/functions"

    .line 239
    .line 240
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v3, v2, v1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    const-wide v2, 0x10900000010L

    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    invoke-static {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 257
    .line 258
    .line 259
    goto :goto_1

    .line 260
    :catch_2
    move-exception v0

    .line 261
    const-string v1, "Could not read kernel function list"

    .line 262
    .line 263
    invoke-static {v9, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    .line 265
    .line 266
    goto :goto_1

    .line 267
    :catch_3
    const-string v0, "Ignore missing legacy kernel path in bugreport dump: kernel function list:/sys/class/android_usb/android0/functions"

    .line 268
    .line 269
    invoke-static {v9, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .line 271
    .line 272
    :goto_1
    invoke-virtual {p1, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 273
    .line 274
    .line 275
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/utils/EventLogger;

    .line 276
    .line 277
    new-instance v1, Lcom/android/server/usb/DualOutputStreamDumpSink;

    .line 278
    .line 279
    const-wide v2, 0x10900000011L

    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/usb/DualOutputStreamDumpSink;-><init>(Lcom/android/internal/util/dump/DualDumpOutputStream;J)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->dump(Lcom/android/server/usb/DualOutputStreamDumpSink;)V

    .line 288
    .line 289
    .line 290
    :cond_1
    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 291
    .line 292
    .line 293
    return-void
.end method

.method public final onAwakeStateChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onKeyguardStateChanged(Z)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

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
    const-string/jumbo v2, "onKeyguardStateChanged: isShowing:"

    .line 20
    .line 21
    .line 22
    const-string v3, " secure:"

    .line 23
    .line 24
    const-string v4, " user:"

    .line 25
    .line 26
    invoke-static {v2, p1, v3, v1, v4}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "UsbDeviceManager"

    .line 38
    .line 39
    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    const/4 p1, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 50
    .line 51
    const/16 v0, 0xd

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 61
    .line 62
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public final openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserPermissionManager;II)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;II)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " does not match current accessory "

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string/jumbo p1, "no accessory attached"

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final setCurrentFunctions(JI)V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setCurrentFunctions("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ")"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "UsbDeviceManager"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    const-string v2, "activity"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/app/ActivityManager;

    .line 39
    .line 40
    const v2, 0x7fffffff

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 62
    .line 63
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :goto_0
    const-string v0, ""

    .line 71
    .line 72
    :goto_1
    sget-boolean v2, Lcom/android/server/usb/UsbDeviceManager;->mEnableUsbHiddenMenu:Z

    .line 73
    .line 74
    const-wide/16 v3, 0x0

    .line 75
    .line 76
    const-wide/16 v5, 0x4

    .line 77
    .line 78
    if-nez v2, :cond_2

    .line 79
    .line 80
    const-string v2, "com.sec.usbsettings"

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_2

    .line 87
    .line 88
    const-string v2, "com.sec.hiddenmenu"

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    :cond_2
    and-long v7, p1, v5

    .line 97
    .line 98
    cmp-long v0, v7, v3

    .line 99
    .line 100
    const-string/jumbo v2, "persist.sys.usb.q_config"

    .line 101
    .line 102
    .line 103
    if-eqz v0, :cond_3

    .line 104
    .line 105
    const-string/jumbo v0, "none"

    .line 106
    .line 107
    .line 108
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "Disable USB Hidden Menu"

    .line 112
    .line 113
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v7, "Enable USB Hidden Menu: functions="

    .line 127
    .line 128
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_4
    :goto_2
    cmp-long v0, p1, v3

    .line 142
    .line 143
    if-nez v0, :cond_5

    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    const/16 v1, 0x4fb

    .line 148
    .line 149
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    cmp-long v0, p1, v5

    .line 154
    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 158
    .line 159
    const/16 v1, 0x4fc

    .line 160
    .line 161
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_6
    const-wide/16 v0, 0x10

    .line 166
    .line 167
    cmp-long v0, p1, v0

    .line 168
    .line 169
    if-nez v0, :cond_7

    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 172
    .line 173
    const/16 v1, 0x4fd

    .line 174
    .line 175
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_7
    const-wide/16 v0, 0x8

    .line 180
    .line 181
    cmp-long v0, p1, v0

    .line 182
    .line 183
    if-nez v0, :cond_8

    .line 184
    .line 185
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 186
    .line 187
    const/16 v1, 0x4ff

    .line 188
    .line 189
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_8
    const-wide/16 v0, 0x20

    .line 194
    .line 195
    cmp-long v0, p1, v0

    .line 196
    .line 197
    if-nez v0, :cond_9

    .line 198
    .line 199
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 200
    .line 201
    const/16 v1, 0x4fe

    .line 202
    .line 203
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 204
    .line 205
    .line 206
    goto :goto_3

    .line 207
    :cond_9
    const-wide/16 v0, 0x2

    .line 208
    .line 209
    cmp-long v0, p1, v0

    .line 210
    .line 211
    if-nez v0, :cond_a

    .line 212
    .line 213
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 214
    .line 215
    const/16 v1, 0x500

    .line 216
    .line 217
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 218
    .line 219
    .line 220
    :cond_a
    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 225
    .line 226
    const/4 p2, 0x2

    .line 227
    invoke-virtual {p0, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 228
    .line 229
    .line 230
    invoke-static {p0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    .line 236
    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 237
    .line 238
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 239
    .line 240
    .line 241
    return-void
.end method

.method public final startAccessoryMode()V
    .locals 7

    .line 1
    const-string/jumbo v0, "startAccessoryMode()"

    .line 2
    .line 3
    .line 4
    const-string v1, "UsbDeviceManager"

    .line 5
    .line 6
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    aget-object v4, v2, v3

    .line 30
    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    const/4 v4, 0x1

    .line 34
    aget-object v5, v2, v4

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v4, v3

    .line 40
    :goto_0
    if-eqz v2, :cond_3

    .line 41
    .line 42
    :goto_1
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 43
    .line 44
    array-length v2, v2

    .line 45
    if-ge v3, v2, :cond_2

    .line 46
    .line 47
    const-string v2, "mAccessoryStrings["

    .line 48
    .line 49
    const-string v5, "]="

    .line 50
    .line 51
    invoke-static {v3, v2, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    .line 56
    .line 57
    aget-object v5, v5, v3

    .line 58
    .line 59
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v3, "enableAccessory="

    .line 75
    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    const-string v2, "mAccessoryStrings is null"

    .line 91
    .line 92
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    :goto_2
    const-wide/16 v1, 0x0

    .line 96
    .line 97
    if-eqz v4, :cond_4

    .line 98
    .line 99
    const-wide/16 v3, 0x2

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    move-wide v3, v1

    .line 103
    :goto_3
    cmp-long v1, v3, v1

    .line 104
    .line 105
    if-eqz v1, :cond_5

    .line 106
    .line 107
    const/16 v1, 0x8

    .line 108
    .line 109
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 110
    .line 111
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-wide/16 v5, 0x2710

    .line 116
    .line 117
    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 118
    .line 119
    .line 120
    const/16 v1, 0x14

    .line 121
    .line 122
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v3, v4, v0}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    .line 130
    .line 131
    .line 132
    :cond_5
    return-void
.end method
