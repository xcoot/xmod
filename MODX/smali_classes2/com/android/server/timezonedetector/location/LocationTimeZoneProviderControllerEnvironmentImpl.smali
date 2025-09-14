.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mConfigurationInternalChangeListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field public final mSharedLock:Ljava/lang/Object;

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mLockObject:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mSharedLock:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 17
    .line 18
    new-instance p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {p1, p0, p3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mConfigurationInternalChangeListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    check-cast p2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_0
    iget-object p0, p2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 29
    .line 30
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    monitor-exit p2

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit p2

    .line 39
    throw p0
.end method
