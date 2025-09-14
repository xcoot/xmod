.class public final Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveSensors:Ljava/util/Map;

.field public final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mIsActive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mActiveSensors:Ljava/util/Map;

    .line 18
    return-void
.end method


# virtual methods
.method public final markSensorActive(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mActiveSensors:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object p2

    .line 11
    check-cast v0, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    .line 18
    iget-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mActiveSensors:Ljava/util/Map;

    .line 20
    check-cast p2, Ljava/util/HashMap;

    .line 22
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p2

    .line 30
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_0

    .line 48
    const/4 p2, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p2, 0x0

    .line 51
    :goto_0
    if-eq p1, p2, :cond_2

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    const-string v0, "Notifying gesture availability, active="

    .line 57
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    .line 62
    const-string v1, "GestureAvailabilityTracker"

    .line 64
    invoke-static {v1, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 67
    iput-boolean p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mIsActive:Z

    .line 69
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    move-result-object p1

    .line 75
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    .line 87
    :try_start_0
    invoke-interface {v0, p2}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_1

    .line 91
    :catch_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 93
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    goto :goto_1

    .line 97
    :cond_2
    return-void
.end method
