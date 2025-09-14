.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

.field public final synthetic val$locationResult:Landroid/location/LocationResult;

.field public final synthetic val$useWakeLock:Z


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Landroid/location/LocationResult;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onPostExecute(Z)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 17
    .line 18
    iget v0, p1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getMaxUpdates()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-lt v0, p1, :cond_1

    .line 33
    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, " provider registration "

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 54
    .line 55
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " finished after "

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 66
    .line 67
    iget v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    .line 68
    .line 69
    const-string v1, " updates"

    .line 70
    .line 71
    const-string v2, "LocationManagerService"

    .line 72
    .line 73
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, v0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mLastLocation:Landroid/location/Location;

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 18
    .line 19
    const-wide/16 v0, 0x7530

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public final operate(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/location/LocationResult;->deepCopy()Landroid/location/LocationResult;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    .line 25
    .line 26
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnLocationChanged(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/location/LocationResult;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 56
    .line 57
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
