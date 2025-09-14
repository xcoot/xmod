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

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/SensorController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/virtual/SensorController;

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/companion/virtual/SensorController;->mSensorManagerInternal:Lcom/android/server/sensors/SensorService$LocalService;

    .line 6
    .line 7
    iget p1, p1, Lcom/android/server/companion/virtual/SensorController$SensorDescriptor;->mHandle:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/sensors/SensorService;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/sensors/SensorService;->mRuntimeSensorHandles:Ljava/util/Set;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/sensors/SensorService$LocalService;->this$0:Lcom/android/server/sensors/SensorService;

    .line 40
    .line 41
    iget-wide v1, p0, Lcom/android/server/sensors/SensorService;->mPtr:J

    .line 42
    .line 43
    invoke-static {p1, v1, v2}, Lcom/android/server/sensors/SensorService;->-$$Nest$smunregisterRuntimeSensorNative(IJ)V

    .line 44
    .line 45
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
