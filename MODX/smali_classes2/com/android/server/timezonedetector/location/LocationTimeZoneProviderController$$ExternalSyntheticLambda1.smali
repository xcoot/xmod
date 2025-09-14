.class public final synthetic Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/time/Duration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;->f$2:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;->f$3:Ljava/time/Duration;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;->f$2:J

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;->f$3:Ljava/time/Duration;

    .line 8
    .line 9
    const-string v4, "Uncertainty timeout triggered for "

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 12
    .line 13
    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 14
    .line 15
    .line 16
    iget-object v5, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 17
    .line 18
    monitor-enter v5

    .line 19
    :try_start_0
    iget-object v6, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v6

    .line 28
    const-string v8, "UNCERTAIN"

    .line 29
    .line 30
    invoke-virtual {v0, v8}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v8, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    invoke-direct {v8, v2, v3, v9}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    .line 37
    .line 38
    .line 39
    new-instance v9, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v4, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 47
    .line 48
    .line 49
    iget-object v1, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ": primary="

    .line 55
    .line 56
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 60
    .line 61
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", secondary="

    .line 65
    .line 66
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 70
    .line 71
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", uncertaintyStarted="

    .line 75
    .line 76
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", afterUncertaintyTimeout="

    .line 87
    .line 88
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-static {v6, v7}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v1, ", uncertaintyDelay="

    .line 99
    .line 100
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-virtual {v0, v8, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->reportSuggestionEvent(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    monitor-exit v5

    .line 114
    return-void

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0
.end method
