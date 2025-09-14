.class public final synthetic Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;->f$3:Z

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mSharedLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v3

    .line 12
    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stopOnDomainThread()V

    .line 13
    .line 14
    .line 15
    iget-object v4, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 16
    .line 17
    check-cast v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 18
    .line 19
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20
    :try_start_1
    iput-object v1, v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const-string v1, "disabled"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    goto :goto_3

    .line 29
    :cond_0
    const-string v1, "enabled"

    .line 30
    .line 31
    :goto_0
    iput-object v1, v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v1, v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v5, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    .line 40
    .line 41
    invoke-direct {v5, v4}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    :try_start_2
    monitor-exit v4

    .line 48
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 49
    .line 50
    check-cast v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 51
    .line 52
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 53
    :try_start_3
    iput-object v2, v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 54
    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    const-string v2, "disabled"

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catchall_1
    move-exception p0

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    const-string v2, "enabled"

    .line 63
    .line 64
    :goto_1
    iput-object v2, v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v2, v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    new-instance v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    .line 73
    .line 74
    invoke-direct {v4, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    .line 79
    .line 80
    :try_start_4
    monitor-exit v1

    .line 81
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 82
    .line 83
    check-cast v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 84
    .line 85
    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 86
    :try_start_5
    iput-boolean p0, v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 87
    .line 88
    :try_start_6
    monitor-exit v1

    .line 89
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startOnDomainThread()V

    .line 90
    .line 91
    .line 92
    monitor-exit v3

    .line 93
    return-void

    .line 94
    :catchall_2
    move-exception p0

    .line 95
    goto :goto_4

    .line 96
    :catchall_3
    move-exception p0

    .line 97
    monitor-exit v1

    .line 98
    throw p0

    .line 99
    :goto_2
    monitor-exit v1

    .line 100
    throw p0

    .line 101
    :goto_3
    monitor-exit v4

    .line 102
    throw p0

    .line 103
    :goto_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 104
    throw p0
.end method
