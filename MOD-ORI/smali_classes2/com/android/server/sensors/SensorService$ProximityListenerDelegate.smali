.class public final Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/sensors/SensorService;


# direct methods
.method public constructor <init>(Lcom/android/server/sensors/SensorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onProximityActive(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerDelegate;->this$0:Lcom/android/server/sensors/SensorService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/sensors/SensorService;->mProximityListeners:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const/4 v1, 0x0

    .line 15
    new-array v2, v1, [Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    .line 16
    .line 17
    invoke-interface {p0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, [Lcom/android/server/sensors/SensorService$ProximityListenerProxy;

    .line 22
    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    array-length v0, p0

    .line 25
    :goto_0
    if-ge v1, v0, :cond_0

    .line 26
    .line 27
    aget-object v2, p0, v1

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->onProximityActive(Z)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method
