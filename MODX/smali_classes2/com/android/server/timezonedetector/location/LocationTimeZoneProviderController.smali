.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# instance fields
.field public mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;

.field public mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

.field public mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

.field public final mMetricsLogger:Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;

.field public final mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field public final mRecordStateChanges:Z

.field public final mRecordedStates:Ljava/util/ArrayList;

.field public final mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field public final mSharedLock:Ljava/lang/Object;

.field public final mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

.field public final mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 13
    .line 14
    const/16 v1, 0xa

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 25
    .line 26
    iget-object v1, p1, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mLockObject:Ljava/lang/Object;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 29
    .line 30
    new-instance v2, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 31
    .line 32
    invoke-direct {v2, p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;-><init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mMetricsLogger:Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 40
    .line 41
    iput-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 42
    .line 43
    iput-boolean p5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordStateChanges:Z

    .line 44
    .line 45
    monitor-enter v1

    .line 46
    :try_start_0
    const-string p0, "UNKNOWN"

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    monitor-exit v1

    .line 52
    return-void

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method

.method public static stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v2, "Unknown provider state: "

    .line 24
    .line 25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_1

    .line 39
    .line 40
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v1, "Unable to stop "

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p0, ": it is terminated."

    .line 51
    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v1, "No need to stop "

    .line 66
    .line 67
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, ": already stopped"

    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v2, "Stopping "

    .line 89
    .line 90
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 109
    .line 110
    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_0

    .line 124
    .line 125
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 126
    .line 127
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 132
    .line 133
    const-string/jumbo v3, "stopUpdates"

    .line 134
    .line 135
    .line 136
    const/4 v4, 0x4

    .line 137
    invoke-virtual {v2, v4, v1, v1, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/4 v2, 0x0

    .line 142
    invoke-virtual {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->cancelInitializationTimeoutIfSet()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onStopUpdates()V

    .line 149
    .line 150
    .line 151
    monitor-exit v0

    .line 152
    goto :goto_1

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto :goto_0

    .line 155
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v3, "Required a started state, but was "

    .line 160
    .line 161
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    throw p0

    .line 177
    :cond_1
    :goto_1
    return-void

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const-string p1, "INITIALIZING"

    .line 22
    .line 23
    const-string v0, "initializing()"

    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 29
    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 44
    .line 45
    invoke-virtual {p0, v0, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-nez p2, :cond_3

    .line 57
    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v0, "Providers are failed: primary="

    .line 61
    .line 62
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v0, " secondary="

    .line 73
    .line 74
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "FAILED"

    .line 89
    .line 90
    invoke-virtual {p0, p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const-string p1, "Geo detection behavior disabled"

    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :cond_3
    :goto_1
    return-void
.end method

.method public final destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string v1, "destroy()"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->destroy()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->destroy()V

    .line 22
    .line 23
    .line 24
    const-string v1, "DESTROYED"

    .line 25
    .line 26
    const-string v2, "destroy()"

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "mLastEvent="

    .line 2
    .line 3
    const-string/jumbo v1, "mState="

    .line 4
    .line 5
    .line 6
    const-string/jumbo v2, "uncertaintyDelay="

    .line 7
    .line 8
    .line 9
    const-string/jumbo v3, "providerInitializationTimeoutFuzz="

    .line 10
    .line 11
    .line 12
    const-string/jumbo v4, "providerInitializationTimeout="

    .line 13
    .line 14
    .line 15
    const-string v5, "mCurrentUserConfiguration="

    .line 16
    .line 17
    iget-object v6, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v6

    .line 20
    :try_start_0
    const-string v7, "LocationTimeZoneProviderController:"

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
    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 34
    .line 35
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 51
    .line 52
    iget-object v4, v4, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 53
    .line 54
    check-cast v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 55
    .line 56
    sget-object v7, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    .line 57
    .line 58
    iget-object v4, v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    const-string v4, "ltzp_init_timeout_millis"

    .line 64
    .line 65
    invoke-static {v4, v7}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 85
    .line 86
    iget-object v3, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 87
    .line 88
    check-cast v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 89
    .line 90
    sget-object v5, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    .line 91
    .line 92
    iget-object v3, v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const-string v3, "ltzp_init_timeout_fuzz_millis"

    .line 98
    .line 99
    invoke-static {v3, v5}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 119
    .line 120
    iget-object v2, v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 121
    .line 122
    check-cast v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 123
    .line 124
    sget-object v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    .line 125
    .line 126
    iget-object v2, v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 127
    .line 128
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    .line 130
    .line 131
    const-string v2, "location_time_zone_detection_uncertainty_delay_millis"

    .line 132
    .line 133
    invoke-static {v2, v4}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 176
    .line 177
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    const-string v0, "State history:"

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 196
    .line 197
    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 201
    .line 202
    .line 203
    const-string v0, "Primary Provider:"

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 209
    .line 210
    .line 211
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 212
    .line 213
    invoke-interface {v0, p1, p2}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 217
    .line 218
    .line 219
    const-string v0, "Secondary Provider:"

    .line 220
    .line 221
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 225
    .line 226
    .line 227
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 228
    .line 229
    invoke-interface {p0, p1, p2}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 233
    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 236
    .line 237
    .line 238
    monitor-exit v6

    .line 239
    return-void

    .line 240
    :catchall_0
    move-exception p0

    .line 241
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    throw p0
.end method

.method public final generateCurrentAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x3

    .line 27
    const/4 v5, 0x2

    .line 28
    sparse-switch v2, :sswitch_data_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :sswitch_0
    const-string v2, "FAILED"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const/4 v0, 0x6

    .line 41
    goto :goto_1

    .line 42
    :sswitch_1
    const-string v2, "INITIALIZING"

    .line 43
    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    goto :goto_1

    .line 52
    :sswitch_2
    const-string v2, "CERTAIN"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_0

    .line 59
    .line 60
    move v0, v5

    .line 61
    goto :goto_1

    .line 62
    :sswitch_3
    const-string v2, "UNCERTAIN"

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    .line 70
    move v0, v4

    .line 71
    goto :goto_1

    .line 72
    :sswitch_4
    const-string v2, "DESTROYED"

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    const/4 v0, 0x5

    .line 81
    goto :goto_1

    .line 82
    :sswitch_5
    const-string v2, "UNKNOWN"

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    .line 90
    const/4 v0, 0x7

    .line 91
    goto :goto_1

    .line 92
    :sswitch_6
    const-string v2, "PROVIDERS_INITIALIZING"

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    .line 100
    move v0, v3

    .line 101
    goto :goto_1

    .line 102
    :sswitch_7
    const-string v2, "STOPPED"

    .line 103
    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    .line 110
    const/4 v0, 0x4

    .line 111
    goto :goto_1

    .line 112
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 113
    :goto_1
    if-eqz v0, :cond_1

    .line 114
    .line 115
    if-eq v0, v3, :cond_1

    .line 116
    .line 117
    if-eq v0, v5, :cond_1

    .line 118
    .line 119
    if-eq v0, v4, :cond_1

    .line 120
    .line 121
    move v7, v5

    .line 122
    goto :goto_2

    .line 123
    :cond_1
    move v7, v4

    .line 124
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->getProviderStatus()I

    .line 125
    .line 126
    .line 127
    move-result v8

    .line 128
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->getProviderStatus()I

    .line 129
    .line 130
    .line 131
    move-result v10

    .line 132
    new-instance v0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 133
    .line 134
    iget-object v1, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    if-nez v1, :cond_2

    .line 138
    .line 139
    move-object v9, v2

    .line 140
    goto :goto_3

    .line 141
    :cond_2
    invoke-virtual {v1}, Landroid/service/timezone/TimeZoneProviderEvent;->getTimeZoneProviderStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    move-object v9, v1

    .line 146
    :goto_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 147
    .line 148
    if-nez p0, :cond_3

    .line 149
    .line 150
    move-object v11, v2

    .line 151
    goto :goto_4

    .line 152
    :cond_3
    invoke-virtual {p0}, Landroid/service/timezone/TimeZoneProviderEvent;->getTimeZoneProviderStatus()Landroid/service/timezone/TimeZoneProviderStatus;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    move-object v11, p0

    .line 157
    :goto_4
    move-object v6, v0

    .line 158
    invoke-direct/range {v6 .. v11}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;-><init>(IILandroid/service/timezone/TimeZoneProviderStatus;ILandroid/service/timezone/TimeZoneProviderStatus;)V

    .line 159
    .line 160
    .line 161
    return-object v0

    .line 162
    nop

    .line 163
    :sswitch_data_0
    .sparse-switch
        -0x4584e253 -> :sswitch_7
        -0x1be9cf16 -> :sswitch_6
        0x19d1382a -> :sswitch_5
        0x1c83a5f9 -> :sswitch_4
        0x33ff1fc9 -> :sswitch_3
        0x52aa9882 -> :sswitch_2
        0x72462c4d -> :sswitch_1
        0x7b29883d -> :sswitch_0
    .end sparse-switch
.end method

.method public final getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iput-object v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 22
    .line 23
    :cond_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    iput-object v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerState:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .line 39
    .line 40
    iput-object v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mControllerStates:Ljava/util/List;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getRecordedStates()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    iput-object v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mPrimaryProviderStates:Ljava/util/List;

    .line 54
    .line 55
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getRecordedStates()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v2, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 64
    .line 65
    .line 66
    iput-object v2, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->mSecondaryProviderStates:Ljava/util/List;

    .line 67
    .line 68
    new-instance p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    .line 69
    .line 70
    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;)V

    .line 71
    .line 72
    .line 73
    monitor-exit v0

    .line 74
    return-object p0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public getUncertaintyTimeoutDelayMillis()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    .line 13
    .line 14
    return-wide v0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    const-string v0, "No item queued"

    .line 18
    .line 19
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p0
.end method

.method public final handleProviderFailedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 24
    .line 25
    invoke-virtual {p0, v2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    if-ne p1, v2, :cond_1

    .line 30
    .line 31
    iget v4, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    if-eq v4, v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_1

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v5, "Secondary provider unexpected reported a failure: failed provider="

    .line 45
    .line 46
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v5, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p1, ", primary provider="

    .line 60
    .line 61
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, ", secondary provider="

    .line 68
    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-static {p1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_2

    .line 88
    .line 89
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    .line 98
    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v0, "Both providers are terminated: primary="

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 108
    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, ", secondary="

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v0, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string v0, "FAILED"

    .line 127
    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    return-void
.end method

.method public final handleProviderStartedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 4
    .line 5
    const-string/jumbo v1, "provider="

    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", implicit uncertainty, event=null"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const-string v3, "Provider="

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    if-nez v2, :cond_1

    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, " is started, but currentUserConfiguration="

    .line 60
    .line 61
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 65
    .line 66
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v5, " suggests it shouldn\'t be."

    .line 70
    .line 71
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const/4 v5, 0x1

    .line 86
    if-eq v2, v5, :cond_5

    .line 87
    .line 88
    const/4 v3, 0x2

    .line 89
    if-eq v2, v3, :cond_3

    .line 90
    .line 91
    const/4 v3, 0x3

    .line 92
    if-eq v2, v3, :cond_2

    .line 93
    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    const-string p1, "Unknown eventType="

    .line 97
    .line 98
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    invoke-static {p0, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_2
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, ", explicit uncertainty. event="

    .line 130
    .line 131
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p0, p1, v2, v3, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 146
    .line 147
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    .line 148
    .line 149
    .line 150
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 151
    .line 152
    if-ne p1, v1, :cond_4

    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 155
    .line 156
    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 157
    .line 158
    .line 159
    :cond_4
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const-string v2, "CERTAIN"

    .line 164
    .line 165
    invoke-virtual {p0, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getElapsedRealtimeMillis()J

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    invoke-virtual {v1}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    new-instance v4, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 177
    .line 178
    invoke-direct {v4, v2, v3, v1}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    .line 182
    .line 183
    const-string v2, "Provider event received: provider="

    .line 184
    .line 185
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string p1, ", providerEvent="

    .line 192
    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string p1, ", suggestionCreationTime="

    .line 200
    .line 201
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    .line 208
    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 210
    .line 211
    .line 212
    move-result-wide v2

    .line 213
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p0, v4, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->reportSuggestionEvent(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_0

    .line 224
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string p1, " is started, but event suggests it shouldn\'t be"

    .line 233
    .line 234
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-static {p0, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    .line 243
    .line 244
    :goto_0
    return-void
.end method

.method public final handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V
    .locals 10

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v4, "UNCERTAIN"

    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    new-instance p4, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-direct {p4, p2, p3, v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;-><init>(JLjava/util/List;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "Uncertainty received from "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 49
    .line 50
    .line 51
    iget-object v1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ": primary="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", secondary="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", uncertaintyStarted="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p0, p4, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->reportSuggestionEvent(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v4, "Starting uncertainty timeout: reason="

    .line 95
    .line 96
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p4

    .line 106
    invoke-static {p4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 110
    .line 111
    iget-object p4, p4, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 112
    .line 113
    check-cast p4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 114
    .line 115
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    .line 116
    .line 117
    iget-object p4, p4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 118
    .line 119
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    const-string p4, "location_time_zone_detection_uncertainty_delay_millis"

    .line 123
    .line 124
    invoke-static {p4, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    .line 125
    .line 126
    .line 127
    move-result-object p4

    .line 128
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;

    .line 129
    .line 130
    move-object v4, v1

    .line 131
    move-object v5, p0

    .line 132
    move-object v6, p1

    .line 133
    move-wide v7, p2

    .line 134
    move-object v9, p4

    .line 135
    invoke-direct/range {v4 .. v9}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p4}, Ljava/time/Duration;->toMillis()J

    .line 139
    .line 140
    .line 141
    move-result-wide p2

    .line 142
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    .line 143
    .line 144
    .line 145
    const/4 p4, 0x1

    .line 146
    iput-boolean p4, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 147
    .line 148
    iput-wide p2, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    .line 149
    .line 150
    new-instance p4, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;

    .line 151
    .line 152
    invoke-direct {p4, v0, v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;Ljava/lang/Runnable;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 156
    .line 157
    iget-object v1, v1, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    .line 158
    .line 159
    invoke-virtual {v1, p4, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 160
    .line 161
    .line 162
    :cond_1
    :goto_0
    if-ne p1, v3, :cond_2

    .line 163
    .line 164
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 165
    .line 166
    invoke-virtual {p0, v2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 167
    .line 168
    .line 169
    :cond_2
    return-void
.end method

.method public final initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string v1, "initialize()"

    .line 10
    .line 11
    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 19
    .line 20
    check-cast p1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 21
    .line 22
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    const-class p2, Landroid/app/ActivityManagerInternal;

    .line 24
    .line 25
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    check-cast p2, Landroid/app/ActivityManagerInternal;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    invoke-virtual {p1, p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 36
    .line 37
    .line 38
    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    monitor-exit p1

    .line 40
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 41
    .line 42
    new-instance p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    .line 45
    .line 46
    .line 47
    const-string p2, "PROVIDERS_INITIALIZING"

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "STOPPED"

    .line 63
    .line 64
    const-string p2, "initialize()"

    .line 65
    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 70
    .line 71
    const/4 p2, 0x0

    .line 72
    invoke-virtual {p0, p2, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 73
    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_0

    .line 79
    :catchall_1
    move-exception p0

    .line 80
    monitor-exit p1

    .line 81
    throw p0

    .line 82
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    throw p0
.end method

.method public isUncertaintyTimeoutSet()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 6
    .line 7
    .line 8
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 9
    .line 10
    return p0
.end method

.method public final reportEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "makeSuggestion: suggestion="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerCallbackImpl;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 24
    .line 25
    .line 26
    const-class v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    invoke-direct {v1, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorInternalImpl;->mHandler:Landroid/os/Handler;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 48
    .line 49
    return-void
.end method

.method public final reportSuggestionEvent(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->generateCurrentAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 6
    .line 7
    invoke-direct {v1, v0, p1}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;-><init>(Landroid/app/time/LocationTimeZoneAlgorithmStatus;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    .line 8
    .line 9
    .line 10
    filled-new-array {p2}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->addDebugInfo([Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->reportEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordStateChanges:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mMetricsLogger:Lcom/android/server/timezonedetector/location/RealControllerMetricsLogger;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 v0, 0x1

    .line 35
    const/4 v1, 0x0

    .line 36
    const/4 v2, 0x7

    .line 37
    const/4 v3, 0x5

    .line 38
    const/4 v4, 0x4

    .line 39
    const/4 v5, 0x3

    .line 40
    const/4 v6, 0x2

    .line 41
    const/4 v7, 0x6

    .line 42
    sparse-switch p0, :sswitch_data_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :sswitch_0
    const-string p0, "FAILED"

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    move p0, v7

    .line 55
    goto :goto_1

    .line 56
    :sswitch_1
    const-string p0, "INITIALIZING"

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    if-eqz p0, :cond_1

    .line 63
    .line 64
    move p0, v6

    .line 65
    goto :goto_1

    .line 66
    :sswitch_2
    const-string p0, "CERTAIN"

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_1

    .line 73
    .line 74
    move p0, v5

    .line 75
    goto :goto_1

    .line 76
    :sswitch_3
    const-string p0, "UNCERTAIN"

    .line 77
    .line 78
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    if-eqz p0, :cond_1

    .line 83
    .line 84
    move p0, v4

    .line 85
    goto :goto_1

    .line 86
    :sswitch_4
    const-string p0, "DESTROYED"

    .line 87
    .line 88
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-eqz p0, :cond_1

    .line 93
    .line 94
    move p0, v3

    .line 95
    goto :goto_1

    .line 96
    :sswitch_5
    const-string p0, "UNKNOWN"

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_1

    .line 103
    .line 104
    move p0, v2

    .line 105
    goto :goto_1

    .line 106
    :sswitch_6
    const-string p0, "PROVIDERS_INITIALIZING"

    .line 107
    .line 108
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_1

    .line 113
    .line 114
    move p0, v1

    .line 115
    goto :goto_1

    .line 116
    :sswitch_7
    const-string p0, "STOPPED"

    .line 117
    .line 118
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result p0

    .line 122
    if-eqz p0, :cond_1

    .line 123
    .line 124
    move p0, v0

    .line 125
    goto :goto_1

    .line 126
    :cond_1
    :goto_0
    const/4 p0, -0x1

    .line 127
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 128
    .line 129
    .line 130
    move v0, v1

    .line 131
    goto :goto_2

    .line 132
    :pswitch_0
    move v0, v2

    .line 133
    goto :goto_2

    .line 134
    :pswitch_1
    move v0, v7

    .line 135
    goto :goto_2

    .line 136
    :pswitch_2
    move v0, v3

    .line 137
    goto :goto_2

    .line 138
    :pswitch_3
    move v0, v4

    .line 139
    goto :goto_2

    .line 140
    :pswitch_4
    move v0, v5

    .line 141
    goto :goto_2

    .line 142
    :pswitch_5
    move v0, v6

    .line 143
    :goto_2
    :pswitch_6
    const/16 p0, 0x19f

    .line 144
    .line 145
    invoke-static {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 146
    .line 147
    .line 148
    :cond_2
    return-void

    .line 149
    :sswitch_data_0
    .sparse-switch
        -0x4584e253 -> :sswitch_7
        -0x1be9cf16 -> :sswitch_6
        0x19d1382a -> :sswitch_5
        0x1c83a5f9 -> :sswitch_4
        0x33ff1fc9 -> :sswitch_3
        0x52aa9882 -> :sswitch_2
        0x72462c4d -> :sswitch_1
        0x7b29883d -> :sswitch_0
    .end sparse-switch

    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->generateCurrentAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;-><init>(Landroid/app/time/LocationTimeZoneAlgorithmStatus;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    .line 12
    .line 13
    .line 14
    filled-new-array {p2}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1, p2}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->addDebugInfo([Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->reportEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final stopProviders(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "Providers stopped: "

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "STOPPED"

    .line 31
    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setStateAndReportStatusOnlyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    new-instance p2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v0, "Unknown provider state: provider="

    .line 15
    .line 16
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string p2, "Unable to start "

    .line 33
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ": it is terminated"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_1

    .line 53
    .line 54
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v1, "Enabling "

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 74
    .line 75
    check-cast v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 76
    .line 77
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const-string v0, "ltzp_init_timeout_millis"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 93
    .line 94
    check-cast v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 95
    .line 96
    sget-object v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string v1, "ltzp_init_timeout_fuzz_millis"

    .line 104
    .line 105
    invoke-static {v1, v2}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderControllerEnvironmentImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 112
    .line 113
    check-cast p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    .line 114
    .line 115
    sget-object v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    .line 116
    .line 117
    iget-object p0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 118
    .line 119
    const-string v3, "ltzp_event_filtering_age_threshold_millis"

    .line 120
    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    .line 123
    .line 124
    invoke-static {v3, v2}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    iget-object v2, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 131
    .line 132
    .line 133
    iget-object v2, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 134
    .line 135
    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v3, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    check-cast v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 143
    .line 144
    iget v4, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 145
    .line 146
    const/4 v5, 0x4

    .line 147
    if-ne v4, v5, :cond_0

    .line 148
    .line 149
    iget-object v3, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    check-cast v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 156
    .line 157
    const-string/jumbo v4, "startUpdates"

    .line 158
    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v6, 0x1

    .line 162
    invoke-virtual {v3, v6, v5, p2, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    const/4 v3, 0x0

    .line 167
    invoke-virtual {p1, p2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/time/Duration;->plus(Ljava/time/Duration;)Ljava/time/Duration;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iget-object v1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 175
    .line 176
    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    invoke-direct {v3, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/time/Duration;->toMillis()J

    .line 182
    .line 183
    .line 184
    move-result-wide v4

    .line 185
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    .line 186
    .line 187
    .line 188
    iput-boolean v6, v1, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 189
    .line 190
    iput-wide v4, v1, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    .line 191
    .line 192
    new-instance p2, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;

    .line 193
    .line 194
    invoke-direct {p2, v1, v3}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;Ljava/lang/Runnable;)V

    .line 195
    .line 196
    .line 197
    iget-object v3, v1, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 198
    .line 199
    iget-object v3, v3, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mHandler:Landroid/os/Handler;

    .line 200
    .line 201
    invoke-virtual {v3, p2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onStartUpdates(Ljava/time/Duration;Ljava/time/Duration;)V

    .line 205
    .line 206
    .line 207
    monitor-exit v2

    .line 208
    goto :goto_1

    .line 209
    :catchall_0
    move-exception p0

    .line 210
    goto :goto_0

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 212
    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    const-string p2, "Required stateEnum=4, but was "

    .line 216
    .line 217
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    throw p0

    .line 231
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    throw p0

    .line 233
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    const-string p2, "No need to start "

    .line 236
    .line 237
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    const-string p1, ": already started"

    .line 244
    .line 245
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    invoke-static {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :goto_1
    return-void

    .line 256
    nop

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
