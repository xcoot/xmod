.class public final Lcom/android/server/location/gnss/GnssStatusProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;


# instance fields
.field public final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public mIsNavigating:Z

.field public final mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public mOnStatusChanged:Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mIsNavigating:Z

    .line 7
    check-cast p1, Lcom/android/server/location/LocationManagerService$SystemInjector;

    .line 9
    iget-object v0, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 11
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 13
    iget-object v0, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 15
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 17
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 19
    iget-object p1, p1, Lcom/android/server/location/LocationManagerService$SystemInjector;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 21
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 23
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 26
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$StatusCallbacks;)V

    .line 29
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addSvStatusCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$SvStatusCallbacks;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final getListenerType()Landroid/location/LocationConstants$LISTENER_TYPE;
    .locals 0

    .line 1
    sget-object p0, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_STATUS:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 3
    return-object p0
.end method

.method public final onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 12

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 3
    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 5
    iget-object v0, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 7
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v4

    .line 11
    iget-object v0, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 13
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 16
    move-result-object v5

    .line 17
    iget-boolean v11, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x3

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    const/4 v8, 0x1

    .line 28
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    .line 34
    return-void
.end method

.method public final onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 12

    .line 1
    check-cast p1, Landroid/os/IBinder;

    .line 3
    check-cast p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    .line 5
    iget-object v0, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 7
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v4

    .line 11
    iget-object v0, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 13
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    .line 16
    move-result-object v5

    .line 17
    iget-boolean v11, p2, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x1

    .line 21
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x3

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    const/4 v10, 0x0

    .line 28
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->removeGnssDataListener(Landroid/os/IBinder;Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;)V

    .line 34
    return-void
.end method

.method public final onReportSvStatus(Landroid/location/GnssStatus;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;

    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssStatusProvider;Landroid/location/GnssStatus;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    .line 9
    return-void
.end method

.method public final registerWithService(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 5
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->startSvStatusCollection()Z

    .line 8
    move-result p0

    .line 9
    const-string p1, "GnssManager"

    .line 11
    if-eqz p0, :cond_0

    .line 13
    const-string/jumbo p0, "starting gnss sv status"

    .line 16
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const-string/jumbo p0, "error starting gnss sv status"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
.end method

.method public final unregisterWithService()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->stopSvStatusCollection()Z

    .line 6
    move-result p0

    .line 7
    const-string v0, "GnssManager"

    .line 9
    if-eqz p0, :cond_0

    .line 11
    const-string/jumbo p0, "stopping gnss sv status"

    .line 14
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string/jumbo p0, "error stopping gnss sv status"

    .line 21
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_0
    return-void
.end method
