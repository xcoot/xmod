.class public abstract Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# instance fields
.field public final mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

.field public mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;

.field public final mProviderMetricsLogger:Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;

.field public final mProviderName:Ljava/lang/String;

.field public final mRecordStateChanges:Z

.field public final mRecordedStates:Ljava/util/ArrayList;

.field public final mSharedLock:Ljava/lang/Object;

.field public final mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

.field public final mTimeZoneProviderEventPreProcessor:Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;Ljava/lang/String;Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;Z)V
    .locals 2

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
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

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
    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 20
    .line 21
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderMetricsLogger:Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;

    .line 27
    .line 28
    new-instance p1, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;-><init>(Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 34
    .line 35
    iget-object p1, p2, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->mLockObject:Ljava/lang/Object;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderName:Ljava/lang/String;

    .line 43
    .line 44
    iput-object p4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mTimeZoneProviderEventPreProcessor:Lcom/android/server/timezonedetector/location/TimeZoneProviderEventPreProcessor;

    .line 45
    .line 46
    iput-boolean p5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordStateChanges:Z

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final cancelInitializationTimeoutIfSet()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

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
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final clearRecordedStates()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->trimToSize()V

    .line 17
    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p0
.end method

.method public final destroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 22
    .line 23
    const-string v2, "destroy"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    const/4 v4, 0x6

    .line 27
    invoke-virtual {v1, v4, v3, v3, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onDestroy()V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public getInitializationTimeoutDelay()Ljava/time/Duration;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-wide v1, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    .line 16
    .line 17
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    monitor-exit v0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "No item queued"

    .line 28
    .line 29
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0

    .line 33
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final getRecordedStates()Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public final initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;)V
    .locals 10

    .line 1
    const-string v0, "Failed to initialize: "

    .line 2
    .line 3
    const-string/jumbo v1, "onInitialize() threw exception:"

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 7
    .line 8
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v2

    .line 14
    :try_start_0
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 21
    .line 22
    const-string v9, "Initial state"

    .line 23
    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v4, p1

    .line 28
    move-object v5, p0

    .line 29
    invoke-direct/range {v4 .. v9}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v3, "initialize"

    .line 33
    .line 34
    const/4 v4, 0x4

    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-virtual {p1, v4, v5, v5, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0, p1, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->onInitialize()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const-string/jumbo v1, "onInitialize() returned false"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .line 50
    .line 51
    move v3, v4

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception v4

    .line 56
    :try_start_2
    const-string v6, "Unable to initialize the provider due to exception"

    .line 57
    .line 58
    invoke-static {v6, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :goto_0
    if-nez v3, :cond_0

    .line 78
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const/4 v1, 0x5

    .line 92
    invoke-virtual {p1, v1, v5, v5, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->newState(ILandroid/service/timezone/TimeZoneProviderEvent;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, p1, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V

    .line 98
    .line 99
    .line 100
    :cond_0
    monitor-exit v2

    .line 101
    return-void

    .line 102
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 103
    .line 104
    const-string p1, "initialize already called"

    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw p0

    .line 110
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    throw p0
.end method

.method public isInitializationTimeoutSet()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mInitializationTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 9
    .line 10
    .line 11
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onInitialize()Z
.end method

.method public abstract onStartUpdates(Ljava/time/Duration;Ljava/time/Duration;)V
.end method

.method public abstract onStopUpdates()V
.end method

.method public final setCurrentState(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->assertCurrentThread()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mSharedLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mCurrentState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderMetricsLogger:Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;

    .line 29
    .line 30
    iget v2, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    packed-switch v2, :pswitch_data_0

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    goto :goto_0

    .line 40
    :pswitch_0
    const/4 v2, 0x6

    .line 41
    goto :goto_0

    .line 42
    :pswitch_1
    const/4 v2, 0x5

    .line 43
    goto :goto_0

    .line 44
    :pswitch_2
    const/4 v2, 0x4

    .line 45
    goto :goto_0

    .line 46
    :pswitch_3
    const/4 v2, 0x3

    .line 47
    goto :goto_0

    .line 48
    :pswitch_4
    const/4 v2, 0x2

    .line 49
    goto :goto_0

    .line 50
    :pswitch_5
    const/4 v2, 0x1

    .line 51
    :goto_0
    iget v1, v1, Lcom/android/server/timezonedetector/location/RealProviderMetricsLogger;->mProviderIndex:I

    .line 52
    .line 53
    const/16 v3, 0x167

    .line 54
    .line 55
    invoke-static {v3, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 56
    .line 57
    .line 58
    iget-boolean v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordStateChanges:Z

    .line 59
    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mRecordedStates:Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catchall_0
    move-exception p0

    .line 69
    goto :goto_2

    .line 70
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->mProviderListener:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;->onProviderStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    monitor-exit v0

    .line 78
    return-void

    .line 79
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
