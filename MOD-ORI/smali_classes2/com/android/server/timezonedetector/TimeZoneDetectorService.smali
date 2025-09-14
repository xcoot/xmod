.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorService;
.super Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

.field public final mContext:Landroid/content/Context;

.field public final mDumpables:Ljava/util/List;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Landroid/util/ArrayMap;

.field public final mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/CallerIdentityInjector;Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/timezonedetector/ITimeZoneDetectorService$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    .line 17
    .line 18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Landroid/content/Context;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    .line 30
    .line 31
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    check-cast p3, Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 37
    .line 38
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    check-cast p4, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 42
    .line 43
    iput-object p4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 44
    .line 45
    new-instance p1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda1;

    .line 46
    .line 47
    invoke-direct {p1, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 48
    .line 49
    .line 50
    check-cast p4, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 51
    .line 52
    monitor-enter p4

    .line 53
    :try_start_0
    iget-object p0, p4, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    .line 54
    .line 55
    check-cast p0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit p4

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    monitor-exit p4

    .line 64
    throw p0
.end method


# virtual methods
.method public final addListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    .locals 4

    .line 1
    const-string v0, "Unable to linkToDeath() for listener="

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-interface {p1}, Landroid/app/time/ITimeZoneDetectorListener;->asBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    :try_start_1
    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {p0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    :try_start_2
    const-string/jumbo v2, "time_zone_detector"

    .line 40
    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    monitor-exit v1

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw p0
.end method

.method public final binderDied()V
    .locals 1

    .line 1
    const-string/jumbo p0, "time_zone_detector"

    const-string v0, "binderDied() called unexpectedly."

    invoke-static {p0, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final binderDied(Landroid/os/IBinder;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 5
    invoke-interface {v2, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 7
    :cond_1
    const-string/jumbo v1, "time_zone_detector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notified of binder death for who="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but did not remove any listeners. mListeners="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final confirmTimeZone(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 5
    .line 6
    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 16
    .line 17
    check-cast v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->confirmTimeZone(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 24
    .line 25
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 31
    .line 32
    .line 33
    return p1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 36
    .line 37
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string/jumbo v0, "time_zone_detector"

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Landroid/util/IndentingPrintWriter;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 19
    .line 20
    check-cast p2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 21
    .line 22
    invoke-virtual {p2, p1, p3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    .line 26
    .line 27
    monitor-enter p2

    .line 28
    :try_start_0
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mDumpables:Ljava/util/List;

    .line 29
    .line 30
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/server/timezonedetector/Dumpable;

    .line 47
    .line 48
    invoke-interface {v0, p1, p3}, Lcom/android/server/timezonedetector/Dumpable;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_1
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw p0
.end method

.method public final enforceManageTimeZoneDetectorPermission()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v0, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    .line 4
    .line 5
    const-string/jumbo v1, "manage time and time zone detection"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    return-object p0
.end method

.method public final getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .locals 8

    .line 4
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 5
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    const-string v6, "getCapabilitiesAndConfig"

    .line 6
    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v3, p1

    .line 9
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 10
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    check-cast v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 13
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    iget-object v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 15
    iget v4, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mUserId:I

    if-ne v4, p1, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    check-cast v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v3

    .line 17
    :goto_0
    new-instance p1, Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    iget-object v4, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    .line 18
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v5

    .line 19
    new-instance v6, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v6}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 20
    iget-boolean v7, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mAutoDetectionEnabledSetting:Z

    invoke-virtual {v6, v7}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v6

    .line 21
    iget-boolean v3, v3, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionEnabledSetting:Z

    invoke-virtual {v6, v3}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v3

    .line 23
    invoke-direct {p1, v4, v5, v3}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeZoneDetectorStatus;Landroid/app/time/TimeZoneCapabilities;Landroid/app/time/TimeZoneConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 27
    :try_start_3
    monitor-exit v2

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 28
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 30
    throw p1
.end method

.method public final getTimeZoneState()Landroid/app/time/TimeZoneState;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 5
    .line 6
    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 16
    .line 17
    check-cast v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 18
    .line 19
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    :try_start_1
    iget-object v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 21
    .line 22
    invoke-interface {v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZoneConfidence()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x64

    .line 27
    .line 28
    if-ge v3, v4, :cond_0

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v3, 0x0

    .line 33
    :goto_0
    new-instance v4, Landroid/app/time/TimeZoneState;

    .line 34
    .line 35
    iget-object v5, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 36
    .line 37
    invoke-interface {v5}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-direct {v4, v5, v3}, Landroid/app/time/TimeZoneState;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 46
    .line 47
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 48
    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    :catchall_0
    move-exception v3

    .line 57
    :try_start_3
    monitor-exit v2

    .line 58
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    :catchall_1
    move-exception v2

    .line 60
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 61
    .line 62
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 68
    .line 69
    .line 70
    throw v2
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 4
    .line 5
    .line 6
    move-object v1, p0

    .line 7
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-object v5, p4

    .line 11
    move-object v6, p5

    .line 12
    move-object v7, p6

    .line 13
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final removeListener(Landroid/app/time/ITimeZoneDetectorListener;)V
    .locals 4

    .line 1
    const-string v0, "Client asked to remove listener="

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    invoke-interface {p1}, Landroid/app/time/ITimeZoneDetectorListener;->asBinder()Landroid/os/IBinder;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    invoke-interface {v2, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-string/jumbo v2, "time_zone_detector"

    .line 32
    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, ", but no listeners were removed. mListeners="

    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mListeners:Landroid/util/ArrayMap;

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    monitor-exit v1

    .line 60
    return-void

    .line 61
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw p0
.end method

.method public final setManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 5
    .line 6
    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 16
    .line 17
    check-cast v1, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    :try_start_0
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 27
    .line 28
    check-cast v3, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 29
    .line 30
    invoke-virtual {v3, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    .line 31
    .line 32
    .line 33
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 35
    .line 36
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 42
    .line 43
    .line 44
    return p1

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 47
    .line 48
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 54
    .line 55
    .line 56
    throw p1
.end method

.method public final suggestManualTimeZone(Landroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE"

    .line 4
    .line 5
    const-string/jumbo v2, "suggest manual time and time zone"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 15
    .line 16
    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 26
    .line 27
    check-cast v1, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    :try_start_0
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 37
    .line 38
    check-cast v3, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 39
    .line 40
    invoke-virtual {v3, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z

    .line 41
    .line 42
    .line 43
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 45
    .line 46
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    .line 53
    .line 54
    return p1

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 57
    .line 58
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 59
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE"

    .line 4
    .line 5
    const-string/jumbo v2, "suggest telephony time and time zone"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;Ljava/lang/Object;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 7
    const-string/jumbo v6, "updateConfiguration"

    const/4 v7, 0x0

    move v3, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 8
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 9
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    check-cast v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p1

    .line 15
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 17
    throw p1
.end method

.method public final updateConfiguration(Landroid/app/time/TimeZoneConfiguration;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    return p0
.end method
