.class public abstract Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;
.super Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEFAULT_INIT_DELAY_MS:J = 0x64L

.field public static final DEFAULT_PERIOD_MS:J = 0xaL


# instance fields
.field public final mScheduler:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->initScheduler()Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic lambda$createThreadFactory$0(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final createThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final initScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final lambda$createThreadFactory$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask$$ExternalSyntheticLambda1;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x5

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->onCreated()V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final onCreated()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->getTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Task created"

    .line 6
    .line 7
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public schedule()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    const-wide/16 v4, 0xa

    .line 4
    .line 5
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    const-wide/16 v2, 0x64

    .line 8
    .line 9
    move-object v1, p0

    .line 10
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final terminate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    return-void
.end method
