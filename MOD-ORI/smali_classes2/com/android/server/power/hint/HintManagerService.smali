.class public final Lcom/android/server/power/hint/HintManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final CLEAN_UP_UID_DELAY_MILLIS:I = 0x3e8


# instance fields
.field public final mActiveSessions:Landroid/util/ArrayMap;

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mChannelMap:Landroid/util/ArrayMap;

.field public final mChannelMapLock:Ljava/lang/Object;

.field public final mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

.field public final mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field final mHintSessionPreferredRate:J

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

.field public final mNonIsolatedTids:Ljava/util/Map;

.field public final mNonIsolatedTidsLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerHal:Landroid/hardware/power/IPower;

.field public final mPowerHalVersion:I

.field final mService:Landroid/os/IHintManager$Stub;

.field public mSystemUiUid:I

.field final mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;


# direct methods
.method public static -$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v3, v0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    array-length v4, p3

    .line 9
    if-ge v2, v4, :cond_5

    .line 10
    .line 11
    aget v4, p3, v2

    .line 12
    .line 13
    const-string v5, "Uid:"

    .line 14
    .line 15
    const-string v6, "Tgid:"

    .line 16
    .line 17
    filled-new-array {v5, v6}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v6, 0x2

    .line 22
    new-array v6, v6, [J

    .line 23
    .line 24
    const-string v7, "/proc/"

    .line 25
    .line 26
    const-string v8, "/status"

    .line 27
    .line 28
    invoke-static {v4, v7, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {v7, v5, v6}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 33
    .line 34
    .line 35
    aget-wide v7, v6, v1

    .line 36
    .line 37
    long-to-int v5, v7

    .line 38
    const/4 v7, 0x1

    .line 39
    aget-wide v6, v6, v7

    .line 40
    .line 41
    long-to-int v6, v6

    .line 42
    if-ne v6, p2, :cond_0

    .line 43
    .line 44
    invoke-virtual {p4, v4}, Landroid/util/IntArray;->add(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_0
    if-ne v5, p1, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-nez v3, :cond_3

    .line 52
    .line 53
    const/16 v3, 0x3e8

    .line 54
    .line 55
    if-ne p1, v3, :cond_2

    .line 56
    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_2

    .line 62
    :cond_2
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 63
    .line 64
    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v5

    .line 83
    if-eqz v5, :cond_4

    .line 84
    .line 85
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_5
    :goto_2
    return-object v0
.end method

.method public static -$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v0, "Tid"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p3, " from list "

    .line 15
    .line 16
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, " doesn\'t belong to the calling application "

    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/hint/HintManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/hint/HintManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V
    .locals 5

    .line 2
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I

    .line 9
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {}, Lcom/android/server/power/hint/Flags;->powerhintThreadCleanup()Z

    .line 11
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    .line 12
    new-instance v2, Lcom/android/server/ServiceThread;

    const/16 v3, 0x13

    const-string v4, "HintManagerService"

    invoke-direct {v2, v3, v4, v1}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 13
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 14
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;-><init>(Lcom/android/server/power/hint/HintManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 16
    invoke-static {}, Lcom/android/server/power/hint/Flags;->adpfSessionTag()Z

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 18
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 19
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance p1, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    invoke-direct {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 23
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halInit()V

    .line 24
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halGetHintSessionPreferredRate()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 25
    new-instance p1, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 26
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 27
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 28
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Landroid/hardware/power/IPower;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/default"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 31
    invoke-static {p1}, Landroid/hardware/power/IPower$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPower;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    invoke-interface {p1}, Landroid/hardware/power/IPower;->getInterfaceVersion()I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 35
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not contact PowerHAL!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getBinderServiceInstance()Landroid/os/IHintManager$Stub;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    .line 2
    .line 3
    return-object p0
.end method

.method public hasChannel(II)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/TreeMap;

    .line 15
    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    monitor-exit v0

    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 42
    .line 43
    monitor-exit v0

    .line 44
    return-object p0

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public final onBootPhase(I)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    const/16 v1, 0x1f4

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne p1, v1, :cond_0

    .line 6
    .line 7
    const-string v1, "HintManagerService"

    .line 8
    .line 9
    const-string v3, "Initializing HintManager service..."

    .line 10
    .line 11
    invoke-static {v1, v3}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 19
    .line 20
    const/4 v4, 0x3

    .line 21
    invoke-interface {v1, v3, v4, v0, v2}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    :catch_0
    :cond_0
    const/16 v1, 0x3e8

    .line 25
    .line 26
    if-ne p1, v1, :cond_5

    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    const-class v1, Landroid/app/StatsManager;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/app/StatsManager;

    .line 37
    .line 38
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 39
    .line 40
    new-instance v3, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;

    .line 41
    .line 42
    invoke-direct {v3, p0}, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    .line 43
    .line 44
    .line 45
    const/16 v4, 0x27bd

    .line 46
    .line 47
    invoke-virtual {p1, v4, v2, v1, v3}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v1, "com.android.systemui"

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    :try_start_1
    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_1
    const-string p1, "HintManagerService"

    .line 69
    .line 70
    const-string v1, "com.android.systemui is not found in pm"

    .line 71
    .line 72
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    iget p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I

    .line 76
    .line 77
    if-lez p1, :cond_5

    .line 78
    .line 79
    :try_start_2
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 83
    .line 84
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSystemUiUid:I

    .line 85
    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    check-cast p0, Landroid/util/ArrayMap;

    .line 95
    .line 96
    if-nez p0, :cond_2

    .line 97
    .line 98
    monitor-exit p1

    .line 99
    return-void

    .line 100
    :catchall_0
    move-exception p0

    .line 101
    goto :goto_3

    .line 102
    :cond_2
    const-string v1, "HintManagerService"

    .line 103
    .line 104
    const-string v2, "SystemUI ADPF Force Pause"

    .line 105
    .line 106
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    add-int/lit8 v1, v1, -0x1

    .line 114
    .line 115
    :goto_1
    if-ltz v1, :cond_4

    .line 116
    .line 117
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Landroid/util/ArraySet;

    .line 122
    .line 123
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    add-int/lit8 v3, v3, -0x1

    .line 128
    .line 129
    :goto_2
    if-ltz v3, :cond_3

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    check-cast v4, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 136
    .line 137
    sget v5, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->$r8$clinit:I

    .line 138
    .line 139
    invoke-virtual {v4}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->pause()V

    .line 140
    .line 141
    .line 142
    add-int/2addr v3, v0

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    add-int/2addr v1, v0

    .line 145
    goto :goto_1

    .line 146
    :cond_4
    monitor-exit p1

    .line 147
    goto :goto_4

    .line 148
    :goto_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 149
    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 150
    :catch_2
    const-string p0, "HintManagerService"

    .line 151
    .line 152
    const-string p1, "com.android.systemui exception ADPF Force Pause"

    .line 153
    .line 154
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_5
    :goto_4
    return-void
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "performance_hint"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/util/TreeMap;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->closeChannel()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_1
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
