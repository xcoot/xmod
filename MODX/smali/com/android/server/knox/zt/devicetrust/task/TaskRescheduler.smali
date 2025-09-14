.class public final Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mTasks:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mLock:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method public static varargs generateFingerprint([I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/StringJoiner;

    .line 3
    const-string v1, ":"

    .line 5
    const-string v2, ""

    .line 7
    invoke-direct {v0, v1, v2, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 10
    array-length v1, p0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    aget v3, p0, v2

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method


# virtual methods
.method public final destroy(Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    .line 6
    iget-object v1, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

    .line 8
    invoke-interface {p0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p1}, Lcom/android/server/knox/zt/devicetrust/task/SchedulableMonitoringTask;->terminate()V

    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final keep(Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    iput-object v1, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 7
    invoke-virtual {p1, v1}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->setFilter(Ljava/util/function/Predicate;)V

    .line 10
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    .line 13
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    .line 15
    iget-object v1, p1, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mFingerprint:Ljava/lang/String;

    .line 17
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    monitor-exit v0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p0
.end method

.method public final reschedule(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;)Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;
    .locals 0

    .line 1
    filled-new-array {p1, p2, p3, p4, p5}, [I

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->generateFingerprint([I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mLock:Ljava/lang/Object;

    .line 11
    monitor-enter p2

    .line 12
    :try_start_0
    iget-object p3, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    .line 14
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p3

    .line 18
    check-cast p3, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;

    .line 20
    if-eqz p3, :cond_0

    .line 22
    iput-object p6, p3, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 24
    invoke-virtual {p3, p7}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->setFilter(Ljava/util/function/Predicate;)V

    .line 27
    const/4 p4, 0x0

    .line 28
    iput-boolean p4, p3, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->mIsStandby:Z

    .line 30
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/TaskRescheduler;->mTasks:Ljava/util/Map;

    .line 32
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit p2

    .line 39
    return-object p3

    .line 40
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method
