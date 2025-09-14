.class public final synthetic Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    const/4 p0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    monitor-exit v0

    .line 20
    :goto_0
    return-object p0

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
.end method
