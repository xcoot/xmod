.class public final Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final BOOT_IMAGE_STORAGE_REQUIREMENT:J

.field public static final DEFAULT_LOG_DELTA_BYTES:J

.field public static mCautionBytes:J

.field public static mExhaustionBytes:J

.field public static mFullBytes:J

.field public static mFullFileNodes:J

.field public static mLowBytes:J

.field public static mLowFileNodes:J

.field public static mRomTotalBytes:J

.field public static mTotalBytes:J

.field public static mTotalFileNode:J

.field public static mUsableBytes:J

.field public static mUsableFileNode:J

.field public static mWarningBytes:J


# instance fields
.field public final dsm_yuva:Lcom/android/server/storage/DeviceStorageMonitorYuva;

.field public volatile mFnForceLevel:I

.field public final mFnStates:Landroid/util/ArrayMap;

.field public volatile mForceLevel:I

.field public final mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

.field public final mLocalLog:Landroid/util/LocalLog;

.field public final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorService$2;

.field public mNotifManager:Landroid/app/NotificationManager;

.field public final mRemoteService:Lcom/android/server/storage/DeviceStorageMonitorService$3;

.field public final mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mStates:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x40

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    .line 10
    .line 11
    const-wide/16 v1, 0xfa

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    .line 18
    .line 19
    const-wide/16 v0, 0x0

    .line 20
    .line 21
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    .line 22
    .line 23
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    .line 24
    .line 25
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mWarningBytes:J

    .line 26
    .line 27
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCautionBytes:J

    .line 28
    .line 29
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    .line 30
    .line 31
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    .line 32
    .line 33
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 34
    .line 35
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    .line 36
    .line 37
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    .line 38
    .line 39
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    .line 40
    .line 41
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 42
    .line 43
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 14
    .line 15
    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    .line 16
    .line 17
    new-instance v0, Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 23
    .line 24
    new-instance v0, Landroid/util/ArrayMap;

    .line 25
    .line 26
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    .line 30
    .line 31
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorService$2;

    .line 37
    .line 38
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Lcom/android/server/storage/DeviceStorageMonitorService$3;

    .line 44
    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    .line 46
    .line 47
    const-string v1, "DeviceStorageMonitorService"

    .line 48
    .line 49
    const/16 v2, 0xa

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {v1, p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V

    .line 64
    .line 65
    .line 66
    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 67
    .line 68
    new-instance v0, Landroid/util/LocalLog;

    .line 69
    .line 70
    const/16 v1, 0x14

    .line 71
    .line 72
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalLog:Landroid/util/LocalLog;

    .line 76
    .line 77
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;

    .line 78
    .line 79
    invoke-direct {v0, p1}, Lcom/android/server/storage/DeviceStorageMonitorYuva;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->dsm_yuva:Lcom/android/server/storage/DeviceStorageMonitorYuva;

    .line 83
    .line 84
    return-void
.end method

.method public static parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    const-string v2, "-f"

    .line 9
    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    return v0
.end method


# virtual methods
.method public final loge(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "DeviceStorageMonitorService"

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalLog:Landroid/util/LocalLog;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onStart()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Landroid/app/NotificationManager;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/app/NotificationManager;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 14
    .line 15
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 16
    .line 17
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/16 v3, 0x200

    .line 26
    .line 27
    invoke-direct {v1, v2, v3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "android.software.leanback"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 46
    .line 47
    new-instance v2, Landroid/app/NotificationChannel;

    .line 48
    .line 49
    const v3, 0x104045e

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v3, 0x4

    .line 57
    const-string v4, "devicestoragemonitor.tv"

    .line 58
    .line 59
    invoke-direct {v2, v4, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 63
    .line 64
    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Lcom/android/server/storage/DeviceStorageMonitorService$3;

    .line 66
    .line 67
    const-string v1, "devicestoragemonitor"

    .line 68
    .line 69
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 70
    .line 71
    .line 72
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    .line 73
    .line 74
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorService$2;

    .line 75
    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    .line 84
    .line 85
    .line 86
    move-result-wide v0

    .line 87
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    add-long/2addr v2, v0

    .line 96
    invoke-static {v2, v3}, Landroid/os/FileUtils;->roundStorageSize(J)J

    .line 97
    .line 98
    .line 99
    move-result-wide v0

    .line 100
    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRomTotalBytes:J

    .line 101
    .line 102
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .line 103
    .line 104
    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public final updateExhaustionBroadcasts(Landroid/os/storage/VolumeInfo;ZI)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "updateExhaustionBroadcasts("

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ") seq:"

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "DeviceStorageMonitorService"

    .line 27
    .line 28
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/content/Intent;

    .line 32
    .line 33
    const-string v2, "com.samsung.intent.action.DEVICE_STORAGE_EXHAUSTION"

    .line 34
    .line 35
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/high16 v2, 0x4000000

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const/high16 v3, 0x1000000

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string/jumbo v3, "seq"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v4, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v5, "com.samsung.intent.action.DEVICE_STORAGE_NOT_EXHAUSTION"

    .line 60
    .line 61
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    const-string v2, ", mUsableFileNode : "

    .line 73
    .line 74
    const-string/jumbo v3, "mUsableBytes : "

    .line 75
    .line 76
    .line 77
    if-eqz p2, :cond_0

    .line 78
    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p1, ") sending intent : ACTION_DEVICE_STORAGE_EXHAUSTION"

    .line 90
    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 107
    .line 108
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    sget-wide p2, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 115
    .line 116
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 131
    .line 132
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string p1, ") sending intent : ACTION_DEVICE_STORAGE_NOT_EXHAUSTION"

    .line 147
    .line 148
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    sget-wide v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    .line 164
    .line 165
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    sget-wide v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    .line 172
    .line 173
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 188
    .line 189
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {p0, p3, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 197
    .line 198
    .line 199
    :goto_0
    return-void
.end method
