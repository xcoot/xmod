.class public abstract Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;
.super Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mQueue:Ljava/util/Queue;


# direct methods
.method public constructor <init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/knox/zt/devicetrust/task/MonitoringTask;-><init>(IIIIILcom/samsung/android/knox/zt/devicetrust/IEndpointMonitorListener;Ljava/util/function/Predicate;Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mQueue:Ljava/util/Queue;

    .line 10
    .line 11
    invoke-virtual {p8}, Lcom/android/server/knox/zt/devicetrust/EndpointMonitorImpl$Injector;->getHandler()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public establish()V
    .locals 0

    .line 1
    return-void
.end method

.method public final getDataQueue()Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mQueue:Ljava/util/Queue;

    .line 2
    .line 3
    return-object p0
.end method

.method public final handle(Lcom/android/server/knox/zt/devicetrust/data/EndpointData;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mQueue:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/knox/zt/devicetrust/task/HandleableMonitoringTask;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method
