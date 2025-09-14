.class public final Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;
.super Landroid/service/timezone/ITimeZoneProviderManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/service/timezone/ITimeZoneProviderManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTimeZoneProviderEvent(Landroid/service/timezone/TimeZoneProviderEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mSharedLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;->this$0:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mManagerProxy:Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy$ManagerProxy;

    .line 9
    .line 10
    if-eq v2, p0, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    new-instance p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    invoke-direct {p0, v1, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderProxy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, v1, Lcom/android/server/timezonedetector/location/RealLocationTimeZoneProviderProxy;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw p0
.end method
