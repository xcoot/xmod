.class public final synthetic Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/virtual/SensorController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/virtual/SensorController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/SensorController;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/SensorController;

    .line 3
    check-cast p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 5
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    .line 7
    iget p1, p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    .line 9
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 11
    iget-object v0, v0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 16
    iget-object v1, v1, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 30
    iget-object v1, v1, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 39
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 41
    iget-wide v1, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 43
    invoke-static {p1, v1, v2}, Lcom/android/server/sensors/SensorService;->-$$Nest$smunregisterRuntimeSensorNative(IJ)V

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v0

    .line 50
    return-void

    .line 51
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method
