.class public final synthetic Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_1
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mLocationTimeZoneProviderController:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 48
    :try_start_2
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->clearRecordedStates()V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->clearRecordedStates()V

    .line 61
    .line 62
    .line 63
    monitor-exit v1

    .line 64
    goto :goto_2

    .line 65
    :catchall_1
    move-exception p0

    .line 66
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :try_start_3
    throw p0

    .line 68
    :cond_1
    :goto_2
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :catchall_2
    move-exception p0

    .line 71
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 72
    throw p0

    .line 73
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
