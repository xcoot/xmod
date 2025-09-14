.class public Lcom/att/iqi/lib/IQIManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final ACTION_SERVICE_FORCE_STOPPED:Ljava/lang/String; = "com.att.iqi.action.SERVICE_FORCE_STOPPED"

.field private static final FORCE_STOP_WAIT_MS:J = 0xdacL

.field private static final PERMISSION_SERVICE_FORCE_STOP:Ljava/lang/String; = "com.att.iqi.permission.RECEIVE_FORCE_STOP_NOTIFICATION"

.field private static sInstance:Lcom/att/iqi/lib/IQIManager;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIQIService:Lcom/att/iqi/IIQIBroker;

.field private final mMessageDispatcher:Landroid/os/Handler;

.field private final mMetricQueryCallbackMap:Landroid/util/SparseArray;

.field private final mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

.field private final mMetricSourcingListenerMap:Landroid/util/SparseArray;

.field private final mProfileChangeListenerList:Ljava/util/List;

.field private final mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

.field private final mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

.field private final mServiceStateChangeListenerList:Ljava/util/List;

.field private final mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmExecutorService(Lcom/att/iqi/lib/IQIManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/lib/IQIManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricQueryCallbackMap(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricSourcingListenerMap(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileChangeListenerList(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceStateChangeListenerList(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/att/iqi/lib/IQIManager;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    .line 31
    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 37
    .line 38
    new-instance v0, Lcom/att/iqi/lib/IQIManager$2;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$2;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

    .line 44
    .line 45
    new-instance v0, Lcom/att/iqi/lib/IQIManager$3;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$3;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

    .line 51
    .line 52
    new-instance v0, Lcom/att/iqi/lib/IQIManager$4;

    .line 53
    .line 54
    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$4;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

    .line 58
    .line 59
    new-instance v0, Lcom/att/iqi/lib/IQIManager$5;

    .line 60
    .line 61
    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$5;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    .line 70
    .line 71
    const-string/jumbo v1, "msg-handler-iqi"

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    .line 88
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    :cond_0
    new-instance v1, Landroid/os/Handler;

    .line 93
    .line 94
    new-instance v2, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;

    .line 95
    .line 96
    invoke-direct {v2, p0}, Lcom/att/iqi/lib/IQIManager$MessageDispatcherCallback;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    .line 97
    .line 98
    .line 99
    invoke-direct {v1, v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 100
    .line 101
    .line 102
    iput-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    .line 103
    .line 104
    return-void
.end method

.method public static getInstance()Lcom/att/iqi/lib/IQIManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/att/iqi/lib/IQIManager;->sLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->sInstance:Lcom/att/iqi/lib/IQIManager;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/att/iqi/lib/IQIManager;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/att/iqi/lib/IQIManager;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/att/iqi/lib/IQIManager;->sInstance:Lcom/att/iqi/lib/IQIManager;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/att/iqi/lib/IQIManager;->sInstance:Lcom/att/iqi/lib/IQIManager;

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method private getService()V
    .locals 6

    .line 1
    const-string v0, "IQIManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v1, "android.os.ServiceManager"

    .line 9
    .line 10
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 14
    :try_start_1
    const-string v2, "getService"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    new-array v3, v3, [Ljava/lang/Class;

    .line 18
    .line 19
    const-class v4, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    aput-object v4, v3, v5

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 28
    :try_start_2
    const-string v2, "iqi"

    .line 29
    .line 30
    filled-new-array {v2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/os/IBinder;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-static {v1}, Lcom/att/iqi/IIQIBroker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIBroker;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 48
    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    const-string p0, "Service reached!"

    .line 52
    .line 53
    invoke-static {v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception p0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const-string p0, "getService returned null :("

    .line 62
    .line 63
    invoke-static {v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :goto_0
    const-string v1, "Invocation exception!"

    .line 68
    .line 69
    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :goto_1
    const-string v1, "Access exception!"

    .line 74
    .line 75
    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .line 77
    .line 78
    :cond_2
    :goto_2
    return-void

    .line 79
    :catch_2
    move-exception p0

    .line 80
    const-string v1, "Can\'t find getService method!"

    .line 81
    .line 82
    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catch_3
    move-exception p0

    .line 87
    const-string v1, "ServiceManager not found!"

    .line 88
    .line 89
    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public disableService()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 5
    .line 6
    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->disableService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "IQIManager"

    .line 12
    .line 13
    const-string v1, "Remote exception in disableService"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public forceStopService(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 7

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v2, Lcom/att/iqi/lib/IQIManager$1;

    .line 11
    .line 12
    invoke-direct {v2, p0, v0, p2}, Lcom/att/iqi/lib/IQIManager$1;-><init>(Lcom/att/iqi/lib/IQIManager;Landroid/os/Message;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    new-instance v3, Landroid/content/IntentFilter;

    .line 16
    .line 17
    const-string p2, "com.att.iqi.action.SERVICE_FORCE_STOPPED"

    .line 18
    .line 19
    invoke-direct {v3, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v5, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    .line 23
    .line 24
    const/4 v6, 0x2

    .line 25
    const-string v4, "com.att.iqi.permission.RECEIVE_FORCE_STOP_NOTIFICATION"

    .line 26
    .line 27
    move-object v1, p1

    .line 28
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mMessageDispatcher:Landroid/os/Handler;

    .line 32
    .line 33
    const-wide/16 v1, 0xdac

    .line 34
    .line 35
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 42
    .line 43
    invoke-interface {p0}, Lcom/att/iqi/IIQIBroker;->forceStopService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string p1, "IQIManager"

    .line 49
    .line 50
    const-string p2, "Remote exception in forceStopService"

    .line 51
    .line 52
    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public registerMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

    .line 12
    .line 13
    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "IQIManager"

    .line 35
    .line 36
    const-string p2, "Remote exception in registerMetricSourcingListener"

    .line 37
    .line 38
    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "Callback already registered for metric ID "

    .line 47
    .line 48
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_1
    return-void
.end method

.method public registerProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :try_start_1
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "IQIManager"

    .line 34
    .line 35
    const-string v0, "Remote exception in registerProfileChangeListener"

    .line 36
    .line 37
    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method public registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

    .line 12
    .line 13
    invoke-interface {v0, p1, v1}, Lcom/att/iqi/IIQIBroker;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v0

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "IQIManager"

    .line 35
    .line 36
    const-string p2, "Remote exception in registerQueryCallback"

    .line 37
    .line 38
    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void

    .line 42
    :catch_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v0, "Callback already registered for metric ID "

    .line 47
    .line 48
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_1
    return-void
.end method

.method public registerServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    :try_start_1
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->registerServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "IQIManager"

    .line 34
    .line 35
    const-string v0, "Remote exception in registerServiceStateChangeListener"

    .line 36
    .line 37
    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method public setUnlockCode(J)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 5
    .line 6
    invoke-interface {p0, p1, p2}, Lcom/att/iqi/IIQIBroker;->setUnlockCode(J)Z

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "IQIManager"

    .line 13
    .line 14
    const-string p2, "Remote exception in setUnlockCode"

    .line 15
    .line 16
    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 9
    .line 10
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return p0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    const-string p1, "IQIManager"

    .line 17
    .line 18
    const-string v1, "Remote exception in shouldSubmitMetric"

    .line 19
    .line 20
    invoke-static {p1, v1, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    return v0
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Lcom/att/iqi/IIQIBroker;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "IQIManager"

    .line 15
    .line 16
    const-string v0, "Remote exception in submitMetric"

    .line 17
    .line 18
    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method public unregisterMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingCallback:Lcom/att/iqi/IMetricSourcingCallback;

    .line 12
    .line 13
    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricSourcingListenerMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 26
    .line 27
    .line 28
    monitor-exit p2

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "IQIManager"

    .line 35
    .line 36
    const-string p2, "Remote exception in unregisterMetricSourcingListener"

    .line 37
    .line 38
    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangeListenerList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :try_start_1
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mProfileChangedCallback:Lcom/att/iqi/IProfileChangedCallback;

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "IQIManager"

    .line 34
    .line 35
    const-string v0, "Remote exception in unregisterProfileChangeListener"

    .line 36
    .line 37
    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method

.method public unregisterQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mQueryCallback:Lcom/att/iqi/IMetricQueryCallback;

    .line 12
    .line 13
    invoke-interface {p2, p1, v0}, Lcom/att/iqi/IIQIBroker;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    .line 17
    .line 18
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :try_start_1
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mMetricQueryCallbackMap:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 26
    .line 27
    .line 28
    monitor-exit p2

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string p1, "IQIManager"

    .line 35
    .line 36
    const-string p2, "Remote exception in registerQueryCallback"

    .line 37
    .line 38
    invoke-static {p1, p2, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterServiceStateChangeListener(Lcom/att/iqi/lib/IQIManager$ServiceStateChangeListener;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangeListenerList:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    :try_start_1
    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->getService()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/att/iqi/lib/IQIManager;->mIQIService:Lcom/att/iqi/IIQIBroker;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/att/iqi/lib/IQIManager;->mServiceStateChangedCallback:Lcom/att/iqi/IServiceStateChangeCallback;

    .line 27
    .line 28
    invoke-interface {p1, p0}, Lcom/att/iqi/IIQIBroker;->unregisterServiceChangedCallback(Lcom/att/iqi/IServiceStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    const-string p1, "IQIManager"

    .line 34
    .line 35
    const-string v0, "Remote exception in unregisterServiceStateChangeListener"

    .line 36
    .line 37
    invoke-static {p1, v0, p0}, Lcom/att/iqi/lib/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw p0
.end method
