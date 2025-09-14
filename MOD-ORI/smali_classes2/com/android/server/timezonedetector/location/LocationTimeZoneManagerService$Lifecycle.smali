.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-object v0, p1

    .line 5
    check-cast v0, Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v1, 0x1110173

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x1f4

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 27
    .line 28
    new-instance v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    .line 31
    .line 32
    .line 33
    check-cast p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 34
    .line 35
    iget-object p0, p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 36
    .line 37
    sget-object p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 38
    .line 39
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/16 v0, 0x258

    .line 44
    .line 45
    if-ne p1, v0, :cond_1

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    invoke-direct {p1, p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 6
    .line 7
    move-object v2, v1

    .line 8
    check-cast v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const v3, 0x1110173

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    new-instance v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 26
    .line 27
    invoke-direct {v2, v0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;-><init>(Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 31
    .line 32
    const-string v0, "location_time_zone_manager"

    .line 33
    .line 34
    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p0, "LocationTZDetector"

    .line 39
    .line 40
    const-string v0, "Geo time zone detection feature is disabled in config"

    .line 41
    .line 42
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
