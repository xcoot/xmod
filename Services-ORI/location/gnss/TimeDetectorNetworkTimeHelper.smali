.class public final Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;
.super Lcom/android/server/location/gnss/NetworkTimeHelper;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final DEBUG:Z

.field static final MAX_NETWORK_TIME_AGE_MILLIS:I = 0x5265c00


# instance fields
.field public final mDumpLog:Landroid/util/LocalLog;

.field public final mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

.field public final mInjectTimeCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

.field public mNetworkTimeInjected:Z

.field public mPeriodicTimeInjectionEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "TDNetworkTimeHelper"

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->DEBUG:Z

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;Lcom/android/server/location/gnss/GnssLocationProviderSec;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/LocalLog;

    .line 5
    .line 6
    const/16 v1, 0xa

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mInjectTimeCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    .line 17
    .line 18
    new-instance p2, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 24
    .line 25
    check-cast p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 31
    .line 32
    check-cast p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 33
    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    monitor-exit p0

    .line 44
    throw p1
.end method


# virtual methods
.method public final maybeInjectNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;Ljava/lang/String;)V
    .locals 10

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide v0, 0x7fffffffffffffffL

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    iget-object v2, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sub-long v0, v2, v0

    .line 25
    .line 26
    :goto_0
    const-wide/32 v2, 0x5265c00

    .line 27
    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    const-string v1, "TDNetworkTimeHelper"

    .line 32
    .line 33
    sget-boolean v2, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->DEBUG:Z

    .line 34
    .line 35
    const-string v3, " reason="

    .line 36
    .line 37
    if-lez v0, :cond_2

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v4, "maybeInjectNetworkTime: Not injecting latest network time latestNetworkTime="

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_1
    return-void

    .line 71
    :cond_2
    iget-object v0, p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string/jumbo v9, "maybeInjectNetworkTime: Injecting latest network time latestNetworkTime="

    .line 84
    .line 85
    .line 86
    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p2, " System time offset millis="

    .line 99
    .line 100
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    sub-long v7, v5, v7

    .line 104
    .line 105
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    iget-object v3, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    .line 113
    .line 114
    invoke-virtual {v3, p2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    :cond_3
    invoke-virtual {v0}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    .line 123
    .line 124
    .line 125
    move-result-wide v7

    .line 126
    iget-object p2, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mInjectTimeCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

    .line 127
    .line 128
    check-cast p2, Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 129
    .line 130
    iget-object v4, p2, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 131
    .line 132
    iget v9, p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUncertaintyMillis:I

    .line 133
    .line 134
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative;->injectTime(JJI)V

    .line 135
    .line 136
    .line 137
    const/4 p1, 0x1

    .line 138
    iput-boolean p1, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mNetworkTimeInjected:Z

    .line 139
    .line 140
    return-void
.end method

.method public final declared-synchronized queryAndInjectNetworkTime(Ljava/lang/String;)V
    .locals 6

    .line 1
    const-string v0, " maxDelayMillis=86400000"

    .line 2
    .line 3
    const-string/jumbo v1, "queryAndInjectNtpTime: Scheduling periodic query reason="

    .line 4
    .line 5
    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    .line 10
    .line 11
    check-cast v2, Lcom/android/server/timedetector/TimeDetectorInternalImpl;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/android/server/timedetector/TimeDetectorInternalImpl;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 14
    .line 15
    check-cast v2, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v2, p1}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->maybeInjectNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    .line 25
    .line 26
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 27
    :try_start_1
    iget-object v4, v3, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 28
    .line 29
    iget-object v5, v3, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mScheduledRunnableToken:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 32
    .line 33
    .line 34
    :try_start_2
    monitor-exit v3

    .line 35
    iget-boolean v3, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mPeriodicTimeInjectionEnabled:Z

    .line 36
    .line 37
    if-eqz v3, :cond_1

    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p1, " latestNetworkTime="

    .line 48
    .line 49
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sget-boolean v0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->DEBUG:Z

    .line 68
    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    const-string v0, "TDNetworkTimeHelper"

    .line 72
    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object p1, p0, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->mEnvironment:Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;

    .line 77
    .line 78
    const v0, 0x5265c00

    .line 79
    .line 80
    .line 81
    int-to-long v0, v0

    .line 82
    monitor-enter p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 83
    :try_start_3
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    iget-object v2, p1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 85
    .line 86
    iget-object v3, p1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mScheduledRunnableToken:Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    .line 90
    .line 91
    :try_start_5
    monitor-exit p1

    .line 92
    iget-object v2, p1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 93
    .line 94
    new-instance v3, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl$$ExternalSyntheticLambda1;

    .line 95
    .line 96
    invoke-direct {v3, p0}, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;)V

    .line 97
    .line 98
    .line 99
    iget-object v4, p1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper$EnvironmentImpl;->mScheduledRunnableToken:Ljava/lang/Object;

    .line 100
    .line 101
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 102
    .line 103
    .line 104
    monitor-exit p1

    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    goto :goto_0

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    monitor-exit p1

    .line 110
    throw v0

    .line 111
    :goto_0
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 112
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 113
    :catchall_2
    move-exception p1

    .line 114
    goto :goto_2

    .line 115
    :cond_1
    :goto_1
    monitor-exit p0

    .line 116
    return-void

    .line 117
    :catchall_3
    move-exception p1

    .line 118
    :try_start_7
    monitor-exit v3

    .line 119
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 120
    :goto_2
    monitor-exit p0

    .line 121
    throw p1
.end method
