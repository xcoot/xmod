.class public final Lcom/android/server/sensors/SensorService$ProximityListenerProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mListener:Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mListener:Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onProximityActive(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$ProximityListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/android/server/sensors/SensorService$ProximityListenerProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sensors/SensorService$ProximityListenerProxy;Z)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
