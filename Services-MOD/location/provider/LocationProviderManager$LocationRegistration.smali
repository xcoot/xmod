.class public abstract Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;
.super Lcom/android/server/location/provider/LocationProviderManager$Registration;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/location/LocationManagerInternal$ProviderEnabledListener;


# instance fields
.field public mExpirationRealtimeMs:J

.field public mNumLocationsDelivered:I

.field public volatile mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    invoke-direct/range {p0 .. p6}, Lcom/android/server/location/provider/LocationProviderManager$Registration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Ljava/util/concurrent/Executor;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    .line 6
    const/4 p4, 0x0

    .line 7
    iput p4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mNumLocationsDelivered:I

    .line 9
    const-wide v0, 0x7fffffffffffffffL

    .line 14
    iput-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 16
    check-cast p5, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    .line 18
    iput-object p5, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    .line 20
    iget-object p1, p1, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 22
    const-class p4, Landroid/os/PowerManager;

    .line 24
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/os/PowerManager;

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/4 p4, 0x1

    .line 34
    const-string p5, "*location*"

    .line 36
    invoke-virtual {p1, p4, p5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 42
    invoke-virtual {p1, p4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 45
    invoke-virtual {p2}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 52
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    .line 54
    invoke-direct {p2, p3, p1}, Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;-><init>(Landroid/location/util/identity/CallerIdentity;Landroid/os/PowerManager$WakeLock;)V

    .line 57
    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    .line 59
    return-void
.end method


# virtual methods
.method public final acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 7
    cmp-long v0, v0, v2

    .line 9
    const-string v1, " provider registration "

    .line 11
    const-string v2, "LocationManagerService"

    .line 13
    const/4 v3, 0x0

    .line 14
    if-ltz v0, :cond_0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 23
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v0, " expired at "

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 43
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p1

    .line 54
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 60
    return-object v3

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 63
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    .line 66
    move-result v4

    .line 67
    invoke-virtual {v0, p1, v4}, Lcom/android/server/location/provider/LocationProviderManager;->getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-object v0, p1

    .line 75
    check-cast v0, Landroid/location/LocationResult;

    .line 77
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;

    .line 79
    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->filter(Ljava/util/function/Predicate;)Landroid/location/LocationResult;

    .line 85
    move-result-object p1

    .line 86
    if-nez p1, :cond_1

    .line 88
    return-object v3

    .line 89
    :cond_1
    invoke-static {}, Landroid/location/flags/Flags;->enableLocationBypass()Z

    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isOnlyBypassPermitted()Z

    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 101
    const/16 v0, 0x93

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    .line 107
    move-result v0

    .line 108
    invoke-static {v0}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    .line 111
    move-result v0

    .line 112
    :goto_0
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 114
    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 116
    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 118
    invoke-virtual {v4, v0, v5}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_3

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    .line 126
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 131
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 141
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    const-string p0, " noteOp denied"

    .line 146
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p0

    .line 153
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-object v3

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 164
    move-result-wide v0

    .line 165
    const-wide v2, 0x7fffffffffffffffL

    .line 170
    cmp-long v0, v0, v2

    .line 172
    if-eqz v0, :cond_4

    .line 174
    const/4 v0, 0x1

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    const/4 v0, 0x0

    .line 177
    :goto_1
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;

    .line 179
    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Landroid/location/LocationResult;Z)V

    .line 182
    return-object v1
.end method

.method public final onActive()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onActive()V

    .line 4
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 6
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 9
    move-result v0

    .line 10
    const-wide/32 v1, 0x45c18f6

    .line 13
    invoke-static {v1, v2, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getIntervalMillis()J

    .line 26
    move-result-wide v0

    .line 27
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 33
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    .line 36
    move-result-wide v2

    .line 37
    const-wide/16 v4, 0x1

    .line 39
    sub-long/2addr v2, v4

    .line 40
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 43
    move-result-wide v0

    .line 44
    :cond_0
    move-wide v6, v0

    .line 45
    const-wide/16 v0, 0x7530

    .line 47
    cmp-long v0, v6, v0

    .line 49
    if-lez v0, :cond_1

    .line 51
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 53
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 55
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 58
    move-result v3

    .line 59
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    .line 62
    move-result v4

    .line 63
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/location/LocationRequest;->isBypass()Z

    .line 70
    move-result v5

    .line 71
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 77
    const/4 v1, 0x1

    .line 78
    new-array v1, v1, [Landroid/location/Location;

    .line 80
    const/4 v2, 0x0

    .line 81
    aput-object v0, v1, v2

    .line 83
    invoke-static {v1}, Landroid/location/LocationResult;->wrap([Landroid/location/Location;)Landroid/location/LocationResult;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    .line 94
    :cond_1
    return-void
.end method

.method public final onAlarm()V
    .locals 4

    .line 1
    const-string v0, "LocationManagerService"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 10
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, " provider registration "

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v2, " expired at "

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 32
    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 48
    iget-object v0, v0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 50
    monitor-enter v0

    .line 51
    const-wide v1, 0x7fffffffffffffffL

    .line 56
    :try_start_0
    iput-wide v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 58
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    .line 61
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    throw p0
.end method

.method public final onListenerUnregister()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mProviderTransport:Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    .line 4
    return-void
.end method

.method public final onProviderEnabledChanged(Ljava/lang/String;IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 9
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 12
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 14
    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 17
    move-result p1

    .line 18
    if-eq p2, p1, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 23
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda0;

    .line 25
    invoke-direct {p2, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    .line 28
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;

    .line 30
    invoke-direct {v0, p0, p3}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Z)V

    .line 33
    new-instance p3, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda2;

    .line 35
    invoke-direct {p3, p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)V

    .line 38
    invoke-interface {p0, p1, p2, v0, p3}, Lcom/android/internal/listeners/ListenerExecutor;->executeSafely(Ljava/util/concurrent/Executor;Ljava/util/function/Supplier;Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;)V

    .line 41
    return-void
.end method

.method public abstract onProviderOperationFailure(Ljava/lang/Exception;)V
.end method

.method public onRegister()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onRegister()V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    move-result-wide v0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v2, v0, v1}, Landroid/location/LocationRequest;->getExpirationRealtimeMs(J)J

    .line 15
    move-result-wide v2

    .line 16
    iput-wide v2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 18
    cmp-long v4, v2, v0

    .line 20
    if-gtz v4, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onAlarm()V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    .line 31
    cmp-long v4, v2, v4

    .line 33
    if-gez v4, :cond_1

    .line 35
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 37
    iget-object v4, v4, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    .line 39
    sub-long/2addr v2, v0

    .line 40
    invoke-virtual {v4, v2, v3, p0}, Lcom/android/server/location/injector/SystemAlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;)V

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 45
    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager;->addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 50
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    .line 53
    move-result v0

    .line 54
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 56
    invoke-virtual {v1, v0}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 64
    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 66
    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->onProviderEnabledChanged(Ljava/lang/String;IZ)V

    .line 70
    :cond_2
    return-void
.end method

.method public onUnregister()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager;->removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V

    .line 6
    iget-wide v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mExpirationRealtimeMs:J

    .line 8
    const-wide v2, 0x7fffffffffffffffL

    .line 13
    cmp-long v0, v0, v2

    .line 15
    if-gez v0, :cond_0

    .line 17
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 19
    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/SystemAlarmHelper;

    .line 21
    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/SystemAlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 24
    :cond_0
    invoke-super {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onUnregister()V

    .line 27
    return-void
.end method
