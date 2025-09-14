.class public final Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

.field public final synthetic val$locationResult:Landroid/location/LocationResult;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;Landroid/location/LocationResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onPostExecute(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final operate(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

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
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/location/LocationResult;->deepCopy()Landroid/location/LocationResult;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    .line 27
    .line 28
    :goto_0
    const/4 v1, 0x0

    .line 29
    invoke-interface {p1, v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnLocationChanged(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/location/LocationResult;->size()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :goto_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
