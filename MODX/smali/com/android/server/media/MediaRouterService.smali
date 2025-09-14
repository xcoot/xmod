.class public final Lcom/android/server/media/MediaRouterService;
.super Landroid/media/IMediaRouterService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

.field public final mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

.field public final mAllClientRecords:Landroid/util/ArrayMap;

.field public final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field public mAudioRouteMainType:I

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mBluetoothA2dpRouteId:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mCurrentActiveUserId:I

.field public final mDefaultAudioRouteId:Ljava/lang/String;

.field public mForceBluetoothA2dpOn:Z

.field public mGlobalBluetoothA2dpOn:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mLooper:Landroid/os/Looper;

.field public final mReceiver:Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;

.field public final mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserRecords:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Landroid/media/IMediaRouterService$Stub;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Landroid/util/ArrayMap;

    .line 20
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    .line 28
    new-instance v0, Landroid/util/IntArray;

    .line 30
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    .line 35
    new-instance v0, Landroid/util/IntArray;

    .line 37
    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    .line 42
    new-instance v0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;

    .line 44
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;-><init>(Lcom/android/server/media/MediaRouterService;)V

    .line 47
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;

    .line 49
    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 52
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    .line 56
    invoke-static {}, Lcom/android/media/flags/Flags;->enableMr2ServiceNonMainBgThread()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    .line 64
    const-string v1, "MediaRouterServiceThread"

    .line 66
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLooper:Landroid/os/Looper;

    .line 78
    goto :goto_0

    .line 79
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLooper:Landroid/os/Looper;

    .line 85
    :goto_0
    new-instance v0, Landroid/os/Handler;

    .line 87
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mLooper:Landroid/os/Looper;

    .line 89
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    .line 94
    new-instance v1, Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 96
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLooper:Landroid/os/Looper;

    .line 98
    invoke-direct {v1, p1, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 101
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 103
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 105
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v1

    .line 116
    const v2, 0x1040443

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    iput-object v2, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    .line 125
    const v2, 0x1040245

    .line 128
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mBluetoothA2dpRouteId:Ljava/lang/String;

    .line 134
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    .line 136
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    .line 142
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 144
    const-string v1, "audio"

    .line 146
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 149
    move-result-object v1

    .line 150
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 153
    move-result-object v1

    .line 154
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    .line 156
    invoke-static {p1}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 159
    move-result-object v2

    .line 160
    iput-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 162
    new-instance v3, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;

    .line 164
    invoke-direct {v3, p0}, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;-><init>(Lcom/android/server/media/MediaRouterService;)V

    .line 167
    invoke-virtual {v2, v3, v0}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 170
    :try_start_0
    new-instance v0, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;

    .line 172
    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;-><init>(Lcom/android/server/media/MediaRouterService;)V

    .line 175
    invoke-interface {v1, v0}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_1

    .line 179
    :catch_0
    const-string v0, "MediaRouterService"

    .line 181
    const-string v1, "RemoteException in the audio service."

    .line 183
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_1
    new-instance v5, Landroid/content/IntentFilter;

    .line 188
    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 190
    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;

    .line 195
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 197
    const/4 v6, 0x0

    .line 198
    const/4 v7, 0x0

    .line 199
    move-object v2, p1

    .line 200
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 203
    return-void
.end method


# virtual methods
.method public final deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "manager must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    const-string/jumbo v0, "route must not be null"

    .line 21
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 34
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
.end method

.method public final deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "router must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v0, "route must not be null"

    .line 15
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 34
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
.end method

.method public final disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 3
    iget v1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 8
    move-result v0

    .line 9
    iget v2, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    .line 11
    if-ne v0, v2, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    const-string p1, ": Disposed"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    const-string v0, "MediaRouterService"

    .line 41
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 46
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 49
    :cond_1
    :goto_0
    return-void
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "MediaRouterService"

    .line 5
    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    const-string p1, "MEDIA ROUTER SERVICE (dumpsys media_router)"

    .line 14
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 20
    const-string p1, "Global state"

    .line 22
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    const-string p3, "  mCurrentUserId="

    .line 29
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    iget p3, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    .line 34
    invoke-static {p1, p3, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;)V

    .line 37
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 39
    monitor-enter p1

    .line 40
    :try_start_0
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 42
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    .line 45
    move-result p3

    .line 46
    const/4 v0, 0x0

    .line 47
    move v1, v0

    .line 48
    :goto_0
    if-ge v1, p3, :cond_1

    .line 50
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 58
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 61
    invoke-virtual {v2, p2}, Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto/16 :goto_3

    .line 70
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 74
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    const-string p1, "MediaRouter2ServiceImpl"

    .line 81
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    const-string p1, "  "

    .line 86
    iget-object p3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 88
    monitor-enter p3

    .line 89
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string/jumbo v2, "mNextRouterOrManagerId="

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mNextRouterOrManagerId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 108
    move-result v2

    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v2, "mCurrentActiveUserId="

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentActiveUserId:I

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v2, "UserRecords:"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 170
    move-result v1

    .line 171
    if-lez v1, :cond_2

    .line 173
    :goto_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 175
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 178
    move-result v1

    .line 179
    if-ge v0, v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 183
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 186
    move-result-object v1

    .line 187
    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v3, "  "

    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v2

    .line 206
    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 209
    add-int/lit8 v0, v0, 0x1

    .line 211
    goto :goto_1

    .line 212
    :catchall_1
    move-exception p0

    .line 213
    goto :goto_2

    .line 214
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string p1, "  <no user records>"

    .line 224
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    move-result-object p0

    .line 231
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    :cond_3
    monitor-exit p3

    .line 235
    return-void

    .line 236
    :goto_2
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 237
    throw p0

    .line 238
    :goto_3
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    throw p0
.end method

.method public final getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "manager must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getRemoteSessionsLocked(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    .line 22
    move-result-object p0

    .line 23
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    return-object p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    throw p0
.end method

.method public final getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 10
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 20
    const/4 p1, 0x0

    .line 21
    if-eqz p0, :cond_0

    .line 23
    iget-boolean v3, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    .line 25
    if-eqz v3, :cond_0

    .line 27
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 29
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    .line 31
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    return-object p1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 39
    :catchall_1
    move-exception p0

    .line 40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    throw p0
.end method

.method public final getSystemRoutes(Ljava/lang/String;Z)Ljava/util/List;
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService;->validatePackageName$1(ILjava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_6

    .line 11
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v0

    .line 20
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 23
    move-result v1

    .line 24
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-nez p2, :cond_2

    .line 36
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 38
    const-string p2, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 40
    invoke-virtual {p1, p2, v1, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkCallerHasBluetoothPermissions(II)Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 53
    :cond_1
    :goto_0
    move v3, v4

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaContentControlPermission(II)Z

    .line 58
    move-result p2

    .line 59
    if-nez p2, :cond_1

    .line 61
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaRoutingControlPermission(IILjava/lang/String;)Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 71
    move-result-wide p1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 74
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getOrCreateUserRecordLocked(I)Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 78
    move-result-object p0

    .line 79
    if-eqz v3, :cond_5

    .line 81
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 83
    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 85
    iget-object v1, v1, Lcom/android/server/media/MediaRoute2Provider;->mProviderInfo:Landroid/media/MediaRoute2ProviderInfo;

    .line 87
    if-eqz v1, :cond_4

    .line 89
    invoke-virtual {v1}, Landroid/media/MediaRoute2ProviderInfo;->getRoutes()Ljava/util/Collection;

    .line 92
    move-result-object p0

    .line 93
    goto :goto_3

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_4

    .line 96
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 99
    move-result-object v1

    .line 100
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 102
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 104
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 106
    invoke-interface {v1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 112
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 117
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->mSystemProvider:Lcom/android/server/media/SystemMediaRoute2Provider;

    .line 119
    iget-object p0, p0, Lcom/android/server/media/SystemMediaRoute2Provider;->mDefaultRoute:Landroid/media/MediaRoute2Info;

    .line 121
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :goto_2
    move-object p0, v1

    .line 125
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    .line 128
    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    return-object v0

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    goto :goto_5

    .line 137
    :goto_4
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    :goto_5
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    throw p0

    .line 143
    :cond_6
    new-instance p0, Ljava/lang/SecurityException;

    .line 145
    const-string/jumbo p1, "callerPackageName does not match calling uid."

    .line 148
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p0
.end method

.method public final getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getSystemSessionInfo(Ljava/lang/String;Ljava/lang/String;Z)Landroid/media/RoutingSessionInfo;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final getSystemSessionInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService;->validatePackageName$1(ILjava/lang/String;)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 24
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 30
    if-eqz v1, :cond_0

    .line 32
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v1

    .line 45
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_2

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 57
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    .line 59
    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    .line 67
    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_1

    .line 75
    const/4 v1, 0x1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 v1, 0x0

    .line 78
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 81
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getSystemSessionInfo(Ljava/lang/String;Ljava/lang/String;Z)Landroid/media/RoutingSessionInfo;

    .line 84
    move-result-object p0

    .line 85
    return-object p0

    .line 86
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p0

    .line 88
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 90
    const-string/jumbo p1, "callerPackageName does not match calling uid."

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 96
    throw p0
.end method

.method public final isPlaybackActive(Landroid/media/IMediaRouterClient;)Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 10
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 20
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21
    if-eqz p1, :cond_0

    .line 23
    :try_start_2
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 25
    iget p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUid:I

    .line 27
    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    .line 30
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    return p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    const/4 p0, 0x0

    .line 41
    return p0

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    throw p0
.end method

.method public final monitor()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
.end method

.method public final registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v7

    .line 5
    invoke-virtual {p0, v7, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName$1(ILjava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 14
    move-result v8

    .line 15
    const/4 v4, 0x1

    .line 16
    const-string/jumbo v5, "registerClientAsUser"

    .line 19
    const/4 v3, 0x0

    .line 20
    move v0, v8

    .line 21
    move v1, v7

    .line 22
    move v2, p3

    .line 23
    move-object v6, p2

    .line 24
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 27
    move-result v5

    .line 28
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 30
    const-string v0, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 32
    invoke-virtual {p3, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 35
    move-result p3

    .line 36
    if-nez p3, :cond_0

    .line 38
    const/4 p3, 0x1

    .line 39
    :goto_0
    move v6, p3

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    const/4 p3, 0x0

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 46
    move-result-wide v9

    .line 47
    :try_start_0
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 49
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    move-object v0, p0

    .line 51
    move-object v1, p1

    .line 52
    move v2, v7

    .line 53
    move v3, v8

    .line 54
    move-object v4, p2

    .line 55
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaRouterService;->registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V

    .line 58
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    throw p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 73
    const-string/jumbo p1, "packageName must match the calling uid"

    .line 76
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 79
    throw p0
.end method

.method public final registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 3
    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string p0, "MediaRouterService"

    .line 13
    const-string p1, "Ignoring client group request because the client doesn\'t have the CONFIGURE_WIFI_DISPLAY permission."

    .line 15
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    move-result-wide v0

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 25
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterService;->registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V

    .line 29
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    :catchall_1
    move-exception p0

    .line 38
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 41
    throw p0
.end method

.method public final registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 13
    if-nez p0, :cond_0

    .line 15
    const-string p0, "MediaRouterService"

    .line 17
    const-string p1, "Ignoring group id register request of a unregistered client."

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 25
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 34
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 36
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p1, v0, p0}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 41
    :cond_2
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 43
    if-eqz p2, :cond_4

    .line 45
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    .line 47
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 53
    if-nez v0, :cond_3

    .line 55
    new-instance v0, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 57
    invoke-direct {v0}, Lcom/android/server/media/MediaRouterService$ClientGroup;-><init>()V

    .line 60
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    .line 62
    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_3
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    .line 67
    check-cast v0, Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 74
    const/16 p1, 0xa

    .line 76
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 83
    :cond_4
    return-void
.end method

.method public final registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v9, p5

    .line 5
    invoke-interface/range {p1 .. p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 8
    move-result-object v10

    .line 9
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 11
    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 17
    if-nez v1, :cond_2

    .line 19
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 21
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 27
    const/4 v11, 0x1

    .line 28
    const/4 v12, 0x0

    .line 29
    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 33
    invoke-direct {v1, v0, v9}, Lcom/android/server/media/MediaRouterService$UserRecord;-><init>(Lcom/android/server/media/MediaRouterService;I)V

    .line 36
    move-object v13, v1

    .line 37
    move v14, v11

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v13, v1

    .line 40
    move v14, v12

    .line 41
    :goto_0
    new-instance v15, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 43
    move-object v1, v15

    .line 44
    move-object/from16 v2, p0

    .line 46
    move-object v3, v13

    .line 47
    move-object/from16 v4, p1

    .line 49
    move/from16 v5, p2

    .line 51
    move/from16 v6, p3

    .line 53
    move-object/from16 v7, p4

    .line 55
    move/from16 v8, p6

    .line 57
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaRouterService$ClientRecord;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/media/IMediaRouterClient;IILjava/lang/String;Z)V

    .line 60
    :try_start_0
    invoke-interface {v10, v15, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const-string v1, "MediaRouterService"

    .line 65
    if-eqz v14, :cond_1

    .line 67
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 69
    invoke-virtual {v2, v9, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v3, ": Initialized"

    .line 82
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, v0, Lcom/android/server/media/MediaRouterService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 94
    iget v3, v13, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    .line 96
    invoke-virtual {v2, v3}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 99
    move-result v2

    .line 100
    iget v3, v0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    .line 102
    if-ne v2, v3, :cond_1

    .line 104
    iget-object v2, v13, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 106
    invoke-virtual {v2, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    :cond_1
    iget-object v2, v13, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 116
    invoke-virtual {v0, v10, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, ": Registered"

    .line 129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 136
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    move-object v1, v0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    .line 144
    const-string v2, "Media router client died prematurely."

    .line 146
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    throw v0

    .line 150
    :cond_2
    :goto_1
    return-void
.end method

.method public final registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName$1(ILjava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string/jumbo p0, "manager must not be null"

    .line 19
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    move-result v3

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 35
    move-result v4

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v1, v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaContentControlPermission(II)Z

    .line 43
    move-result p0

    .line 44
    if-eqz p0, :cond_0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1, v3, v4, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaRoutingControlPermission(IILjava/lang/String;)Z

    .line 50
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 53
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 56
    move-result-wide v8

    .line 57
    :try_start_0
    iget-object p0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 59
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    const/4 v6, 0x0

    .line 61
    move-object v2, p1

    .line 62
    move-object v5, p2

    .line 63
    :try_start_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerManagerLocked(Landroid/media/IMediaRouter2Manager;IILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 66
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 74
    :catchall_1
    move-exception p0

    .line 75
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 78
    throw p0

    .line 79
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 81
    const-string p1, "Must hold MEDIA_CONTENT_CONTROL or MEDIA_ROUTING_CONTROL permissions."

    .line 83
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 86
    throw p0

    .line 87
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 89
    const-string/jumbo p1, "callerPackageName must not be empty"

    .line 92
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p0

    .line 96
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 98
    const-string/jumbo p1, "callerPackageName must match the calling uid"

    .line 101
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 104
    throw p0
.end method

.method public final registerProxyRouter(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName$1(ILjava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string/jumbo p0, "targetPackageName does not exist: "

    .line 19
    const-string/jumbo v0, "manager must not be null"

    .line 22
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    const-string/jumbo v0, "targetUser must not be null"

    .line 28
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_3

    .line 37
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 40
    move-result v3

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 44
    move-result v4

    .line 45
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 48
    move-result-wide v8

    .line 49
    :try_start_0
    invoke-virtual {v1, v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaContentControlPermission(II)Z

    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {v1, v3, v4, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaRoutingControlPermission(IILjava/lang/String;)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 62
    :goto_0
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 65
    move-result v0

    .line 66
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 69
    move-result v2

    .line 70
    if-eq v2, v0, :cond_1

    .line 72
    iget-object v0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 74
    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 76
    const-string v5, "Must hold INTERACT_ACROSS_USERS_FULL to control an app in a different userId."

    .line 78
    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    move-result-object v0

    .line 87
    const-wide/16 v5, 0x0

    .line 89
    invoke-static {v5, v6}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 96
    move-result v5

    .line 97
    invoke-virtual {v0, p3, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    :try_start_2
    iget-object p0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 102
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    move-object v2, p1

    .line 104
    move-object v5, p2

    .line 105
    move-object v6, p3

    .line 106
    move-object v7, p4

    .line 107
    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerManagerLocked(Landroid/media/IMediaRouter2Manager;IILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 110
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p1

    .line 116
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    :try_start_5
    throw p1

    .line 118
    :catchall_1
    move-exception p0

    .line 119
    goto :goto_1

    .line 120
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {p2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p0

    .line 134
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    throw p1

    .line 138
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    .line 140
    const-string p1, "Must hold MEDIA_CONTENT_CONTROL or MEDIA_ROUTING_CONTROL permissions."

    .line 142
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 145
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 146
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw p0

    .line 150
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 152
    const-string/jumbo p1, "targetPackageName must not be empty"

    .line 155
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 158
    throw p0

    .line 159
    :cond_4
    new-instance p0, Ljava/lang/SecurityException;

    .line 161
    const-string/jumbo p1, "callerPackageName must match the calling uid"

    .line 164
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 167
    throw p0
.end method

.method public final registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .locals 13

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName$1(ILjava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string/jumbo p0, "router must not be null"

    .line 19
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    move-result p0

    .line 26
    if-nez p0, :cond_2

    .line 28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 31
    move-result v3

    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 35
    move-result v4

    .line 36
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 43
    move-result v6

    .line 44
    iget-object p0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 46
    const-string v0, "android.permission.CONFIGURE_WIFI_DISPLAY"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 51
    move-result p0

    .line 52
    const/4 v0, 0x0

    .line 53
    const/4 v2, 0x1

    .line 54
    if-nez p0, :cond_0

    .line 56
    move v7, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v7, v0

    .line 59
    :goto_0
    iget-object p0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 61
    const-string v5, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 63
    invoke-virtual {p0, v5, v4, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 66
    move-result p0

    .line 67
    if-nez p0, :cond_1

    .line 69
    move v8, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move v8, v0

    .line 72
    :goto_1
    invoke-virtual {v1, v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaContentControlPermission(II)Z

    .line 75
    move-result v9

    .line 76
    invoke-virtual {v1, v3, v4, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->checkMediaRoutingControlPermission(IILjava/lang/String;)Z

    .line 79
    move-result v10

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 83
    move-result-wide v11

    .line 84
    :try_start_0
    iget-object p0, v1, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 86
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 87
    move-object v2, p1

    .line 88
    move-object v5, p2

    .line 89
    :try_start_1
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerRouter2Locked(Landroid/media/IMediaRouter2;IILjava/lang/String;IZZZZ)V

    .line 92
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    return-void

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    throw p0

    .line 105
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 107
    const-string/jumbo p1, "packageName must not be empty"

    .line 110
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 113
    throw p0

    .line 114
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 116
    const-string/jumbo p1, "packageName must match the calling uid"

    .line 119
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p0
.end method

.method public final releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "manager must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V

    .line 28
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
.end method

.method public final releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "router must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    .line 28
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
.end method

.method public final requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo p0, "manager must not be null"

    .line 9
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    const-string/jumbo p0, "oldSession must not be null"

    .line 15
    invoke-static {p3, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    const-string/jumbo p0, "route must not be null"

    .line 21
    invoke-static {p4, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 30
    move-result-wide v7

    .line 31
    :try_start_0
    iget-object p0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 33
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    move-object v1, p1

    .line 35
    move v2, p2

    .line 36
    move-object v3, p3

    .line 37
    move-object v4, p4

    .line 38
    move-object v5, p5

    .line 39
    move-object v6, p6

    .line 40
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 43
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 51
    :catchall_1
    move-exception p0

    .line 52
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    throw p0
.end method

.method public final requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    const-string/jumbo v1, "router must not be null"

    .line 10
    move-object v2, p1

    .line 11
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    const-string/jumbo v1, "oldSession must not be null"

    .line 17
    move-object/from16 v5, p5

    .line 19
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    const-string/jumbo v1, "route must not be null"

    .line 25
    move-object/from16 v6, p6

    .line 27
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    move-result-wide v8

    .line 34
    :try_start_0
    iget-object v10, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 36
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    move-object v1, p1

    .line 38
    move v2, p2

    .line 39
    move-wide v3, p3

    .line 40
    move-object/from16 v5, p5

    .line 42
    move-object/from16 v6, p6

    .line 44
    move-object/from16 v7, p7

    .line 46
    :try_start_1
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithRouter2Locked(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/os/Bundle;)V

    .line 49
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    :catchall_1
    move-exception v0

    .line 58
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 61
    throw v0
.end method

.method public final requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "routeId must not be null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 30
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 32
    const/4 p1, 0x6

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, p1, p3, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 41
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    throw p0
.end method

.method public final requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .locals 4

    .line 1
    const-string/jumbo v0, "routeId must not be null"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 10
    move-result-wide v0

    .line 11
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 17
    move-result-object p1

    .line 18
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 26
    if-eqz p0, :cond_0

    .line 28
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 30
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 32
    const/4 p1, 0x7

    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, p1, p3, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 41
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    throw p0
.end method

.method public final restoreBluetoothA2dp()V
    .locals 5

    .line 1
    const-string/jumbo v0, "restoreBluetoothA2dp("

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 9
    const/4 v3, 0x0

    .line 10
    if-nez v2, :cond_1

    .line 12
    iget-boolean v2, p0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    .line 14
    if-eqz v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v3

    .line 18
    goto :goto_1

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 22
    :goto_1
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 24
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-eqz v4, :cond_2

    .line 27
    :try_start_2
    const-string v1, "MediaRouterService"

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ")"

    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    .line 51
    invoke-interface {p0, v2}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 57
    monitor-enter v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/media/MediaRouterService;->mForceBluetoothA2dpOn:Z

    .line 60
    monitor-exit v0

    .line 61
    goto :goto_3

    .line 62
    :catchall_1
    move-exception p0

    .line 63
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :try_start_4
    throw p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    :goto_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 66
    :try_start_6
    throw p0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 67
    :catch_0
    const-string p0, "MediaRouterService"

    .line 69
    const-string v0, "RemoteException while calling setBluetoothA2dpOn."

    .line 71
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_3
    return-void
.end method

.method public final selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "manager must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    const-string/jumbo v0, "route must not be null"

    .line 21
    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 34
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
.end method

.method public final selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "router must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v0, "route must not be null"

    .line 15
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 34
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
.end method

.method public final setBluetoothA2dpOn(Landroid/media/IMediaRouterClient;Z)V
    .locals 3

    .line 1
    const-string v0, "RemoteException while calling setBluetoothA2dpOn. on="

    .line 3
    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 8
    move-result-wide v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    .line 11
    invoke-interface {p0, p2}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    goto :goto_1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_2

    .line 20
    :catch_0
    :try_start_1
    const-string p0, "MediaRouterService"

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    goto :goto_0

    .line 38
    :goto_1
    return-void

    .line 39
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    throw p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    const-string/jumbo p1, "client must not be null"

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
.end method

.method public final setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V

    .line 11
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :catchall_1
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V
    .locals 1

    .line 1
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 13
    if-eqz p0, :cond_2

    .line 15
    iget-boolean p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    .line 17
    if-nez p1, :cond_0

    .line 19
    and-int/lit8 p2, p2, -0x5

    .line 21
    :cond_0
    iget p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 23
    if-ne p1, p2, :cond_1

    .line 25
    iget-boolean p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 27
    if-eq p1, p3, :cond_2

    .line 29
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    const-string v0, ": Set discovery request, routeTypes=0x"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v0, ", activeScan="

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    const-string v0, "MediaRouterService"

    .line 63
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput p2, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 68
    iput-boolean p3, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 70
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 72
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 74
    const/4 p1, 0x3

    .line 75
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 78
    :cond_2
    return-void
.end method

.method public final setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "router must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v0, "preference must not be null"

    .line 15
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 27
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 37
    if-nez p0, :cond_0

    .line 39
    const-string p0, "MR2ServiceImpl"

    .line 41
    const-string p1, "Ignoring updating discoveryRequest of null routerRecord."

    .line 43
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_2

    .line 53
    :cond_0
    :try_start_2
    invoke-static {p0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setDiscoveryRequestWithRouter2Locked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteDiscoveryPreference;)V

    .line 56
    monitor-exit v2

    .line 57
    goto :goto_0

    .line 58
    :goto_1
    return-void

    .line 59
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 61
    :catchall_1
    move-exception p0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 65
    throw p0
.end method

.method public final setRouteListingPreference(Landroid/media/IMediaRouter2;Landroid/media/RouteListingPreference;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p2}, Landroid/media/RouteListingPreference;->getLinkedItemComponentName()Landroid/content/ComponentName;

    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-static {v2, v3, v1}, Lcom/android/server/media/MediaServerUtils;->enforcePackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 29
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mContext:Landroid/content/Context;

    .line 31
    const-string v2, "android.media.action.TRANSFER_MEDIA"

    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Landroid/content/Intent;

    .line 39
    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    .line 53
    move-result-object v1

    .line 54
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 57
    move-result v1

    .line 58
    xor-int/lit8 v1, v1, 0x1

    .line 60
    if-eqz v1, :cond_1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 67
    const-string p2, "Unable to resolve "

    .line 69
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string p2, " to a valid activity for android.media.action.TRANSFER_MEDIA"

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    throw p0

    .line 88
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 91
    move-result-wide v0

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 94
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    iget-object p0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllRouterRecords:Landroid/util/ArrayMap;

    .line 97
    invoke-interface {p1}, Landroid/media/IMediaRouter2;->asBinder()Landroid/os/IBinder;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 105
    check-cast p0, Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;

    .line 107
    if-nez p0, :cond_3

    .line 109
    const-string p0, "MR2ServiceImpl"

    .line 111
    const-string p1, "Ignoring updating route listing of null routerRecord."

    .line 113
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    goto :goto_3

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    goto :goto_4

    .line 123
    :cond_3
    :try_start_2
    invoke-static {p0, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteListingPreferenceLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$RouterRecord;Landroid/media/RouteListingPreference;)V

    .line 126
    monitor-exit v2

    .line 127
    goto :goto_2

    .line 128
    :goto_3
    return-void

    .line 129
    :goto_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 130
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 131
    :catchall_1
    move-exception p0

    .line 132
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    throw p0
.end method

.method public final setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "manager must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v0, "route must not be null"

    .line 15
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V

    .line 28
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0
.end method

.method public final setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "router must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v0, "route must not be null"

    .line 15
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V

    .line 28
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0
.end method

.method public final setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V

    .line 11
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 19
    :catchall_1
    move-exception p0

    .line 20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 23
    throw p0
.end method

.method public final setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 3
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 13
    if-eqz p1, :cond_7

    .line 15
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    .line 17
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mBluetoothA2dpRouteId:Ljava/lang/String;

    .line 28
    iget-object v2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    move-object v0, v1

    .line 41
    :goto_1
    iput-object p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 43
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    .line 45
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 51
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mBluetoothA2dpRouteId:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_3

    .line 59
    :cond_2
    move-object p2, v1

    .line 60
    :cond_3
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    move-result p0

    .line 64
    if-nez p0, :cond_7

    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ": Set selected route, routeId="

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", oldRouteId="

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", explicit="

    .line 92
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 102
    const-string v1, "MediaRouterService"

    .line 104
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz p3, :cond_7

    .line 109
    iget-boolean p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    .line 111
    if-eqz p0, :cond_7

    .line 113
    const-string/jumbo p0, "com.samsung.android.smartmirroring"

    .line 116
    iget-object p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    .line 118
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result p0

    .line 122
    const/16 p3, 0x14

    .line 124
    if-eqz p0, :cond_4

    .line 126
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 128
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 130
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 132
    invoke-virtual {p0, p3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 135
    move-result-object p0

    .line 136
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    goto :goto_2

    .line 140
    :cond_4
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 142
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 144
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 146
    invoke-virtual {p0, p3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 153
    :goto_2
    if-eqz v0, :cond_5

    .line 155
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 157
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 159
    const/4 p3, 0x5

    .line 160
    invoke-virtual {p0, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 167
    :cond_5
    if-eqz p2, :cond_6

    .line 169
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 171
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 173
    const/4 p3, 0x4

    .line 174
    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 181
    :cond_6
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 183
    if-eqz p0, :cond_7

    .line 185
    iget-object p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 187
    iget-object p3, p3, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientGroupMap:Landroid/util/ArrayMap;

    .line 189
    invoke-virtual {p3, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-result-object p0

    .line 193
    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 195
    if-eqz p0, :cond_7

    .line 197
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 199
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 201
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 203
    const/16 p2, 0xa

    .line 205
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 207
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 210
    move-result-object p0

    .line 211
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 214
    :cond_7
    return-void
.end method

.method public final setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "manager must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 21
    move-result-wide v0

    .line 22
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 24
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V

    .line 28
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 40
    throw p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
.end method

.method public final setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "router must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v0, "uniqueSessionId must not be null"

    .line 15
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 27
    move-result-wide v0

    .line 28
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 30
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithRouter2Locked(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V

    .line 34
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 42
    :catchall_1
    move-exception p0

    .line 43
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw p0

    .line 47
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 49
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    throw p0
.end method

.method public final showMediaOutputSwitcherWithProxyRouter(Landroid/media/IMediaRouter2Manager;)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string v0, "Proxy router must not be null"

    .line 8
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 17
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    invoke-interface {p1}, Landroid/media/IMediaRouter2Manager;->asBinder()Landroid/os/IBinder;

    .line 21
    move-result-object p1

    .line 22
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mAllManagerRecords:Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;

    .line 30
    iget-object v3, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mTargetPackageName:Ljava/lang/String;

    .line 32
    if-eqz v3, :cond_0

    .line 34
    iget-object p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$ManagerRecord;->mUserRecord:Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 36
    iget p1, p1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mUserId:I

    .line 38
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, v3, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->showOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 45
    move-result p0

    .line 46
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    return p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 55
    const-string p1, "Only proxy routers can show the Output Switcher."

    .line 57
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 60
    throw p0

    .line 61
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 67
    throw p0
.end method

.method public final showMediaOutputSwitcherWithRouter2(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService;->validatePackageName$1(ILjava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    move-result-wide v1

    .line 24
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->showOutputSwitcher(Ljava/lang/String;Landroid/os/UserHandle;)Z

    .line 27
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    return p0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 36
    throw p0

    .line 37
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    .line 39
    const-string/jumbo p1, "packageName must match the calling identity"

    .line 42
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0
.end method

.method public final transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo p0, "manager must not be null"

    .line 9
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 18
    const-string/jumbo p0, "route must not be null"

    .line 21
    invoke-static {p4, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    move-result-wide v7

    .line 34
    :try_start_0
    iget-object p0, v0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 36
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    move-object v1, p1

    .line 38
    move v2, p2

    .line 39
    move-object v3, p3

    .line 40
    move-object v4, p4

    .line 41
    move-object v5, p5

    .line 42
    move-object v6, p6

    .line 43
    :try_start_1
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithManagerLocked(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 46
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    :catchall_1
    move-exception p0

    .line 55
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    throw p0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 61
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 64
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p0
.end method

.method public final transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "router must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    const-string/jumbo v0, "route must not be null"

    .line 15
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 31
    move-result-wide v1

    .line 32
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 35
    :try_start_1
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithRouter2Locked(Landroid/media/IMediaRouter2;Landroid/os/UserHandle;Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    .line 38
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    throw p0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 53
    const-string/jumbo p1, "uniqueSessionId must not be empty"

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    throw p0
.end method

.method public final unregisterClient(Landroid/media/IMediaRouterClient;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    const/4 v3, 0x0

    .line 9
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 12
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 20
    :catchall_1
    move-exception p0

    .line 21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 24
    throw p0
.end method

.method public final unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    .line 3
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 13
    if-eqz p1, :cond_4

    .line 15
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 17
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 29
    const/4 v1, 0x0

    .line 30
    iput-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 32
    :cond_0
    const-string v1, "MediaRouterService"

    .line 34
    if-eqz p2, :cond_1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, ": Died!"

    .line 46
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p2

    .line 53
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    const-string v2, ": Unregistered"

    .line 67
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    iget p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 79
    if-nez p2, :cond_2

    .line 81
    iget-boolean p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 83
    if-eqz p2, :cond_3

    .line 85
    :cond_2
    iget-object p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 87
    iget-object p2, p2, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 89
    const/4 v1, 0x3

    .line 90
    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 93
    :cond_3
    iget-object p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    .line 95
    invoke-interface {p2}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    .line 98
    move-result-object p2

    .line 99
    const/4 v1, 0x0

    .line 100
    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 106
    :cond_4
    return-void
.end method

.method public final unregisterManager(Landroid/media/IMediaRouter2Manager;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "manager must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManagerLocked(Landroid/media/IMediaRouter2Manager;Z)V

    .line 23
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    throw p0
.end method

.method public final unregisterRouter2(Landroid/media/IMediaRouter2;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "router must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    move-result-wide v0

    .line 16
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 18
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 19
    const/4 v3, 0x0

    .line 20
    :try_start_1
    invoke-virtual {p0, p1, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2Locked(Landroid/media/IMediaRouter2;Z)V

    .line 23
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 30
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 31
    :catchall_1
    move-exception p0

    .line 32
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    throw p0
.end method

.method public final updateRunningUserAndProfiles(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v1, p1, :cond_1

    .line 9
    iput p1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    .line 11
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 16
    move-result-object v1

    .line 17
    move v3, v2

    .line 18
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v4

    .line 22
    if-ge v3, v4, :cond_1

    .line 24
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    move-result v4

    .line 28
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 34
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 36
    invoke-virtual {v6, v4}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 39
    move-result v4

    .line 40
    iget v6, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    .line 42
    if-ne v4, v6, :cond_0

    .line 44
    iget-object v4, v5, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 50
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto/16 :goto_5

    .line 54
    :cond_0
    iget-object v4, v5, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    .line 56
    const/4 v6, 0x2

    .line 57
    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 60
    invoke-virtual {p0, v5}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 63
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 69
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 71
    monitor-enter v1

    .line 72
    :try_start_1
    iget v0, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentActiveUserId:I

    .line 74
    if-eq v0, p1, :cond_3

    .line 76
    const-string v0, "MR2ServiceImpl"

    .line 78
    const-string/jumbo v3, "switchUser | user: %d"

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v4

    .line 85
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 88
    move-result-object v4

    .line 89
    invoke-static {v3, v4}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentActiveUserId:I

    .line 98
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserRecords:Landroid/util/SparseArray;

    .line 100
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 103
    move-result-object p1

    .line 104
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 107
    move-result v0

    .line 108
    if-ge v2, v0, :cond_3

    .line 110
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 113
    move-result v0

    .line 114
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    .line 120
    iget-object v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 122
    invoke-virtual {v4, v0}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    .line 125
    move-result v0

    .line 126
    iget v4, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mCurrentActiveUserId:I

    .line 128
    if-ne v0, v4, :cond_2

    .line 130
    iget-object v0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 132
    new-instance v3, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    .line 134
    const/4 v4, 0x2

    .line 135
    invoke-direct {v3, v4}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 138
    invoke-static {v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    goto :goto_3

    .line 146
    :catchall_1
    move-exception p0

    .line 147
    goto :goto_4

    .line 148
    :cond_2
    iget-object v0, v3, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 150
    new-instance v4, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;

    .line 152
    const/4 v5, 0x1

    .line 153
    invoke-direct {v4, v5}, Lcom/android/server/media/MediaRouter2ServiceImpl$$ExternalSyntheticLambda5;-><init>(I)V

    .line 156
    invoke-static {v4, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 163
    invoke-virtual {p0, v3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;)V

    .line 166
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 168
    goto :goto_2

    .line 169
    :cond_3
    monitor-exit v1

    .line 170
    return-void

    .line 171
    :goto_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    throw p0

    .line 173
    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    throw p0
.end method

.method public final updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "manager must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    if-eqz p2, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p2, v0, :cond_1

    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne p2, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    const-string p2, "Scanning state %d is not valid."

    .line 33
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    move-result-wide v0

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 47
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->updateScanningStateLocked(Landroid/media/IMediaRouter2Manager;I)V

    .line 51
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0
.end method

.method public final updateScanningStateWithRouter2(Landroid/media/IMediaRouter2;I)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string/jumbo v0, "router must not be null"

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    if-eqz p2, :cond_1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-eq p2, v0, :cond_1

    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne p2, v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p1

    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 30
    move-result-object p1

    .line 31
    const-string p2, "Scanning state %d is not valid."

    .line 33
    invoke-static {p2, p1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    throw p0

    .line 41
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 44
    move-result-wide v0

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl;->mLock:Ljava/lang/Object;

    .line 47
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->updateScanningStateLocked(Landroid/media/IMediaRouter2;I)V

    .line 51
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :catchall_1
    move-exception p0

    .line 60
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0
.end method

.method public final validatePackageName$1(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_1

    .line 16
    array-length p1, p0

    .line 17
    move v1, v0

    .line 18
    :goto_0
    if-ge v1, p1, :cond_1

    .line 20
    aget-object v2, p0, v1

    .line 22
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    return v0
.end method
