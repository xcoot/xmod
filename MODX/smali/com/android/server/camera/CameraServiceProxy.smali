.class public final Lcom/android/server/camera/CameraServiceProxy;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field public static final NFC_SERVICE_ALLOW_IN_LOCK_SCREEN_LIST:[Ljava/lang/String;

.field public static final NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

.field public static final REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;


# instance fields
.field public final mActiveCameraUsage:Landroid/util/ArrayMap;

.field public final mCameraEventHistory:Ljava/util/List;

.field public final mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy$2;

.field public mCameraServiceRaw:Landroid/hardware/ICameraService;

.field public final mContext:Landroid/content/Context;

.field public mDeviceState:I

.field public final mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

.field public mEnabledCameraUsers:Ljava/util/Set;

.field public final mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public final mHandler:Landroid/os/Handler;

.field public final mIntentReceiver:Lcom/android/server/camera/CameraServiceProxy$1;

.field public mLastReportedDeviceState:I

.field public mLastUser:I

.field public final mLock:Ljava/lang/Object;

.field public final mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final mNfcBlockCameraUsage:Landroid/util/ArrayMap;

.field public final mNotifyNfc:Z

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Binder;

    .line 3
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 6
    const-string/jumbo v5, "com.samsung.android.sead"

    .line 9
    const-string/jumbo v6, "com.samsung.sightcare"

    .line 12
    const-string/jumbo v1, "com.samsung.android.smartface"

    .line 15
    const-string/jumbo v2, "com.samsung.adaptivebrightnessgo"

    .line 18
    const-string/jumbo v3, "com.samsung.android.visionintelligence"

    .line 21
    const-string/jumbo v4, "com.samsung.android.visionarapps"

    .line 24
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "client.pid<"

    .line 33
    filled-new-array {v0}, [Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    sput-object v1, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_IN_LOCK_SCREEN_LIST:[Ljava/lang/String;

    .line 39
    const-string/jumbo v1, "com.samsung.android.sead"

    .line 42
    const-string/jumbo v2, "com.samsung.sightcare"

    .line 45
    const-string/jumbo v3, "com.samsung.android.smartface"

    .line 48
    const-string/jumbo v4, "com.samsung.adaptivebrightnessgo"

    .line 51
    filled-new-array {v3, v4, v0, v1, v2}, [Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/android/server/camera/CameraServiceProxy;->REFRESH_RATE_CONTROL_BLOCK_LIST:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 34
    const/4 v1, 0x1

    .line 35
    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 38
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 40
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 42
    invoke-direct {v2, p0}, Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    .line 45
    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 47
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$1;

    .line 49
    invoke-direct {v2, p0}, Lcom/android/server/camera/CameraServiceProxy$1;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    .line 52
    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Lcom/android/server/camera/CameraServiceProxy$1;

    .line 54
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$2;

    .line 56
    invoke-direct {v2, p0}, Lcom/android/server/camera/CameraServiceProxy$2;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    .line 59
    iput-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy$2;

    .line 61
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 63
    const-string v2, "CameraService_proxy"

    .line 65
    const/4 v3, -0x4

    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-static {v3, v2, v4}, Lcom/android/server/Watchdog$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Z)Lcom/android/server/ServiceThread;

    .line 70
    move-result-object v2

    .line 71
    new-instance v3, Landroid/os/Handler;

    .line 73
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 76
    move-result-object v2

    .line 77
    invoke-direct {v3, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 80
    iput-object v3, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 82
    const-string/jumbo v2, "ro.camera.notify_nfc"

    .line 85
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 88
    move-result v2

    .line 89
    if-lez v2, :cond_0

    .line 91
    move v4, v1

    .line 92
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 94
    const-wide/16 v2, 0x1

    .line 96
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 98
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 104
    new-instance v0, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 106
    new-instance v1, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;

    .line 108
    invoke-direct {v1, p0}, Lcom/android/server/camera/CameraServiceProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/camera/CameraServiceProxy;)V

    .line 111
    invoke-direct {v0, p1, v1}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 114
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 116
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    const-string v0, "CameraService_proxy"

    .line 3
    const-string v1, "Native camera service has died"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 10
    monitor-enter v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 14
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNfcBlockCameraUsage:Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 25
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mActiveCameraUsage:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 30
    iget-boolean v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mNotifyNfc:Z

    .line 32
    if-eqz v2, :cond_0

    .line 34
    if-nez v1, :cond_0

    .line 36
    const-string v1, "CameraService_proxy"

    .line 38
    const-string v2, "Notify nfc service : camera service has died. start polling."

    .line 40
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, v1}, Lcom/android/server/camera/CameraServiceProxy;->notifyNfcService(Z)V

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p0
.end method

.method public final canNotifyToNfcService(Ljava/lang/String;)Z
    .locals 8

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 11
    return v2

    .line 12
    :cond_0
    :try_start_0
    sget-object v3, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_LIST:[Ljava/lang/String;

    .line 14
    array-length v4, v3

    .line 15
    const/4 v5, 0x0

    .line 16
    move v6, v5

    .line 17
    :goto_0
    if-ge v6, v4, :cond_2

    .line 19
    aget-object v7, v3, v6

    .line 21
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v7, :cond_1

    .line 27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    return v5

    .line 31
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    :try_start_1
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 38
    const-class v3, Landroid/app/KeyguardManager;

    .line 40
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Landroid/app/KeyguardManager;

    .line 46
    const/4 v3, -0x2

    .line 47
    invoke-virtual {p0, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_4

    .line 53
    sget-object p0, Lcom/android/server/camera/CameraServiceProxy;->NFC_SERVICE_ALLOW_IN_LOCK_SCREEN_LIST:[Ljava/lang/String;

    .line 55
    array-length v3, p0

    .line 56
    move v4, v5

    .line 57
    :goto_1
    if-ge v4, v3, :cond_4

    .line 59
    aget-object v6, p0, v4

    .line 61
    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    if-eqz v6, :cond_3

    .line 67
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return v5

    .line 71
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 77
    return v2

    .line 78
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 81
    throw p0
.end method

.method public final dumpCameraEvents()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 9
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLogWriterService:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 11
    new-instance v2, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    iget-object v4, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 17
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v3, v2, Lcom/android/server/camera/CameraServiceProxy$EventWriterTask;->mEventList:Ljava/util/List;

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 28
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraEventHistory:Ljava/util/List;

    .line 30
    check-cast v1, Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 39
    move-result-wide v0

    .line 40
    :try_start_1
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p0}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    throw p0

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 56
    throw p0
.end method

.method public final getCameraServiceRawLocked()Landroid/hardware/ICameraService;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-string/jumbo v0, "media.camera"

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 15
    return-object v1

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    invoke-static {v0}, Landroid/hardware/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    const-string p0, "CameraService_proxy"

    .line 29
    const-string v0, "Could not link to death of native camera service"

    .line 31
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-object v1

    .line 35
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 37
    return-object p0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_0

    .line 9
    new-instance p0, Ljava/lang/StringBuilder;

    .line 11
    const-string v0, "CameraServiceProxy error, invalid message: "

    .line 13
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget p1, p1, Landroid/os/Message;->what:I

    .line 18
    const-string v0, "CameraService_proxy"

    .line 20
    invoke-static {p0, p1, v0}, Lcom/android/server/VaultKeeperService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 26
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifyDeviceStateWithRetriesLocked(I)V

    .line 32
    monitor-exit v0

    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    throw p0

    .line 37
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 39
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 41
    monitor-enter v0

    .line 42
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 45
    monitor-exit v0

    .line 46
    :goto_0
    return v1

    .line 47
    :catchall_1
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    throw p0
.end method

.method public final notifyDeviceStateWithRetriesLocked(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDeviceState:I

    .line 3
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_1

    .line 9
    const-string v0, "Could not notify cameraserver, camera service not available."

    .line 11
    const-string v1, "CameraService_proxy"

    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    if-gtz p1, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    const-string v0, "Could not notify camera service of device state change, retrying..."

    .line 21
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 26
    add-int/lit8 p1, p1, -0x1

    .line 28
    const/4 v0, 0x0

    .line 29
    const/4 v1, 0x0

    .line 30
    const/4 v2, 0x2

    .line 31
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 34
    move-result-object p1

    .line 35
    const-wide/16 v0, 0x14

    .line 37
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 40
    return-void

    .line 41
    :cond_1
    iput v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastReportedDeviceState:I

    .line 43
    return-void
.end method

.method public final notifyNfcService(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 3
    const-class v0, Landroid/nfc/NfcManager;

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/nfc/NfcManager;

    .line 11
    const-string v0, "Could not connect to NFC service to notify it of camera state"

    .line 13
    const-string v1, "CameraService_proxy"

    .line 15
    if-nez p0, :cond_0

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    .line 24
    move-result-object p0

    .line 25
    if-nez p0, :cond_1

    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Landroid/nfc/NfcAdapter;->setReaderModePollingEnabled(Z)V

    .line 34
    return-void
.end method

.method public final notifySwitchWithRetriesLocked(I)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/camera/CameraServiceProxy;->getCameraServiceRawLocked()Landroid/hardware/ICameraService;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "CameraService_proxy"

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-nez v1, :cond_1

    .line 16
    const-string v0, "Could not notify cameraserver, camera service not available."

    .line 18
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceRaw:Landroid/hardware/ICameraService;

    .line 24
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 27
    move-result v5

    .line 28
    new-array v5, v5, [I

    .line 30
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v0

    .line 34
    move v6, v3

    .line 35
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_2

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Ljava/lang/Integer;

    .line 47
    add-int/lit8 v8, v6, 0x1

    .line 49
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 52
    move-result v7

    .line 53
    aput v7, v5, v6

    .line 55
    move v6, v8

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {v1, v4, v5}, Landroid/hardware/ICameraService;->notifySystemEvent(I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    move p1, v3

    .line 61
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    const-string v1, "Could not notify cameraserver, remote exception: "

    .line 65
    invoke-static {v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    .line 68
    :goto_1
    if-gtz p1, :cond_3

    .line 70
    return-void

    .line 71
    :cond_3
    const-string v0, "Could not notify camera service of user switch, retrying..."

    .line 73
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 78
    sub-int/2addr p1, v4

    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v4, p1, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 83
    move-result-object p1

    .line 84
    const-wide/16 v0, 0x14

    .line 86
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 89
    return-void
.end method

.method public final onBootPhase(I)V
    .locals 3

    .line 1
    const/16 v0, 0x3e8

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/android/server/camera/CameraStatsJobService;->schedule(Landroid/content/Context;)V

    .line 10
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 16
    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    array-length v1, p1

    .line 22
    if-ge v0, v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mDisplayWindowListener:Lcom/android/server/camera/CameraServiceProxy$DisplayWindowListener;

    .line 26
    aget v2, p1, v0

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    const-string p1, "CameraService_proxy"

    .line 36
    const-string v0, "Failed to register display window listener!"

    .line 38
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 43
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/hardware/devicestate/DeviceStateManager;

    .line 51
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 53
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mHandler:Landroid/os/Handler;

    .line 55
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 58
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    .line 60
    invoke-virtual {p1, v0, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    .line 63
    :cond_1
    return-void
.end method

.method public final onStart()V
    .locals 5

    .line 1
    const-string v0, "CameraService_proxy"

    .line 3
    const-string v1, "CameraServiceProxy is started."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const-string v0, "android.intent.action.USER_ADDED"

    .line 20
    const-string v1, "android.intent.action.USER_REMOVED"

    .line 22
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    .line 24
    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 26
    const-string v4, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 28
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 31
    move-result-object v0

    .line 32
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 44
    iget-object v2, p0, Lcom/android/server/camera/CameraServiceProxy;->mIntentReceiver:Lcom/android/server/camera/CameraServiceProxy$1;

    .line 46
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 49
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mCameraServiceProxy:Lcom/android/server/camera/CameraServiceProxy$2;

    .line 51
    const-string/jumbo v1, "media.camera.proxy"

    .line 54
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 57
    const-class v0, Lcom/android/server/camera/CameraServiceProxy;

    .line 59
    invoke-virtual {p0, v0, p0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 62
    return-void

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 65
    const-string v0, "UserManagerService must start before CameraServiceProxy!"

    .line 67
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    throw p0
.end method

.method public final onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 6
    if-nez v1, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 7
    move-result p2

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/server/camera/CameraServiceProxy;->switchUserLocked(I)V

    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public final switchUserLocked(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mUserManager:Landroid/os/UserManager;

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/ArraySet;

    .line 9
    array-length v2, v0

    .line 10
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 13
    array-length v2, v0

    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    if-ge v4, v2, :cond_0

    .line 18
    aget v5, v0, v4

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v5

    .line 24
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v4, v4, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraHsumPermission()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 47
    move-result-object v0

    .line 48
    const-string v2, "android.hardware.type.automotive"

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_1
    iput p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mLastUser:I

    .line 65
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 67
    if-eqz p1, :cond_2

    .line 69
    invoke-interface {p1, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_3

    .line 75
    :cond_2
    iput-object v1, p0, Lcom/android/server/camera/CameraServiceProxy;->mEnabledCameraUsers:Ljava/util/Set;

    .line 77
    const/16 p1, 0x3c

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->notifySwitchWithRetriesLocked(I)V

    .line 82
    :cond_3
    return-void
.end method
