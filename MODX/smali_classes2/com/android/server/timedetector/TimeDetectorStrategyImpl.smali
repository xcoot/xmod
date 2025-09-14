.class public final Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# static fields
.field static final MAX_SUGGESTION_TIME_AGE_MILLIS:J = 0x5265c00L

.field static final TELEPHONY_BUCKET_SIZE_MILLIS:I = 0x36ee80


# instance fields
.field public mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

.field public final mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

.field public mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

.field public final mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

.field public final mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

.field public final mStateChangeListeners:Ljava/util/List;

.field public final mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;Lcom/android/server/timedetector/ServiceConfigAccessor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 26
    .line 27
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 33
    .line 34
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 40
    .line 41
    new-instance v0, Landroid/util/ArraySet;

    .line 42
    .line 43
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

    .line 47
    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 52
    .line 53
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 57
    .line 58
    monitor-enter p0

    .line 59
    :try_start_0
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V

    .line 62
    .line 63
    .line 64
    check-cast p2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 65
    .line 66
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    iget-object v0, p2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 68
    .line 69
    check-cast v0, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 72
    .line 73
    .line 74
    :try_start_2
    monitor-exit p2

    .line 75
    const-string p1, "TimeDetectorStrategyImpl:"

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    goto :goto_0

    .line 84
    :catchall_1
    move-exception p1

    .line 85
    monitor-exit p2

    .line 86
    throw p1

    .line 87
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 88
    throw p1
.end method

.method public static isNtpSetByMdm()Z
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Landroid/sec/enterprise/IEDMProxy;->isNtpSetByMDM()Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, "Remote Exception: "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string/jumbo v1, "time_detector"

    .line 31
    .line 32
    .line 33
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    return v0
.end method

.method public static validateSuggestionAgainstLowerBound(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;Ljava/time/Instant;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long p0, v0, v2

    .line 10
    .line 11
    if-lez p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "Suggestion points to time before lower bound, skipping it. suggestion="

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p1, ", lower bound="

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string/jumbo p1, "time_detector"

    .line 36
    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :cond_0
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public static validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p2, v0, p0

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez p2, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    sub-long/2addr p0, v0

    .line 12
    const-wide/32 v0, 0x5265c00

    .line 13
    .line 14
    .line 15
    cmp-long p0, p0, v0

    .line 16
    .line 17
    if-gtz p0, :cond_1

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    :cond_1
    return v2
.end method


# virtual methods
.method public final declared-synchronized clearLatestNetworkSuggestion()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->notifyNetworkTimeUpdateListenersAsynchronously()V

    .line 9
    .line 10
    .line 11
    const-string v0, "Network time cleared"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public final declared-synchronized confirmTime(Landroid/app/time/UnixEpochTime;)Z
    .locals 10

    .line 1
    const-string v0, " newTimeConfidence=100 currentElapsedRealtimeMillis="

    .line 2
    .line 3
    const-string v1, "Confirm system clock time. confirmationTime="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 10
    .line 11
    check-cast v2, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/android/server/timedetector/EnvironmentImpl;->acquireWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_1
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 17
    .line 18
    check-cast v2, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    iget-object v4, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 28
    .line 29
    check-cast v4, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v4

    .line 38
    invoke-virtual {p1, v2, v3}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    invoke-virtual {v6}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    sub-long/2addr v6, v4

    .line 47
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v6

    .line 51
    iget-object v8, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 52
    .line 53
    iget v8, v8, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    .line 54
    .line 55
    int-to-long v8, v8

    .line 56
    cmp-long v6, v6, v8

    .line 57
    .line 58
    if-gtz v6, :cond_0

    .line 59
    .line 60
    const/4 v6, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v6, 0x0

    .line 63
    :goto_0
    if-eqz v6, :cond_1

    .line 64
    .line 65
    iget-object v7, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 66
    .line 67
    check-cast v7, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 68
    .line 69
    invoke-virtual {v7}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    const/16 v8, 0x64

    .line 74
    .line 75
    if-ge v7, v8, :cond_1

    .line 76
    .line 77
    new-instance v9, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v9, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p1, " currentSystemClockMillis="

    .line 92
    .line 93
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p1, " (old) currentTimeConfidence="

    .line 100
    .line 101
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string/jumbo v0, "time_detector"

    .line 112
    .line 113
    .line 114
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 118
    .line 119
    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 120
    .line 121
    invoke-virtual {v0, v8, p1}, Lcom/android/server/timedetector/EnvironmentImpl;->setSystemClockConfidence(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catchall_0
    move-exception p1

    .line 126
    goto :goto_2

    .line 127
    :cond_1
    :goto_1
    :try_start_2
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 128
    .line 129
    check-cast p1, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    .line 133
    .line 134
    monitor-exit p0

    .line 135
    return v6

    .line 136
    :catchall_1
    move-exception p1

    .line 137
    goto :goto_3

    .line 138
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 139
    .line 140
    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    .line 143
    .line 144
    .line 145
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :goto_3
    monitor-exit p0

    .line 147
    throw p1
.end method

.method public final doAutoTimeDetection(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/timedetector/ConfigurationInternal;->mOriginPriorities:[I

    .line 8
    .line 9
    array-length v3, v2

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    const-string/jumbo v5, "time_detector"

    .line 12
    .line 13
    .line 14
    const-string v6, ", detectionReason="

    .line 15
    .line 16
    if-ge v4, v3, :cond_a

    .line 17
    .line 18
    aget v7, v2, v4

    .line 19
    .line 20
    const/4 v8, 0x1

    .line 21
    const/4 v9, 0x0

    .line 22
    if-ne v7, v8, :cond_0

    .line 23
    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    if-eqz v8, :cond_4

    .line 29
    .line 30
    invoke-virtual {v8}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    new-instance v10, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v11, "Found good telephony suggestion., bestTelephonySuggestion="

    .line 37
    .line 38
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_0
    const/4 v8, 0x3

    .line 57
    if-ne v7, v8, :cond_1

    .line 58
    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    if-eqz v8, :cond_4

    .line 64
    .line 65
    iget-object v9, v8, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 66
    .line 67
    new-instance v10, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    const-string v11, "Found good network suggestion., networkSuggestion="

    .line 70
    .line 71
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v8, 0x4

    .line 89
    if-ne v7, v8, :cond_2

    .line 90
    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    if-eqz v8, :cond_4

    .line 96
    .line 97
    iget-object v9, v8, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    .line 98
    .line 99
    invoke-virtual {v9}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    const-string v11, "Found good gnss suggestion., gnssSuggestion="

    .line 106
    .line 107
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const/4 v8, 0x5

    .line 125
    if-ne v7, v8, :cond_3

    .line 126
    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    .line 128
    .line 129
    .line 130
    move-result-object v8

    .line 131
    if-eqz v8, :cond_4

    .line 132
    .line 133
    invoke-virtual {v8}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    new-instance v10, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v11, "Found good external suggestion., externalSuggestion="

    .line 140
    .line 141
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    const-string v6, "Unknown or unsupported origin="

    .line 159
    .line 160
    const-string v8, " in "

    .line 161
    .line 162
    invoke-static {v7, v6, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v8, ": Skipping"

    .line 174
    .line 175
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    :cond_4
    move-object v6, v9

    .line 186
    :goto_1
    if-eqz v9, :cond_9

    .line 187
    .line 188
    iget-object v1, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-nez v1, :cond_7

    .line 195
    .line 196
    invoke-static {}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-eqz v1, :cond_5

    .line 201
    .line 202
    goto/16 :goto_4

    .line 203
    .line 204
    :cond_5
    const-string v1, " newTimeConfidence=100 cause="

    .line 205
    .line 206
    const-string v2, "Upgrade system clock confidence. autoDetectedUnixEpochTime="

    .line 207
    .line 208
    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 209
    .line 210
    move-object v4, v3

    .line 211
    check-cast v4, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    const/16 v8, 0x64

    .line 218
    .line 219
    if-ge v7, v8, :cond_8

    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/android/server/timedetector/EnvironmentImpl;->acquireWakeLock()V

    .line 222
    .line 223
    .line 224
    :try_start_0
    move-object v10, v3

    .line 225
    check-cast v10, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 226
    .line 227
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 228
    .line 229
    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 231
    .line 232
    .line 233
    move-result-wide v10

    .line 234
    move-object v12, v3

    .line 235
    check-cast v12, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 236
    .line 237
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    .line 239
    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 241
    .line 242
    .line 243
    move-result-wide v12

    .line 244
    invoke-virtual {v9, v10, v11}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    .line 245
    .line 246
    .line 247
    move-result-object v14

    .line 248
    invoke-virtual {v14}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    .line 249
    .line 250
    .line 251
    move-result-wide v14

    .line 252
    sub-long/2addr v14, v12

    .line 253
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    .line 254
    .line 255
    .line 256
    move-result-wide v14

    .line 257
    iget-object v0, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 258
    .line 259
    iget v0, v0, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockConfidenceThresholdMillis:I

    .line 260
    .line 261
    move-object/from16 v16, v9

    .line 262
    .line 263
    int-to-long v8, v0

    .line 264
    cmp-long v0, v14, v8

    .line 265
    .line 266
    if-gtz v0, :cond_6

    .line 267
    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    move-object/from16 v9, v16

    .line 274
    .line 275
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v1, " currentElapsedRealtimeMillis="

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    const-string v1, " currentSystemClockMillis="

    .line 293
    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    const-string v1, " currentTimeConfidence="

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    .line 314
    .line 315
    check-cast v3, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 316
    .line 317
    const/16 v1, 0x64

    .line 318
    .line 319
    invoke-virtual {v3, v1, v0}, Lcom/android/server/timedetector/EnvironmentImpl;->setSystemClockConfidence(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .line 321
    .line 322
    goto :goto_2

    .line 323
    :catchall_0
    move-exception v0

    .line 324
    goto :goto_3

    .line 325
    :cond_6
    :goto_2
    invoke-virtual {v4}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :goto_3
    invoke-virtual {v4}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    .line 330
    .line 331
    .line 332
    throw v0

    .line 333
    :cond_7
    :goto_4
    invoke-virtual {v0, v7, v9, v6}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceIfRequired(ILandroid/app/time/UnixEpochTime;Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    :cond_8
    :goto_5
    return-void

    .line 337
    :cond_9
    add-int/lit8 v4, v4, 0x1

    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 342
    .line 343
    const-string v3, "Could not determine time: No suggestion found in originPriorities="

    .line 344
    .line 345
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    return-void
.end method

.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p2, "[Capabilities="

    .line 2
    .line 3
    const-string v0, "mCurrentConfigurationInternal="

    .line 4
    .line 5
    const-string v1, "mLastAutoSystemClockTimeSet="

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    const-string v2, "TimeDetectorStrategy:"

    .line 9
    .line 10
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 14
    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/android/server/timedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, "]"

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string p2, "mEnvironment:"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 82
    .line 83
    .line 84
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 85
    .line 86
    check-cast p2, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Lcom/android/server/timedetector/EnvironmentImpl;->dumpDebugLog(Landroid/util/IndentingPrintWriter;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 92
    .line 93
    .line 94
    const-string p2, "Time change log:"

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 100
    .line 101
    .line 102
    sget-object p2, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 103
    .line 104
    invoke-virtual {p2, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 108
    .line 109
    .line 110
    const-string p2, "Telephony suggestion history:"

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 116
    .line 117
    .line 118
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 124
    .line 125
    .line 126
    const-string p2, "Network suggestion history:"

    .line 127
    .line 128
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 132
    .line 133
    .line 134
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 135
    .line 136
    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 140
    .line 141
    .line 142
    const-string p2, "Gnss suggestion history:"

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 148
    .line 149
    .line 150
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 151
    .line 152
    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 156
    .line 157
    .line 158
    const-string p2, "External suggestion history:"

    .line 159
    .line 160
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 164
    .line 165
    .line 166
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 167
    .line 168
    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .line 176
    .line 177
    monitor-exit p0

    .line 178
    return-void

    .line 179
    :catchall_0
    move-exception p1

    .line 180
    monitor-exit p0

    .line 181
    throw p1
.end method

.method public final findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, -0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    move v5, v2

    .line 16
    move v6, v3

    .line 17
    :goto_0
    iget-object v7, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 18
    .line 19
    iget-object v8, v7, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    .line 20
    .line 21
    if-nez v8, :cond_0

    .line 22
    .line 23
    move v8, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    :goto_1
    if-ge v5, v8, :cond_a

    .line 30
    .line 31
    iget-object v8, v7, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->mMap:Landroid/util/ArrayMap;

    .line 32
    .line 33
    if-eqz v8, :cond_9

    .line 34
    .line 35
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    check-cast v8, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v7, v5}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    check-cast v7, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 46
    .line 47
    const-string/jumbo v9, "time_detector"

    .line 48
    .line 49
    .line 50
    if-nez v7, :cond_1

    .line 51
    .line 52
    new-instance v7, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v10, "Latest suggestion unexpectedly null for slotIndex. slotIndex="

    .line 55
    .line 56
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_1
    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    if-nez v8, :cond_2

    .line 76
    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v10, "Latest suggestion unexpectedly empty.  candidateSuggestion="

    .line 80
    .line 81
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-static {v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_2
    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-static {v0, v1, v8}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    .line 100
    .line 101
    .line 102
    move-result v10

    .line 103
    if-nez v10, :cond_3

    .line 104
    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    const-string v10, "Existing suggestion found to be invalid elapsedRealtimeMillis="

    .line 108
    .line 109
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v10, ", suggestion="

    .line 116
    .line 117
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :goto_2
    move v8, v3

    .line 131
    goto :goto_3

    .line 132
    :cond_3
    invoke-virtual {v8}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v8

    .line 136
    sub-long v8, v0, v8

    .line 137
    .line 138
    const-wide/32 v10, 0x36ee80

    .line 139
    .line 140
    .line 141
    div-long/2addr v8, v10

    .line 142
    long-to-int v8, v8

    .line 143
    const/16 v9, 0x18

    .line 144
    .line 145
    if-lt v8, v9, :cond_4

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    rsub-int/lit8 v8, v8, 0x18

    .line 149
    .line 150
    :goto_3
    if-ne v8, v3, :cond_5

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_5
    if-eqz v4, :cond_7

    .line 154
    .line 155
    if-ge v6, v8, :cond_6

    .line 156
    .line 157
    goto :goto_4

    .line 158
    :cond_6
    if-ne v6, v8, :cond_8

    .line 159
    .line 160
    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    .line 161
    .line 162
    .line 163
    move-result v8

    .line 164
    invoke-virtual {v4}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    .line 165
    .line 166
    .line 167
    move-result v9

    .line 168
    if-ge v8, v9, :cond_8

    .line 169
    .line 170
    move-object v4, v7

    .line 171
    goto :goto_5

    .line 172
    :cond_7
    :goto_4
    move-object v4, v7

    .line 173
    move v6, v8

    .line 174
    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 179
    .line 180
    invoke-direct {p0, v5}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    .line 181
    .line 182
    .line 183
    throw p0

    .line 184
    :cond_a
    return-object v4
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

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

.method public final findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-virtual {v0}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 18
    .line 19
    check-cast p0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_1
    return-object v0
.end method

.method public declared-synchronized findLatestValidExternalSuggestionForTests()Landroid/app/time/ExternalTimeSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

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

.method public final findLatestValidGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 20
    .line 21
    check-cast p0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    .line 36
    return-object v1

    .line 37
    :cond_1
    return-object v0
.end method

.method public declared-synchronized findLatestValidGnssSuggestionForTests()Lcom/android/server/timedetector/GnssTimeSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;

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

.method public final findLatestValidNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v2, v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 16
    .line 17
    check-cast p0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 18
    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_1
    return-object v0
.end method

.method public declared-synchronized findLatestValidNetworkSuggestionForTests()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

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

.method public declared-synchronized getCachedCapabilitiesAndConfigForTests()Lcom/android/server/timedetector/ConfigurationInternal;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;
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

.method public declared-synchronized getLatestExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;
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

.method public declared-synchronized getLatestGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/timedetector/GnssTimeSuggestion;
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

.method public final declared-synchronized getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;
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

.method public declared-synchronized getLatestTelephonySuggestion(I)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

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
    check-cast p1, Landroid/app/timedetector/TelephonyTimeSuggestion;
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

.method public final declared-synchronized getTimeState()Landroid/app/time/TimeState;
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 3
    .line 4
    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/16 v1, 0x64

    .line 11
    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    new-instance v1, Landroid/app/time/UnixEpochTime;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 20
    .line 21
    check-cast v2, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    iget-object v4, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 31
    .line 32
    check-cast v4, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Landroid/app/time/TimeState;

    .line 45
    .line 46
    invoke-direct {v2, v1, v0}, Landroid/app/time/TimeState;-><init>(Landroid/app/time/UnixEpochTime;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-object v2

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit p0

    .line 53
    throw v0
.end method

.method public final notifyNetworkTimeUpdateListenersAsynchronously()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 18
    .line 19
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    new-instance v2, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/StateChangeListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 28
    .line 29
    check-cast v1, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method public final setSystemClockAndConfidenceIfRequired(ILandroid/app/time/UnixEpochTime;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    move v0, v2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    const-string v3, ", cause="

    .line 10
    .line 11
    const-string v4, ", time="

    .line 12
    .line 13
    const-string/jumbo v5, "time_detector"

    .line 14
    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    new-instance p0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, "Auto time detection is not enabled / no confidence update is needed. origin="

    .line 35
    .line 36
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p0, p3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return v1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-static {}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "Auto time detection is enabled. origin="

    .line 76
    .line 77
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p3, v5}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return v1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 101
    .line 102
    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->acquireWakeLock()V

    .line 105
    .line 106
    .line 107
    const/16 v1, 0x64

    .line 108
    .line 109
    :try_start_0
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceUnderWakeLock(ILandroid/app/time/UnixEpochTime;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    .line 113
    .line 114
    .line 115
    return v2

    .line 116
    :catchall_0
    move-exception p0

    .line 117
    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    .line 118
    .line 119
    .line 120
    throw p0
.end method

.method public final setSystemClockAndConfidenceUnderWakeLock(ILandroid/app/time/UnixEpochTime;ILjava/lang/String;)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    move-object/from16 v4, p4

    .line 10
    .line 11
    iget-object v5, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 12
    .line 13
    check-cast v5, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 14
    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 19
    .line 20
    .line 21
    move-result-wide v6

    .line 22
    const/4 v10, 0x2

    .line 23
    if-eq v1, v10, :cond_0

    .line 24
    .line 25
    const/4 v11, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v11, 0x0

    .line 28
    :goto_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v12

    .line 35
    const-string v14, " cause="

    .line 36
    .line 37
    const-string v15, " elapsedRealtimeMillis="

    .line 38
    .line 39
    const-string/jumbo v8, "time_detector"

    .line 40
    .line 41
    .line 42
    if-eqz v11, :cond_1

    .line 43
    .line 44
    iget-object v11, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    .line 45
    .line 46
    if-eqz v11, :cond_1

    .line 47
    .line 48
    invoke-virtual {v11, v6, v7}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    .line 49
    .line 50
    .line 51
    move-result-object v11

    .line 52
    invoke-virtual {v11}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v9

    .line 56
    sub-long v18, v9, v12

    .line 57
    .line 58
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v18

    .line 62
    const-wide/16 v20, 0x7d0

    .line 63
    .line 64
    cmp-long v11, v18, v20

    .line 65
    .line 66
    if-lez v11, :cond_1

    .line 67
    .line 68
    new-instance v11, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v3, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. origin="

    .line 71
    .line 72
    invoke-direct {v11, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v3, " expectedTimeMillis="

    .line 89
    .line 90
    move-object/from16 v18, v15

    .line 91
    .line 92
    const-string v15, " actualTimeMillis="

    .line 93
    .line 94
    invoke-static {v11, v3, v9, v10, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    move-object/from16 v18, v15

    .line 115
    .line 116
    :goto_1
    invoke-virtual {v2, v6, v7}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v9

    .line 124
    sub-long v19, v9, v12

    .line 125
    .line 126
    move-wide/from16 v21, v9

    .line 127
    .line 128
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    .line 129
    .line 130
    .line 131
    move-result-wide v9

    .line 132
    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 133
    .line 134
    iget v3, v3, Lcom/android/server/timedetector/ConfigurationInternal;->mSystemClockUpdateThresholdMillis:I

    .line 135
    .line 136
    move-wide/from16 v19, v12

    .line 137
    .line 138
    int-to-long v11, v3

    .line 139
    const/4 v3, 0x3

    .line 140
    if-ne v1, v3, :cond_2

    .line 141
    .line 142
    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    .line 143
    .line 144
    invoke-virtual {v2, v3}, Landroid/app/time/UnixEpochTime;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-nez v3, :cond_2

    .line 149
    .line 150
    const-string v3, "For more accuracy, systemClockUpdateThreshold changed to 500"

    .line 151
    .line 152
    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    const-wide/16 v11, 0x1f4

    .line 156
    .line 157
    :cond_2
    cmp-long v3, v9, v11

    .line 158
    .line 159
    if-ltz v3, :cond_3

    .line 160
    .line 161
    const/4 v3, 0x1

    .line 162
    goto :goto_2

    .line 163
    :cond_3
    const/4 v3, 0x0

    .line 164
    :goto_2
    invoke-virtual {v5}, Lcom/android/server/timedetector/EnvironmentImpl;->systemClockConfidence()I

    .line 165
    .line 166
    .line 167
    move-result v13

    .line 168
    move/from16 v15, p3

    .line 169
    .line 170
    move-wide/from16 v23, v9

    .line 171
    .line 172
    if-eq v15, v13, :cond_4

    .line 173
    .line 174
    const/16 v16, 0x1

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_4
    const/16 v16, 0x0

    .line 178
    .line 179
    :goto_3
    const-string v9, " newSystemClockMillis="

    .line 180
    .line 181
    const-string v10, " (old) actualSystemClockMillis="

    .line 182
    .line 183
    move-wide/from16 v25, v11

    .line 184
    .line 185
    const-string v11, " currentTimeConfidence="

    .line 186
    .line 187
    const-string v12, " newTimeConfidence="

    .line 188
    .line 189
    const-string v0, " newTime="

    .line 190
    .line 191
    if-eqz v3, :cond_6

    .line 192
    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v1, "Set system clock & confidence. origin="

    .line 196
    .line 197
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    move-object/from16 v0, v18

    .line 217
    .line 218
    invoke-static {v15, v14, v4, v0, v3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    move-wide/from16 v0, v19

    .line 225
    .line 226
    invoke-static {v3, v10, v0, v1, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 227
    .line 228
    .line 229
    move-wide/from16 v0, v21

    .line 230
    .line 231
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v5}, Lcom/android/server/timedetector/EnvironmentImpl;->checkWakeLockHeld()V

    .line 245
    .line 246
    .line 247
    iget-object v4, v5, Lcom/android/server/timedetector/EnvironmentImpl;->mAlarmManagerInternal:Lcom/android/server/alarm/AlarmManagerService$LocalService;

    .line 248
    .line 249
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService$LocalService;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 250
    .line 251
    iget-object v5, v4, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 252
    .line 253
    monitor-enter v5

    .line 254
    :try_start_0
    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 255
    .line 256
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    invoke-static {v15, v3, v0, v1}, Lcom/android/server/SystemClockTime;->setTimeAndConfidence(ILjava/lang/String;J)V

    .line 260
    .line 261
    .line 262
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move/from16 v1, p1

    .line 267
    .line 268
    const/4 v0, 0x2

    .line 269
    if-eq v1, v0, :cond_5

    .line 270
    .line 271
    move-object/from16 v0, p0

    .line 272
    .line 273
    iput-object v2, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    .line 274
    .line 275
    goto/16 :goto_4

    .line 276
    .line 277
    :cond_5
    move-object/from16 v0, p0

    .line 278
    .line 279
    const/4 v1, 0x0

    .line 280
    iput-object v1, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    .line 281
    .line 282
    goto/16 :goto_4

    .line 283
    .line 284
    :catchall_0
    move-exception v0

    .line 285
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    throw v0

    .line 287
    :cond_6
    move-object v3, v0

    .line 288
    move-object/from16 v0, v18

    .line 289
    .line 290
    move-wide/from16 v27, v19

    .line 291
    .line 292
    move-wide/from16 v29, v21

    .line 293
    .line 294
    if-eqz v16, :cond_7

    .line 295
    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    move-object/from16 v16, v5

    .line 299
    .line 300
    const-string v5, "Set system clock confidence. origin="

    .line 301
    .line 302
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-static {v15, v14, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    move-wide/from16 v2, v27

    .line 328
    .line 329
    invoke-static {v1, v10, v2, v3, v9}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 330
    .line 331
    .line 332
    move-wide/from16 v2, v29

    .line 333
    .line 334
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .line 349
    .line 350
    move-object/from16 v5, v16

    .line 351
    .line 352
    invoke-virtual {v5, v15, v0}, Lcom/android/server/timedetector/EnvironmentImpl;->setSystemClockConfidence(ILjava/lang/String;)V

    .line 353
    .line 354
    .line 355
    goto :goto_4

    .line 356
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    const-string v5, "Not setting system clock or confidence. origin="

    .line 359
    .line 360
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v5

    .line 367
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-static {v15, v14, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    const-string v0, " systemClockUpdateThreshold="

    .line 386
    .line 387
    const-string v2, " absTimeDifference="

    .line 388
    .line 389
    move-wide/from16 v3, v25

    .line 390
    .line 391
    invoke-static {v1, v0, v3, v4, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 392
    .line 393
    .line 394
    move-wide/from16 v2, v23

    .line 395
    .line 396
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    :goto_4
    return-void
.end method

.method public final declared-synchronized setTimeState(Landroid/app/time/TimeState;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/time/TimeState;->getUserShouldConfirmTime()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x64

    .line 14
    .line 15
    :goto_0
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 16
    .line 17
    check-cast v1, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/android/server/timedetector/EnvironmentImpl;->acquireWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-virtual {p1}, Landroid/app/time/TimeState;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string/jumbo v1, "setTimeState()"

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x2

    .line 30
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceUnderWakeLock(ILandroid/app/time/UnixEpochTime;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    :try_start_2
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 34
    .line 35
    check-cast p1, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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
    goto :goto_1

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    :try_start_3
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 46
    .line 47
    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/android/server/timedetector/EnvironmentImpl;->releaseWakeLock()V

    .line 50
    .line 51
    .line 52
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :goto_1
    monitor-exit p0

    .line 54
    throw p1
.end method

.method public final storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    const-string/jumbo v5, "time_detector"

    .line 29
    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    new-instance p0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v0, "Previous suggestion is null or has a null time. previousSuggestion="

    .line 36
    .line 37
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", suggestion="

    .line 44
    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return v4

    .line 59
    :cond_0
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-static {v0, v3}, Landroid/app/time/UnixEpochTime;->elapsedRealtimeDifference(Landroid/app/time/UnixEpochTime;Landroid/app/time/UnixEpochTime;)J

    .line 64
    .line 65
    .line 66
    move-result-wide v6

    .line 67
    const-wide/16 v8, 0x0

    .line 68
    .line 69
    cmp-long v0, v6, v8

    .line 70
    .line 71
    if-gez v0, :cond_1

    .line 72
    .line 73
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "Out of order telephony suggestion received. referenceTimeDifference="

    .line 76
    .line 77
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v0, " previousSuggestion="

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v0, " suggestion="

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    return v4

    .line 107
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    const/4 p0, 0x1

    .line 115
    return p0
.end method

.method public final declared-synchronized suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .locals 5

    .line 1
    const-string v0, "GNSS time suggestion received: suggestion="

    .line 2
    .line 3
    const-string v1, "GNSS suggestion received. currentUserConfig="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 7
    .line 8
    const-string/jumbo v3, "time_detector"

    .line 9
    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " suggestion="

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v1, p1, Lcom/android/server/timedetector/GnssTimeSuggestion;->mTimeSuggestionHelper:Landroid/app/timedetector/TimeSuggestionHelper;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroid/app/timedetector/TimeSuggestionHelper;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p0, v1, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    monitor-exit p0

    .line 50
    return-void

    .line 51
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .line 70
    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p0

    .line 75
    throw p1
.end method

.method public final declared-synchronized suggestManualTime(ILandroid/app/timedetector/ManualTimeSuggestion;)Z
    .locals 6

    .line 1
    const-string v0, "User does not have the capability needed to set the time manually: capabilities="

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
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 9
    .line 10
    iget v4, v3, Lcom/android/server/timedetector/ConfigurationInternal;->mUserId:I

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    if-eq v4, p1, :cond_0

    .line 14
    .line 15
    const-string/jumbo v0, "time_detector"

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
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v3}, Lcom/android/server/timedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/app/time/TimeCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeCapabilities;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/app/time/TimeCapabilities;->getSetManualTimeCapability()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/16 v3, 0x28

    .line 73
    .line 74
    if-eq v2, v3, :cond_1

    .line 75
    .line 76
    const-string/jumbo v2, "time_detector"

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
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, ", suggestion="

    .line 88
    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p2, ", cause="

    .line 96
    .line 97
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
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
    invoke-virtual {p2}, Landroid/app/timedetector/ManualTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 117
    .line 118
    iget-object v1, v1, Lcom/android/server/timedetector/ConfigurationInternal;->mManualSuggestionLowerBound:Ljava/time/Instant;

    .line 119
    .line 120
    invoke-virtual {p0, v0, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionCommon(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    if-eqz v2, :cond_2

    .line 125
    .line 126
    invoke-static {v0, p2, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionAgainstLowerBound(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;Ljava/time/Instant;)Z

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_2

    .line 131
    .line 132
    const/4 p2, 0x2

    .line 133
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceIfRequired(ILandroid/app/time/UnixEpochTime;Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    monitor-exit p0

    .line 138
    return p1

    .line 139
    :cond_2
    monitor-exit p0

    .line 140
    return v5

    .line 141
    :goto_0
    monitor-exit p0

    .line 142
    throw p1
.end method

.method public final declared-synchronized suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .locals 5

    .line 1
    const-string v0, "New network time suggested. suggestion="

    .line 2
    .line 3
    const-string v1, "Network suggestion received. currentUserConfig="

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 7
    .line 8
    const-string/jumbo v3, "time_detector"

    .line 9
    .line 10
    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " suggestion="

    .line 20
    .line 21
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v1, p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 38
    .line 39
    invoke-virtual {p0, v1, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isNtpSetByMdm()Z

    .line 46
    .line 47
    .line 48
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-nez v1, :cond_0

    .line 50
    .line 51
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {v1, p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 70
    .line 71
    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->notifyNetworkTimeUpdateListenersAsynchronously()V

    .line 77
    .line 78
    .line 79
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :goto_0
    monitor-exit p0

    .line 97
    throw p1
.end method

.method public final declared-synchronized updateConfiguration(ILandroid/app/time/TimeConfiguration;)Z
    .locals 4

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
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 8
    .line 9
    check-cast v2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    .line 10
    .line 11
    invoke-virtual {v2, p1, p2}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->updateConfiguration(ILandroid/app/time/TimeConfiguration;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", configuration="

    .line 26
    .line 27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit p0

    .line 47
    return v2

    .line 48
    :goto_1
    monitor-exit p0

    .line 49
    throw p1
.end method

.method public final updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

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
    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    .line 19
    .line 20
    .line 21
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    .line 23
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/android/server/timedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string p1, " [oldConfiguration="

    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, ", newConfiguration="

    .line 47
    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string p1, "]"

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string/jumbo v0, "time_detector"

    .line 64
    .line 65
    .line 66
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 70
    .line 71
    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    sget-object v0, Lcom/android/server/SystemClockTime;->sTimeDebugLog:Landroid/util/LocalLog;

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    .line 82
    .line 83
    check-cast p1, Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    .line 95
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 100
    .line 101
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/StateChangeListener;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 110
    .line 111
    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 112
    .line 113
    iget-object v0, v0, Lcom/android/server/timedetector/EnvironmentImpl;->mHandler:Landroid/os/Handler;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    if-eqz p1, :cond_1

    .line 126
    .line 127
    const-string p1, "Auto time detection config changed."

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    .line 135
    .line 136
    :cond_2
    :goto_1
    return-void

    .line 137
    :catchall_0
    move-exception p0

    .line 138
    monitor-exit v0

    .line 139
    throw p0
.end method

.method public final validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/timedetector/ConfigurationInternal;->mAutoSuggestionLowerBound:Ljava/time/Instant;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionCommon(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionAgainstLowerBound(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;Ljava/time/Instant;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
.end method

.method public final validateSuggestionCommon(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 2
    .line 3
    check-cast v0, Lcom/android/server/timedetector/EnvironmentImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    cmp-long v2, v0, v2

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    const-string/jumbo v4, "time_detector"

    .line 20
    .line 21
    .line 22
    if-gez v2, :cond_0

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string p1, "New elapsed realtime is in the future? Ignoring. elapsedRealtimeMillis="

    .line 27
    .line 28
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p1, ", suggestion="

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    return v3

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/timedetector/ConfigurationInternal;->mSuggestionUpperBound:Ljava/time/Instant;

    .line 57
    .line 58
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    .line 59
    .line 60
    .line 61
    move-result-wide p0

    .line 62
    cmp-long p0, v0, p0

    .line 63
    .line 64
    if-lez p0, :cond_1

    .line 65
    .line 66
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string p1, "Suggested value is above max time supported by this device. suggestion="

    .line 69
    .line 70
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return v3

    .line 84
    :cond_1
    const/4 p0, 0x1

    .line 85
    return p0
.end method
