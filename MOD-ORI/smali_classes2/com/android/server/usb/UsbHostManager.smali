.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field public mBootCompleted:Z

.field public final mConnected:Landroid/util/ArrayMap;

.field public final mConnections:Ljava/util/LinkedList;

.field public final mContext:Landroid/content/Context;

.field public mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

.field public mCurrentUnlockedUser:I

.field public final mDevices:Ljava/util/HashMap;

.field public final mHandlerLock:Ljava/lang/Object;

.field public final mHasMidiFeature:Z

.field public final mHostDenyList:[Ljava/lang/String;

.field public final mHostPathObserver:Lcom/android/server/usb/UsbHostManager$1;

.field public mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

.field public final mLock:Ljava/lang/Object;

.field public final mMidiDevices:Ljava/util/HashMap;

.field public final mMidiUniqueCodes:Ljava/util/HashSet;

.field public mNumConnects:I

.field public final mPendingIntent:Ljava/util/ArrayList;

.field public final mPendingIntentLock:Ljava/lang/Object;

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public final mRandom:Ljava/util/Random;

.field public final mSettingsLock:Ljava/lang/Object;

.field public mSystemReady:Z

.field public final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field public final mUsbControlObserver:Lcom/android/server/usb/UsbHostManager$1;

.field public mUsbDeviceConnectionHandler:Landroid/content/ComponentName;


# direct methods
.method public static synthetic $r8$lambda$Sq1_ySYK5qJSYgVk_skxot4cnGI(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static -$$Nest$mbroadcastWithPendingQueue(Lcom/android/server/usb/UsbHostManager;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "pending "

    .line 2
    .line 3
    .line 4
    const-string v1, "broadcasting "

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntentLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/usb/UsbHostManager;->mSystemReady:Z

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 16
    .line 17
    .line 18
    const-string p0, "UsbHostManager"

    .line 19
    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, " extras: "

    .line 29
    .line 30
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntent:Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    const-string p0, "UsbHostManager"

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :goto_0
    monitor-exit v2

    .line 73
    return-void

    .line 74
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    const-string v1, "MM-dd HH:mm:ss:SSS"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .locals 4

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
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    .line 24
    .line 25
    new-instance v0, Ljava/lang/Object;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    .line 31
    .line 32
    new-instance v0, Ljava/util/LinkedList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    .line 38
    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    .line 59
    .line 60
    new-instance v0, Ljava/util/Random;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mRandom:Ljava/util/Random;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    .line 69
    .line 70
    const/16 v1, -0x2710

    .line 71
    .line 72
    iput v1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentUnlockedUser:I

    .line 73
    .line 74
    new-instance v1, Lcom/android/server/usb/UsbHostManager$1;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-direct {v1, p0, v2}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;I)V

    .line 78
    .line 79
    .line 80
    new-instance v2, Lcom/android/server/usb/UsbHostManager$1;

    .line 81
    .line 82
    const/4 v3, 0x1

    .line 83
    invoke-direct {v2, p0, v3}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;I)V

    .line 84
    .line 85
    .line 86
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostManager;->mSystemReady:Z

    .line 87
    .line 88
    new-instance v0, Ljava/lang/Object;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntentLock:Ljava/lang/Object;

    .line 94
    .line 95
    new-instance v0, Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntent:Ljava/util/ArrayList;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 103
    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const v3, 0x107017b

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostDenyList:[Ljava/lang/String;

    .line 116
    .line 117
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 118
    .line 119
    iput-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    const p3, 0x10402dc

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    if-nez p3, :cond_0

    .line 137
    .line 138
    const-string p3, "UsbHostManager"

    .line 139
    .line 140
    const-string v0, "deviceConnectionHandler is not empty"

    .line 141
    .line 142
    invoke-static {p3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    iget-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    .line 150
    .line 151
    monitor-enter p3

    .line 152
    :try_start_0
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    .line 153
    .line 154
    monitor-exit p3

    .line 155
    goto :goto_0

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    throw p0

    .line 159
    :cond_0
    :goto_0
    const-string p2, "DEVPATH=/devices/virtual/host_notify"

    .line 160
    .line 161
    invoke-virtual {v1, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const-string p2, "DEVPATH=/devices/virtual/usb_notify/usb_control"

    .line 165
    .line 166
    invoke-virtual {v2, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const-string p2, "android.software.midi"

    .line 174
    .line 175
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    iput-boolean p1, p0, Lcom/android/server/usb/UsbHostManager;->mHasMidiFeature:Z

    .line 180
    .line 181
    return-void
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method


# virtual methods
.method public final addConnectionRecord(ILjava/lang/String;[B)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    .line 6
    .line 7
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x20

    .line 14
    .line 15
    if-lt v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 24
    .line 25
    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;-><init>(ILjava/lang/String;[B)V

    .line 26
    .line 27
    .line 28
    iget-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    .line 29
    .line 30
    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    const/4 p3, -0x1

    .line 34
    if-eq p1, p3, :cond_1

    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 37
    .line 38
    :cond_1
    if-nez p1, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    if-ne p1, p3, :cond_3

    .line 47
    .line 48
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    .line 49
    .line 50
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    :cond_3
    :goto_1
    return-void
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 8

    .line 1
    const-string v0, "host_manager"

    .line 2
    .line 3
    const-wide v1, 0x10b00000002L

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v2

    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    .line 16
    .line 17
    if-eqz v3, :cond_0

    .line 18
    .line 19
    const-string v4, "default_usb_host_connection_handler"

    .line 20
    .line 21
    const-wide v5, 0x10b00000001L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    invoke-static {p1, v4, v5, v6, v3}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 35
    .line 36
    monitor-enter v3

    .line 37
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/lang/String;

    .line 58
    .line 59
    const-string v5, "devices"

    .line 60
    .line 61
    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroid/hardware/usb/UsbDevice;

    .line 68
    .line 69
    const-wide v6, 0x20b00000002L

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    invoke-static {p1, v5, v6, v7, v4}, Lcom/android/internal/usb/DumpUtils;->writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :catchall_1
    move-exception p0

    .line 79
    goto :goto_4

    .line 80
    :cond_1
    const-string/jumbo v2, "num_connects"

    .line 81
    .line 82
    .line 83
    iget v4, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    .line 84
    .line 85
    const-wide v5, 0x10500000003L

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v2, v5, v6, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 91
    .line 92
    .line 93
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_2

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    check-cast v4, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 110
    .line 111
    invoke-virtual {v4, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_2
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_3

    .line 146
    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 152
    .line 153
    invoke-virtual {v4, p1}, Lcom/android/server/usb/UsbDirectMidiDevice;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 158
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :goto_4
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    throw p0

    .line 164
    :goto_5
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 165
    throw p0
.end method

.method public final dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 8
    .line 9
    if-eqz v3, :cond_17

    .line 10
    .line 11
    const-string v3, "Last Connected USB Device:"

    .line 12
    .line 13
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    array-length v3, v2

    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "], isDock: "

    .line 19
    .line 20
    const-string v6, " , out: "

    .line 21
    .line 22
    const-string v7, "isHeadset[in: "

    .line 23
    .line 24
    const-string v8, " Disconnect "

    .line 25
    .line 26
    const-string v9, " mode:"

    .line 27
    .line 28
    const-string v10, " Connect "

    .line 29
    .line 30
    const/4 v11, -0x1

    .line 31
    if-le v3, v4, :cond_15

    .line 32
    .line 33
    aget-object v3, v2, v4

    .line 34
    .line 35
    const-string v12, "-dump-short"

    .line 36
    .line 37
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    goto/16 :goto_a

    .line 44
    .line 45
    :cond_0
    aget-object v3, v2, v4

    .line 46
    .line 47
    const-string v12, "-dump-tree"

    .line 48
    .line 49
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    const/4 v12, 0x0

    .line 54
    if-eqz v3, :cond_d

    .line 55
    .line 56
    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 57
    .line 58
    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    .line 59
    .line 60
    iget v3, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    .line 61
    .line 62
    if-eq v3, v11, :cond_c

    .line 63
    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    .line 98
    .line 99
    invoke-direct {v3, v2, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v2, v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 108
    .line 109
    const/4 v8, 0x0

    .line 110
    move-object v10, v8

    .line 111
    move-object v11, v10

    .line 112
    move-object v13, v11

    .line 113
    move v9, v12

    .line 114
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v14

    .line 118
    if-ge v9, v14, :cond_5

    .line 119
    .line 120
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v14

    .line 124
    check-cast v14, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 125
    .line 126
    iget-byte v15, v14, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    .line 127
    .line 128
    if-eq v15, v4, :cond_4

    .line 129
    .line 130
    const/4 v4, 0x2

    .line 131
    if-eq v15, v4, :cond_3

    .line 132
    .line 133
    const/4 v4, 0x4

    .line 134
    if-eq v15, v4, :cond_2

    .line 135
    .line 136
    const/4 v4, 0x5

    .line 137
    if-eq v15, v4, :cond_1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    check-cast v14, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 141
    .line 142
    new-instance v4, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    .line 143
    .line 144
    invoke-direct {v4, v14}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;-><init>(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    .line 145
    .line 146
    .line 147
    iget-object v14, v10, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    .line 148
    .line 149
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_2
    check-cast v14, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 154
    .line 155
    new-instance v10, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    .line 156
    .line 157
    invoke-direct {v10, v14}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;-><init>(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    .line 158
    .line 159
    .line 160
    iget-object v4, v11, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->mInterfaceNodes:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    check-cast v14, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 167
    .line 168
    new-instance v11, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    .line 169
    .line 170
    invoke-direct {v11, v14}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;-><init>(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    .line 171
    .line 172
    .line 173
    iget-object v4, v13, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->mConfigNodes:Ljava/util/ArrayList;

    .line 174
    .line 175
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_4
    check-cast v14, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 180
    .line 181
    new-instance v13, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;

    .line 182
    .line 183
    invoke-direct {v13, v14}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;-><init>(Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;)V

    .line 184
    .line 185
    .line 186
    :goto_1
    add-int/lit8 v9, v9, 0x1

    .line 187
    .line 188
    const/4 v4, 0x1

    .line 189
    goto :goto_0

    .line 190
    :cond_5
    new-instance v2, Lcom/android/server/usb/descriptors/report/TextReportCanvas;

    .line 191
    .line 192
    invoke-direct {v2, v3, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V

    .line 193
    .line 194
    .line 195
    iget-object v4, v13, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 196
    .line 197
    invoke-virtual {v4, v2}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 198
    .line 199
    .line 200
    iget-object v4, v13, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsDeviceNode;->mConfigNodes:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    if-eqz v9, :cond_b

    .line 211
    .line 212
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v9

    .line 216
    check-cast v9, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;

    .line 217
    .line 218
    iget-object v10, v9, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->mConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 219
    .line 220
    invoke-virtual {v10, v2}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 224
    .line 225
    .line 226
    iget-object v9, v9, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsConfigNode;->mInterfaceNodes:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    if-eqz v10, :cond_a

    .line 237
    .line 238
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    check-cast v10, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;

    .line 243
    .line 244
    iget-object v11, v10, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 245
    .line 246
    invoke-virtual {v11, v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 247
    .line 248
    .line 249
    iget-object v11, v10, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    if-lez v11, :cond_8

    .line 256
    .line 257
    const-string v11, "Audio Class Interfaces"

    .line 258
    .line 259
    invoke-virtual {v2, v11, v12}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 263
    .line 264
    .line 265
    iget-object v11, v10, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mACInterfaceNodes:Ljava/util/ArrayList;

    .line 266
    .line 267
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v11

    .line 271
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v13

    .line 275
    if-nez v13, :cond_7

    .line 276
    .line 277
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 278
    .line 279
    .line 280
    goto :goto_4

    .line 281
    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-static {v0}, Lcom/android/server/DssController$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    .line 286
    .line 287
    .line 288
    throw v8

    .line 289
    :cond_8
    :goto_4
    iget-object v11, v10, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    if-lez v11, :cond_6

    .line 296
    .line 297
    const-string v11, "Endpoints"

    .line 298
    .line 299
    invoke-virtual {v2, v11, v12}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->openList()V

    .line 303
    .line 304
    .line 305
    iget-object v10, v10, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsInterfaceNode;->mEndpointNodes:Ljava/util/ArrayList;

    .line 306
    .line 307
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 308
    .line 309
    .line 310
    move-result-object v10

    .line 311
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 312
    .line 313
    .line 314
    move-result v11

    .line 315
    if-eqz v11, :cond_9

    .line 316
    .line 317
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v11

    .line 321
    check-cast v11, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;

    .line 322
    .line 323
    iget-object v11, v11, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsEndpointNode;->mEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 324
    .line 325
    invoke-virtual {v11, v2}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 330
    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_a
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;->closeList()V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_2

    .line 337
    .line 338
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    .line 344
    .line 345
    .line 346
    move-result v4

    .line 347
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    .line 354
    .line 355
    .line 356
    move-result v4

    .line 357
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isDock()Z

    .line 364
    .line 365
    .line 366
    move-result v3

    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_b

    .line 385
    .line 386
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto/16 :goto_b

    .line 412
    .line 413
    :cond_d
    move v3, v4

    .line 414
    aget-object v4, v2, v3

    .line 415
    .line 416
    const-string v3, "-dump-list"

    .line 417
    .line 418
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_10

    .line 423
    .line 424
    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 425
    .line 426
    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    .line 427
    .line 428
    iget v3, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    .line 429
    .line 430
    if-eq v3, v11, :cond_f

    .line 431
    .line 432
    new-instance v4, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 464
    .line 465
    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    .line 466
    .line 467
    invoke-direct {v3, v2, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 468
    .line 469
    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    .line 471
    .line 472
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .line 474
    .line 475
    new-instance v2, Lcom/android/server/usb/descriptors/report/TextReportCanvas;

    .line 476
    .line 477
    invoke-direct {v2, v3, v0}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V

    .line 478
    .line 479
    .line 480
    iget-object v4, v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 481
    .line 482
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 483
    .line 484
    .line 485
    move-result-object v4

    .line 486
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 487
    .line 488
    .line 489
    move-result v8

    .line 490
    if-eqz v8, :cond_e

    .line 491
    .line 492
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v8

    .line 496
    check-cast v8, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 497
    .line 498
    invoke-virtual {v8, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/TextReportCanvas;)V

    .line 499
    .line 500
    .line 501
    goto :goto_6

    .line 502
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 507
    .line 508
    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    .line 510
    .line 511
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    .line 515
    .line 516
    .line 517
    move-result v2

    .line 518
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    .line 525
    .line 526
    .line 527
    move-result v2

    .line 528
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isDock()Z

    .line 535
    .line 536
    .line 537
    move-result v2

    .line 538
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 546
    .line 547
    .line 548
    goto/16 :goto_b

    .line 549
    .line 550
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .line 554
    .line 555
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v0

    .line 572
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    goto/16 :goto_b

    .line 576
    .line 577
    :cond_10
    const/4 v3, 0x1

    .line 578
    aget-object v2, v2, v3

    .line 579
    .line 580
    const-string v3, "-dump-raw"

    .line 581
    .line 582
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    move-result v2

    .line 586
    if-eqz v2, :cond_18

    .line 587
    .line 588
    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 589
    .line 590
    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    .line 591
    .line 592
    iget v3, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    .line 593
    .line 594
    if-eq v3, v11, :cond_14

    .line 595
    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    .line 597
    .line 598
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v5

    .line 605
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    .line 607
    .line 608
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 625
    .line 626
    .line 627
    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    .line 628
    .line 629
    array-length v2, v0

    .line 630
    new-instance v3, Ljava/lang/StringBuilder;

    .line 631
    .line 632
    const-string v4, "Raw Descriptors "

    .line 633
    .line 634
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    const-string v4, " bytes"

    .line 641
    .line 642
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    move v3, v12

    .line 653
    move v4, v3

    .line 654
    :goto_7
    div-int/lit8 v5, v2, 0x10

    .line 655
    .line 656
    const-string v6, " "

    .line 657
    .line 658
    const-string v7, "0x%02X"

    .line 659
    .line 660
    if-ge v3, v5, :cond_12

    .line 661
    .line 662
    new-instance v5, Ljava/lang/StringBuilder;

    .line 663
    .line 664
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 665
    .line 666
    .line 667
    move v8, v12

    .line 668
    :goto_8
    const/16 v9, 0x10

    .line 669
    .line 670
    if-ge v8, v9, :cond_11

    .line 671
    .line 672
    add-int/lit8 v9, v4, 0x1

    .line 673
    .line 674
    aget-byte v4, v0, v4

    .line 675
    .line 676
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v4

    .line 688
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    add-int/lit8 v8, v8, 0x1

    .line 695
    .line 696
    move v4, v9

    .line 697
    goto :goto_8

    .line 698
    :cond_11
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    add-int/lit8 v3, v3, 0x1

    .line 706
    .line 707
    goto :goto_7

    .line 708
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 709
    .line 710
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 711
    .line 712
    .line 713
    :goto_9
    if-ge v4, v2, :cond_13

    .line 714
    .line 715
    add-int/lit8 v5, v4, 0x1

    .line 716
    .line 717
    aget-byte v4, v0, v4

    .line 718
    .line 719
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 720
    .line 721
    .line 722
    move-result-object v4

    .line 723
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 724
    .line 725
    .line 726
    move-result-object v4

    .line 727
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 728
    .line 729
    .line 730
    move-result-object v4

    .line 731
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    move v4, v5

    .line 738
    goto :goto_9

    .line 739
    :cond_13
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 744
    .line 745
    .line 746
    goto/16 :goto_b

    .line 747
    .line 748
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 749
    .line 750
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    .line 754
    .line 755
    .line 756
    move-result-object v0

    .line 757
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v0

    .line 770
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 771
    .line 772
    .line 773
    goto/16 :goto_b

    .line 774
    .line 775
    :cond_15
    :goto_a
    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 776
    .line 777
    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    .line 778
    .line 779
    iget v3, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    .line 780
    .line 781
    if-eq v3, v11, :cond_16

    .line 782
    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    .line 784
    .line 785
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 786
    .line 787
    .line 788
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v8

    .line 792
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v3

    .line 811
    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 815
    .line 816
    iget-object v0, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    .line 817
    .line 818
    invoke-direct {v3, v2, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 819
    .line 820
    .line 821
    iget-object v0, v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 822
    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    const-string/jumbo v4, "manfacturer:0x"

    .line 826
    .line 827
    .line 828
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 829
    .line 830
    .line 831
    iget v4, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    .line 832
    .line 833
    const-string v8, " product:"

    .line 834
    .line 835
    invoke-static {v4, v2, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 836
    .line 837
    .line 838
    iget v0, v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    .line 839
    .line 840
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 841
    .line 842
    .line 843
    move-result-object v0

    .line 844
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v0

    .line 851
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 852
    .line 853
    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    .line 855
    .line 856
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    .line 860
    .line 861
    .line 862
    move-result v2

    .line 863
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    .line 868
    .line 869
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    .line 870
    .line 871
    .line 872
    move-result v2

    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 874
    .line 875
    .line 876
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isDock()Z

    .line 880
    .line 881
    .line 882
    move-result v2

    .line 883
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v0

    .line 890
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 891
    .line 892
    .line 893
    goto :goto_b

    .line 894
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 895
    .line 896
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    .line 905
    .line 906
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 910
    .line 911
    .line 912
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 913
    .line 914
    .line 915
    move-result-object v0

    .line 916
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 917
    .line 918
    .line 919
    goto :goto_b

    .line 920
    :cond_17
    const-string v0, "No USB Devices have been connected."

    .line 921
    .line 922
    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 923
    .line 924
    .line 925
    :cond_18
    :goto_b
    return-void
.end method

.method public final generateNewUsbDeviceIdentifier()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :cond_0
    const/16 v2, 0xa

    .line 4
    .line 5
    if-le v1, v2, :cond_1

    .line 6
    .line 7
    const-string v1, "UsbHostManager"

    .line 8
    .line 9
    const-string v3, "MIDI unique code array resetting"

    .line 10
    .line 11
    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 17
    .line 18
    .line 19
    move v1, v0

    .line 20
    :cond_1
    const-string v3, ""

    .line 21
    .line 22
    move v4, v0

    .line 23
    :goto_0
    const/4 v5, 0x3

    .line 24
    if-ge v4, v5, :cond_2

    .line 25
    .line 26
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mRandom:Ljava/util/Random;

    .line 31
    .line 32
    invoke-virtual {v5, v2}, Ljava/util/Random;->nextInt(I)I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    .line 57
    .line 58
    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    return-object v3
.end method

.method public final getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object p0

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

.method public final openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserPermissionManager;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .locals 6

    .line 1
    const-string v0, "device "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHostDenyList:[Ljava/lang/String;

    .line 7
    .line 8
    array-length v3, v2

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v4, v3, :cond_1

    .line 11
    .line 12
    aget-object v5, v2, v4

    .line 13
    .line 14
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    if-nez v5, :cond_0

    .line 19
    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 24
    .line 25
    const-string p1, "USB device is on a restricted bus"

    .line 26
    .line 27
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p2, v2, p3, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    monitor-exit v1

    .line 51
    return-object p0

    .line 52
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    new-instance p2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p1, " does not exist or is restricted"

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p0

    .line 75
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p0
.end method

.method public final usbDeviceAdded(Ljava/lang/String;II[B)Z
    .locals 19

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
    const-string v5, "UsbHostManager"

    .line 12
    .line 13
    const-string/jumbo v6, "usbDeviceAdded - start: deviceAddress="

    .line 14
    .line 15
    .line 16
    const-string v7, " deviceClass="

    .line 17
    .line 18
    const-string v8, " deviceSubclass="

    .line 19
    .line 20
    invoke-static {v2, v6, v1, v7, v8}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-static {v5, v6}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v5, v0, Lcom/android/server/usb/UsbHostManager;->mHostDenyList:[Ljava/lang/String;

    .line 35
    .line 36
    array-length v6, v5

    .line 37
    const/4 v7, 0x0

    .line 38
    move v8, v7

    .line 39
    :goto_0
    const/4 v9, 0x1

    .line 40
    if-ge v8, v6, :cond_1

    .line 41
    .line 42
    aget-object v10, v5, v8

    .line 43
    .line 44
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v10

    .line 48
    if-eqz v10, :cond_0

    .line 49
    .line 50
    move v5, v9

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v8, v8, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v5, v7

    .line 56
    :goto_1
    if-eqz v5, :cond_2

    .line 57
    .line 58
    const-string v0, "UsbHostManager"

    .line 59
    .line 60
    const-string v1, "device address is Deny listed"

    .line 61
    .line 62
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    return v7

    .line 66
    :cond_2
    const/16 v5, 0x9

    .line 67
    .line 68
    if-ne v2, v5, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    const/4 v8, 0x3

    .line 76
    if-eqz v6, :cond_4

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    if-ne v2, v8, :cond_5

    .line 80
    .line 81
    if-ne v3, v9, :cond_5

    .line 82
    .line 83
    :goto_2
    const-string v0, "UsbHostManager"

    .line 84
    .line 85
    const-string v1, "device class is deny listed"

    .line 86
    .line 87
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return v7

    .line 91
    :cond_5
    :goto_3
    if-nez v4, :cond_6

    .line 92
    .line 93
    const-string v0, "UsbHostManager"

    .line 94
    .line 95
    const-string v1, "Failed to add device as the descriptor is null"

    .line 96
    .line 97
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return v7

    .line 101
    :cond_6
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 102
    .line 103
    invoke-direct {v3, v1, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 104
    .line 105
    .line 106
    if-nez v2, :cond_e

    .line 107
    .line 108
    iget-object v2, v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    move v6, v7

    .line 115
    :cond_7
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v10

    .line 119
    if-eqz v10, :cond_c

    .line 120
    .line 121
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    check-cast v10, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 126
    .line 127
    instance-of v11, v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 128
    .line 129
    if-nez v11, :cond_8

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_8
    check-cast v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 133
    .line 134
    iget v6, v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbClass:I

    .line 135
    .line 136
    iget v10, v10, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->mUsbSubclass:I

    .line 137
    .line 138
    if-ne v6, v5, :cond_9

    .line 139
    .line 140
    :goto_5
    move v6, v9

    .line 141
    goto :goto_6

    .line 142
    :cond_9
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_b

    .line 147
    .line 148
    :cond_a
    move v6, v7

    .line 149
    goto :goto_6

    .line 150
    :cond_b
    if-ne v6, v8, :cond_a

    .line 151
    .line 152
    if-ne v10, v9, :cond_a

    .line 153
    .line 154
    goto :goto_5

    .line 155
    :goto_6
    if-nez v6, :cond_7

    .line 156
    .line 157
    :cond_c
    if-eqz v6, :cond_d

    .line 158
    .line 159
    const-string v2, "UsbHostManager"

    .line 160
    .line 161
    const-string/jumbo v5, "usb interface class is deny listed"

    .line 162
    .line 163
    .line 164
    invoke-static {v2, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move v2, v7

    .line 168
    goto :goto_7

    .line 169
    :cond_d
    move v2, v9

    .line 170
    :goto_7
    if-nez v2, :cond_e

    .line 171
    .line 172
    return v7

    .line 173
    :cond_e
    iget-object v2, v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 174
    .line 175
    if-eqz v2, :cond_f

    .line 176
    .line 177
    iget v5, v2, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    .line 178
    .line 179
    iget v6, v2, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    .line 180
    .line 181
    iget-byte v8, v2, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    .line 182
    .line 183
    invoke-virtual {v3, v8}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    iget-byte v10, v2, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    .line 188
    .line 189
    invoke-virtual {v3, v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v10

    .line 193
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v11

    .line 197
    iget-byte v2, v2, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialIndex:B

    .line 198
    .line 199
    invoke-virtual {v3, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_f
    const-string v8, "<unknown>"

    .line 204
    .line 205
    move v5, v7

    .line 206
    move v6, v5

    .line 207
    move-object v10, v8

    .line 208
    move-object v11, v10

    .line 209
    :goto_8
    const/16 v2, 0x1d6b

    .line 210
    .line 211
    const/16 v12, 0x8

    .line 212
    .line 213
    if-ne v5, v2, :cond_10

    .line 214
    .line 215
    goto :goto_9

    .line 216
    :cond_10
    invoke-virtual {v3, v9}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    xor-int/2addr v2, v9

    .line 225
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    .line 226
    .line 227
    .line 228
    move-result v13

    .line 229
    invoke-virtual {v3, v12}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 230
    .line 231
    .line 232
    move-result-object v14

    .line 233
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    .line 234
    .line 235
    .line 236
    move-result v14

    .line 237
    xor-int/2addr v14, v9

    .line 238
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v5

    .line 242
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    const-string/jumbo v6, "vidpid %04x:%04x"

    .line 251
    .line 252
    .line 253
    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    const-string v6, "USB device attached: "

    .line 258
    .line 259
    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-static {v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    const-string v6, " mfg/product/ver/serial "

    .line 268
    .line 269
    const-string v15, "/"

    .line 270
    .line 271
    invoke-static {v6, v8, v15, v10, v15}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v8, "/[hidden value]"

    .line 279
    .line 280
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v6

    .line 287
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-static {v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    const-string v6, " hasAudio/HID/Storage: "

    .line 299
    .line 300
    invoke-static {v6, v2, v15, v13, v15}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationGestureHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    const-string v5, "UsbHostManager"

    .line 319
    .line 320
    invoke-static {v5, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    :goto_9
    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 324
    .line 325
    monitor-enter v2

    .line 326
    :try_start_0
    iget-object v5, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    if-eqz v5, :cond_11

    .line 333
    .line 334
    const-string v0, "UsbHostManager"

    .line 335
    .line 336
    new-instance v3, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    .line 340
    .line 341
    const-string v4, "device already on mDevices list: "

    .line 342
    .line 343
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    monitor-exit v2

    .line 357
    return v7

    .line 358
    :catchall_0
    move-exception v0

    .line 359
    goto/16 :goto_e

    .line 360
    .line 361
    :cond_11
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->toAndroidUsbDeviceBuilder()Landroid/hardware/usb/UsbDevice$Builder;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    if-nez v5, :cond_12

    .line 366
    .line 367
    const-string v4, "UsbHostManager"

    .line 368
    .line 369
    const-string v5, "Couldn\'t create UsbDevice object."

    .line 370
    .line 371
    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .line 373
    .line 374
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    .line 375
    .line 376
    .line 377
    move-result-object v3

    .line 378
    const/4 v4, 0x2

    .line 379
    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(ILjava/lang/String;[B)V

    .line 380
    .line 381
    .line 382
    goto/16 :goto_d

    .line 383
    .line 384
    :cond_12
    new-instance v6, Lcom/android/server/usb/UsbSerialReader;

    .line 385
    .line 386
    iget-object v8, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 387
    .line 388
    iget-object v10, v0, Lcom/android/server/usb/UsbHostManager;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 389
    .line 390
    iget-object v11, v5, Landroid/hardware/usb/UsbDevice$Builder;->serialNumber:Ljava/lang/String;

    .line 391
    .line 392
    invoke-direct {v6, v8, v10, v11}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v5, v6}, Landroid/hardware/usb/UsbDevice$Builder;->build(Landroid/hardware/usb/IUsbSerialReader;)Landroid/hardware/usb/UsbDevice;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    iput-object v5, v6, Lcom/android/server/usb/UsbSerialReader;->mDevice:Ljava/lang/Object;

    .line 400
    .line 401
    iget-object v6, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 402
    .line 403
    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    const-string v6, "UsbHostManager"

    .line 407
    .line 408
    new-instance v8, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v10, "Added device "

    .line 414
    .line 415
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v8

    .line 425
    invoke-static {v6, v8}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .line 427
    .line 428
    iget-boolean v6, v0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    .line 429
    .line 430
    if-eqz v6, :cond_14

    .line 431
    .line 432
    iget v6, v0, Lcom/android/server/usb/UsbHostManager;->mCurrentUnlockedUser:I

    .line 433
    .line 434
    const/16 v8, -0x2710

    .line 435
    .line 436
    if-eq v6, v8, :cond_14

    .line 437
    .line 438
    iget-object v6, v0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    .line 439
    .line 440
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :try_start_1
    iget-object v8, v0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    .line 442
    .line 443
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 444
    if-nez v8, :cond_13

    .line 445
    .line 446
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 447
    .line 448
    .line 449
    move-result-object v6

    .line 450
    invoke-virtual {v6, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    .line 451
    .line 452
    .line 453
    goto :goto_a

    .line 454
    :cond_13
    const-string v6, "UsbHostManager"

    .line 455
    .line 456
    const-string/jumbo v10, "usbDeviceConnectionHandler is not null"

    .line 457
    .line 458
    .line 459
    invoke-static {v6, v10}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 463
    .line 464
    .line 465
    move-result-object v6

    .line 466
    invoke-virtual {v6, v5, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    .line 468
    .line 469
    goto :goto_a

    .line 470
    :catchall_1
    move-exception v0

    .line 471
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 472
    :try_start_4
    throw v0

    .line 473
    :cond_14
    :goto_a
    iget-object v6, v0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 474
    .line 475
    invoke-virtual {v6, v1, v5, v3}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 476
    .line 477
    .line 478
    iget-boolean v6, v0, Lcom/android/server/usb/UsbHostManager;->mHasMidiFeature:Z

    .line 479
    .line 480
    if-eqz v6, :cond_18

    .line 481
    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->generateNewUsbDeviceIdentifier()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v6

    .line 486
    new-instance v8, Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .line 490
    .line 491
    const/16 v10, 0x200

    .line 492
    .line 493
    invoke-virtual {v3, v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    .line 494
    .line 495
    .line 496
    move-result-object v10

    .line 497
    invoke-static {v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    .line 498
    .line 499
    .line 500
    move-result v10

    .line 501
    if-eqz v10, :cond_17

    .line 502
    .line 503
    iget-object v10, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 504
    .line 505
    invoke-static {v10, v5, v3, v9, v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    if-eqz v10, :cond_15

    .line 510
    .line 511
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    goto :goto_b

    .line 515
    :cond_15
    const-string v10, "UsbHostManager"

    .line 516
    .line 517
    const-string v11, "Universal Midi Device is null."

    .line 518
    .line 519
    invoke-static {v10, v11}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .line 521
    .line 522
    :goto_b
    const/16 v10, 0x100

    .line 523
    .line 524
    invoke-virtual {v3, v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    .line 525
    .line 526
    .line 527
    move-result-object v10

    .line 528
    invoke-static {v10}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    .line 529
    .line 530
    .line 531
    move-result v10

    .line 532
    if-eqz v10, :cond_17

    .line 533
    .line 534
    iget-object v10, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 535
    .line 536
    invoke-static {v10, v5, v3, v7, v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 537
    .line 538
    .line 539
    move-result-object v6

    .line 540
    if-eqz v6, :cond_16

    .line 541
    .line 542
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    .line 544
    .line 545
    goto :goto_c

    .line 546
    :cond_16
    const-string v6, "UsbHostManager"

    .line 547
    .line 548
    const-string v10, "Legacy Midi Device is null."

    .line 549
    .line 550
    invoke-static {v6, v10}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    :cond_17
    :goto_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 554
    .line 555
    .line 556
    move-result v6

    .line 557
    if-nez v6, :cond_18

    .line 558
    .line 559
    iget-object v6, v0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    .line 560
    .line 561
    invoke-virtual {v6, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    .line 563
    .line 564
    :cond_18
    invoke-virtual {v0, v7, v1, v4}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(ILjava/lang/String;[B)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 568
    .line 569
    .line 570
    move-result v11

    .line 571
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 572
    .line 573
    .line 574
    move-result v0

    .line 575
    invoke-virtual {v3, v9}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 580
    .line 581
    .line 582
    move-result v1

    .line 583
    xor-int/lit8 v13, v1, 0x1

    .line 584
    .line 585
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    .line 586
    .line 587
    .line 588
    move-result v14

    .line 589
    invoke-virtual {v3, v12}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 594
    .line 595
    .line 596
    move-result v1

    .line 597
    xor-int/lit8 v15, v1, 0x1

    .line 598
    .line 599
    const-wide/16 v17, 0x0

    .line 600
    .line 601
    const/16 v10, 0x4d

    .line 602
    .line 603
    const/16 v16, 0x1

    .line 604
    .line 605
    move v12, v0

    .line 606
    invoke-static/range {v10 .. v18}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZZIJ)V

    .line 607
    .line 608
    .line 609
    :goto_d
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 610
    const-string v0, "UsbHostManager"

    .line 611
    .line 612
    const-string/jumbo v1, "usbDeviceAdded - end"

    .line 613
    .line 614
    .line 615
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    return v9

    .line 619
    :goto_e
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 620
    throw v0
.end method

.method public final usbDeviceRemoved(Ljava/lang/String;)V
    .locals 13

    .line 1
    const-string v0, "Removed device at "

    .line 2
    .line 3
    const-string v1, "Removed device at "

    .line 4
    .line 5
    const-string v2, "UsbHostManager"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v4, "usbDeviceRemoved - start: deviceAddress="

    .line 10
    .line 11
    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v2

    .line 28
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Landroid/hardware/usb/UsbDevice;

    .line 35
    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    const-string v0, "UsbHostManager"

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ": "

    .line 49
    .line 50
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 68
    .line 69
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemoved(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbPermissionManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    .line 78
    .line 79
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 102
    .line 103
    if-eqz v1, :cond_0

    .line 104
    .line 105
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto/16 :goto_2

    .line 111
    .line 112
    :cond_1
    const-string v0, "UsbHostManager"

    .line 113
    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    const-string v4, "USB MIDI Devices Removed: "

    .line 120
    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    .line 142
    .line 143
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    .line 148
    .line 149
    const/4 v1, -0x1

    .line 150
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0, v1, p1, v4}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(ILjava/lang/String;[B)V

    .line 152
    .line 153
    .line 154
    if-eqz v0, :cond_4

    .line 155
    .line 156
    new-instance p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 157
    .line 158
    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    .line 159
    .line 160
    invoke-direct {p0, p1, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    .line 164
    .line 165
    .line 166
    move-result v5

    .line 167
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    const/4 p1, 0x1

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    xor-int/lit8 v7, v1, 0x1

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    const/16 v1, 0x8

    .line 187
    .line 188
    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 193
    .line 194
    .line 195
    move-result p0

    .line 196
    xor-int/lit8 v9, p0, 0x1

    .line 197
    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 199
    .line 200
    .line 201
    move-result-wide p0

    .line 202
    iget-wide v0, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    .line 203
    .line 204
    sub-long v11, p0, v0

    .line 205
    .line 206
    const/16 v4, 0x4d

    .line 207
    .line 208
    const/4 v10, 0x0

    .line 209
    invoke-static/range {v4 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZZIJ)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_3
    const-string p0, "UsbHostManager"

    .line 214
    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string p1, " was already gone"

    .line 224
    .line 225
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .line 234
    .line 235
    :cond_4
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    const-string p0, "UsbHostManager"

    .line 237
    .line 238
    const-string/jumbo p1, "usbDeviceRemoved - end"

    .line 239
    .line 240
    .line 241
    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    throw p0
.end method
