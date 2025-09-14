.class public final Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBootTimeNanos:J

.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public final mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

.field public final mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

.field public final mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

.field public mZtInternalService:Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    .line 3
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 6
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    invoke-direct {v0}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    .line 7
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    invoke-direct {v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    .line 10
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 13
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    invoke-direct {v1}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    .line 14
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;

    invoke-direct {v1, p1, v0}, Lcom/android/server/knox/zt/devicetrust/OemNetdAdapterImpl;-><init>(Landroid/content/Context;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;)V

    iput-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    .line 15
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getActivityManager()Landroid/app/IActivityManager;
    .locals 0

    .line 1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 0

    .line 1
    const-class p0, Landroid/app/ActivityManagerInternal;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManagerInternal;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getAppMonitor()Lcom/android/server/knox/zt/devicetrust/AppMonitor;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public final getBootTimeNanos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mBootTimeNanos:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public final declared-synchronized getHandler()Landroid/os/Handler;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandler:Landroid/os/Handler;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getHandlerThread()Landroid/os/HandlerThread;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandler:Landroid/os/Handler;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    monitor-exit p0

    .line 27
    return-object v0

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw v0
.end method

.method public final declared-synchronized getHandlerThread()Landroid/os/HandlerThread;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/os/HandlerThread;

    .line 7
    .line 8
    sget-object v1, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl;->TAG:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v2, 0xa

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandlerThread:Landroid/os/HandlerThread;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mHandlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    monitor-exit p0

    .line 26
    return-object v0

    .line 27
    :goto_1
    monitor-exit p0

    .line 28
    throw v0
.end method

.method public final getKnoxNetworkEventService()Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-class v0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mInstance:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mInstance:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mInstance:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v0

    .line 23
    return-object p0

    .line 24
    :goto_1
    monitor-exit v0

    .line 25
    throw p0
.end method

.method public final getNative()Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getOemNetdAdapter()Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mOemNetdAdapterImpl:Lcom/android/server/knox/zt/devicetrust/OemNetdAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getTaskRescheduler()Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getZtInternalService()Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mZtInternalService:Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string/jumbo v0, "knoxztinternal"

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mZtInternalService:Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    .line 17
    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mZtInternalService:Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    .line 19
    .line 20
    return-object p0
.end method
