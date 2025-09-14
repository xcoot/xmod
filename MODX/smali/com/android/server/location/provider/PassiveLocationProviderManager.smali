.class public final Lcom/android/server/location/provider/PassiveLocationProviderManager;
.super Lcom/android/server/location/provider/LocationProviderManager;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final calculateRequestDelayMillis(JLjava/util/Collection;)J
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    .line 3
    return-wide p0
.end method

.method public final getServiceState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 3
    iget-object v0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/MockableLocationProvider;->mRequest:Landroid/location/provider/ProviderRequest;

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest;->isActive()Z

    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 15
    const-string/jumbo p0, "registered"

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string/jumbo p0, "unregistered"

    .line 22
    :goto_0
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method

.method public final mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;
    .locals 2

    .line 2
    new-instance p0, Landroid/location/provider/ProviderRequest$Builder;

    invoke-direct {p0}, Landroid/location/provider/ProviderRequest$Builder;-><init>()V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/location/provider/ProviderRequest$Builder;->setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest$Builder;->build()Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/PassiveLocationProviderManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public final setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string p1, "Cannot mock the passive provider"

    .line 8
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p0
.end method

.method public final setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/server/location/provider/PassiveLocationProvider;

    .line 3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 6
    invoke-super {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V

    .line 9
    return-void
.end method
