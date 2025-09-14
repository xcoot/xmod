.class public final Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;
.super Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAppMonitor:Lcom/android/server/knox/zt/devicetrust/AppMonitor;


# direct methods
.method public constructor <init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 9

    .line 1
    const/4 v1, 0x7

    .line 2
    move-object v0, p0

    .line 3
    move v2, p1

    .line 4
    move v3, p2

    .line 5
    move v4, p4

    .line 6
    move v5, p3

    .line 7
    move-object v6, p5

    .line 8
    move-object v7, p6

    .line 9
    move-object/from16 v8, p7

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 14
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->get()Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    .line 20
    move-result-object v0

    .line 21
    move-object v1, p0

    .line 22
    iput-object v0, v1, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;->mAppMonitor:Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    .line 24
    return-void
.end method


# virtual methods
.method public final establish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;->mAppMonitor:Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->setOn(Z)V

    .line 7
    return-void
.end method

.method public final onMonitored()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mQueue:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mFilter:Ljava/util/function/Predicate;

    .line 13
    invoke-interface {v1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const-string v1, "Failed in transaction: "

    .line 27
    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public final release()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/AppProcessMonitoring;->mAppMonitor:Lcom/android/server/knox/zt/devicetrust/AppMonitor;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/AppMonitor;->setOn(Z)V

    .line 7
    return-void
.end method
