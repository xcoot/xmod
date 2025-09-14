.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# static fields
.field public static final TELEPHONY_SCORE_HIGH:I = 0x3

.field public static final TELEPHONY_SCORE_HIGHEST:I = 0x4

.field public static final TELEPHONY_SCORE_LOW:I = 0x1

.field public static final TELEPHONY_SCORE_MEDIUM:I = 0x2

.field public static final TELEPHONY_SCORE_NONE:I = 0x0

.field public static final TELEPHONY_SCORE_USAGE_THRESHOLD:I = 0x2


# instance fields
.field public mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

.field public final mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

.field public mGeoLocationFallbackEnabled:Z

.field public mLastTelephonyTimezoneIso:Ljava/lang/String;

.field public final mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field public final mStateChangeListeners:Ljava/util/List;

.field public final mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

.field public mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 19
    .line 20
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 26
    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 38
    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 43
    .line 44
    new-instance v0, Landroid/os/TimestampedValue;

    .line 45
    .line 46
    invoke-interface {p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v1

    .line 50
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 51
    .line 52
    invoke-direct {v0, v1, v2, p2}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 56
    .line 57
    monitor-enter p0

    .line 58
    :try_start_0
    new-instance p2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;

    .line 59
    .line 60
    invoke-direct {p2, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V

    .line 61
    .line 62
    .line 63
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 65
    .line 66
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    iget-object v1, v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 68
    .line 69
    check-cast v1, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_2
    monitor-exit v0

    .line 75
    const-string p2, ""

    .line 76
    .line 77
    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLastTelephonyTimezoneIso:Ljava/lang/String;

    .line 78
    .line 79
    check-cast p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeolocationFallbackEnabled()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mGeoLocationFallbackEnabled:Z

    .line 86
    .line 87
    const-string p1, "TimeZoneDetectorStrategyImpl:"

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired$1(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    goto :goto_0

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    monitor-exit v0

    .line 98
    throw p1

    .line 99
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    throw p1
.end method


# virtual methods
.method public final declared-synchronized confirmTimeZone(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "confirmTimeZone: timeZoneId="

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    monitor-exit p0

    .line 20
    const/4 p0, 0x0

    .line 21
    return p0

    .line 22
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 23
    .line 24
    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZoneConfidence()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/16 v3, 0x64

    .line 29
    .line 30
    if-ge v2, v3, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {v2, v3, v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->setDeviceTimeZoneAndConfidence(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    :goto_0
    monitor-exit p0

    .line 45
    const/4 p0, 0x1

    .line 46
    return p0

    .line 47
    :goto_1
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final disableTelephonyFallbackIfNeeded()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    iget-wide v3, v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mEffectiveFromElapsedMillis:J

    .line 41
    .line 42
    cmp-long v0, v3, v1

    .line 43
    .line 44
    if-lez v0, :cond_1

    .line 45
    .line 46
    new-instance v0, Landroid/os/TimestampedValue;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 49
    .line 50
    invoke-interface {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-direct {v0, v2, v3, v4}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "disableTelephonyFallbackIfNeeded: mTelephonyTimeZoneFallbackEnabled="

    .line 64
    .line 65
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-interface {v1, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->addDebugLogEntry(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method

.method public final doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mGeoLocationFallbackEnabled:Z

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const-string/jumbo v4, "time_zone_detector"

    .line 10
    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    .line 16
    iget-boolean v1, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v0, "doAutoTimeZoneDetection - GeoLocationFallback Enabled"

    .line 21
    .line 22
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move v0, v2

    .line 26
    :cond_0
    const-string v1, "Unknown detection mode: "

    .line 27
    .line 28
    if-eqz v0, :cond_d

    .line 29
    .line 30
    const/4 v5, 0x1

    .line 31
    if-eq v0, v5, :cond_e

    .line 32
    .line 33
    if-eq v0, v3, :cond_c

    .line 34
    .line 35
    if-eq v0, v2, :cond_1

    .line 36
    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_1
    iget-boolean p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mGeoLocationFallbackEnabled:Z

    .line 55
    .line 56
    if-eqz p1, :cond_b

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    iget v0, p1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    .line 65
    .line 66
    if-lt v0, v3, :cond_3

    .line 67
    .line 68
    iget-object p1, p1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-nez p1, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const-string/jumbo p1, "useGeoLocationTimezoneFallbackIfNeeded - TelephonyTimeZoneCertain, return false"

    .line 78
    .line 79
    .line 80
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    goto/16 :goto_3

    .line 84
    .line 85
    :cond_3
    :goto_0
    const-string p1, "isTelephonyTimeZoneCertain - telephony uncertain"

    .line 86
    .line 87
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const/4 v0, 0x0

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    iget-object p1, p1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 98
    .line 99
    iget-object p1, p1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mCountryIso:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    move-object p1, v0

    .line 103
    :goto_1
    const-string/jumbo v1, "useGeoLocationTimezoneFallbackIfNeeded - currentIso:"

    .line 104
    .line 105
    .line 106
    const-string v2, " ,mLastTelephonyTimezoneIso:"

    .line 107
    .line 108
    invoke-static {v1, p1, v2}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLastTelephonyTimezoneIso:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_b

    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLastTelephonyTimezoneIso:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_5

    .line 137
    .line 138
    goto/16 :goto_3

    .line 139
    .line 140
    :cond_5
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 147
    .line 148
    if-eqz v1, :cond_9

    .line 149
    .line 150
    iget-object v1, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 151
    .line 152
    if-nez v1, :cond_6

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_6
    iget-object v1, v1, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    .line 156
    .line 157
    if-eqz v1, :cond_9

    .line 158
    .line 159
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_7

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 167
    .line 168
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    if-eqz v2, :cond_8

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_8
    const/4 v0, 0x0

    .line 180
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Ljava/lang/String;

    .line 185
    .line 186
    :cond_9
    :goto_2
    const-string/jumbo v1, "useGeoLocationTimezoneFallbackIfNeeded - geoTimeZoneId:"

    .line 187
    .line 188
    .line 189
    invoke-static {v1, v0, v4}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    invoke-static {p1}, Landroid/util/TimeUtils;->getTimeZoneIdsForCountryCode(Ljava/lang/String;)Ljava/util/List;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    if-nez p1, :cond_a

    .line 199
    .line 200
    new-instance p1, Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .line 204
    .line 205
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v2, "getCountryTimeZoneList - timeZoneList:"

    .line 208
    .line 209
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .line 221
    .line 222
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    if-eqz p1, :cond_b

    .line 227
    .line 228
    const-string p1, "doAutoTimeZoneDetection - use GEO case, not Telephony"

    .line 229
    .line 230
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string p2, ", geolocation fallback mode"

    .line 242
    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doGeolocationTimeZoneDetection(Ljava/lang/String;)Z

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    if-nez p0, :cond_e

    .line 255
    .line 256
    const-string p0, "doAutoTimeZoneDetection - geolocation fallback failed"

    .line 257
    .line 258
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_b
    :goto_3
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doTelephonyTimeZoneDetection(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    goto :goto_4

    .line 266
    :cond_c
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doGeolocationTimeZoneDetection(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-nez v0, :cond_e

    .line 271
    .line 272
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 273
    .line 274
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    check-cast v0, Ljava/lang/Boolean;

    .line 279
    .line 280
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-eqz v0, :cond_e

    .line 285
    .line 286
    iget-boolean p1, p1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    .line 287
    .line 288
    if-eqz p1, :cond_e

    .line 289
    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    .line 291
    .line 292
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    const-string p2, ", telephony fallback mode"

    .line 299
    .line 300
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doTelephonyTimeZoneDetection(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_d
    const-string p0, ", is location off?"

    .line 312
    .line 313
    invoke-static {v0, v1, p0, v4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :cond_e
    :goto_4
    return-void
.end method

.method public final doGeolocationTimeZoneDetection(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eqz v2, :cond_2

    .line 28
    .line 29
    return v3

    .line 30
    :cond_2
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 31
    .line 32
    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_3

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object v2, v0

    .line 48
    check-cast v2, Ljava/lang/String;

    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v3

    .line 54
    :cond_4
    :goto_1
    return v1
.end method

.method public final doTelephonyTimeZoneDetection(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-lt v1, v2, :cond_2

    .line 12
    .line 13
    iget-object v1, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, ", detectionReason="

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Empty zone suggestion scored higher than expected. This is an error: bestTelephonySuggestion="

    .line 26
    .line 27
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string/jumbo p1, "time_zone_detector"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v4, "Found good suggestion: bestTelephonySuggestion="

    .line 53
    .line 54
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 74
    .line 75
    iget-object p1, p1, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->mCountryIso:Ljava/lang/String;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLastTelephonyTimezoneIso:Ljava/lang/String;

    .line 78
    .line 79
    :cond_2
    return-void
.end method

.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string/jumbo p2, "mLastTelephonyTimezoneIso="

    .line 2
    .line 3
    .line 4
    const-string v0, "mGeoLocationFallbackEnabled="

    .line 5
    .line 6
    const-string/jumbo v1, "mTelephonyTimeZoneFallbackEnabled="

    .line 7
    .line 8
    .line 9
    const-string v2, "mEnvironment.getDeviceTimeZoneConfidence()="

    .line 10
    .line 11
    const-string v3, "mEnvironment.getDeviceTimeZone()="

    .line 12
    .line 13
    const-string v4, "[Capabilities="

    .line 14
    .line 15
    const-string v5, "mDetectorStatus="

    .line 16
    .line 17
    const-string v6, "mCurrentConfigurationInternal="

    .line 18
    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    const-string v7, "TimeZoneDetectorStrategy:"

    .line 21
    .line 22
    invoke-virtual {p1, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 26
    .line 27
    .line 28
    new-instance v7, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v6, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 34
    .line 35
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v6, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v5, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    .line 51
    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities()Landroid/app/time/TimeZoneCapabilities;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v4, "]"

    .line 77
    .line 78
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 94
    .line 95
    invoke-interface {v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 115
    .line 116
    invoke-interface {v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZoneConfidence()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const-string v2, "Misc state:"

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 136
    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 144
    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v4, " @ "

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v4

    .line 166
    invoke-static {v4, v5}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 188
    .line 189
    .line 190
    const-string v1, "Time zone debug log:"

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 196
    .line 197
    .line 198
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 199
    .line 200
    invoke-interface {v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->dumpDebugLog(Ljava/io/PrintWriter;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 204
    .line 205
    .line 206
    const-string v1, "Manual suggestion history:"

    .line 207
    .line 208
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 212
    .line 213
    .line 214
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 215
    .line 216
    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 220
    .line 221
    .line 222
    const-string v1, "Location algorithm event history:"

    .line 223
    .line 224
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 228
    .line 229
    .line 230
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 231
    .line 232
    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 236
    .line 237
    .line 238
    const-string v1, "Telephony suggestion history:"

    .line 239
    .line 240
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 244
    .line 245
    .line 246
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 247
    .line 248
    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 252
    .line 253
    .line 254
    const-string v1, "Geolocation fallback state:"

    .line 255
    .line 256
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 260
    .line 261
    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mGeoLocationFallbackEnabled:Z

    .line 268
    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLastTelephonyTimezoneIso:Ljava/lang/String;

    .line 285
    .line 286
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p2

    .line 293
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .line 301
    .line 302
    monitor-exit p0

    .line 303
    return-void

    .line 304
    :catchall_0
    move-exception p1

    .line 305
    monitor-exit p0

    .line 306
    throw p1
.end method

.method public final declared-synchronized enableTelephonyTimeZoneFallback(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, "enableTelephonyTimeZoneFallback:  reason="

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 19
    .line 20
    new-instance v2, Landroid/os/TimestampedValue;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 23
    .line 24
    invoke-interface {v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-direct {v2, v3, v4, v5}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", currentUserConfig="

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", mTelephonyTimeZoneFallbackEnabled="

    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 66
    .line 67
    invoke-interface {v2, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->addDebugLogEntry(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->disableTelephonyFallbackIfNeeded()V

    .line 71
    .line 72
    .line 73
    iget-boolean v0, v1, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyFallbackSupported:Z

    .line 74
    .line 75
    if-eqz v0, :cond_0

    .line 76
    .line 77
    invoke-virtual {p0, v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :goto_1
    monitor-exit p0

    .line 86
    throw p1
.end method

.method public final findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 5
    .line 6
    iget-object v4, v3, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    move v4, v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    :goto_1
    if-ge v2, v4, :cond_5

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    goto :goto_3

    .line 27
    :cond_1
    if-nez v0, :cond_2

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    iget v4, v3, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    .line 31
    .line 32
    iget v5, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    .line 33
    .line 34
    if-le v4, v5, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    if-ne v4, v5, :cond_4

    .line 38
    .line 39
    iget-object v4, v3, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    iget-object v5, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 46
    .line 47
    invoke-virtual {v5}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    if-ge v4, v5, :cond_4

    .line 52
    .line 53
    :goto_2
    move-object v0, v3

    .line 54
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    return-object v0
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 3
    .line 4
    .line 5
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    monitor-exit p0

    .line 10
    throw v0
.end method

.method public final declared-synchronized generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    move-object v5, v0

    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :goto_1
    new-instance v1, Lcom/android/server/timezonedetector/OrdinalGenerator;

    .line 15
    .line 16
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/android/server/timezonedetector/OrdinalGenerator;-><init>(Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 27
    .line 28
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestLocationAlgorithmEvent()Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-static/range {v1 .. v6}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->create(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    .line 41
    .line 42
    .line 43
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    .line 45
    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p0

    .line 48
    throw v0
.end method

.method public declared-synchronized getCachedCapabilitiesAndConfigForTests()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized getCachedDetectorStatusForTests()Landroid/app/time/TimeZoneDetectorStatus;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized getLatestLocationAlgorithmEvent()Lcom/android/server/timezonedetector/LocationAlgorithmEvent;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public declared-synchronized getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-object v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-object p1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p0

    .line 18
    throw p1
.end method

.method public final declared-synchronized handleLocationAlgorithmEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
    .locals 4

    .line 1
    const-string v0, "New location algorithm event received. event="

    .line 2
    .line 3
    const-string v1, "handleLocationAlgorithmEvent(), event="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 12
    .line 13
    invoke-virtual {v3, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateDetectorStatus()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->notifyStateChangeListenersAsynchronously$1()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 29
    .line 30
    invoke-virtual {v3}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->couldEnableTelephonyFallback()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->enableTelephonyTimeZoneFallback(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->disableTelephonyFallbackIfNeeded()V

    .line 53
    .line 54
    .line 55
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p0, v2, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    monitor-exit p0

    .line 71
    return-void

    .line 72
    :goto_2
    monitor-exit p0

    .line 73
    throw p1
.end method

.method public declared-synchronized isTelephonyFallbackEnabledForTests()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit p0

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final notifyStateChangeListenersAsynchronously$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 20
    .line 21
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    invoke-direct {v2, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/StateChangeListener;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 30
    .line 31
    invoke-interface {v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->runAsync(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method public final setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 2
    .line 3
    invoke-interface {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZoneConfidence()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v2, 0x64

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    if-gt v2, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string v0, "Set device time zone or higher confidence: newZoneId="

    .line 23
    .line 24
    const-string v1, ", cause="

    .line 25
    .line 26
    const-string v3, ", newConfidence=100"

    .line 27
    .line 28
    invoke-static {v0, p1, v1, p2, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-interface {p0, v2, p1, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->setDeviceTimeZoneAndConfidence(ILjava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final declared-synchronized suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .locals 6

    .line 1
    const-string v0, "User does not have the capability needed to set the time zone manually: capabilities="

    .line 2
    .line 3
    const-string v1, "Manual time suggestion received: suggestion="

    .line 4
    .line 5
    const-string v2, "Manual suggestion received but user != current user, userId="

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 9
    .line 10
    iget v4, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eq v4, p1, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "time_zone_detector"

    .line 16
    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, " suggestion="

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    monitor-exit p0

    .line 42
    return v5

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities()Landroid/app/time/TimeZoneCapabilities;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/app/time/TimeZoneCapabilities;->getSetManualTimeZoneCapability()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    const/16 v4, 0x28

    .line 73
    .line 74
    if-eq v3, v4, :cond_1

    .line 75
    .line 76
    const-string/jumbo p2, "time_zone_detector"

    .line 77
    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, ", timeZoneId="

    .line 88
    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, ", cause="

    .line 96
    .line 97
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    .line 110
    monitor-exit p0

    .line 111
    return v5

    .line 112
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 113
    .line 114
    invoke-virtual {v0, p2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    .line 119
    .line 120
    monitor-exit p0

    .line 121
    const/4 p0, 0x1

    .line 122
    return p0

    .line 123
    :goto_0
    monitor-exit p0

    .line 124
    throw p1
.end method

.method public final declared-synchronized updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z
    .locals 7

    .line 1
    const-string v0, ", bypassUserPolicyChecks=false"

    .line 2
    .line 3
    const-string/jumbo v1, "updateConfiguration: userId="

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 8
    .line 9
    check-cast v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 10
    .line 11
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities()Landroid/app/time/TimeZoneCapabilities;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    new-instance v5, Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 24
    .line 25
    invoke-direct {v5}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-boolean v6, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 29
    .line 30
    invoke-virtual {v5, v6}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    iget-boolean v3, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    .line 35
    .line 36
    invoke-virtual {v5, v3}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v4, v3, p2}, Landroid/app/time/TimeZoneCapabilities;->tryApplyConfigChanges(Landroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration;

    .line 45
    .line 46
    .line 47
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    if-nez v3, :cond_0

    .line 49
    .line 50
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    const/4 v2, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    :try_start_3
    invoke-virtual {v2, p1, p2, v3}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 54
    .line 55
    .line 56
    :try_start_4
    monitor-exit v2

    .line 57
    const/4 v2, 0x1

    .line 58
    :goto_0
    if-eqz v2, :cond_1

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, ", configuration="

    .line 69
    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired$1(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    goto :goto_2

    .line 89
    :cond_1
    :goto_1
    monitor-exit p0

    .line 90
    return v2

    .line 91
    :catchall_1
    move-exception p1

    .line 92
    :try_start_5
    monitor-exit v2

    .line 93
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    :goto_2
    monitor-exit p0

    .line 95
    throw p1
.end method

.method public final updateCurrentConfigurationInternalIfRequired$1(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    const-class v1, Landroid/app/ActivityManagerInternal;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    iget-boolean v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mGeoLocationFallbackEnabled:Z

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeolocationFallbackEnabled()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    :cond_0
    iput-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, " [oldConfiguration="

    .line 50
    .line 51
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ", newConfiguration="

    .line 58
    .line 59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string p1, "]"

    .line 66
    .line 67
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v1, ", GeoLocationFBEnabled: "

    .line 75
    .line 76
    invoke-static {p1, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mGeoLocationFallbackEnabled:Z

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, "->"

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeolocationFallbackEnabled()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeolocationFallbackEnabled()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mGeoLocationFallbackEnabled:Z

    .line 106
    .line 107
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 108
    .line 109
    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->addDebugLogEntry(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateDetectorStatus()Z

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->notifyStateChangeListenersAsynchronously$1()V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 119
    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_1
    return-void

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    monitor-exit v0

    .line 126
    throw p0
.end method

.method public final updateDetectorStatus()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x3

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    move v2, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    iget-boolean v2, v0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    move v2, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v2, 0x2

    .line 34
    :goto_0
    iget-boolean v5, v0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 35
    .line 36
    if-nez v5, :cond_2

    .line 37
    .line 38
    move v4, v3

    .line 39
    :cond_2
    new-instance v5, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    .line 40
    .line 41
    invoke-direct {v5, v4}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;-><init>(I)V

    .line 42
    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    iget-object v0, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    iget-boolean v1, v0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 50
    .line 51
    if-nez v1, :cond_4

    .line 52
    .line 53
    sget-object v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->NOT_SUPPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_5

    .line 61
    .line 62
    sget-object v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->RUNNING_NOT_REPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    sget-object v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->NOT_RUNNING:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 66
    .line 67
    :goto_1
    new-instance v1, Landroid/app/time/TimeZoneDetectorStatus;

    .line 68
    .line 69
    invoke-direct {v1, v2, v5, v0}, Landroid/app/time/TimeZoneDetectorStatus;-><init>(ILandroid/app/time/TelephonyTimeZoneAlgorithmStatus;Landroid/app/time/LocationTimeZoneAlgorithmStatus;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneDetectorStatus;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    xor-int/2addr v0, v3

    .line 79
    if-eqz v0, :cond_6

    .line 80
    .line 81
    iput-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    .line 82
    .line 83
    :cond_6
    return v0
.end method
