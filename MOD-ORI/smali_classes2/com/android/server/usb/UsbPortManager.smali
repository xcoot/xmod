.class public final Lcom/android/server/usb/UsbPortManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final COMBO_SINK_DEVICE:I

.field public static final COMBO_SINK_HOST:I

.field public static final COMBO_SOURCE_DEVICE:I

.field public static final COMBO_SOURCE_HOST:I


# instance fields
.field public final mConnected:Landroid/util/ArrayMap;

.field public final mContaminantStatus:Landroid/util/ArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayPortListenerLock:Ljava/lang/Object;

.field public final mDisplayPortListeners:Landroid/util/ArrayMap;

.field public final mHandler:Lcom/android/server/usb/UsbPortManager$1;

.field public mIsPortContaminatedNotificationId:I

.field public final mLock:Ljava/lang/Object;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public final mPorts:Landroid/util/ArrayMap;

.field public final mSimulatedPorts:Landroid/util/ArrayMap;

.field public mTransactionId:J

.field public final mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

.field public final usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    sput v1, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sput v2, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    .line 14
    .line 15
    invoke-static {v1, v0}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    .line 20
    .line 21
    invoke-static {v1, v1}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sput v0, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    .line 26
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 24
    .line 25
    new-instance v0, Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 31
    .line 32
    new-instance v0, Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 38
    .line 39
    new-instance v0, Ljava/lang/Object;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListenerLock:Ljava/lang/Object;

    .line 45
    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 55
    .line 56
    new-instance v1, Lcom/android/server/usb/UsbPortManager$1;

    .line 57
    .line 58
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbPortManager$1;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Lcom/android/server/usb/UsbPortManager$1;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 74
    .line 75
    if-nez v1, :cond_0

    .line 76
    .line 77
    const-string v1, "USB_PORT_MANAGER_BOOSTER"

    .line 78
    .line 79
    invoke-static {p1, v1}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/os/SemDvfsManager;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 84
    .line 85
    :cond_0
    iget-object p1, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 86
    .line 87
    const-string v1, "UsbPortManager"

    .line 88
    .line 89
    if-eqz p1, :cond_1

    .line 90
    .line 91
    const-string p1, "To boost, setHint"

    .line 92
    .line 93
    invoke-static {v1, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 97
    .line 98
    const/16 v2, 0x47e

    .line 99
    .line 100
    invoke-virtual {p1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 101
    .line 102
    .line 103
    :cond_1
    const/4 p1, 0x3

    .line 104
    const-string v2, "Querying USB HAL version"

    .line 105
    .line 106
    invoke-static {p1, v1, v2}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    sget-object v2, Lcom/android/server/usb/hal/port/UsbPortAidl;->sCallbacks:Landroid/util/LongSparseArray;

    .line 110
    .line 111
    :try_start_0
    const-string v2, "android.hardware.usb.IUsb/default"

    .line 112
    .line 113
    invoke-static {v2}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v2
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    .line 119
    const-string v3, "connectToProxy: usb Aidl hal service not found."

    .line 120
    .line 121
    invoke-static {v1, v3, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    const/4 v2, 0x0

    .line 125
    :goto_0
    const/4 v3, 0x4

    .line 126
    if-eqz v2, :cond_2

    .line 127
    .line 128
    const-string v0, "USB HAL AIDL present"

    .line 129
    .line 130
    invoke-static {v3, v1, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    new-instance v0, Lcom/android/server/usb/hal/port/UsbPortAidl;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/port/UsbPortAidl;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_2
    :try_start_1
    const-string v2, "android.hardware.usb@1.0::IUsb"

    .line 140
    .line 141
    const-string v4, "default"

    .line 142
    .line 143
    const/4 v5, 0x1

    .line 144
    invoke-static {v2, v4, v5}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2}, Landroid/hardware/usb/V1_0/IUsb;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/usb/V1_0/IUsb;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :catch_1
    move-exception v0

    .line 153
    const-string v2, "IUSB hal service present but failed to get service"

    .line 154
    .line 155
    invoke-static {v1, v2, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    :goto_1
    const-string v0, "USB HAL HIDL present"

    .line 159
    .line 160
    invoke-static {v3, v1, v0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    new-instance v0, Lcom/android/server/usb/hal/port/UsbPortHidl;

    .line 164
    .line 165
    invoke-direct {v0, p0}, Lcom/android/server/usb/hal/port/UsbPortHidl;-><init>(Lcom/android/server/usb/UsbPortManager;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :catch_2
    move-exception v2

    .line 170
    const-string v3, "connectToProxy: usb hidl hal service not found."

    .line 171
    .line 172
    invoke-static {v1, v3, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .line 174
    .line 175
    :goto_2
    iput-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 176
    .line 177
    const-string p0, "getInstance done"

    .line 178
    .line 179
    invoke-static {p1, v1, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "UsbPortManager"

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
    const-string v0, "UsbPortManager"

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


# virtual methods
.method public final addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v4, p2

    move/from16 v1, p4

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v13, p8

    move/from16 v12, p9

    move/from16 v6, p10

    move/from16 v7, p12

    move-object/from16 v2, p22

    .line 1
    const-string v3, "addOrUpdatePortLocked()++ : portId="

    const-string v5, " supportedModes="

    .line 2
    invoke-static {v3, v10, v5}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " currentMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static/range {p4 .. p4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " canChangeMode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " currentPowerRole="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static/range {p6 .. p6}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " canChangePowerRole="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " currentDataRole="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static/range {p8 .. p8}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " canChangeDataRole="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    const-string v11, "UsbPortManager"

    invoke-static {v11, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v3, v4, 0x3

    const/4 v8, 0x5

    const/4 v9, 0x3

    if-eq v3, v9, :cond_1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eq v1, v4, :cond_0

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Ignoring inconsistent current mode from USB port driver: supportedModes="

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", currentMode="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static/range {p4 .. p4}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v8, v2, v1}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    move/from16 v16, v3

    move/from16 v17, v16

    goto :goto_0

    :cond_0
    move/from16 v16, v1

    move/from16 v17, v3

    goto :goto_0

    :cond_1
    move/from16 v16, v1

    move/from16 v17, v5

    .line 12
    :goto_0
    invoke-static {v14, v13}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v1

    const/4 v9, 0x2

    const/4 v5, 0x1

    if-eqz v16, :cond_2

    if-eqz v14, :cond_2

    if-eqz v13, :cond_2

    if-eqz v15, :cond_3

    if-eqz v12, :cond_3

    .line 13
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v18, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_DEVICE:I

    or-int v3, v3, v18

    sget v18, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_HOST:I

    or-int v3, v3, v18

    sget v18, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    :goto_1
    or-int v3, v3, v18

    :goto_2
    or-int/2addr v1, v3

    :cond_2
    move v3, v1

    goto :goto_3

    :cond_3
    if-eqz v15, :cond_4

    .line 14
    invoke-static {v5, v13}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    or-int/2addr v1, v3

    .line 15
    invoke-static {v9, v13}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    goto :goto_2

    :cond_4
    if-eqz v12, :cond_5

    .line 16
    invoke-static {v14, v5}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    or-int/2addr v1, v3

    .line 17
    invoke-static {v14, v9}, Landroid/hardware/usb/UsbPort;->combineRolesAsBit(II)I

    move-result v3

    goto :goto_2

    :cond_5
    if-eqz v17, :cond_2

    .line 18
    sget v3, Lcom/android/server/usb/UsbPortManager;->COMBO_SOURCE_HOST:I

    sget v18, Lcom/android/server/usb/UsbPortManager;->COMBO_SINK_DEVICE:I

    goto :goto_1

    .line 19
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "supportedRoleCombinations="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/usb/UsbPortManager$PortInfo;

    if-nez v5, :cond_6

    .line 21
    new-instance v9, Lcom/android/server/usb/UsbPortManager$PortInfo;

    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/hardware/usb/UsbManager;

    move-object v1, v9

    move/from16 v18, v3

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p10

    move/from16 v7, p12

    move/from16 v8, p17

    move-object/from16 p2, v9

    move/from16 v9, p20

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbPortManager$PortInfo;-><init>(Landroid/hardware/usb/UsbManager;Ljava/lang/String;IIZZZI)V

    move-object v3, v11

    move-object/from16 v11, p2

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v19, p11

    move/from16 v20, p13

    move/from16 v21, p14

    move/from16 v22, p15

    move/from16 v23, p16

    move-object/from16 v24, p18

    move/from16 v25, p19

    move-object/from16 v26, p21

    .line 22
    invoke-virtual/range {v11 .. v26}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)Z

    .line 23
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    move-object/from16 v2, p2

    invoke-virtual {v1, v10, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mPorts("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") put size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    goto/16 :goto_4

    :cond_6
    move/from16 v18, v3

    move-object v3, v11

    .line 25
    iget-object v0, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v0

    const-string v1, ", current="

    if-eq v4, v0, :cond_7

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Ignoring inconsistent list of supported modes from USB port driver (should be immutable): previous="

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 27
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->getSupportedModes()I

    move-result v10

    .line 28
    invoke-static {v10}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v8, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 31
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "supportedModes="

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 33
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v0

    if-eq v6, v0, :cond_8

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring inconsistent supportsEnableContaminantPresenceProtectionUSB port driver (should be immutable): previous="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 35
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceProtection()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v8, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 37
    :cond_8
    iget-object v0, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 38
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v0

    if-eq v7, v0, :cond_9

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring inconsistent supportsEnableContaminantPresenceDetection USB port driver (should be immutable): previous="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v5, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 40
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v8, v2, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    :cond_9
    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    move-object v13, v3

    move/from16 v3, p6

    move/from16 v4, p7

    move-object v14, v5

    const/4 v15, 0x1

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, v18

    move/from16 v8, p11

    move v12, v9

    move/from16 v9, p13

    move/from16 v10, p14

    move/from16 v11, p15

    move/from16 v12, p16

    move-object/from16 v27, v13

    move-object/from16 v13, p18

    move-object/from16 v28, v14

    move/from16 v14, p19

    move-object/from16 v15, p21

    .line 42
    invoke-virtual/range {v0 .. v15}, Lcom/android/server/usb/UsbPortManager$PortInfo;->setStatus(IZIZIZIIIIZI[IILandroid/hardware/usb/DisplayPortAltModeInfo;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v1, v28

    const/4 v0, 0x1

    .line 43
    iput v0, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 44
    const-string v0, "addOrUpdatePortLocked() mPorts DISPOSITION_REMOVED -> DISPOSITION_CHANGED"

    move-object/from16 v2, v27

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    move-object/from16 v2, v27

    move-object/from16 v1, v28

    const/4 v0, 0x2

    .line 45
    iput v0, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 46
    :goto_4
    const-string v0, "addOrUpdatePortLocked()--"

    invoke-static {v2, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final addSimulatedPort(Ljava/lang/String;IZZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    move-object/from16 v2, p5

    .line 6
    .line 7
    const-string v1, "Adding simulated port: portId="

    .line 8
    .line 9
    const/4 v15, 0x0

    .line 10
    if-eqz p4, :cond_0

    .line 11
    .line 12
    new-instance v4, Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 13
    .line 14
    invoke-direct {v4}, Landroid/hardware/usb/DisplayPortAltModeInfo;-><init>()V

    .line 15
    .line 16
    .line 17
    move-object/from16 v22, v4

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object/from16 v22, v15

    .line 21
    .line 22
    :goto_0
    iget-object v14, v0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 23
    .line 24
    monitor-enter v14

    .line 25
    :try_start_0
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 26
    .line 27
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_1

    .line 32
    .line 33
    const-string v0, "Port with same name already exists.  Please remove it first."

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    monitor-exit v14

    .line 39
    return-void

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    move-object/from16 v24, v14

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ", supportedModes="

    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 72
    .line 73
    new-instance v13, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    new-array v12, v4, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    const/16 v17, 0x0

    .line 81
    .line 82
    const/16 v20, 0x0

    .line 83
    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    const/4 v9, 0x0

    .line 90
    const/4 v10, 0x0

    .line 91
    const/4 v11, 0x0

    .line 92
    const/16 v18, 0x0

    .line 93
    .line 94
    move-object/from16 v19, v12

    .line 95
    .line 96
    move/from16 v12, v18

    .line 97
    .line 98
    move-object/from16 v23, v13

    .line 99
    .line 100
    move/from16 v13, v18

    .line 101
    .line 102
    move-object/from16 v24, v14

    .line 103
    .line 104
    move/from16 v14, v18

    .line 105
    .line 106
    move/from16 v15, v18

    .line 107
    .line 108
    move-object/from16 v25, v1

    .line 109
    .line 110
    move-object/from16 v1, v23

    .line 111
    .line 112
    move-object/from16 v2, p1

    .line 113
    .line 114
    move/from16 v3, p2

    .line 115
    .line 116
    move/from16 v18, p3

    .line 117
    .line 118
    move/from16 v21, p4

    .line 119
    .line 120
    :try_start_1
    invoke-direct/range {v1 .. v22}, Lcom/android/server/usb/hal/port/RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;)V

    .line 121
    .line 122
    .line 123
    move-object/from16 v1, p1

    .line 124
    .line 125
    move-object/from16 v3, v23

    .line 126
    .line 127
    move-object/from16 v2, v25

    .line 128
    .line 129
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-object/from16 v1, p5

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 136
    .line 137
    .line 138
    monitor-exit v24

    .line 139
    return-void

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    :goto_1
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    throw v0
.end method

.method public final binderDied()V
    .locals 1

    .line 1
    const-string p0, "UsbPortManager"

    const-string v0, "binderDied() called unexpectedly"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 3

    .line 2
    const-string v0, "DisplayPortEventDispatcherListener died at "

    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string p0, "UsbPortManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    const-string v0, "Connecting simulated port: portId="

    .line 2
    .line 3
    const-string v1, "Simulated port does not support mode: "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    check-cast v3, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    const-string p0, "Cannot connect simulated port which does not exist."

    .line 19
    .line 20
    invoke-virtual {p8, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v2

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    if-eqz p2, :cond_3

    .line 29
    .line 30
    if-eqz p4, :cond_3

    .line 31
    .line 32
    if-nez p6, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget v4, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    .line 36
    .line 37
    and-int/2addr v4, p2

    .line 38
    if-nez v4, :cond_2

    .line 39
    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {p8, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v2

    .line 60
    return-void

    .line 61
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, ", mode="

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ", canChangeMode="

    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, ", powerRole="

    .line 90
    .line 91
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-static {p4}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p1, ", canChangePowerRole="

    .line 102
    .line 103
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, ", dataRole="

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-static {p6}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p1, ", canChangeDataRole="

    .line 122
    .line 123
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p8, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iput p2, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 137
    .line 138
    iput-boolean p3, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 139
    .line 140
    iput p4, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 141
    .line 142
    iput-boolean p5, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 143
    .line 144
    iput p6, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 145
    .line 146
    iput-boolean p7, v3, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 147
    .line 148
    const/4 p1, 0x0

    .line 149
    invoke-virtual {p0, p8, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 150
    .line 151
    .line 152
    monitor-exit v2

    .line 153
    return-void

    .line 154
    :cond_3
    :goto_0
    const-string p0, "Cannot connect simulated port in null mode, power role, or data role."

    .line 155
    .line 156
    invoke-virtual {p8, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    monitor-exit v2

    .line 160
    return-void

    .line 161
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    throw p0
.end method

.method public final disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Disconnecting simulated port: portId="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string p0, "Cannot disconnect simulated port which does not exist."

    .line 17
    .line 18
    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    iput p1, v2, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 42
    .line 43
    iput-boolean p1, v2, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 44
    .line 45
    iput p1, v2, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 46
    .line 47
    iput-boolean p1, v2, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 48
    .line 49
    iput p1, v2, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 50
    .line 51
    iput-boolean p1, v2, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 52
    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 55
    .line 56
    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 4

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    iget-object p4, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter p4

    .line 8
    :try_start_0
    const-string v0, "is_simulation_active"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    xor-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    const-wide v2, 0x10800000001L

    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbPortManager$PortInfo;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const-string/jumbo v0, "usb_hal_version"

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    const/4 v1, -0x2

    .line 60
    if-eqz p0, :cond_1

    .line 61
    .line 62
    :try_start_1
    invoke-interface {p0}, Lcom/android/server/usb/hal/port/UsbPortHal;->getUsbHalVersion()I

    .line 63
    .line 64
    .line 65
    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :catch_0
    :cond_1
    const-wide v2, 0x10e00000004L

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    :try_start_2
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 72
    .line 73
    .line 74
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :goto_1
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    throw p0
.end method

.method public final enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string p2, "No such USB port: "

    .line 16
    .line 17
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void

    .line 31
    :cond_1
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->supportsEnableContaminantPresenceDetection()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    const/4 v1, 0x1

    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v2, v1, :cond_5

    .line 50
    .line 51
    :cond_3
    if-nez p2, :cond_4

    .line 52
    .line 53
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 54
    .line 55
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eq v2, v1, :cond_5

    .line 60
    .line 61
    :cond_4
    iget-object v0, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_6

    .line 68
    .line 69
    :cond_5
    return-void

    .line 70
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 71
    .line 72
    iget-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 73
    .line 74
    const-wide/16 v3, 0x1

    .line 75
    .line 76
    add-long/2addr v1, v3

    .line 77
    iput-wide v1, p0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 78
    .line 79
    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableContaminantPresenceDetection(Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :catch_0
    move-exception p0

    .line 84
    const-string p1, "Failed to set contaminant detection"

    .line 85
    .line 86
    invoke-static {p3, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method public final enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 7

    .line 1
    const-string v0, "enableLimitPowerTransfer: Failed to limit power transfer. opId:"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance p0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p2, "enableLimitPowerTransfer: No such port: "

    .line 19
    .line 20
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " opId:"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 p1, 0x6

    .line 39
    invoke-static {p1, p6, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    if-eqz p5, :cond_0

    .line 43
    .line 44
    const/4 p0, 0x3

    .line 45
    :try_start_0
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string p2, "enableLimitPowerTransfer: Failed to call OperationComplete. opId:"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p6, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 69
    .line 70
    move-object v2, p1

    .line 71
    move v3, p2

    .line 72
    move-wide v4, p3

    .line 73
    move-object v6, p5

    .line 74
    invoke-interface/range {v1 .. v6}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catch_1
    move-exception p0

    .line 79
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p6, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 92
    .line 93
    .line 94
    if-eqz p5, :cond_2

    .line 95
    .line 96
    const/4 p0, 0x1

    .line 97
    invoke-interface {p5, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :catch_2
    move-exception p0

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p2, "enableLimitPowerTransfer:Failed to call onOperationComplete. opId:"

    .line 105
    .line 106
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {p6, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 117
    .line 118
    .line 119
    :cond_2
    :goto_1
    return-void
.end method

.method public final enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z
    .locals 10

    .line 1
    const-string v0, "enableUsbData: Failed to invoke enableUsbData. opId:"

    .line 2
    .line 3
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 16
    .line 17
    const-string v2, "UsbPortManager"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string p0, "enableUsbData: No such port: "

    .line 23
    .line 24
    const-string p2, " opId:"

    .line 25
    .line 26
    invoke-static {p3, p0, p1, p2}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const/4 p1, 0x6

    .line 31
    invoke-static {p1, v2, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x3

    .line 35
    :try_start_0
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p2, "enableUsbData: Failed to call OperationComplete. opId:"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    return v3

    .line 58
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 59
    .line 60
    int-to-long v7, p3

    .line 61
    move-object v5, p1

    .line 62
    move v6, p2

    .line 63
    move-object v9, p4

    .line 64
    invoke-interface/range {v4 .. v9}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableUsbData(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;)Z

    .line 65
    .line 66
    .line 67
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    return p0

    .line 69
    :catch_1
    move-exception p0

    .line 70
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    const/4 p0, 0x1

    .line 86
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_2
    move-exception p0

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p2, "enableUsbData: Failed to call onOperationComplete. opId:"

    .line 94
    .line 95
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    :goto_1
    return v3
.end method

.method public final enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 3

    .line 1
    const-string v0, "enableUsbDataWhileDocked: Failed to limit power transfer. opId:"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 13
    .line 14
    const-string v2, "UsbPortManager"

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v0, "enableUsbDataWhileDocked: No such port: "

    .line 21
    .line 22
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, " opId:"

    .line 29
    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const/4 p1, 0x6

    .line 41
    invoke-static {p1, v2, p0}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    if-eqz p4, :cond_0

    .line 45
    .line 46
    const/4 p0, 0x3

    .line 47
    :try_start_0
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string p4, "enableUsbDataWhileDocked: Failed to call OperationComplete. opId:"

    .line 55
    .line 56
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {v2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    :try_start_1
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 71
    .line 72
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/usb/hal/port/UsbPortHal;->enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_1
    move-exception p0

    .line 77
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    if-eqz p4, :cond_2

    .line 93
    .line 94
    const/4 p0, 0x1

    .line 95
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catch_2
    move-exception p0

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p4, "enableUsbDataWhileDocked:Failed to call onOperationComplete. opId:"

    .line 103
    .line 104
    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {v2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    .line 116
    .line 117
    :cond_2
    :goto_1
    return-void
.end method

.method public final getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    new-array v2, v1, [Landroid/hardware/usb/UsbPort;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v1, :cond_0

    .line 14
    .line 15
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 16
    .line 17
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 22
    .line 23
    iget-object v4, v4, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 24
    .line 25
    aput-object v4, v2, v3

    .line 26
    .line 27
    add-int/lit8 v3, v3, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    monitor-exit v0

    .line 33
    return-object v2

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "android.hardware.usb.action.USB_PORT_CHANGED"

    .line 6
    .line 7
    const/high16 v3, 0x11000000

    .line 8
    .line 9
    invoke-static {v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object v3, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 14
    .line 15
    invoke-static {v3}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string/jumbo v4, "port"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    iget-object v3, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 26
    .line 27
    const-string/jumbo v5, "portStatus"

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mHandler:Lcom/android/server/usb/UsbPortManager$1;

    .line 34
    .line 35
    new-instance v6, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;

    .line 36
    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-direct {v6, v0, v2, v7}, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    const/4 v6, 0x0

    .line 48
    const/4 v7, 0x2

    .line 49
    const/4 v8, 0x3

    .line 50
    const/16 v9, 0x92

    .line 51
    .line 52
    const/16 v10, 0x46

    .line 53
    .line 54
    if-nez v2, :cond_3

    .line 55
    .line 56
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 57
    .line 58
    iget-object v11, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 59
    .line 60
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v11

    .line 64
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 71
    .line 72
    iget-object v11, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 73
    .line 74
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Ljava/lang/Boolean;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    .line 90
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    iget-wide v11, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 97
    .line 98
    invoke-static {v10, v6, v2, v11, v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 102
    .line 103
    iget-object v10, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 104
    .line 105
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_1
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 113
    .line 114
    iget-object v10, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 115
    .line 116
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_b

    .line 125
    .line 126
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 127
    .line 128
    iget-object v10, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 129
    .line 130
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v10

    .line 134
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Ljava/lang/Integer;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-ne v2, v8, :cond_2

    .line 145
    .line 146
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 147
    .line 148
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-static {v9, v2, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    :cond_2
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 156
    .line 157
    iget-object v1, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    goto/16 :goto_1

    .line 167
    .line 168
    :cond_3
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 169
    .line 170
    iget-object v11, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 171
    .line 172
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_4

    .line 181
    .line 182
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 183
    .line 184
    iget-object v11, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 185
    .line 186
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v11

    .line 190
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    check-cast v2, Ljava/lang/Boolean;

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    iget-object v11, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 201
    .line 202
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 203
    .line 204
    .line 205
    move-result v11

    .line 206
    if-eq v2, v11, :cond_5

    .line 207
    .line 208
    :cond_4
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 209
    .line 210
    iget-object v11, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 211
    .line 212
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    iget-object v12, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 217
    .line 218
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 219
    .line 220
    .line 221
    move-result v12

    .line 222
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 223
    .line 224
    .line 225
    move-result-object v12

    .line 226
    invoke-virtual {v2, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 230
    .line 231
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    iget-object v11, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 236
    .line 237
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    iget-wide v12, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mLastConnectDurationMillis:J

    .line 242
    .line 243
    invoke-static {v10, v2, v11, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 244
    .line 245
    .line 246
    :cond_5
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 247
    .line 248
    iget-object v10, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 249
    .line 250
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v10

    .line 254
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    if-eqz v2, :cond_6

    .line 259
    .line 260
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 261
    .line 262
    iget-object v10, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 263
    .line 264
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v10

    .line 268
    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    check-cast v2, Ljava/lang/Integer;

    .line 273
    .line 274
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    iget-object v10, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 279
    .line 280
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    .line 281
    .line 282
    .line 283
    move-result v10

    .line 284
    if-eq v2, v10, :cond_b

    .line 285
    .line 286
    :cond_6
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mContaminantStatus:Landroid/util/ArrayMap;

    .line 287
    .line 288
    iget-object v10, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 289
    .line 290
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v10

    .line 294
    iget-object v11, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 295
    .line 296
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v11

    .line 304
    invoke-virtual {v2, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 308
    .line 309
    invoke-virtual {v2}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    iget-object v1, v1, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 314
    .line 315
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_a

    .line 320
    .line 321
    if-eq v1, v3, :cond_9

    .line 322
    .line 323
    if-eq v1, v7, :cond_8

    .line 324
    .line 325
    if-eq v1, v8, :cond_7

    .line 326
    .line 327
    move v1, v6

    .line 328
    goto :goto_0

    .line 329
    :cond_7
    const/4 v1, 0x4

    .line 330
    goto :goto_0

    .line 331
    :cond_8
    move v1, v8

    .line 332
    goto :goto_0

    .line 333
    :cond_9
    move v1, v7

    .line 334
    goto :goto_0

    .line 335
    :cond_a
    move v1, v3

    .line 336
    :goto_0
    invoke-static {v9, v2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    :cond_b
    :goto_1
    iget-object v1, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 340
    .line 341
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 346
    .line 347
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    move v9, v7

    .line 356
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 357
    .line 358
    .line 359
    move-result v10

    .line 360
    const/4 v11, 0x0

    .line 361
    if-eqz v10, :cond_e

    .line 362
    .line 363
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    check-cast v9, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 368
    .line 369
    iget-object v10, v9, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 370
    .line 371
    invoke-virtual {v10}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    .line 372
    .line 373
    .line 374
    move-result v10

    .line 375
    if-eq v10, v8, :cond_d

    .line 376
    .line 377
    if-ne v10, v3, :cond_c

    .line 378
    .line 379
    goto :goto_3

    .line 380
    :cond_c
    move v9, v10

    .line 381
    goto :goto_2

    .line 382
    :cond_d
    :goto_3
    move-object v2, v9

    .line 383
    move v9, v10

    .line 384
    goto :goto_4

    .line 385
    :cond_e
    move-object v2, v11

    .line 386
    :goto_4
    const v10, 0x106001c

    .line 387
    .line 388
    .line 389
    const/16 v12, 0x35

    .line 390
    .line 391
    const/16 v13, 0x34

    .line 392
    .line 393
    if-ne v9, v8, :cond_10

    .line 394
    .line 395
    iget v14, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 396
    .line 397
    if-eq v14, v13, :cond_10

    .line 398
    .line 399
    if-ne v14, v12, :cond_f

    .line 400
    .line 401
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 402
    .line 403
    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 404
    .line 405
    invoke-virtual {v6, v11, v14, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 406
    .line 407
    .line 408
    :cond_f
    iput v13, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 409
    .line 410
    const v6, 0x1040f9c

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 418
    .line 419
    const v8, 0x1040f9b

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 423
    .line 424
    .line 425
    move-result-object v8

    .line 426
    new-instance v14, Landroid/content/Intent;

    .line 427
    .line 428
    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 429
    .line 430
    .line 431
    const/high16 v9, 0x10000000

    .line 432
    .line 433
    invoke-virtual {v14, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 434
    .line 435
    .line 436
    const v9, 0x10403cb

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v14, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 448
    .line 449
    .line 450
    iget-object v1, v2, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 451
    .line 452
    invoke-static {v1}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {v14, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 457
    .line 458
    .line 459
    iget-object v1, v2, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 460
    .line 461
    invoke-virtual {v14, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 462
    .line 463
    .line 464
    iget-object v12, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 465
    .line 466
    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 467
    .line 468
    const/high16 v15, 0x4000000

    .line 469
    .line 470
    const/16 v16, 0x0

    .line 471
    .line 472
    const/4 v13, 0x0

    .line 473
    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    new-instance v2, Landroid/app/Notification$Builder;

    .line 478
    .line 479
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 480
    .line 481
    invoke-direct {v2, v4, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 493
    .line 494
    invoke-virtual {v4, v10}, Landroid/content/Context;->getColor(I)I

    .line 495
    .line 496
    .line 497
    move-result v4

    .line 498
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    const v2, 0x108008a

    .line 519
    .line 520
    .line 521
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    .line 526
    .line 527
    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v2, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 531
    .line 532
    .line 533
    move-result-object v2

    .line 534
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 543
    .line 544
    iget v0, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 545
    .line 546
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 547
    .line 548
    invoke-virtual {v2, v11, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 549
    .line 550
    .line 551
    goto :goto_5

    .line 552
    :cond_10
    if-eq v9, v8, :cond_11

    .line 553
    .line 554
    iget v2, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 555
    .line 556
    if-ne v2, v13, :cond_11

    .line 557
    .line 558
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 559
    .line 560
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 561
    .line 562
    invoke-virtual {v4, v11, v2, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 563
    .line 564
    .line 565
    iput v6, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 566
    .line 567
    if-ne v9, v7, :cond_11

    .line 568
    .line 569
    iput v12, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 570
    .line 571
    const v2, 0x1040f9e

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 575
    .line 576
    .line 577
    move-result-object v2

    .line 578
    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 579
    .line 580
    const v6, 0x1040f9d

    .line 581
    .line 582
    .line 583
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    new-instance v6, Landroid/app/Notification$Builder;

    .line 588
    .line 589
    iget-object v7, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 590
    .line 591
    invoke-direct {v6, v7, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    const v4, 0x10805f9

    .line 595
    .line 596
    .line 597
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 598
    .line 599
    .line 600
    move-result-object v4

    .line 601
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 602
    .line 603
    .line 604
    move-result-object v4

    .line 605
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager;->mContext:Landroid/content/Context;

    .line 606
    .line 607
    invoke-virtual {v6, v10}, Landroid/content/Context;->getColor(I)I

    .line 608
    .line 609
    .line 610
    move-result v6

    .line 611
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 616
    .line 617
    .line 618
    move-result-object v2

    .line 619
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 628
    .line 629
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 633
    .line 634
    .line 635
    move-result-object v1

    .line 636
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 641
    .line 642
    .line 643
    move-result-object v1

    .line 644
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 645
    .line 646
    iget v0, v0, Lcom/android/server/usb/UsbPortManager;->mIsPortContaminatedNotificationId:I

    .line 647
    .line 648
    invoke-virtual {v2, v11, v0, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 649
    .line 650
    .line 651
    :cond_11
    :goto_5
    return-void
.end method

.method public final registerForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-interface {p1}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener;->asBinder()Landroid/os/IBinder;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    :try_start_1
    invoke-interface {p1}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener;->asBinder()Landroid/os/IBinder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_2
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-interface {p1}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener;->asBinder()Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    monitor-exit v0

    .line 34
    const/4 p0, 0x1

    .line 35
    return p0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    const-string p1, "Caught RemoteException in registerForDisplayPortEvents: "

    .line 40
    .line 41
    const-string v1, "UsbPortManager"

    .line 42
    .line 43
    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return v2

    .line 48
    :cond_0
    monitor-exit v0

    .line 49
    return v2

    .line 50
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    throw p0
.end method

.method public final removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Disconnecting simulated port: portId="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-gez v2, :cond_0

    .line 13
    .line 14
    const-string p0, "Cannot remove simulated port which does not exist."

    .line 15
    .line 16
    invoke-virtual {p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v1

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p2, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 45
    .line 46
    .line 47
    monitor-exit v1

    .line 48
    return-void

    .line 49
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0
.end method

.method public final resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Removing all simulated ports and ending simulation."

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method

.method public final resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 7

    .line 1
    const-string/jumbo v0, "resetUsbPort: Failed to call onOperationComplete. opId:"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "reseetUsbPort: Failed to resetUsbPort. opId:"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "resetUsbPort: Failed to call OperationComplete. opId:"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v3, "resetUsbPort: No such port: "

    .line 11
    .line 12
    .line 13
    iget-object v4, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v4

    .line 16
    :try_start_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    check-cast v5, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 29
    .line 30
    if-nez v5, :cond_0

    .line 31
    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, " opId:"

    .line 41
    .line 42
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v5, "UsbPortManager"

    .line 53
    .line 54
    const/4 v6, 0x6

    .line 55
    invoke-static {v6, v5, v3}, Landroid/util/sysfwutil/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    const/4 v3, 0x3

    .line 59
    :try_start_1
    invoke-interface {p3, v3}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception v3

    .line 66
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    const-string v5, "UsbPortManager"

    .line 79
    .line 80
    invoke-static {v5, v2, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    .line 83
    :cond_0
    :goto_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 84
    .line 85
    int-to-long v2, p2

    .line 86
    invoke-interface {p0, p1, v2, v3, p3}, Lcom/android/server/usb/hal/port/UsbPortHal;->resetUsbPort(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catch_1
    move-exception p0

    .line 91
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const/4 v1, 0x0

    .line 104
    invoke-static {v1, p1, p0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 105
    .line 106
    .line 107
    const/4 p0, 0x1

    .line 108
    invoke-interface {p3, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_2
    move-exception p0

    .line 113
    :try_start_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const-string p2, "UsbPortManager"

    .line 126
    .line 127
    invoke-static {p2, p1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    .line 129
    .line 130
    :goto_1
    monitor-exit v4

    .line 131
    return-void

    .line 132
    :goto_2
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    throw p0
.end method

.method public final setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usb/UsbService$2;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    const-string v5, "Failed to set the USB port data role: portId="

    .line 12
    .line 13
    const-string v6, "Failed to set the USB port power role: portId="

    .line 14
    .line 15
    const-string v7, "Failed to set the USB port mode: portId="

    .line 16
    .line 17
    const-string v8, "Trying to set the USB port mode: portId="

    .line 18
    .line 19
    const-string v9, "Setting USB port mode and role: portId="

    .line 20
    .line 21
    const-string v10, "Found mismatch in supported USB role combinations while attempting to change role: "

    .line 22
    .line 23
    const-string v11, "Attempted to set USB port into unsupported role combination: portId="

    .line 24
    .line 25
    const-string v12, "No such USB port: "

    .line 26
    .line 27
    iget-object v13, v0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v13

    .line 30
    :try_start_0
    iget-object v14, v0, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v14, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v14

    .line 36
    check-cast v14, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 37
    .line 38
    if-nez v14, :cond_1

    .line 39
    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v4, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto/16 :goto_a

    .line 60
    .line 61
    :cond_0
    :goto_0
    monitor-exit v13

    .line 62
    return-void

    .line 63
    :cond_1
    iget-object v12, v14, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 64
    .line 65
    invoke-virtual {v12, v2, v3}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    .line 66
    .line 67
    .line 68
    move-result v12

    .line 69
    const/4 v15, 0x6

    .line 70
    if-nez v12, :cond_2

    .line 71
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, ", newPowerRole="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", newDataRole="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-static {v15, v4, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    monitor-exit v13

    .line 112
    return-void

    .line 113
    :cond_2
    iget-object v11, v14, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 114
    .line 115
    invoke-virtual {v11}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    .line 116
    .line 117
    .line 118
    move-result v11

    .line 119
    iget-object v12, v14, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 120
    .line 121
    invoke-virtual {v12}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    if-ne v11, v3, :cond_4

    .line 126
    .line 127
    if-ne v12, v2, :cond_4

    .line 128
    .line 129
    if-eqz v4, :cond_3

    .line 130
    .line 131
    const-string v0, "No change."

    .line 132
    .line 133
    invoke-virtual {v4, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    monitor-exit v13

    .line 137
    return-void

    .line 138
    :cond_4
    iget-boolean v15, v14, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeMode:Z

    .line 139
    .line 140
    move-object/from16 v16, v5

    .line 141
    .line 142
    iget-boolean v5, v14, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangePowerRole:Z

    .line 143
    .line 144
    move-object/from16 v17, v6

    .line 145
    .line 146
    iget-boolean v6, v14, Lcom/android/server/usb/UsbPortManager$PortInfo;->mCanChangeDataRole:Z

    .line 147
    .line 148
    move-object/from16 v18, v7

    .line 149
    .line 150
    iget-object v7, v14, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 151
    .line 152
    invoke-virtual {v7}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    move-object/from16 v19, v8

    .line 157
    .line 158
    const/4 v8, 0x1

    .line 159
    if-nez v5, :cond_5

    .line 160
    .line 161
    if-ne v12, v2, :cond_6

    .line 162
    .line 163
    :cond_5
    if-nez v6, :cond_9

    .line 164
    .line 165
    if-eq v11, v3, :cond_9

    .line 166
    .line 167
    :cond_6
    if-eqz v15, :cond_7

    .line 168
    .line 169
    if-ne v2, v8, :cond_7

    .line 170
    .line 171
    if-ne v3, v8, :cond_7

    .line 172
    .line 173
    const/4 v5, 0x2

    .line 174
    goto :goto_1

    .line 175
    :cond_7
    if-eqz v15, :cond_8

    .line 176
    .line 177
    const/4 v5, 0x2

    .line 178
    if-ne v2, v5, :cond_8

    .line 179
    .line 180
    if-ne v3, v5, :cond_8

    .line 181
    .line 182
    move v5, v8

    .line 183
    goto :goto_1

    .line 184
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", newPowerRole="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v1, ", newDataRole="

    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const/4 v1, 0x6

    .line 221
    invoke-static {v1, v4, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    monitor-exit v13

    .line 225
    return-void

    .line 226
    :cond_9
    move v5, v7

    .line 227
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string v9, ", currentMode="

    .line 236
    .line 237
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-static {v7}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v9

    .line 244
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    const-string v9, ", currentPowerRole="

    .line 248
    .line 249
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-static {v12}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v9

    .line 256
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    const-string v9, ", currentDataRole="

    .line 260
    .line 261
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-static {v11}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v9

    .line 268
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    const-string v9, ", newMode="

    .line 272
    .line 273
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v9

    .line 280
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    const-string v9, ", newPowerRole="

    .line 284
    .line 285
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v9

    .line 292
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    const-string v9, ", newDataRole="

    .line 296
    .line 297
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v9

    .line 304
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    const/4 v9, 0x4

    .line 312
    invoke-static {v9, v4, v6}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 316
    .line 317
    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    check-cast v6, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 322
    .line 323
    if-eqz v6, :cond_a

    .line 324
    .line 325
    iput v5, v6, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 326
    .line 327
    iput v2, v6, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 328
    .line 329
    iput v3, v6, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 330
    .line 331
    const/4 v1, 0x0

    .line 332
    invoke-virtual {v0, v4, v1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_9

    .line 336
    .line 337
    :cond_a
    iget-object v6, v0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 338
    .line 339
    if-eqz v6, :cond_12

    .line 340
    .line 341
    const-wide/16 v9, 0x1

    .line 342
    .line 343
    if-eq v7, v5, :cond_d

    .line 344
    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    move-object/from16 v3, v19

    .line 348
    .line 349
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v3, ", newMode="

    .line 356
    .line 357
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v3

    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    const/4 v3, 0x6

    .line 372
    invoke-static {v3, v4, v2}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    .line 374
    .line 375
    if-eqz p5, :cond_b

    .line 376
    .line 377
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/usb/UsbService$2;->run()V

    .line 378
    .line 379
    .line 380
    goto :goto_2

    .line 381
    :catch_0
    move-exception v0

    .line 382
    goto :goto_4

    .line 383
    :cond_b
    :goto_2
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 384
    .line 385
    if-ne v5, v8, :cond_c

    .line 386
    .line 387
    goto :goto_3

    .line 388
    :cond_c
    const/4 v8, 0x2

    .line 389
    :goto_3
    iget-wide v6, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 390
    .line 391
    add-long/2addr v6, v9

    .line 392
    iput-wide v6, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 393
    .line 394
    invoke-interface {v2, v8, v1, v6, v7}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchMode(ILjava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 395
    .line 396
    .line 397
    goto/16 :goto_9

    .line 398
    .line 399
    :goto_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    move-object/from16 v3, v18

    .line 402
    .line 403
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v1, ", newMode="

    .line 410
    .line 411
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-static {v5}, Landroid/hardware/usb/UsbPort;->modeToString(I)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    invoke-static {v4, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 426
    .line 427
    .line 428
    goto :goto_9

    .line 429
    :cond_d
    if-eq v12, v2, :cond_f

    .line 430
    .line 431
    const/4 v5, 0x2

    .line 432
    if-ne v2, v5, :cond_e

    .line 433
    .line 434
    const/4 v5, 0x2

    .line 435
    goto :goto_5

    .line 436
    :cond_e
    move v5, v8

    .line 437
    :goto_5
    :try_start_3
    iget-wide v14, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 438
    .line 439
    add-long/2addr v14, v9

    .line 440
    iput-wide v14, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 441
    .line 442
    invoke-interface {v6, v5, v1, v14, v15}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchPowerRole(ILjava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    .line 444
    .line 445
    goto :goto_6

    .line 446
    :catch_1
    move-exception v0

    .line 447
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    move-object/from16 v5, v17

    .line 450
    .line 451
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    const-string v1, ", newPowerRole="

    .line 458
    .line 459
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/UsbPort;->powerRoleToString(I)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    invoke-static {v4, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 474
    .line 475
    .line 476
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 477
    return-void

    .line 478
    :cond_f
    :goto_6
    if-eq v11, v3, :cond_12

    .line 479
    .line 480
    if-eqz p5, :cond_10

    .line 481
    .line 482
    :try_start_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/usb/UsbService$2;->run()V

    .line 483
    .line 484
    .line 485
    goto :goto_7

    .line 486
    :catch_2
    move-exception v0

    .line 487
    goto :goto_8

    .line 488
    :cond_10
    :goto_7
    iget-object v2, v0, Lcom/android/server/usb/UsbPortManager;->mUsbPortHal:Lcom/android/server/usb/hal/port/UsbPortHal;

    .line 489
    .line 490
    const/4 v5, 0x2

    .line 491
    if-ne v3, v5, :cond_11

    .line 492
    .line 493
    move v8, v5

    .line 494
    :cond_11
    iget-wide v5, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 495
    .line 496
    add-long/2addr v5, v9

    .line 497
    iput-wide v5, v0, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 498
    .line 499
    invoke-interface {v2, v8, v1, v5, v6}, Lcom/android/server/usb/hal/port/UsbPortHal;->switchDataRole(ILjava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 500
    .line 501
    .line 502
    goto :goto_9

    .line 503
    :goto_8
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    move-object/from16 v5, v16

    .line 506
    .line 507
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string v1, ", newDataRole="

    .line 514
    .line 515
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-static/range {p3 .. p3}, Landroid/hardware/usb/UsbPort;->dataRoleToString(I)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    invoke-static {v4, v1, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 530
    .line 531
    .line 532
    :cond_12
    :goto_9
    monitor-exit v13

    .line 533
    return-void

    .line 534
    :goto_a
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 535
    throw v0
.end method

.method public final simulateComplianceWarnings(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const-string p0, "Simulated port not found"

    .line 15
    .line 16
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v2, Landroid/util/IntArray;

    .line 24
    .line 25
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "[, ]"

    .line 29
    .line 30
    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    array-length v4, v3

    .line 35
    const/4 v5, 0x0

    .line 36
    :goto_0
    if-ge v5, v4, :cond_2

    .line 37
    .line 38
    aget-object v6, v3, v5

    .line 39
    .line 40
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-lez v7, :cond_1

    .line 45
    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    invoke-virtual {v2, v6}, Landroid/util/IntArray;->add(I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v4, "Simulating Compliance Warnings: portId="

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p1, " Warnings="

    .line 70
    .line 71
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->complianceWarnings:[I

    .line 89
    .line 90
    const/4 p1, 0x0

    .line 91
    invoke-virtual {p0, p3, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 92
    .line 93
    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 96
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0
.end method

.method public final simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "Simulating wet port: portId="

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 7
    .line 8
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    const-string p0, "Simulated port not found."

    .line 17
    .line 18
    invoke-virtual {p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v1

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", wet="

    .line 34
    .line 35
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    const/4 p1, 0x3

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 p1, 0x2

    .line 53
    :goto_0
    iput p1, v2, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p3, p1}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 57
    .line 58
    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final simulateDisplayPortAltModeInfo(Ljava/lang/String;IIIZILcom/android/internal/util/IndentingPrintWriter;)V
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p7

    .line 3
    .line 4
    const-string v2, "Simulating DisplayPort Info: "

    .line 5
    .line 6
    iget-object v3, v0, Lcom/android/server/usb/UsbPortManager;->mLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v3

    .line 9
    :try_start_0
    iget-object v4, v0, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    check-cast v4, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    const-string v0, "Simulated port not found"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    monitor-exit v3

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v11, Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 30
    .line 31
    move-object v5, v11

    .line 32
    move v6, p2

    .line 33
    move v7, p3

    .line 34
    move/from16 v8, p4

    .line 35
    .line 36
    move/from16 v9, p5

    .line 37
    .line 38
    move/from16 v10, p6

    .line 39
    .line 40
    invoke-direct/range {v5 .. v10}, Landroid/hardware/usb/DisplayPortAltModeInfo;-><init>(IIIZI)V

    .line 41
    .line 42
    .line 43
    iput-object v11, v4, Lcom/android/server/usb/hal/port/RawPortInfo;->displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 44
    .line 45
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/UsbPortManager;->updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V

    .line 62
    .line 63
    .line 64
    monitor-exit v3

    .line 65
    return-void

    .line 66
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw v0
.end method

.method public final startBoost()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "UsbPortManager"

    .line 6
    .line 7
    const-string v1, "To boost, Acquire"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final stopBoost()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "UsbPortManager"

    .line 6
    .line 7
    const-string v1, "To boost, Release"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->usbPortBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final updatePorts(Ljava/util/ArrayList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Lcom/android/server/usb/UsbPortManager$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v2, "port_info"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput p1, v0, Landroid/os/Message;->what:I

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/usb/UsbPortManager;->mHandler:Lcom/android/server/usb/UsbPortManager$1;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final updatePortsLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/ArrayList;)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    const-string v0, "UsbPortManager"

    .line 6
    .line 7
    const-string/jumbo v2, "updatePortsLocked()++"

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :goto_0
    add-int/lit8 v2, v0, -0x1

    .line 20
    .line 21
    const/4 v14, 0x3

    .line 22
    if-lez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 31
    .line 32
    iput v14, v0, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 33
    .line 34
    move v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v24, 0x0

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v1, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    move/from16 v13, v24

    .line 53
    .line 54
    :goto_1
    if-ge v13, v0, :cond_2

    .line 55
    .line 56
    iget-object v2, v1, Lcom/android/server/usb/UsbPortManager;->mSimulatedPorts:Landroid/util/ArrayMap;

    .line 57
    .line 58
    invoke-virtual {v2, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    move-object v12, v2

    .line 63
    check-cast v12, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 64
    .line 65
    iget-object v2, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    .line 66
    .line 67
    iget v3, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    .line 68
    .line 69
    iget v4, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    .line 70
    .line 71
    iget v5, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 72
    .line 73
    iget-boolean v6, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 74
    .line 75
    iget v7, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 76
    .line 77
    iget-boolean v8, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 78
    .line 79
    iget v9, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 80
    .line 81
    iget-boolean v10, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 82
    .line 83
    iget-boolean v11, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 84
    .line 85
    iget v14, v12, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    .line 86
    .line 87
    move/from16 p2, v0

    .line 88
    .line 89
    move-object v0, v12

    .line 90
    move v12, v14

    .line 91
    iget-boolean v14, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 92
    .line 93
    move/from16 v25, v13

    .line 94
    .line 95
    move v13, v14

    .line 96
    iget v14, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 97
    .line 98
    iget v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    .line 99
    .line 100
    move v15, v1

    .line 101
    iget-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    .line 102
    .line 103
    move/from16 v16, v1

    .line 104
    .line 105
    iget v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    .line 106
    .line 107
    move/from16 v17, v1

    .line 108
    .line 109
    iget-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsComplianceWarnings:Z

    .line 110
    .line 111
    move/from16 v18, v1

    .line 112
    .line 113
    iget-object v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->complianceWarnings:[I

    .line 114
    .line 115
    move-object/from16 v19, v1

    .line 116
    .line 117
    iget v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->plugState:I

    .line 118
    .line 119
    move/from16 v20, v1

    .line 120
    .line 121
    iget v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    .line 122
    .line 123
    move/from16 v21, v1

    .line 124
    .line 125
    iget-object v0, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 126
    .line 127
    move-object/from16 v22, v0

    .line 128
    .line 129
    move-object/from16 v1, p0

    .line 130
    .line 131
    move-object/from16 v23, p1

    .line 132
    .line 133
    invoke-virtual/range {v1 .. v23}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 134
    .line 135
    .line 136
    add-int/lit8 v13, v25, 0x1

    .line 137
    .line 138
    move-object/from16 v15, p1

    .line 139
    .line 140
    move/from16 v0, p2

    .line 141
    .line 142
    const/4 v14, 0x3

    .line 143
    goto :goto_1

    .line 144
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-eqz v1, :cond_2

    .line 153
    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lcom/android/server/usb/hal/port/RawPortInfo;

    .line 159
    .line 160
    iget-object v2, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    .line 161
    .line 162
    iget v3, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    .line 163
    .line 164
    iget v4, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    .line 165
    .line 166
    iget v5, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    .line 167
    .line 168
    iget-boolean v6, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    .line 169
    .line 170
    iget v7, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    .line 171
    .line 172
    iget-boolean v8, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    .line 173
    .line 174
    iget v9, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    .line 175
    .line 176
    iget-boolean v10, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    .line 177
    .line 178
    iget-boolean v11, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 179
    .line 180
    iget v12, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    .line 181
    .line 182
    iget-boolean v13, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 183
    .line 184
    iget v14, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 185
    .line 186
    iget v15, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    .line 187
    .line 188
    move-object/from16 p2, v0

    .line 189
    .line 190
    iget-boolean v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    .line 191
    .line 192
    move/from16 v16, v0

    .line 193
    .line 194
    iget v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    .line 195
    .line 196
    move/from16 v17, v0

    .line 197
    .line 198
    iget-boolean v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsComplianceWarnings:Z

    .line 199
    .line 200
    move/from16 v18, v0

    .line 201
    .line 202
    iget-object v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->complianceWarnings:[I

    .line 203
    .line 204
    move-object/from16 v19, v0

    .line 205
    .line 206
    iget v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->plugState:I

    .line 207
    .line 208
    move/from16 v20, v0

    .line 209
    .line 210
    iget v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedAltModes:I

    .line 211
    .line 212
    move/from16 v21, v0

    .line 213
    .line 214
    iget-object v0, v1, Lcom/android/server/usb/hal/port/RawPortInfo;->displayPortAltModeInfo:Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 215
    .line 216
    move-object/from16 v22, v0

    .line 217
    .line 218
    move-object/from16 v1, p0

    .line 219
    .line 220
    move-object/from16 v23, p1

    .line 221
    .line 222
    invoke-virtual/range {v1 .. v23}, Lcom/android/server/usb/UsbPortManager;->addOrUpdatePortLocked(Ljava/lang/String;IIIZIZIZZIZIIZIZ[IIILandroid/hardware/usb/DisplayPortAltModeInfo;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 223
    .line 224
    .line 225
    move-object/from16 v0, p2

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_2
    const-string v0, "UsbPortManager"

    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string/jumbo v2, "mPorts size="

    .line 233
    .line 234
    .line 235
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    move-object/from16 v8, p0

    .line 239
    .line 240
    iget-object v2, v8, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 241
    .line 242
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 243
    .line 244
    .line 245
    move-result v2

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    iget-object v0, v8, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 257
    .line 258
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    :goto_3
    add-int/lit8 v9, v0, -0x1

    .line 263
    .line 264
    if-lez v0, :cond_11

    .line 265
    .line 266
    iget-object v0, v8, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 267
    .line 268
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    move-object v10, v0

    .line 273
    check-cast v10, Lcom/android/server/usb/UsbPortManager$PortInfo;

    .line 274
    .line 275
    iget v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 276
    .line 277
    const/4 v11, 0x1

    .line 278
    const/4 v12, 0x2

    .line 279
    const/4 v13, 0x4

    .line 280
    if-eqz v0, :cond_9

    .line 281
    .line 282
    if-eq v0, v11, :cond_4

    .line 283
    .line 284
    const/4 v14, 0x3

    .line 285
    if-eq v0, v14, :cond_3

    .line 286
    .line 287
    const-string v0, "UsbPortManager"

    .line 288
    .line 289
    const-string/jumbo v1, "mPorts("

    .line 290
    .line 291
    .line 292
    const-string v2, ") default: mDisposition="

    .line 293
    .line 294
    invoke-static {v9, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    iget v2, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 299
    .line 300
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-object/from16 v15, p1

    .line 311
    .line 312
    goto/16 :goto_6

    .line 313
    .line 314
    :cond_3
    const-string v0, "UsbPortManager"

    .line 315
    .line 316
    const-string/jumbo v1, "mPorts("

    .line 317
    .line 318
    .line 319
    const-string v2, ") DISPOSITION_REMOVED size="

    .line 320
    .line 321
    invoke-static {v9, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    iget-object v2, v8, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 326
    .line 327
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    iget-object v0, v8, Lcom/android/server/usb/UsbPortManager;->mPorts:Landroid/util/ArrayMap;

    .line 342
    .line 343
    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    const/4 v0, 0x0

    .line 347
    iput-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 348
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string v1, "USB port removed: "

    .line 352
    .line 353
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    move-object/from16 v15, p1

    .line 364
    .line 365
    invoke-static {v13, v15, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v8, v10}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 369
    .line 370
    .line 371
    goto/16 :goto_6

    .line 372
    .line 373
    :cond_4
    move-object/from16 v15, p1

    .line 374
    .line 375
    const/4 v14, 0x3

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    .line 377
    .line 378
    const-string v1, "USB port changed: "

    .line 379
    .line 380
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-static {v13, v15, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, v8, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 394
    .line 395
    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 396
    .line 397
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-nez v0, :cond_5

    .line 406
    .line 407
    goto :goto_4

    .line 408
    :cond_5
    iget-object v0, v8, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 409
    .line 410
    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 411
    .line 412
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    check-cast v0, Ljava/lang/Boolean;

    .line 421
    .line 422
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    if-eqz v0, :cond_6

    .line 427
    .line 428
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 429
    .line 430
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    if-nez v0, :cond_6

    .line 435
    .line 436
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 437
    .line 438
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getContaminantDetectionStatus()I

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-ne v0, v11, :cond_6

    .line 443
    .line 444
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 445
    .line 446
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-virtual {v8, v0, v11, v15}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 451
    .line 452
    .line 453
    :cond_6
    :goto_4
    iget-object v0, v8, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 454
    .line 455
    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 456
    .line 457
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v0

    .line 465
    if-nez v0, :cond_7

    .line 466
    .line 467
    goto :goto_5

    .line 468
    :cond_7
    iget-object v0, v8, Lcom/android/server/usb/UsbPortManager;->mConnected:Landroid/util/ArrayMap;

    .line 469
    .line 470
    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 471
    .line 472
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v1

    .line 476
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, Ljava/lang/Boolean;

    .line 481
    .line 482
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-eqz v0, :cond_8

    .line 487
    .line 488
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 489
    .line 490
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-nez v0, :cond_8

    .line 495
    .line 496
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 497
    .line 498
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->isPowerTransferLimited()Z

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    if-eqz v0, :cond_8

    .line 503
    .line 504
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 505
    .line 506
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v2

    .line 510
    iget-wide v0, v8, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 511
    .line 512
    const-wide/16 v3, 0x1

    .line 513
    .line 514
    add-long v4, v0, v3

    .line 515
    .line 516
    iput-wide v4, v8, Lcom/android/server/usb/UsbPortManager;->mTransactionId:J

    .line 517
    .line 518
    const/4 v6, 0x0

    .line 519
    const/4 v3, 0x0

    .line 520
    move-object/from16 v1, p0

    .line 521
    .line 522
    move-object/from16 v7, p1

    .line 523
    .line 524
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/usb/UsbPortManager;->enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 525
    .line 526
    .line 527
    :cond_8
    :goto_5
    invoke-virtual {v8, v10}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 528
    .line 529
    .line 530
    iput v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 531
    .line 532
    const-string v0, "UsbPortManager"

    .line 533
    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    .line 535
    .line 536
    const-string/jumbo v2, "mPorts("

    .line 537
    .line 538
    .line 539
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    const-string v2, ") DISPOSITION_CHANGED -> DISPOSITION_READY"

    .line 546
    .line 547
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    goto :goto_6

    .line 558
    :cond_9
    move-object/from16 v15, p1

    .line 559
    .line 560
    const/4 v14, 0x3

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    const-string v1, "USB port added: "

    .line 564
    .line 565
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    invoke-static {v13, v15, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 576
    .line 577
    .line 578
    invoke-virtual {v8, v10}, Lcom/android/server/usb/UsbPortManager;->handlePortLocked(Lcom/android/server/usb/UsbPortManager$PortInfo;)V

    .line 579
    .line 580
    .line 581
    iput v12, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisposition:I

    .line 582
    .line 583
    const-string v0, "UsbPortManager"

    .line 584
    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    .line 586
    .line 587
    const-string/jumbo v2, "mPorts("

    .line 588
    .line 589
    .line 590
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v2, ") DISPOSITION_ADDED -> DISPOSITION_READY"

    .line 597
    .line 598
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    .line 607
    .line 608
    :goto_6
    iget v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    .line 609
    .line 610
    if-ne v0, v11, :cond_e

    .line 611
    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    const-string v1, "USB port compliance warning changed: "

    .line 615
    .line 616
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    invoke-static {v13, v15, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 630
    .line 631
    if-eqz v0, :cond_c

    .line 632
    .line 633
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    array-length v0, v0

    .line 638
    if-nez v0, :cond_a

    .line 639
    .line 640
    goto :goto_9

    .line 641
    :cond_a
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 642
    .line 643
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 648
    .line 649
    invoke-virtual {v1}, Landroid/hardware/usb/UsbPortStatus;->getComplianceWarnings()[I

    .line 650
    .line 651
    .line 652
    move-result-object v1

    .line 653
    new-instance v2, Landroid/util/IntArray;

    .line 654
    .line 655
    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    .line 656
    .line 657
    .line 658
    array-length v3, v1

    .line 659
    move/from16 v4, v24

    .line 660
    .line 661
    :goto_7
    if-ge v4, v3, :cond_b

    .line 662
    .line 663
    aget v5, v1, v4

    .line 664
    .line 665
    packed-switch v5, :pswitch_data_0

    .line 666
    .line 667
    .line 668
    goto :goto_8

    .line 669
    :pswitch_0
    const/16 v5, 0x9

    .line 670
    .line 671
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    .line 672
    .line 673
    .line 674
    goto :goto_8

    .line 675
    :pswitch_1
    const/16 v5, 0x8

    .line 676
    .line 677
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    .line 678
    .line 679
    .line 680
    goto :goto_8

    .line 681
    :pswitch_2
    const/4 v5, 0x7

    .line 682
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    .line 683
    .line 684
    .line 685
    goto :goto_8

    .line 686
    :pswitch_3
    const/4 v5, 0x6

    .line 687
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    .line 688
    .line 689
    .line 690
    goto :goto_8

    .line 691
    :pswitch_4
    const/4 v5, 0x5

    .line 692
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    .line 693
    .line 694
    .line 695
    goto :goto_8

    .line 696
    :pswitch_5
    invoke-virtual {v2, v14}, Landroid/util/IntArray;->add(I)V

    .line 697
    .line 698
    .line 699
    goto :goto_8

    .line 700
    :pswitch_6
    invoke-virtual {v2, v12}, Landroid/util/IntArray;->add(I)V

    .line 701
    .line 702
    .line 703
    goto :goto_8

    .line 704
    :pswitch_7
    invoke-virtual {v2, v11}, Landroid/util/IntArray;->add(I)V

    .line 705
    .line 706
    .line 707
    goto :goto_8

    .line 708
    :pswitch_8
    invoke-virtual {v2, v13}, Landroid/util/IntArray;->add(I)V

    .line 709
    .line 710
    .line 711
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 712
    .line 713
    goto :goto_7

    .line 714
    :cond_b
    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    .line 715
    .line 716
    .line 717
    move-result-object v1

    .line 718
    const/16 v2, 0x246

    .line 719
    .line 720
    invoke-static {v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;[I)V

    .line 721
    .line 722
    .line 723
    :cond_c
    :goto_9
    iget v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mComplianceWarningChange:I

    .line 724
    .line 725
    if-nez v0, :cond_d

    .line 726
    .line 727
    goto :goto_a

    .line 728
    :cond_d
    const-string v0, "android.hardware.usb.action.USB_PORT_COMPLIANCE_CHANGED"

    .line 729
    .line 730
    const/high16 v1, 0x11000000

    .line 731
    .line 732
    invoke-static {v1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 733
    .line 734
    .line 735
    move-result-object v0

    .line 736
    iget-object v1, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 737
    .line 738
    invoke-static {v1}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    .line 739
    .line 740
    .line 741
    move-result-object v1

    .line 742
    const-string/jumbo v2, "port"

    .line 743
    .line 744
    .line 745
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 746
    .line 747
    .line 748
    const-string/jumbo v1, "portStatus"

    .line 749
    .line 750
    .line 751
    iget-object v2, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 752
    .line 753
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 754
    .line 755
    .line 756
    iget-object v1, v8, Lcom/android/server/usb/UsbPortManager;->mHandler:Lcom/android/server/usb/UsbPortManager$1;

    .line 757
    .line 758
    new-instance v2, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;

    .line 759
    .line 760
    const/4 v3, 0x1

    .line 761
    invoke-direct {v2, v8, v0, v3}, Lcom/android/server/usb/UsbPortManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbPortManager;Landroid/content/Intent;I)V

    .line 762
    .line 763
    .line 764
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 765
    .line 766
    .line 767
    :cond_e
    :goto_a
    iget v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mDisplayPortAltModeChange:I

    .line 768
    .line 769
    if-ne v0, v11, :cond_10

    .line 770
    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    const-string v1, "USB port DisplayPort Alt Mode Status Changed: "

    .line 774
    .line 775
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 776
    .line 777
    .line 778
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v0

    .line 785
    invoke-static {v13, v15, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 786
    .line 787
    .line 788
    iget-object v0, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPort:Landroid/hardware/usb/UsbPort;

    .line 789
    .line 790
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object v1

    .line 794
    iget-object v2, v8, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListenerLock:Ljava/lang/Object;

    .line 795
    .line 796
    monitor-enter v2

    .line 797
    :try_start_0
    iget-object v0, v8, Lcom/android/server/usb/UsbPortManager;->mDisplayPortListeners:Landroid/util/ArrayMap;

    .line 798
    .line 799
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 800
    .line 801
    .line 802
    move-result-object v0

    .line 803
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 804
    .line 805
    .line 806
    move-result-object v3

    .line 807
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 808
    .line 809
    .line 810
    move-result v0

    .line 811
    if-eqz v0, :cond_f

    .line 812
    .line 813
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    check-cast v0, Landroid/hardware/usb/IDisplayPortAltModeInfoListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    .line 819
    :try_start_1
    iget-object v4, v10, Lcom/android/server/usb/UsbPortManager$PortInfo;->mUsbPortStatus:Landroid/hardware/usb/UsbPortStatus;

    .line 820
    .line 821
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPortStatus;->getDisplayPortAltModeInfo()Landroid/hardware/usb/DisplayPortAltModeInfo;

    .line 822
    .line 823
    .line 824
    move-result-object v4

    .line 825
    invoke-interface {v0, v1, v4}, Landroid/hardware/usb/IDisplayPortAltModeInfoListener;->onDisplayPortAltModeInfoChanged(Ljava/lang/String;Landroid/hardware/usb/DisplayPortAltModeInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 826
    .line 827
    .line 828
    goto :goto_b

    .line 829
    :catchall_0
    move-exception v0

    .line 830
    goto :goto_c

    .line 831
    :catch_0
    move-exception v0

    .line 832
    :try_start_2
    const-string v4, "Caught RemoteException at sendDpAltModeCallbackLocked"

    .line 833
    .line 834
    invoke-static {v15, v4, v0}, Lcom/android/server/usb/UsbPortManager;->logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 835
    .line 836
    .line 837
    goto :goto_b

    .line 838
    :cond_f
    monitor-exit v2

    .line 839
    goto :goto_d

    .line 840
    :goto_c
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 841
    throw v0

    .line 842
    :cond_10
    :goto_d
    move v0, v9

    .line 843
    goto/16 :goto_3

    .line 844
    .line 845
    :cond_11
    const-string v0, "UsbPortManager"

    .line 846
    .line 847
    const-string/jumbo v1, "updatePortsLocked()--"

    .line 848
    .line 849
    .line 850
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    .line 852
    .line 853
    return-void

    .line 854
    nop

    .line 855
    :pswitch_data_0
    .packed-switch 0x1
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
