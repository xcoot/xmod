.class public final Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;
.super Lcom/android/server/location/countrydetector/CountryDetectorBase;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCountServiceStateChanges:I

.field public mCountry:Landroid/location/Country;

.field public mCountryFromLocation:Landroid/location/Country;

.field public final mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public mLastCountryAddedToLogs:Landroid/location/Country;

.field public final mLocationBasedCountryDetectionListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;

.field public mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

.field public mLocationRefreshTimer:Ljava/util/Timer;

.field public final mObject:Ljava/lang/Object;

.field public mPhoneStateListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;

.field public mStartTime:J

.field public mStopTime:J

.field public final mStopped:Z

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTotalCountServiceStateChanges:I

.field public mTotalTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/location/countrydetector/CountryDetectorBase;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopped:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    .line 20
    .line 21
    new-instance v0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetectionListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$1;

    .line 27
    .line 28
    const-string/jumbo v0, "phone"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public final declared-synchronized cancelLocationRefresh()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationRefreshTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :goto_1
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final detectCountry()Landroid/location/Country;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopped:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    move-result-object p0

    return-object p0
.end method

.method public final detectCountry(ZZ)Landroid/location/Country;
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v0, 0x0

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5
    new-instance v3, Landroid/location/Country;

    invoke-direct {v3, v2, v1}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_2

    .line 6
    iget-object v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountryFromLocation:Landroid/location/Country;

    :cond_2
    if-nez v3, :cond_4

    .line 7
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 9
    new-instance v2, Landroid/location/Country;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    move-object v3, v2

    goto :goto_2

    :cond_3
    move-object v3, v0

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 11
    new-instance v0, Landroid/location/Country;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    move-object v0, v3

    :cond_6
    :goto_3
    if-nez v0, :cond_7

    goto :goto_4

    .line 12
    :cond_7
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mObject:Ljava/lang/Object;

    monitor-enter v1

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Landroid/location/Country;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 14
    monitor-exit v1

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    .line 15
    :cond_8
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLastCountryAddedToLogs:Landroid/location/Country;

    .line 16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_9

    .line 18
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 19
    :cond_9
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_4
    iget-object v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    if-eqz v1, :cond_a

    new-instance v1, Landroid/location/Country;

    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    invoke-direct {v1, v2}, Landroid/location/Country;-><init>(Landroid/location/Country;)V

    :cond_a
    move-object v3, v1

    .line 21
    iget-object v7, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;

    move-object v1, v8

    move-object v2, p0

    move-object v4, v0

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$2;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;Landroid/location/Country;Landroid/location/Country;ZZ)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountry:Landroid/location/Country;

    return-object v0

    .line 23
    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setCountryListener(Landroid/location/CountryListener;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/location/countrydetector/CountryDetectorBase;->mListener:Landroid/location/CountryListener;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    .line 25
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->stopLocationBasedDetector()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->cancelLocationRefresh()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    .line 36
    .line 37
    iget-wide v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalTime:J

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    iput-wide v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalTime:J

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :goto_1
    monitor-exit p0

    .line 44
    throw p1

    .line 45
    :cond_1
    if-nez v0, :cond_3

    .line 46
    .line 47
    monitor-enter p0

    .line 48
    :try_start_1
    iget-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    new-instance p1, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;-><init>(Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mPhoneStateListener:Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector$4;

    .line 59
    .line 60
    iget-object v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 61
    .line 62
    invoke-virtual {v2, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catchall_1
    move-exception p1

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    :goto_2
    monitor-exit p0

    .line 69
    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    iput-wide v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStartTime:J

    .line 77
    .line 78
    const-wide/16 v2, 0x0

    .line 79
    .line 80
    iput-wide v2, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    .line 81
    .line 82
    iput v1, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :goto_3
    monitor-exit p0

    .line 86
    throw p1

    .line 87
    :cond_3
    :goto_4
    return-void
.end method

.method public final declared-synchronized stopLocationBasedDetector()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;->stop()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mLocationBasedCountryDetector:Lcom/android/server/location/countrydetector/LocationBasedCountryDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :goto_1
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "ComprehensiveCountryDetector{"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-wide v3, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    .line 13
    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    cmp-long v3, v3, v5

    .line 17
    .line 18
    const-string v4, ", "

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    iget-wide v5, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStartTime:J

    .line 23
    .line 24
    sub-long v5, v0, v5

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v7, "timeRunning="

    .line 29
    .line 30
    .line 31
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v7, "lastRunTimeLength="

    .line 51
    .line 52
    .line 53
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-wide v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStopTime:J

    .line 57
    .line 58
    iget-wide v9, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mStartTime:J

    .line 59
    .line 60
    sub-long/2addr v7, v9

    .line 61
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string/jumbo v7, "totalCountServiceStateChanges="

    .line 77
    .line 78
    .line 79
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I

    .line 83
    .line 84
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    const-string/jumbo v7, "currentCountServiceStateChanges="

    .line 100
    .line 101
    .line 102
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mCountServiceStateChanges:I

    .line 106
    .line 107
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string/jumbo v7, "totalTime="

    .line 123
    .line 124
    .line 125
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-wide v7, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mTotalTime:J

    .line 129
    .line 130
    add-long/2addr v7, v5

    .line 131
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    const-string/jumbo v5, "currentTime="

    .line 147
    .line 148
    .line 149
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    const-string/jumbo v0, "countries="

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object p0, p0, Lcom/android/server/location/countrydetector/ComprehensiveCountryDetector;->mDebugLogs:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 172
    .line 173
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eqz v0, :cond_1

    .line 182
    .line 183
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Landroid/location/Country;

    .line 188
    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    const-string v3, "\n   "

    .line 192
    .line 193
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/location/Country;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_1
    const-string/jumbo p0, "}"

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p0

    .line 221
    return-object p0
.end method
