.class public final Lcom/android/server/knox/zt/devicetrust/task/PrivilegeEscalationMonitoring;
.super Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(IIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 9

    .line 1
    const/16 v1, 0xc

    .line 3
    move-object v0, p0

    .line 4
    move v2, p1

    .line 5
    move v3, p2

    .line 6
    move v4, p3

    .line 7
    move v5, p4

    .line 8
    move-object v6, p5

    .line 9
    move-object v7, p6

    .line 10
    move-object/from16 v8, p7

    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 15
    return-void
.end method


# virtual methods
.method public final onMonitored()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mNative:Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorNative;->readPrivEscalData()Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onEvent(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "Failed in transaction: "

    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/zt/devicetrust/task/PrivilegeEscalationMonitoring;->onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/knox/zt/devicetrust/task/ReschedulableMonitoringTask;->destroyChecked()V

    .line 38
    return-void
.end method

.method public final onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->onTransactionFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;->mListener:Lcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;

    .line 7
    return-void
.end method
