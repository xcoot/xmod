.class public final synthetic Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IBinder;)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/service/timezone/ITimeZoneProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/timezone/ITimeZoneProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;

    .line 6
    .line 7
    iget-boolean v1, p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mSendUpdates:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mInitializationTimeout:Ljava/time/Duration;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    iget-object p1, p1, Lcom/android/server/timezonedetector/location/TimeZoneProviderRequest;->mEventFilteringAgeThreshold:Ljava/time/Duration;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 24
    .line 25
    invoke-interface/range {v0 .. v5}, Landroid/service/timezone/ITimeZoneProvider;->startUpdates(Landroid/service/timezone/ITimeZoneProviderManager;JJ)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v0}, Landroid/service/timezone/ITimeZoneProvider;->stopUpdates()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
