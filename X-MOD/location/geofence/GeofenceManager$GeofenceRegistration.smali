.class public final Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;
.super Lcom/android/server/location/listeners/RemovableListenerRegistration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# instance fields
.field public mCachedLocation:Landroid/location/Location;

.field public mCachedLocationDistanceM:F

.field public final mCenter:Landroid/location/Location;

.field public final mGeofence:Landroid/location/Geofence;

.field public mGeofenceState:I

.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public mPermitted:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final synthetic this$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;Landroid/location/Geofence;Landroid/location/util/identity/CallerIdentity;Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    .line 3
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 5
    invoke-direct {p0, v0, p4}, Lcom/android/server/location/listeners/RemovableListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 8
    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 10
    iput-object p3, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 12
    new-instance p4, Landroid/location/Location;

    .line 14
    const-string v0, ""

    .line 16
    invoke-direct {p4, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 19
    iput-object p4, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    .line 21
    invoke-virtual {p2}, Landroid/location/Geofence;->getLatitude()D

    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 28
    invoke-virtual {p2}, Landroid/location/Geofence;->getLongitude()D

    .line 31
    move-result-wide v0

    .line 32
    invoke-virtual {p4, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 35
    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 37
    const-class p2, Landroid/os/PowerManager;

    .line 39
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/os/PowerManager;

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-object p2, p1

    .line 49
    check-cast p2, Landroid/os/PowerManager;

    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 53
    const-string p4, "GeofenceManager:"

    .line 55
    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 61
    move-result-object p4

    .line 62
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p2

    .line 69
    const/4 p4, 0x1

    .line 70
    invoke-virtual {p1, p4, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 76
    invoke-virtual {p1, p4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 79
    const/4 p0, 0x0

    .line 80
    invoke-virtual {p3, p0}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 87
    return-void
.end method


# virtual methods
.method public final getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    .line 3
    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onActive()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    .line 3
    invoke-virtual {v0}, Lcom/android/server/location/geofence/GeofenceManager;->getLastLocation()Landroid/location/Location;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 16
    :cond_0
    return-void
.end method

.method public final onCanceled(Landroid/app/PendingIntent;)V
    .locals 2

    .line 1
    const/4 p1, 0x3

    .line 2
    const-string v0, "GeofenceManager"

    .line 4
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    const-string/jumbo v1, "pending intent registration "

    .line 15
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, " canceled"

    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 36
    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 3
    invoke-virtual {v0}, Landroid/location/Geofence;->isExpired()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 13
    return-object v1

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    .line 16
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    .line 18
    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    .line 24
    iget v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    .line 26
    iget-object v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 28
    invoke-virtual {v2}, Landroid/location/Geofence;->getRadius()F

    .line 31
    move-result v2

    .line 32
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 35
    move-result p1

    .line 36
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 39
    move-result p1

    .line 40
    iget v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    .line 42
    cmpg-float p1, v2, p1

    .line 44
    const/4 v2, 0x1

    .line 45
    if-gtz p1, :cond_1

    .line 47
    iput v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    .line 49
    if-eq v0, v2, :cond_2

    .line 51
    new-instance p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;

    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-direct {p1, p0, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;I)V

    .line 57
    return-object p1

    .line 58
    :cond_1
    const/4 p1, 0x2

    .line 59
    iput p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    .line 61
    if-ne v0, v2, :cond_2

    .line 63
    new-instance p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;

    .line 65
    const/4 v0, 0x1

    .line 66
    invoke-direct {p1, p0, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;I)V

    .line 69
    return-object p1

    .line 70
    :cond_2
    return-object v1
.end method

.method public final onLocationPermissionsChanged$1$1()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 5
    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 11
    move-result v0

    .line 12
    iget-boolean v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    iput-boolean v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    .line 18
    const/4 p0, 0x1

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    return p0
.end method

.method public final onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    instance-of p1, p2, Landroid/app/PendingIntent$CanceledException;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v0, "registration "

    .line 10
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v0, " removed"

    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    const-string v0, "GeofenceManager"

    .line 27
    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 36
    invoke-direct {p0, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 39
    throw p0
.end method

.method public final onRegister()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    check-cast v0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 8
    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/app/PendingIntent;->addCancelListener(Ljava/util/concurrent/Executor;Landroid/app/PendingIntent$CancelListener;)Z

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    .line 24
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    .line 26
    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 28
    const/4 v1, 0x2

    .line 29
    iget-object v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    .line 37
    return-void
.end method

.method public final onUnregister()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    check-cast v0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 8
    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    .line 10
    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->removeCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public final sendIntent(Landroid/app/PendingIntent;Z)V
    .locals 10

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string/jumbo v1, "entering"

    .line 9
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 12
    move-result-object v5

    .line 13
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 15
    const-wide/16 v0, 0x7530

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 20
    :try_start_0
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    .line 22
    iget-object v3, p2, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    .line 24
    new-instance v6, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;

    .line 26
    invoke-direct {v6, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    .line 29
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 32
    move-result-object p2

    .line 33
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p2, v0}, Landroid/app/BroadcastOptions;->setDontSendToRestrictedApps(Z)V

    .line 37
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p2, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 41
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 44
    move-result-object v9

    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    move-object v2, p1

    .line 49
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 55
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 58
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    .line 60
    new-instance v0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 62
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 64
    invoke-direct {v0, p1, v1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;-><init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V

    .line 67
    invoke-virtual {p2, v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V

    .line 70
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    new-instance v1, Landroid/util/ArraySet;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 17
    iget-boolean v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    .line 19
    if-nez v2, :cond_0

    .line 21
    const-string/jumbo v2, "na"

    .line 24
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 30
    move-result v2

    .line 31
    const-string v3, " "

    .line 33
    if-nez v2, :cond_1

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    return-object p0
.end method
