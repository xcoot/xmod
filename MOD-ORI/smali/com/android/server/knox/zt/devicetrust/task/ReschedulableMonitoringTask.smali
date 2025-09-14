.class public abstract Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;
.super Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mFingerprint:Ljava/lang/String;

.field public final mIsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile mIsStandby:Z

.field public final mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;


# direct methods
.method public constructor <init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 2
    .line 3
    .line 4
    iget-object p6, p8, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    .line 5
    .line 6
    iput-object p6, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    .line 7
    .line 8
    filled-new-array {p1, p2, p3, p4, p5}, [I

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->generateFingerprint([I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->destroy(Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final destroyChecked()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->destroy()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final getFingerprint()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isStandby()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    .line 2
    .line 3
    return p0
.end method

.method public final keep()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mTaskRescheduler:Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->keep(Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final schedule()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-super {p0}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->schedule()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final setFilter(Ljava/util/function/Predicate;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->ensureFilter(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    .line 6
    .line 7
    return-void
.end method

.method public final setListener(Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 2
    .line 3
    return-void
.end method

.method public final setStandby(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    .line 2
    .line 3
    return-void
.end method
