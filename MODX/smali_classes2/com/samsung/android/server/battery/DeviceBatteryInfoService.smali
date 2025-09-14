.class public final Lcom/samsung/android/server/battery/DeviceBatteryInfoService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mAodObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

.field public final mBatteryInfos:Ljava/util/HashMap;

.field public final mBatteryInfosLock:Ljava/lang/Object;

.field public mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

.field public mBroadcastHandler:Landroid/os/Handler;

.field public mBroadcastHandlerThread:Landroid/os/HandlerThread;

.field public mContext:Landroid/content/Context;

.field public mDeviceNameObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

.field public final mRegisteredPackage:Ljava/util/List;

.field public final mRegisteredPackageLock:Ljava/lang/Object;

.field public final mRequirePermissions:[Ljava/lang/String;

.field public mUncaughtExceptionOccurred:Z

.field public mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

.field public final packageAddressMap:Ljava/util/HashMap;

.field public final packageReceiverMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBluetoothDeviceBatteryManager:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 24
    .line 25
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 26
    .line 27
    const-string v2, "com.samsung.android.permission.SEM_BATTERY_INFO"

    .line 28
    .line 29
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRequirePermissions:[Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/Object;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackageLock:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mDeviceNameObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    .line 50
    .line 51
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mUncaughtExceptionOccurred:Z

    .line 55
    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mAodObserver:Lcom/samsung/android/server/battery/DeviceBatteryInfoService$3;

    .line 57
    .line 58
    new-instance v0, Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageAddressMap:Ljava/util/HashMap;

    .line 64
    .line 65
    new-instance v0, Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->packageReceiverMap:Ljava/util/HashMap;

    .line 71
    .line 72
    return-void
.end method

.method public static printBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Name : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getDeviceName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " / BatteryLevel : "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryLevel()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, " / Status : "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->getBatteryStatus()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v0, "DeviceBatteryInfoService"

    .line 44
    .line 45
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final addBatteryInfo(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "DeviceBatteryInfoService"

    .line 4
    .line 5
    const-string p1, "addBatteryInfo : address is null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_ADDED"

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    throw p0
.end method

.method public final addPhoneBatteryInfo()V
    .locals 5

    .line 1
    const-string v0, "DeviceBatteryInfoService"

    .line 2
    .line 3
    const-string v1, "addPhoneBatteryInfo"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "device_name"

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Landroid/content/IntentFilter;

    .line 21
    .line 22
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 23
    .line 24
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "level"

    .line 35
    .line 36
    const/4 v3, -0x1

    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    const-string/jumbo v4, "status"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    new-instance v3, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 49
    .line 50
    invoke-direct {v3}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v4, "00:00:00:00:00:00"

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setAddress(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceName(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    invoke-virtual {v3, v0}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setDeviceType(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v2}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryLevel(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;->setBatteryStatus(I)V

    .line 69
    .line 70
    .line 71
    iput-object v3, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mPhoneBatteryInfo:Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    .line 74
    .line 75
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 77
    .line 78
    const-string v1, "00:00:00:00:00:00"

    .line 79
    .line 80
    invoke-virtual {p0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    const-string v0, "DeviceBatteryInfoService"

    .line 90
    .line 91
    const-string v1, "exception occurred : "

    .line 92
    .line 93
    invoke-static {p0, v1, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method

.method public final containsBatteryInfo(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "DeviceBatteryInfoService"

    .line 4
    .line 5
    const-string p1, "containsBatteryInfo : address is null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Companion Device Baterry Infos: "

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 23
    .line 24
    new-instance v2, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda2;

    .line 25
    .line 26
    invoke-direct {v2, p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mUncaughtExceptionOccurred:Z

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 41
    .line 42
    .line 43
    const-string v0, "UncaughtException occurred in sembatteryservice-handler"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mWatchBatteryManager:Lcom/samsung/android/server/battery/WatchBatteryManager;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    throw p0
.end method

.method public final getDeviceBatteryInfo(Ljava/lang/String;)Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->requirePermissions()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p0, "DeviceBatteryInfoService"

    .line 7
    .line 8
    const-string p1, "getDeviceBatteryInfo : address is null"

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const-string v0, "DeviceBatteryInfoService"

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string/jumbo v2, "semGetBatteryInfo() : "

    .line 20
    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoUtil;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    check-cast p0, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 49
    .line 50
    monitor-exit v0

    .line 51
    return-object p0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method

.method public final removeBatteryInfo(Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "DeviceBatteryInfoService"

    .line 4
    .line 5
    const-string/jumbo p1, "removeBatteryInfo : address is null"

    .line 6
    .line 7
    .line 8
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfosLock:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mBatteryInfos:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const/4 p1, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    const-string p1, "com.samsung.battery.ACTION_BATTERY_INFO_REMOVED"

    .line 45
    .line 46
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    throw p0
.end method

.method public final removeInfoOnPackageChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "DeviceBatteryInfoService"

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->containsBatteryInfo(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string p0, "device is not exist"

    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v1, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-direct {v1, p0, p2, p1, v2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/server/battery/DeviceBatteryInfoService;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const-string p0, "address is null"

    .line 30
    .line 31
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final requirePermissions()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.BLUETOOTH_CONNECT"

    .line 4
    .line 5
    const-string v2, "Permission Require"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    const-string v0, "com.samsung.android.permission.SEM_BATTERY_INFO"

    .line 13
    .line 14
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final sendBroadcast(Ljava/lang/String;Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackageLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRegisteredPackage:Ljava/util/List;

    .line 5
    .line 6
    check-cast v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    .line 25
    .line 26
    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string v4, "com.samsung.battery.EXTRA_BATTERY_INFO"

    .line 33
    .line 34
    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    const/high16 v4, 0x1000000

    .line 38
    .line 39
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const/high16 v4, 0x10000000

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    iget-object v4, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mContext:Landroid/content/Context;

    .line 48
    .line 49
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 50
    .line 51
    iget-object v6, p0, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->mRequirePermissions:[Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v3, "DeviceBatteryInfoService"

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v5, "sendBroadcast : action : "

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v5, " / package : "

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    invoke-static {p2}, Lcom/samsung/android/server/battery/DeviceBatteryInfoService;->printBatteryInfo(Lcom/samsung/android/os/SemCompanionDeviceBatteryInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    goto :goto_1

    .line 93
    :catch_0
    move-exception v2

    .line 94
    :try_start_2
    const-string v3, "DeviceBatteryInfoService"

    .line 95
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v5, "Exception occurred : "

    .line 102
    .line 103
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    monitor-exit v0

    .line 118
    return-void

    .line 119
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    throw p0
.end method
