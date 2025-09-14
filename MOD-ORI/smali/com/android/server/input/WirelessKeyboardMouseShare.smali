.class public final Lcom/android/server/input/WirelessKeyboardMouseShare;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final CONN_ID:[Ljava/lang/String;

.field public final REG_ID:[Ljava/lang/String;

.field public final innerLock:Ljava/lang/Object;

.field public mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field public mAddIndex:I

.field public mAppRegistered:Z

.field public final mCallback:Lcom/android/server/input/WirelessKeyboardMouseShare$4;

.field public mConnectionState:I

.field public final mContext:Landroid/content/Context;

.field public mDisconnectWithoutUnregister:Z

.field public final mExecutor:Lcom/android/server/input/WirelessKeyboardMouseShare$1;

.field public mFinishNewDevice:Z

.field public mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

.field public mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

.field public mInitialized:Z

.field public final mInputManager:Lcom/android/server/input/InputManagerService;

.field public final mInputReportCache:Landroid/util/SparseArray;

.field public final mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

.field public mLastestConnectedName:Ljava/lang/String;

.field public final mLogInfos:Ljava/util/Map;

.field public final mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

.field public mNeedNoti:Z

.field public mNeedNotiTablet:Z

.field public mNeedToTurnOnBT:Z

.field public mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

.field public mNotiTurnOnBT:Z

.field public final mOutputReportCache:Landroid/util/SparseArray;

.field public final mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

.field public mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

.field public mPogoConnected:Z

.field public mReadyToConnect:Z

.field public final mReceiver:Lcom/android/server/input/WirelessKeyboardMouseShare$2;

.field public mRetryNum:I

.field public final mServiceListener:Lcom/android/server/input/WirelessKeyboardMouseShare$3;

.field public final mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

.field public mTabletName:Ljava/lang/String;

.field public mToLocalTablet:Z

.field public final mToastDialog:Lcom/android/server/input/ToastDialog;

.field public mUnregisterWhenConnectionFail:Z


# direct methods
.method public static -$$Nest$maddPairedDevicesListLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/bluetooth/BluetoothDevice;I)I
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, ""

    .line 4
    .line 5
    move v3, v0

    .line 6
    move-object v4, v2

    .line 7
    :goto_0
    const/4 v5, 0x4

    .line 8
    const-string v6, "WirelessKeyboardMouseShare"

    .line 9
    .line 10
    if-ge v3, v5, :cond_3

    .line 11
    .line 12
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 13
    .line 14
    aget-object v5, v5, v3

    .line 15
    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move-object v5, v2

    .line 24
    :goto_1
    if-ne v3, v0, :cond_1

    .line 25
    .line 26
    move-object v4, v5

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    const-string v7, ","

    .line 29
    .line 30
    invoke-static {v4, v7, v5}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    :goto_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_2

    .line 43
    .line 44
    const-string v1, "already exist device slot["

    .line 45
    .line 46
    const-string v5, "] requested_index="

    .line 47
    .line 48
    const-string v7, ", device="

    .line 49
    .line 50
    invoke-static {v3, p2, v1, v5, v7}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move v1, v0

    .line 69
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iput v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    goto/16 :goto_4

    .line 77
    .line 78
    :cond_4
    const/4 v0, 0x3

    .line 79
    if-gt p2, v0, :cond_8

    .line 80
    .line 81
    if-nez p2, :cond_5

    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_5
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 86
    .line 87
    aget-object v0, v0, p2

    .line 88
    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    const-string/jumbo v1, "not empty slot "

    .line 92
    .line 93
    .line 94
    const-string v2, " "

    .line 95
    .line 96
    invoke-static {p2, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 115
    .line 116
    aput-object p1, v0, p2

    .line 117
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    const-string v1, "add paired device list "

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ": "

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, " : "

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 160
    .line 161
    .line 162
    sget-boolean p1, Lcom/samsung/android/rune/InputRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    .line 163
    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    const-string v0, "67264"

    .line 175
    .line 176
    invoke-static {v0, p1}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    add-int/lit8 p1, p2, -0x1

    .line 180
    .line 181
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->REG_ID:[Ljava/lang/String;

    .line 182
    .line 183
    aget-object p1, v0, p1

    .line 184
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v1, "1 "

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 193
    .line 194
    aget-object p0, p0, p2

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-static {p1, p0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_7
    const/4 v1, 0x2

    .line 211
    goto :goto_4

    .line 212
    :cond_8
    :goto_3
    const-string/jumbo p0, "cannot add list, index="

    .line 213
    .line 214
    .line 215
    invoke-static {p2, p0, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    :goto_4
    return v1
.end method

.method public static -$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, [B

    .line 26
    .line 27
    iput-object p0, v0, Lcom/android/server/input/WirelessKeyboardMouseShare$ReportData;->data:[B

    .line 28
    .line 29
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.product_ship"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "false"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "true"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Lcom/android/server/input/ToastDialog;Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 9
    .line 10
    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 11
    .line 12
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 19
    .line 20
    const-string v1, ""

    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLastestConnectedName:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 33
    .line 34
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    .line 35
    .line 36
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    .line 37
    .line 38
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    .line 41
    .line 42
    iput v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mRetryNum:I

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    new-array v2, v1, [Landroid/bluetooth/BluetoothDevice;

    .line 48
    .line 49
    iput-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 50
    .line 51
    iput v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    .line 52
    .line 53
    new-instance v1, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 59
    .line 60
    const-string v1, "67263"

    .line 61
    .line 62
    const-string v3, "67261"

    .line 63
    .line 64
    const-string v4, "67262"

    .line 65
    .line 66
    filled-new-array {v3, v4, v1}, [Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->REG_ID:[Ljava/lang/String;

    .line 71
    .line 72
    const-string v1, "67267"

    .line 73
    .line 74
    const-string v3, "67265"

    .line 75
    .line 76
    const-string v4, "67266"

    .line 77
    .line 78
    filled-new-array {v3, v4, v1}, [Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->CONN_ID:[Ljava/lang/String;

    .line 83
    .line 84
    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$1;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mExecutor:Lcom/android/server/input/WirelessKeyboardMouseShare$1;

    .line 90
    .line 91
    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 92
    .line 93
    const/4 v3, 0x0

    .line 94
    invoke-direct {v1, p0, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    .line 95
    .line 96
    .line 97
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 98
    .line 99
    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 100
    .line 101
    const/4 v3, 0x1

    .line 102
    invoke-direct {v1, p0, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;I)V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 106
    .line 107
    new-instance v1, Landroid/util/SparseArray;

    .line 108
    .line 109
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputReportCache:Landroid/util/SparseArray;

    .line 113
    .line 114
    new-instance v1, Landroid/util/SparseArray;

    .line 115
    .line 116
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 117
    .line 118
    .line 119
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mOutputReportCache:Landroid/util/SparseArray;

    .line 120
    .line 121
    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$2;

    .line 122
    .line 123
    invoke-direct {v1, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$2;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    .line 124
    .line 125
    .line 126
    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$3;

    .line 127
    .line 128
    invoke-direct {v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$3;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    .line 129
    .line 130
    .line 131
    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mServiceListener:Lcom/android/server/input/WirelessKeyboardMouseShare$3;

    .line 132
    .line 133
    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$4;

    .line 134
    .line 135
    invoke-direct {v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$4;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    .line 136
    .line 137
    .line 138
    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mCallback:Lcom/android/server/input/WirelessKeyboardMouseShare$4;

    .line 139
    .line 140
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 141
    .line 142
    new-instance v3, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 143
    .line 144
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-direct {v3, p0, v4}, Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;Landroid/os/Looper;)V

    .line 153
    .line 154
    .line 155
    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 156
    .line 157
    iput-object p4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 160
    .line 161
    iput-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 162
    .line 163
    const-string p2, "WirelessKeyboardMouseShare"

    .line 164
    .line 165
    const-string p3, "WirelessKeyboardMouseShare()"

    .line 166
    .line 167
    invoke-static {p2, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    const/4 p2, 0x0

    .line 171
    iput-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 172
    .line 173
    new-instance p3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    .line 174
    .line 175
    invoke-direct {p3}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;-><init>()V

    .line 176
    .line 177
    .line 178
    iput-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    .line 179
    .line 180
    iget-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 181
    .line 182
    if-nez p3, :cond_0

    .line 183
    .line 184
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    iput-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 189
    .line 190
    :cond_0
    invoke-static {v2, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInitialized:Z

    .line 194
    .line 195
    const-string p0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 196
    .line 197
    const-string p3, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 198
    .line 199
    invoke-static {p0, p3}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p1, v1, p0, p2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 204
    .line 205
    .line 206
    return-void
.end method


# virtual methods
.method public final addDevice(I)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "wrong index="

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "not empty slot"

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    const/4 v3, 0x3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-gt p1, v3, :cond_5

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    :try_start_0
    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 21
    .line 22
    aget-object v0, v0, p1

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const-string v0, "WirelessKeyboardMouseShare"

    .line 27
    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, " "

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 42
    .line 43
    aget-object p1, v1, p1

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 60
    .line 61
    .line 62
    monitor-exit v2

    .line 63
    return v4

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 72
    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-ne v0, v1, :cond_2

    .line 80
    .line 81
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    aput-object v3, v0, p1

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-nez p1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    .line 98
    .line 99
    .line 100
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 101
    .line 102
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 103
    .line 104
    const/16 v0, 0xb

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    .line 116
    .line 117
    :cond_4
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 124
    .line 125
    const-wide/32 v3, 0xea60

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    .line 130
    .line 131
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 137
    .line 138
    .line 139
    monitor-exit v2

    .line 140
    return v1

    .line 141
    :cond_5
    :goto_0
    const-string p0, "WirelessKeyboardMouseShare"

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    monitor-exit v2

    .line 159
    return v4

    .line 160
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    throw p0
.end method

.method public final changeHIDDevice(ILjava/lang/String;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "not find device : "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "warning: request device : "

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->findBluetoothDeviceFromString(ILjava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eqz v3, :cond_4

    .line 15
    .line 16
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 40
    .line 41
    .line 42
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 43
    .line 44
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 45
    .line 46
    const/16 v3, 0xb

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_4

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 69
    .line 70
    const-wide/32 v4, 0xea60

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->removePairedDevicesListLocked(ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 80
    .line 81
    iput p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAddIndex:I

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageMCF()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const-string p1, "WirelessKeyboardMouseShare"

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string p2, " connected device : "

    .line 101
    .line 102
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 106
    .line 107
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    :goto_1
    monitor-exit v2

    .line 122
    return-void

    .line 123
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 124
    .line 125
    .line 126
    const-string p1, "WirelessKeyboardMouseShare"

    .line 127
    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p2, ","

    .line 137
    .line 138
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 142
    .line 143
    if-nez p0, :cond_5

    .line 144
    .line 145
    const-string p0, ""

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    :goto_3
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    monitor-exit v2

    .line 163
    return-void

    .line 164
    :goto_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    throw p0
.end method

.method public final connectByBtDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "WirelessKeyboardMouseShare"

    .line 9
    .line 10
    const-string/jumbo p1, "connectByBtDevice mHidDevice is null"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    const-string p0, "WirelessKeyboardMouseShare"

    .line 23
    .line 24
    const-string/jumbo p1, "connectByBtDevice BluetoothDevice is null"

    .line 25
    .line 26
    .line 27
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final disconnectBT(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->clear(Z)V

    .line 27
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
    :goto_0
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHidDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method public final disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mDisconnectWithoutUnregister:Z

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 8
    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p0
.end method

.method public final existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x1

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/4 v3, 0x4

    .line 8
    if-ge v2, v3, :cond_2

    .line 9
    .line 10
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 11
    .line 12
    aget-object v3, v3, v2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    return v1

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return v0
.end method

.method public final findBluetoothDeviceFromString(ILjava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, " "

    .line 4
    .line 5
    const-string/jumbo v3, "wrong index="

    .line 6
    .line 7
    .line 8
    const-string v4, "WirelessKeyboardMouseShare"

    .line 9
    .line 10
    if-gt p1, v0, :cond_4

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 16
    .line 17
    aget-object v0, v0, p1

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string/jumbo p0, "find device slot["

    .line 22
    .line 23
    .line 24
    const-string v1, "] =  "

    .line 25
    .line 26
    invoke-static {p1, p0, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string p1, " requested device = "

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_1
    const/4 v0, 0x1

    .line 54
    :goto_0
    const/4 v5, 0x4

    .line 55
    if-ge v0, v5, :cond_3

    .line 56
    .line 57
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 58
    .line 59
    aget-object v5, v5, v0

    .line 60
    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_2

    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string p1, ", but find device : "

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .line 95
    .line 96
    return-object v5

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string/jumbo v0, "not find device index="

    .line 103
    .line 104
    .line 105
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return-object v1

    .line 125
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    return-object v1
.end method

.method public final getDeviceListSize()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    :goto_0
    const/4 v3, 0x4

    .line 7
    if-ge v1, v3, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 10
    .line 11
    aget-object v3, v3, v1

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    monitor-exit v0

    .line 23
    return v2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final isRegistered()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final isToLocalTablet()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return p0

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public final notifyKeyboardAciton(II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 2
    .line 3
    if-eqz v0, :cond_11

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    if-ltz p2, :cond_1

    .line 13
    .line 14
    const/16 v1, 0xe2

    .line 15
    .line 16
    if-gt p2, v1, :cond_1

    .line 17
    .line 18
    sget-object v1, Lcom/android/server/input/HidKeycodes;->ScancodeToHidKeycode:[B

    .line 19
    .line 20
    aget-byte p2, v1, p2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/16 v1, 0xfe

    .line 24
    .line 25
    if-eq p2, v1, :cond_7

    .line 26
    .line 27
    const/16 v1, 0x2bd

    .line 28
    .line 29
    if-eq p2, v1, :cond_6

    .line 30
    .line 31
    const/16 v1, 0x2c1

    .line 32
    .line 33
    if-eq p2, v1, :cond_5

    .line 34
    .line 35
    const/16 v1, 0x2c2

    .line 36
    .line 37
    if-eq p2, v1, :cond_4

    .line 38
    .line 39
    const/16 v1, 0x2c5

    .line 40
    .line 41
    if-eq p2, v1, :cond_3

    .line 42
    .line 43
    const/16 v1, 0x2c6

    .line 44
    .line 45
    if-eq p2, v1, :cond_2

    .line 46
    .line 47
    packed-switch p2, :pswitch_data_0

    .line 48
    .line 49
    .line 50
    move p2, v0

    .line 51
    goto :goto_0

    .line 52
    :pswitch_0
    const/16 p2, 0x73

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :pswitch_1
    const/16 p2, 0x72

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :pswitch_2
    const/16 p2, 0x71

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/16 p2, 0x6c

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const/16 p2, 0x70

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    const/16 p2, 0x6a

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    const/16 p2, 0x69

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_6
    const/16 p2, 0x6d

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    const/16 p2, 0x68

    .line 77
    .line 78
    :goto_0
    const/4 v1, 0x1

    .line 79
    const-string/jumbo v2, "ignore nullpointer exception "

    .line 80
    .line 81
    .line 82
    const-string v3, "WirelessKeyboardMouseShare"

    .line 83
    .line 84
    const/16 v4, 0x8

    .line 85
    .line 86
    const/16 v5, -0x9

    .line 87
    .line 88
    const/16 v6, -0x10

    .line 89
    .line 90
    const/4 v7, 0x2

    .line 91
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mKeyboard:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 92
    .line 93
    if-nez p1, :cond_c

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 96
    .line 97
    iget v8, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 98
    .line 99
    if-eq v8, v7, :cond_8

    .line 100
    .line 101
    goto/16 :goto_5

    .line 102
    .line 103
    :cond_8
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 104
    .line 105
    if-lt p2, v6, :cond_9

    .line 106
    .line 107
    if-ge p2, v5, :cond_9

    .line 108
    .line 109
    aget-byte v4, p0, v0

    .line 110
    .line 111
    sub-int/2addr p2, v6

    .line 112
    shl-int p2, v1, p2

    .line 113
    .line 114
    or-int/2addr p2, v4

    .line 115
    int-to-byte p2, p2

    .line 116
    aput-byte p2, p0, v0

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_9
    move v0, v1

    .line 120
    :goto_1
    if-ge v0, v4, :cond_b

    .line 121
    .line 122
    aget-byte v5, p0, v0

    .line 123
    .line 124
    if-nez v5, :cond_a

    .line 125
    .line 126
    aput-byte p2, p0, v0

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_b
    :goto_2
    invoke-static {p1, v1, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 133
    .line 134
    .line 135
    :try_start_0
    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 136
    .line 137
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 138
    .line 139
    invoke-virtual {p2, p1, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_5

    .line 143
    :catch_0
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_c
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 148
    .line 149
    iget v8, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 150
    .line 151
    if-eq v8, v7, :cond_d

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_d
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 155
    .line 156
    if-lt p2, v6, :cond_e

    .line 157
    .line 158
    if-ge p2, v5, :cond_e

    .line 159
    .line 160
    aget-byte v4, p0, v0

    .line 161
    .line 162
    sub-int/2addr p2, v6

    .line 163
    shl-int p2, v1, p2

    .line 164
    .line 165
    not-int p2, p2

    .line 166
    and-int/2addr p2, v4

    .line 167
    int-to-byte p2, p2

    .line 168
    aput-byte p2, p0, v0

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_e
    move v5, v1

    .line 172
    :goto_3
    if-ge v5, v4, :cond_10

    .line 173
    .line 174
    aget-byte v6, p0, v5

    .line 175
    .line 176
    if-ne v6, p2, :cond_f

    .line 177
    .line 178
    aput-byte v0, p0, v5

    .line 179
    .line 180
    :cond_f
    add-int/lit8 v5, v5, 0x1

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_10
    :goto_4
    invoke-static {p1, v1, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 184
    .line 185
    .line 186
    :try_start_1
    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 187
    .line 188
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 189
    .line 190
    invoke-virtual {p2, p1, v1, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :catch_1
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    :cond_11
    :goto_5
    return-void

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x2f5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final notifyMouseAciton(IFFI)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    const-string/jumbo v1, "ignore nullpointer exception "

    .line 13
    .line 14
    .line 15
    const-string v2, "WirelessKeyboardMouseShare"

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mMouse:Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;

    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz p1, :cond_7

    .line 22
    .line 23
    if-eq p1, v4, :cond_5

    .line 24
    .line 25
    if-eq p1, v3, :cond_3

    .line 26
    .line 27
    const/16 p2, 0x8

    .line 28
    .line 29
    if-eq p1, p2, :cond_1

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_1
    float-to-int p1, p3

    .line 34
    int-to-byte p1, p1

    .line 35
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 36
    .line 37
    iget p3, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 38
    .line 39
    if-eq p3, v3, :cond_2

    .line 40
    .line 41
    goto/16 :goto_1

    .line 42
    .line 43
    :cond_2
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 44
    .line 45
    aput-byte v0, p0, v4

    .line 46
    .line 47
    aput-byte v0, p0, v3

    .line 48
    .line 49
    const/4 p3, 0x3

    .line 50
    aput-byte p1, p0, p3

    .line 51
    .line 52
    invoke-static {p2, v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 53
    .line 54
    .line 55
    :try_start_0
    iget-object p1, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 56
    .line 57
    iget-object p2, p2, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 58
    .line 59
    invoke-virtual {p1, p2, v3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    :goto_0
    aput-byte v0, p0, p3

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    float-to-int p1, p2

    .line 70
    int-to-byte p1, p1

    .line 71
    float-to-int p2, p3

    .line 72
    int-to-byte p2, p2

    .line 73
    iget-object p3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 74
    .line 75
    iget p4, p3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 76
    .line 77
    if-eq p4, v3, :cond_4

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 81
    .line 82
    aput-byte p1, p0, v4

    .line 83
    .line 84
    aput-byte p2, p0, v3

    .line 85
    .line 86
    invoke-static {p3, v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 87
    .line 88
    .line 89
    :try_start_1
    iget-object p1, p3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 90
    .line 91
    iget-object p2, p3, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 92
    .line 93
    invoke-virtual {p1, p2, v3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :catch_1
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_5
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 102
    .line 103
    iget p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 104
    .line 105
    if-eq p2, v3, :cond_6

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_6
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 109
    .line 110
    aget-byte p2, p0, v0

    .line 111
    .line 112
    not-int p3, p4

    .line 113
    and-int/2addr p2, p3

    .line 114
    int-to-byte p2, p2

    .line 115
    aput-byte p2, p0, v0

    .line 116
    .line 117
    aput-byte v0, p0, v4

    .line 118
    .line 119
    aput-byte v0, p0, v3

    .line 120
    .line 121
    invoke-static {p1, v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 122
    .line 123
    .line 124
    :try_start_2
    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 125
    .line 126
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 127
    .line 128
    invoke-virtual {p2, p1, v3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 129
    .line 130
    .line 131
    goto :goto_1

    .line 132
    :catch_2
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_7
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->this$0:Lcom/android/server/input/WirelessKeyboardMouseShare;

    .line 137
    .line 138
    iget p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 139
    .line 140
    if-eq p2, v3, :cond_8

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_8
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare$Mouse;->mBuffer:[B

    .line 144
    .line 145
    aget-byte p2, p0, v0

    .line 146
    .line 147
    or-int/2addr p2, p4

    .line 148
    int-to-byte p2, p2

    .line 149
    aput-byte p2, p0, v0

    .line 150
    .line 151
    aput-byte v0, p0, v4

    .line 152
    .line 153
    aput-byte v0, p0, v3

    .line 154
    .line 155
    invoke-static {p1, v3, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->-$$Nest$mstoreReportLocked(Lcom/android/server/input/WirelessKeyboardMouseShare;B[B)V

    .line 156
    .line 157
    .line 158
    :try_start_3
    iget-object p2, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 159
    .line 160
    iget-object p1, p1, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 161
    .line 162
    invoke-virtual {p2, p1, v3, p0}, Landroid/bluetooth/BluetoothHidDevice;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :catch_3
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    :cond_9
    :goto_1
    return-void
.end method

.method public final registerApp()V
    .locals 5

    .line 1
    const-string/jumbo v0, "registerApp(): mAppRegistered="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "WirelessKeyboardMouseShare"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v0, " mAdapter="

    .line 20
    .line 21
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string v0, "NULL"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    const-string v0, "OK"

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    monitor-exit v1

    .line 50
    return-void

    .line 51
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mServiceListener:Lcom/android/server/input/WirelessKeyboardMouseShare$3;

    .line 67
    .line 68
    const/16 v4, 0x13

    .line 69
    .line 70
    invoke-virtual {v0, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_3

    .line 75
    .line 76
    const-string p0, "WirelessKeyboardMouseShare"

    .line 77
    .line 78
    const-string v0, "Cannot obtain profile proxy"

    .line 79
    .line 80
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :cond_3
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 89
    .line 90
    const/16 v2, 0x17

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)I

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 96
    .line 97
    .line 98
    monitor-exit v1

    .line 99
    return-void

    .line 100
    :cond_4
    :goto_1
    monitor-exit v1

    .line 101
    return-void

    .line 102
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    throw p0
.end method

.method public final removeHIDDevice(ILjava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "not find device : "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->findBluetoothDeviceFromString(ILjava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 14
    .line 15
    .line 16
    const-string p0, "WirelessKeyboardMouseShare"

    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v1

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->removePairedDevicesListLocked(ILjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    monitor-exit v1

    .line 63
    return-void

    .line 64
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final removePairedDevicesListLocked(ILjava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "0 "

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const-string v2, "WirelessKeyboardMouseShare"

    .line 5
    .line 6
    if-gt p1, v1, :cond_7

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_4

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 13
    .line 14
    aget-object v1, v1, p1

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_2

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 30
    .line 31
    aput-object v3, v4, p1

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v4, "remove device="

    .line 36
    .line 37
    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p2, ", requested_index "

    .line 45
    .line 46
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 60
    .line 61
    .line 62
    sget-boolean p2, Lcom/samsung/android/rune/InputRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    .line 63
    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    :try_start_0
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->REG_ID:[Ljava/lang/String;

    .line 67
    .line 68
    add-int/lit8 v3, p1, -0x1

    .line 69
    .line 70
    aget-object p2, p2, v3

    .line 71
    .line 72
    new-instance v4, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {p2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 92
    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast p2, Ljava/util/HashMap;

    .line 98
    .line 99
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    if-eqz p2, :cond_1

    .line 104
    .line 105
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->CONN_ID:[Ljava/lang/String;

    .line 106
    .line 107
    aget-object p2, p2, v3

    .line 108
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 115
    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    check-cast v3, Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v3, " "

    .line 130
    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {p2, v0}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLogInfos:Ljava/util/Map;

    .line 149
    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p0, Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .line 158
    .line 159
    goto :goto_0

    .line 160
    :catch_0
    const-string/jumbo p0, "notifySALogging nullpointer exception "

    .line 161
    .line 162
    .line 163
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    const-string v0, ""

    .line 168
    .line 169
    const/4 v1, 0x1

    .line 170
    move-object v5, v0

    .line 171
    move v4, v1

    .line 172
    :goto_1
    const/4 v6, 0x4

    .line 173
    if-ge v4, v6, :cond_6

    .line 174
    .line 175
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 176
    .line 177
    aget-object v6, v6, v4

    .line 178
    .line 179
    if-eqz v6, :cond_3

    .line 180
    .line 181
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    goto :goto_2

    .line 186
    :cond_3
    move-object v6, v0

    .line 187
    :goto_2
    if-ne v4, v1, :cond_4

    .line 188
    .line 189
    move-object v5, v6

    .line 190
    goto :goto_3

    .line 191
    :cond_4
    const-string v7, ","

    .line 192
    .line 193
    invoke-static {v5, v7, v6}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    :goto_3
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v6

    .line 201
    if-eqz v6, :cond_5

    .line 202
    .line 203
    const-string/jumbo v0, "exist other slot["

    .line 204
    .line 205
    .line 206
    const-string v1, "] requested_index="

    .line 207
    .line 208
    const-string v5, ", device="

    .line 209
    .line 210
    invoke-static {v4, p1, v0, v1, v5}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    invoke-static {p1, p2, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 218
    .line 219
    aput-object v3, p1, v4

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 222
    .line 223
    .line 224
    return-void

    .line 225
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 226
    .line 227
    goto :goto_1

    .line 228
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    const-string/jumbo v0, "fail to remove "

    .line 231
    .line 232
    .line 233
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 237
    .line 238
    .line 239
    move-result v0

    .line 240
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string v0, " : "

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 265
    .line 266
    .line 267
    return-void

    .line 268
    :cond_7
    :goto_4
    const-string/jumbo p0, "cannot add list, index="

    .line 269
    .line 270
    .line 271
    invoke-static {p1, p0, v2}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    return-void
.end method

.method public final sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNextConnectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 4
    .line 5
    const/16 p1, 0x9

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-wide/16 v0, 0x12c

    .line 18
    .line 19
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final sendMessageMCF()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 4
    .line 5
    const/16 v2, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final sendMessageStatus()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 2
    .line 3
    const/4 v0, 0x7

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final sendReadyToConnectIntent()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 5
    .line 6
    const-string/jumbo v2, "com.samsung.android.input.REMOTE_INPUT_READY_TO_CONNECT"

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 20
    .line 21
    iget-object v3, v3, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto/16 :goto_4

    .line 29
    .line 30
    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 31
    move v6, v3

    .line 32
    move v5, v4

    .line 33
    :goto_1
    const/4 v7, 0x4

    .line 34
    if-ge v5, v7, :cond_3

    .line 35
    .line 36
    iget-object v7, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 37
    .line 38
    aget-object v7, v7, v5

    .line 39
    .line 40
    const-string v8, ""

    .line 41
    .line 42
    if-eqz v7, :cond_1

    .line 43
    .line 44
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    add-int/lit8 v6, v6, 0x1

    .line 49
    .line 50
    :cond_1
    if-ne v5, v4, :cond_2

    .line 51
    .line 52
    move-object v2, v8

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v2, ","

    .line 63
    .line 64
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 78
    .line 79
    if-nez v5, :cond_4

    .line 80
    .line 81
    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const/4 v5, 0x3

    .line 85
    if-lt v6, v5, :cond_5

    .line 86
    .line 87
    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    .line 91
    .line 92
    :goto_3
    const-string/jumbo v4, "com.samsung.android.mcfds"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    .line 97
    .line 98
    const-string/jumbo v4, "ready"

    .line 99
    .line 100
    .line 101
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    .line 102
    .line 103
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    const-string/jumbo v4, "hostlist"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    .line 111
    .line 112
    const-string/jumbo v2, "finishNewDevice"

    .line 113
    .line 114
    .line 115
    iget-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    .line 116
    .line 117
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    .line 119
    .line 120
    const/high16 v2, 0x1000000

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    .line 129
    .line 130
    const-string v1, "WirelessKeyboardMouseShare"

    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string/jumbo v4, "mReadyToConnect : "

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    iget-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mReadyToConnect:Z

    .line 144
    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string/jumbo v4, "mFinishNewDevice"

    .line 149
    .line 150
    .line 151
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    .line 155
    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFinishNewDevice:Z

    .line 167
    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 170
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    throw p0
.end method

.method public final sendWirelessKeyboardShareStatus()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    .line 5
    .line 6
    invoke-direct {v1}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    move v4, v3

    .line 13
    :goto_0
    const/4 v5, 0x4

    .line 14
    if-ge v4, v5, :cond_2

    .line 15
    .line 16
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 17
    .line 18
    aget-object v5, v5, v4

    .line 19
    .line 20
    const-string v6, ""

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto/16 :goto_12

    .line 31
    .line 32
    :cond_0
    :goto_1
    if-ne v4, v3, :cond_1

    .line 33
    .line 34
    move-object v2, v6

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ","

    .line 45
    .line 46
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 60
    .line 61
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 62
    .line 63
    iget-object v7, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    iget-boolean v9, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 70
    .line 71
    iput v4, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    .line 72
    .line 73
    const-string/jumbo v4, "null"

    .line 74
    .line 75
    .line 76
    if-nez v6, :cond_3

    .line 77
    .line 78
    move-object v6, v4

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    :goto_3
    iput-object v6, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 85
    .line 86
    if-nez v7, :cond_4

    .line 87
    .line 88
    goto :goto_4

    .line 89
    :cond_4
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    :goto_4
    iput-object v4, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v2, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 96
    .line 97
    iput-boolean v8, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 98
    .line 99
    iput-boolean v9, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    .line 100
    .line 101
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    .line 102
    .line 103
    invoke-virtual {v4, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->Equals(Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    if-nez v4, :cond_5

    .line 108
    .line 109
    iget-boolean v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    .line 110
    .line 111
    if-nez v6, :cond_5

    .line 112
    .line 113
    iget-boolean v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 114
    .line 115
    if-nez v6, :cond_5

    .line 116
    .line 117
    iget-boolean v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    .line 118
    .line 119
    if-eqz v6, :cond_1f

    .line 120
    .line 121
    :cond_5
    and-int/lit8 v6, v4, 0x1

    .line 122
    .line 123
    const/4 v7, 0x2

    .line 124
    const/4 v8, 0x0

    .line 125
    if-eqz v6, :cond_7

    .line 126
    .line 127
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 128
    .line 129
    iget v9, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 130
    .line 131
    if-ne v9, v7, :cond_6

    .line 132
    .line 133
    const-string/jumbo v9, "true"

    .line 134
    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_6
    const-string/jumbo v9, "false"

    .line 138
    .line 139
    .line 140
    :goto_5
    invoke-virtual {v6, v8, v9, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 141
    .line 142
    .line 143
    :cond_7
    and-int/lit8 v6, v4, 0x2

    .line 144
    .line 145
    if-eqz v6, :cond_9

    .line 146
    .line 147
    iget-object v9, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 148
    .line 149
    iget-object v10, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 150
    .line 151
    if-nez v10, :cond_8

    .line 152
    .line 153
    const-string v10, ""

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_8
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    :goto_6
    invoke-virtual {v9, v3, v10, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 161
    .line 162
    .line 163
    :cond_9
    and-int/lit8 v9, v4, 0x4

    .line 164
    .line 165
    if-eqz v9, :cond_b

    .line 166
    .line 167
    iget-object v9, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 168
    .line 169
    iget-object v10, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 170
    .line 171
    if-nez v10, :cond_a

    .line 172
    .line 173
    const-string v10, ""

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :cond_a
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    :goto_7
    invoke-virtual {v9, v7, v10, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 181
    .line 182
    .line 183
    :cond_b
    and-int/lit8 v9, v4, 0x8

    .line 184
    .line 185
    const/4 v10, 0x3

    .line 186
    if-eqz v9, :cond_c

    .line 187
    .line 188
    iget-object v9, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 189
    .line 190
    invoke-virtual {v9, v10, v2, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 191
    .line 192
    .line 193
    :cond_c
    and-int/lit8 v9, v4, 0x10

    .line 194
    .line 195
    if-eqz v9, :cond_e

    .line 196
    .line 197
    iget-object v11, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    if-eqz v12, :cond_d

    .line 204
    .line 205
    const-string/jumbo v12, "true"

    .line 206
    .line 207
    .line 208
    goto :goto_8

    .line 209
    :cond_d
    const-string/jumbo v12, "false"

    .line 210
    .line 211
    .line 212
    :goto_8
    invoke-virtual {v11, v5, v12, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 213
    .line 214
    .line 215
    :cond_e
    and-int/lit8 v5, v4, 0x20

    .line 216
    .line 217
    if-eqz v5, :cond_10

    .line 218
    .line 219
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 220
    .line 221
    iget-boolean v11, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 222
    .line 223
    if-eqz v11, :cond_f

    .line 224
    .line 225
    const-string/jumbo v11, "true"

    .line 226
    .line 227
    .line 228
    goto :goto_9

    .line 229
    :cond_f
    const-string/jumbo v11, "false"

    .line 230
    .line 231
    .line 232
    :goto_9
    const/4 v12, 0x5

    .line 233
    invoke-virtual {v5, v12, v11, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 234
    .line 235
    .line 236
    :cond_10
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 237
    .line 238
    if-eqz v5, :cond_12

    .line 239
    .line 240
    iget-object v11, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 241
    .line 242
    if-eqz v5, :cond_11

    .line 243
    .line 244
    const-string/jumbo v5, "true"

    .line 245
    .line 246
    .line 247
    goto :goto_a

    .line 248
    :cond_11
    const-string/jumbo v5, "false"

    .line 249
    .line 250
    .line 251
    :goto_a
    const/4 v12, 0x7

    .line 252
    invoke-virtual {v11, v12, v5, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 253
    .line 254
    .line 255
    :cond_12
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    .line 256
    .line 257
    if-eqz v5, :cond_14

    .line 258
    .line 259
    iget-object v11, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 260
    .line 261
    if-eqz v5, :cond_13

    .line 262
    .line 263
    const-string/jumbo v5, "true"

    .line 264
    .line 265
    .line 266
    goto :goto_b

    .line 267
    :cond_13
    const-string/jumbo v5, "false"

    .line 268
    .line 269
    .line 270
    :goto_b
    const/16 v12, 0x8

    .line 271
    .line 272
    invoke-virtual {v11, v12, v5, v3}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 273
    .line 274
    .line 275
    :cond_14
    const v5, 0x10410bb

    .line 276
    .line 277
    .line 278
    if-eqz v6, :cond_16

    .line 279
    .line 280
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 281
    .line 282
    if-eqz v6, :cond_15

    .line 283
    .line 284
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    iget-object v10, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 291
    .line 292
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :try_start_1
    iget-object v11, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLastestConnectedName:Ljava/lang/String;

    .line 294
    .line 295
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    :try_start_2
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    invoke-virtual {v6, v5, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    iget-object v10, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 305
    .line 306
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 307
    .line 308
    .line 309
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 310
    .line 311
    .line 312
    move-result-object v11

    .line 313
    iput-object v6, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 314
    .line 315
    iget-object v6, v10, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 316
    .line 317
    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v6, v7, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 321
    .line 322
    .line 323
    move-result-object v6

    .line 324
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    .line 326
    .line 327
    goto :goto_c

    .line 328
    :catchall_1
    move-exception p0

    .line 329
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 330
    :try_start_4
    throw p0

    .line 331
    :cond_15
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 332
    .line 333
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    iget-object v11, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 338
    .line 339
    monitor-enter v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    :try_start_5
    iget-object v12, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mLastestConnectedName:Ljava/lang/String;

    .line 341
    .line 342
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 343
    :try_start_6
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object v11

    .line 347
    const v12, 0x10410bc

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6, v12, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v6

    .line 354
    iget-object v11, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 355
    .line 356
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    iput-object v6, v12, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 364
    .line 365
    iget-object v6, v11, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 366
    .line 367
    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v6, v10, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 375
    .line 376
    .line 377
    goto :goto_c

    .line 378
    :catchall_2
    move-exception p0

    .line 379
    :try_start_7
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 380
    :try_start_8
    throw p0

    .line 381
    :cond_16
    :goto_c
    if-nez v9, :cond_17

    .line 382
    .line 383
    iget-boolean v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    .line 384
    .line 385
    if-eqz v6, :cond_18

    .line 386
    .line 387
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    .line 388
    .line 389
    .line 390
    move-result v6

    .line 391
    if-eqz v6, :cond_18

    .line 392
    .line 393
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 394
    .line 395
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 396
    .line 397
    .line 398
    move-result-object v6

    .line 399
    iget-object v9, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 400
    .line 401
    monitor-enter v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 402
    :try_start_9
    iget-object v10, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    .line 403
    .line 404
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 405
    :try_start_a
    filled-new-array {v10}, [Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v9

    .line 409
    invoke-virtual {v6, v5, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v5

    .line 413
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 414
    .line 415
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 416
    .line 417
    .line 418
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 419
    .line 420
    .line 421
    move-result-object v9

    .line 422
    iput-object v5, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 423
    .line 424
    iget-object v5, v6, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 425
    .line 426
    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v5, v7, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 434
    .line 435
    .line 436
    goto :goto_d

    .line 437
    :catchall_3
    move-exception p0

    .line 438
    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 439
    :try_start_c
    throw p0

    .line 440
    :cond_18
    :goto_d
    iget-boolean v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 441
    .line 442
    if-eqz v5, :cond_1c

    .line 443
    .line 444
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 445
    .line 446
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 451
    .line 452
    monitor-enter v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 453
    :try_start_d
    iget-object v7, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    .line 454
    .line 455
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 456
    :try_start_e
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 457
    .line 458
    .line 459
    move-result-object v6

    .line 460
    const v7, 0x10410b6

    .line 461
    .line 462
    .line 463
    invoke-virtual {v5, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 468
    .line 469
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    .line 471
    .line 472
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 473
    .line 474
    .line 475
    move-result-object v7

    .line 476
    iput-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 477
    .line 478
    iget-object v5, v6, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 479
    .line 480
    invoke-virtual {v5, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 481
    .line 482
    .line 483
    move-result-object v6

    .line 484
    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    .line 486
    .line 487
    const-wide/32 v9, 0xea60

    .line 488
    .line 489
    .line 490
    invoke-virtual {v5, v6, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 491
    .line 492
    .line 493
    iput-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 494
    .line 495
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 496
    .line 497
    const/16 v6, 0xb

    .line 498
    .line 499
    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    .line 500
    .line 501
    .line 502
    move-result v5

    .line 503
    if-eqz v5, :cond_19

    .line 504
    .line 505
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 506
    .line 507
    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 508
    .line 509
    .line 510
    :cond_19
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 511
    .line 512
    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 513
    .line 514
    .line 515
    move-result-object v5

    .line 516
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 517
    .line 518
    invoke-virtual {v6, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 519
    .line 520
    .line 521
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 522
    .line 523
    const-string v6, "SemContinuityService"

    .line 524
    .line 525
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    check-cast v5, Lcom/samsung/android/continuity/SemContinuityManager;

    .line 530
    .line 531
    if-nez v5, :cond_1a

    .line 532
    .line 533
    const-string v3, "WirelessKeyboardMouseShare"

    .line 534
    .line 535
    const-string v5, "SemContinuityManager is null"

    .line 536
    .line 537
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    .line 539
    .line 540
    move v3, v8

    .line 541
    goto :goto_e

    .line 542
    :cond_1a
    invoke-virtual {v5, v3}, Lcom/samsung/android/continuity/SemContinuityManager;->getNearbyDeviceCount(I)I

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    :goto_e
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 547
    .line 548
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 549
    .line 550
    .line 551
    move-result-object v5

    .line 552
    const v6, 0x10410b9

    .line 553
    .line 554
    .line 555
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    if-nez v3, :cond_1b

    .line 560
    .line 561
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 562
    .line 563
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    const v6, 0x10410ba

    .line 568
    .line 569
    .line 570
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    goto :goto_f

    .line 575
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 581
    .line 582
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 583
    .line 584
    .line 585
    move-result-object v6

    .line 586
    const v7, 0x10410b7

    .line 587
    .line 588
    .line 589
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v6

    .line 593
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    .line 595
    .line 596
    const-string v6, "\n"

    .line 597
    .line 598
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mContext:Landroid/content/Context;

    .line 602
    .line 603
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 604
    .line 605
    .line 606
    move-result-object v6

    .line 607
    const v7, 0x10410b8

    .line 608
    .line 609
    .line 610
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v6

    .line 614
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v3

    .line 621
    :goto_f
    iget-object v6, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToastDialog:Lcom/android/server/input/ToastDialog;

    .line 622
    .line 623
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 624
    .line 625
    .line 626
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    .line 627
    .line 628
    .line 629
    move-result-object v7

    .line 630
    iput-object v5, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 631
    .line 632
    iput-object v3, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 633
    .line 634
    iget-object v3, v6, Lcom/android/server/input/ToastDialog;->mHandler:Lcom/android/server/input/ToastDialog$ToastDialogHandler;

    .line 635
    .line 636
    const/16 v5, 0xa

    .line 637
    .line 638
    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v3, v5, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 642
    .line 643
    .line 644
    move-result-object v3

    .line 645
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 646
    .line 647
    .line 648
    goto :goto_10

    .line 649
    :catchall_4
    move-exception p0

    .line 650
    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 651
    :try_start_10
    throw p0

    .line 652
    :cond_1c
    :goto_10
    if-eqz v4, :cond_1d

    .line 653
    .line 654
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mStatusInfo:Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;

    .line 655
    .line 656
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 657
    .line 658
    .line 659
    iget v4, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    .line 660
    .line 661
    iput v4, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mConnectionState:I

    .line 662
    .line 663
    iget-object v4, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 664
    .line 665
    iput-object v4, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToString:Ljava/lang/String;

    .line 666
    .line 667
    iget-object v4, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 668
    .line 669
    iput-object v4, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mFocusedDeviceToString:Ljava/lang/String;

    .line 670
    .line 671
    iget-object v4, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 672
    .line 673
    iput-object v4, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mPluggedDeviceToStringList:Ljava/lang/String;

    .line 674
    .line 675
    iget-boolean v4, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 676
    .line 677
    iput-boolean v4, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mToLocalTablet:Z

    .line 678
    .line 679
    iget-boolean v1, v1, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    .line 680
    .line 681
    iput-boolean v1, v3, Lcom/android/server/input/WirelessKeyboardMouseShare$StatusInfo;->mAppRegistered:Z

    .line 682
    .line 683
    :cond_1d
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 684
    .line 685
    if-nez v1, :cond_1e

    .line 686
    .line 687
    const-string v1, ""

    .line 688
    .line 689
    goto :goto_11

    .line 690
    :cond_1e
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object v1

    .line 694
    :goto_11
    const-string v3, "WirelessKeyboardMouseShare"

    .line 695
    .line 696
    new-instance v4, Ljava/lang/StringBuilder;

    .line 697
    .line 698
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 699
    .line 700
    .line 701
    const-string v5, "List : "

    .line 702
    .line 703
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    const-string v2, " p = "

    .line 710
    .line 711
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    .line 713
    .line 714
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    .line 716
    .line 717
    const-string v1, ", Noti = "

    .line 718
    .line 719
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    iget-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 723
    .line 724
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 725
    .line 726
    .line 727
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .line 733
    .line 734
    iput-boolean v8, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNotiTurnOnBT:Z

    .line 735
    .line 736
    iput-boolean v8, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 737
    .line 738
    iput-boolean v8, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    .line 739
    .line 740
    const-string p0, "WirelessKeyboardMouseShare"

    .line 741
    .line 742
    const-string/jumbo v1, "sendWirelessKeyboardShareStatus"

    .line 743
    .line 744
    .line 745
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .line 747
    .line 748
    :cond_1f
    monitor-exit v0

    .line 749
    return-void

    .line 750
    :goto_12
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 751
    throw p0
.end method

.method public final setHostRoleWirelessKeyboardShare()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 20
    .line 21
    const/16 v2, 0xb

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    :cond_1
    const-string p0, "WirelessKeyboardMouseShare"

    .line 35
    .line 36
    const-string/jumbo v1, "setHostRoleWirelessKeyboardShare : -> Host role(tablet)"

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final setPogoConnected(Z)V
    .locals 4

    .line 1
    const-string/jumbo v0, "setPogoConnected mPogoConnected : "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    .line 8
    .line 9
    if-eq v2, p1, :cond_1

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    .line 12
    .line 13
    const-string v2, "WirelessKeyboardMouseShare"

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    sget-boolean v0, Lcom/samsung/android/rune/InputRune;->IFW_WIRELESS_KEYBOARD_SA_LOGGING:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "67260"

    .line 37
    .line 38
    const/4 v2, 0x1

    .line 39
    if-ne p1, v2, :cond_0

    .line 40
    .line 41
    const-string v2, "1"

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    const-string v2, "0"

    .line 47
    .line 48
    :goto_0
    invoke-static {v0, v2}, Lcom/samsung/android/core/CoreSaLogger;->logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    if-nez p1, :cond_2

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->stopHIDDevice()V

    .line 54
    .line 55
    .line 56
    :cond_2
    monitor-exit v1

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method

.method public final setToLocalTablet(Z)Z
    .locals 5

    .line 1
    const-string/jumbo v0, "last connected device is "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "not changed remote device : "

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 11
    .line 12
    if-ne v3, p1, :cond_1

    .line 13
    .line 14
    const-string p1, "WirelessKeyboardMouseShare"

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    const-string/jumbo v0, "local tablet"

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto/16 :goto_7

    .line 24
    .line 25
    :cond_0
    const-string/jumbo v0, "remote device"

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 36
    .line 37
    monitor-exit v2

    .line 38
    return p0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->existBluetoothDeviceLocked(Landroid/bluetooth/BluetoothDevice;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_6

    .line 48
    .line 49
    :cond_2
    if-nez p1, :cond_6

    .line 50
    .line 51
    const-string v1, "WirelessKeyboardMouseShare"

    .line 52
    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 59
    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    const-string/jumbo v0, "null."

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v4, ". but not exist"

    .line 81
    .line 82
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->getDeviceListSize()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    const/4 v1, 0x1

    .line 104
    if-eqz v0, :cond_5

    .line 105
    .line 106
    :goto_2
    const/4 v0, 0x4

    .line 107
    if-ge v1, v0, :cond_6

    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 110
    .line 111
    aget-object v0, v0, v1

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    iput-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 116
    .line 117
    const-string v0, "WirelessKeyboardMouseShare"

    .line 118
    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string/jumbo v4, "last connected device must be slot["

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, "] "

    .line 134
    .line 135
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 139
    .line 140
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_5
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 159
    .line 160
    monitor-exit v2

    .line 161
    return v1

    .line 162
    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    .line 163
    .line 164
    iput-boolean p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 165
    .line 166
    :cond_7
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 167
    .line 168
    if-eqz v0, :cond_9

    .line 169
    .line 170
    if-nez p1, :cond_8

    .line 171
    .line 172
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 173
    .line 174
    if-eqz v0, :cond_8

    .line 175
    .line 176
    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_8
    if-eqz p1, :cond_9

    .line 181
    .line 182
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 183
    .line 184
    if-eqz v0, :cond_9

    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBT(Landroid/bluetooth/BluetoothDevice;)V

    .line 187
    .line 188
    .line 189
    :cond_9
    :goto_4
    const-string v0, "WirelessKeyboardMouseShare"

    .line 190
    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string/jumbo v3, "try switch remote bt "

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    if-eqz p1, :cond_a

    .line 203
    .line 204
    const-string/jumbo p1, "local tablet"

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_a
    const-string/jumbo p1, "remote device"

    .line 209
    .line 210
    .line 211
    :goto_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 215
    .line 216
    if-nez p1, :cond_b

    .line 217
    .line 218
    const-string/jumbo p1, "null"

    .line 219
    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    :goto_6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 237
    .line 238
    monitor-exit v2

    .line 239
    return p0

    .line 240
    :goto_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    throw p0
.end method

.method public final startHIDDevice()V
    .locals 4

    .line 1
    const-string/jumbo v0, "startHIDDevice mAppRegistered : "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "startHIDDevice mPogoConnected : "

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    const-string v0, "WirelessKeyboardMouseShare"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPogoConnected:Z

    .line 22
    .line 23
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    monitor-exit v2

    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 38
    .line 39
    if-nez v1, :cond_1

    .line 40
    .line 41
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 48
    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mTabletName:Ljava/lang/String;

    .line 56
    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->registerApp()V

    .line 58
    .line 59
    .line 60
    const-string v1, "WirelessKeyboardMouseShare"

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 68
    .line 69
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    monitor-exit v2

    .line 80
    return-void

    .line 81
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    throw p0
.end method

.method public final stopHIDDevice()V
    .locals 4

    .line 1
    const-string/jumbo v0, "stopHIDDevice mAppRegistered : "

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->unregisterApp()V

    .line 8
    .line 9
    .line 10
    const-string v2, "WirelessKeyboardMouseShare"

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 18
    .line 19
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    monitor-exit v1

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final switchDevice(ILjava/lang/String;)Z
    .locals 9

    .line 1
    const-string/jumbo v0, "switchDevice : "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "not find device : "

    .line 5
    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/WirelessKeyboardMouseShare;->findBluetoothDeviceFromString(ILjava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    move v6, v5

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v6, v4

    .line 21
    :goto_0
    iget-object v7, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 22
    .line 23
    if-eqz v7, :cond_1

    .line 24
    .line 25
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    const-string p0, "WirelessKeyboardMouseShare"

    .line 32
    .line 33
    const-string/jumbo p1, "switchDevice need to turn on bt."

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    monitor-exit v2

    .line 40
    return v4

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    if-nez v3, :cond_2

    .line 45
    .line 46
    if-nez v6, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 49
    .line 50
    .line 51
    const-string p0, "WirelessKeyboardMouseShare"

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    monitor-exit v2

    .line 69
    return v4

    .line 70
    :cond_2
    iget-object p2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 71
    .line 72
    if-nez p2, :cond_3

    .line 73
    .line 74
    const-string/jumbo p2, "null"

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    :goto_1
    if-nez v3, :cond_4

    .line 83
    .line 84
    const-string/jumbo v1, "null"

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :goto_2
    const-string v7, "WirelessKeyboardMouseShare"

    .line 93
    .line 94
    new-instance v8, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string p2, " -> "

    .line 103
    .line 104
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p2, " index:"

    .line 111
    .line 112
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {v7, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    if-nez v6, :cond_7

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isRegistered()Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_5

    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->startHIDDevice()V

    .line 134
    .line 135
    .line 136
    :cond_5
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 137
    .line 138
    if-eqz p1, :cond_7

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 155
    .line 156
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 157
    .line 158
    if-nez p1, :cond_6

    .line 159
    .line 160
    move v4, v5

    .line 161
    :cond_6
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 164
    .line 165
    .line 166
    monitor-exit v2

    .line 167
    return v5

    .line 168
    :cond_7
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 169
    .line 170
    if-eqz p1, :cond_9

    .line 171
    .line 172
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 173
    .line 174
    if-eqz p1, :cond_8

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    if-ne p1, v5, :cond_8

    .line 181
    .line 182
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 183
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->disconnectBTWithoutUnregister(Landroid/bluetooth/BluetoothDevice;)V

    .line 185
    .line 186
    .line 187
    :cond_8
    if-nez v6, :cond_9

    .line 188
    .line 189
    invoke-virtual {p0, v3}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageConnectDeviceLocked(Landroid/bluetooth/BluetoothDevice;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    if-nez v6, :cond_a

    .line 193
    .line 194
    iput-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 195
    .line 196
    :cond_a
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 197
    .line 198
    if-nez p1, :cond_b

    .line 199
    .line 200
    move v4, v5

    .line 201
    :cond_b
    iput-boolean v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mToLocalTablet:Z

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 204
    .line 205
    .line 206
    monitor-exit v2

    .line 207
    return v5

    .line 208
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    throw p0
.end method

.method public final switchRemoteDeviceByKey(Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne p1, v1, :cond_1

    .line 6
    .line 7
    :try_start_0
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 8
    .line 9
    const/16 v2, 0xb

    .line 10
    .line 11
    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 18
    .line 19
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mUnregisterWhenConnectionFail:Z

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 34
    .line 35
    .line 36
    const-string p0, "WirelessKeyboardMouseShare"

    .line 37
    .line 38
    const-string/jumbo p1, "switchRemoteDevice : -> Host role(tablet)"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    const-string p1, "WirelessKeyboardMouseShare"

    .line 56
    .line 57
    const-string/jumbo v2, "startHIDDeviceByKey need to turn on bt."

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    iput-boolean v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedToTurnOnBT:Z

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 66
    .line 67
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 68
    .line 69
    .line 70
    :goto_1
    monitor-exit v0

    .line 71
    return v1

    .line 72
    :cond_2
    iget-object p1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 73
    .line 74
    new-instance v1, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda0;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/android/server/input/WirelessKeyboardMouseShare$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/WirelessKeyboardMouseShare;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    const/4 p1, 0x0

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/input/WirelessKeyboardMouseShare;->setToLocalTablet(Z)Z

    .line 84
    .line 85
    .line 86
    move-result p0

    .line 87
    monitor-exit v0

    .line 88
    return p0

    .line 89
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public final unregisterApp()V
    .locals 4

    .line 1
    const-string/jumbo v0, "unregisterApp(): mAppRegistered="

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    const-string v2, "WirelessKeyboardMouseShare"

    .line 8
    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 15
    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 27
    .line 28
    const/16 v2, 0xb

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHandler:Lcom/android/server/input/WirelessKeyboardMouseShare$WirelessKeyboardMouseShareHandler;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 45
    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidDevice;->unregisterApp()Z

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 58
    .line 59
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mHidDevice:Landroid/bluetooth/BluetoothHidDevice;

    .line 60
    .line 61
    const/16 v3, 0x13

    .line 62
    .line 63
    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->sendMessageStatus()V

    .line 70
    .line 71
    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method public final updateWirelessKeyboardShareStatus()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->innerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, ""

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    const/4 v4, 0x4

    .line 9
    if-ge v3, v4, :cond_2

    .line 10
    .line 11
    iget-object v4, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPairedDevices:[Landroid/bluetooth/BluetoothDevice;

    .line 12
    .line 13
    aget-object v4, v4, v3

    .line 14
    .line 15
    const-string v5, ""

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto/16 :goto_a

    .line 26
    .line 27
    :cond_0
    :goto_1
    if-ne v3, v2, :cond_1

    .line 28
    .line 29
    move-object v1, v5

    .line 30
    goto :goto_2

    .line 31
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ","

    .line 40
    .line 41
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 55
    .line 56
    iget v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mConnectionState:I

    .line 57
    .line 58
    const/4 v6, 0x2

    .line 59
    if-ne v5, v6, :cond_3

    .line 60
    .line 61
    const-string/jumbo v5, "true"

    .line 62
    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    const-string/jumbo v5, "false"

    .line 66
    .line 67
    .line 68
    :goto_3
    const/4 v7, 0x0

    .line 69
    invoke-virtual {v3, v7, v5, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 73
    .line 74
    iget-object v5, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mPluggedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 75
    .line 76
    if-nez v5, :cond_4

    .line 77
    .line 78
    const-string v5, ""

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_4
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    :goto_4
    invoke-virtual {v3, v2, v5, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mFocusedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 91
    .line 92
    if-nez v3, :cond_5

    .line 93
    .line 94
    const-string v3, ""

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_5
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    :goto_5
    invoke-virtual {v2, v6, v3, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 105
    .line 106
    const/4 v3, 0x3

    .line 107
    invoke-virtual {v2, v3, v1, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/input/WirelessKeyboardMouseShare;->isToLocalTablet()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_6

    .line 117
    .line 118
    const-string/jumbo v2, "true"

    .line 119
    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_6
    const-string/jumbo v2, "false"

    .line 123
    .line 124
    .line 125
    :goto_6
    invoke-virtual {v1, v4, v2, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 129
    .line 130
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mAppRegistered:Z

    .line 131
    .line 132
    if-eqz v2, :cond_7

    .line 133
    .line 134
    const-string/jumbo v2, "true"

    .line 135
    .line 136
    .line 137
    goto :goto_7

    .line 138
    :cond_7
    const-string/jumbo v2, "false"

    .line 139
    .line 140
    .line 141
    :goto_7
    const/4 v3, 0x5

    .line 142
    invoke-virtual {v1, v3, v2, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 146
    .line 147
    iget-boolean v2, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNoti:Z

    .line 148
    .line 149
    if-eqz v2, :cond_8

    .line 150
    .line 151
    const-string/jumbo v2, "true"

    .line 152
    .line 153
    .line 154
    goto :goto_8

    .line 155
    :cond_8
    const-string/jumbo v2, "false"

    .line 156
    .line 157
    .line 158
    :goto_8
    const/4 v3, 0x7

    .line 159
    invoke-virtual {v1, v3, v2, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 160
    .line 161
    .line 162
    iget-object v1, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 163
    .line 164
    iget-boolean p0, p0, Lcom/android/server/input/WirelessKeyboardMouseShare;->mNeedNotiTablet:Z

    .line 165
    .line 166
    if-eqz p0, :cond_9

    .line 167
    .line 168
    const-string/jumbo p0, "true"

    .line 169
    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_9
    const-string/jumbo p0, "false"

    .line 173
    .line 174
    .line 175
    :goto_9
    const/16 v2, 0x8

    .line 176
    .line 177
    invoke-virtual {v1, v2, p0, v7}, Lcom/android/server/input/InputManagerService;->deliverWirelessKeyboardShareChanged(ILjava/lang/String;Z)V

    .line 178
    .line 179
    .line 180
    const-string p0, "WirelessKeyboardMouseShare"

    .line 181
    .line 182
    const-string/jumbo v1, "updateWirelessKeyboardShareStatus"

    .line 183
    .line 184
    .line 185
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    monitor-exit v0

    .line 189
    return-void

    .line 190
    :goto_a
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    throw p0
.end method
