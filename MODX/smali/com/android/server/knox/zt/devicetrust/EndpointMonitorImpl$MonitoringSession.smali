.class Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mTasks:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    .line 6
    new-instance p1, Ljava/util/HashMap;

    .line 8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    .line 13
    return-void
.end method

.method public static lambda$findByUid$0(ILjava/util/List;Ljava/lang/Integer;Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)V
    .locals 0

    .line 1
    iget p2, p3, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    .line 3
    if-ne p2, p0, :cond_0

    .line 5
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public final add(Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    .line 6
    iget v1, p1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mType:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p0

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw p0
.end method

.method public final contains()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final contains(I)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final containsWithUid(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    .line 6
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    .line 26
    iget v1, v1, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mUid:I

    .line 28
    if-ne v1, p1, :cond_0

    .line 30
    monitor-exit v0

    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    const/4 p0, 0x0

    .line 37
    return p0

    .line 38
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final find(I)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final findAndHandle(ILcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->find(I)Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;

    .line 4
    move-result-object p0

    .line 5
    instance-of p1, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    check-cast p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->handle(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V

    .line 14
    :cond_0
    return-void
.end method

.method public final findByUid(I)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    .line 11
    new-instance v2, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v2, p1, v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession$$ExternalSyntheticLambda0;-><init>(ILjava/util/List;)V

    .line 16
    invoke-interface {p0, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 19
    monitor-exit v1

    .line 20
    return-object v0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final remove(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$MonitoringSession;->mTasks:Ljava/util/Map;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    monitor-exit v0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method
