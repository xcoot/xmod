.class public final Lcom/android/server/job/controllers/ConnectivityController$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public maybeRegisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-ltz v2, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    .line 61
    .line 62
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 63
    .line 64
    invoke-direct {v3, v4}, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;-><init>(Lcom/android/server/job/controllers/ConnectivityController;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v2, v4, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 72
    .line 73
    .line 74
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 75
    .line 76
    iget-object v4, v4, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    .line 77
    .line 78
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_1

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    iput v1, v3, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;->signalStrength:I

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    return-void
.end method

.method public maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    .line 10
    .line 11
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 15
    .line 16
    iget-object v2, v2, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    move v3, v0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_3

    .line 24
    .line 25
    iget-object v4, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 26
    .line 27
    iget-object v4, v4, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 28
    .line 29
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 34
    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    iget-object v5, v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 38
    .line 39
    if-nez v5, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v5, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    iget-object v4, v4, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 61
    .line 62
    const-string v2, "JobScheduler.Connectivity"

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "Active subscription IDs: "

    .line 69
    .line 70
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    :cond_4
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    const-class v3, Landroid/telephony/TelephonyManager;

    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_7

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    check-cast v3, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_5

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    iget-object v5, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 131
    .line 132
    iget-object v5, v5, Lcom/android/server/job/controllers/ConnectivityController;->mSignalStrengths:Landroid/util/SparseArray;

    .line 133
    .line 134
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    check-cast v5, Lcom/android/server/job/controllers/ConnectivityController$CellSignalStrengthCallback;

    .line 139
    .line 140
    if-eqz v5, :cond_6

    .line 141
    .line 142
    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v5, "Callback for sub "

    .line 149
    .line 150
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v4, " didn\'t exist?!?!"

    .line 157
    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    return-void
.end method

.method public maybeUpdateFlexConstraintLocked(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/high16 v1, 0x10000000

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 13
    .line 14
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IJZ)V

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    sub-int/2addr p1, v0

    .line 36
    :goto_0
    if-ltz p1, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-boolean v0, v0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    .line 51
    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController;->mFlexibilityController:Lcom/android/server/job/controllers/FlexibilityController;

    .line 61
    .line 62
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v2

    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/job/controllers/FlexibilityController;->setConstraintSatisfied(IJZ)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-void
.end method

.method public final onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "JobScheduler.Connectivity"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "systemDefault-onAvailable: "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 38
    .line 39
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw p0

    .line 44
    :pswitch_0
    sget-boolean p0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 45
    .line 46
    if-eqz p0, :cond_1

    .line 47
    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string/jumbo v0, "onAvailable: "

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const-string p1, "JobScheduler.Connectivity"

    .line 64
    .line 65
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :pswitch_0
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v0, "JobScheduler.Connectivity"

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v2, "onCapabilitiesChanged: "

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 37
    .line 38
    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 40
    .line 41
    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 48
    .line 49
    if-nez v1, :cond_1

    .line 50
    .line 51
    new-instance v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 52
    .line 53
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    iput-wide v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->capabilitiesFirstAcquiredTimeElapsed:J

    .line 66
    .line 67
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 70
    .line 71
    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object v2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    iput-object p2, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTransportAffinitySatisfaction(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUpdateFlexConstraintLocked(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)V

    .line 95
    .line 96
    .line 97
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeRegisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 98
    .line 99
    .line 100
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 101
    .line 102
    const/4 v1, -0x1

    .line 103
    invoke-virtual {p2, p1, v1}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/net/Network;I)V

    .line 104
    .line 105
    .line 106
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 109
    .line 110
    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 113
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    throw p0

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "JobScheduler.Connectivity"

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string/jumbo v2, "systemDefault-onLost: "

    .line 15
    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 46
    .line 47
    const/4 p1, 0x0

    .line 48
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController;->mSystemDefaultNetwork:Landroid/net/Network;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0

    .line 57
    :pswitch_0
    sget-boolean v0, Lcom/android/server/job/controllers/ConnectivityController;->DEBUG:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    const-string v0, "JobScheduler.Connectivity"

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string/jumbo v2, "onLost: "

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    .line 84
    .line 85
    monitor-enter v0

    .line 86
    :try_start_1
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 87
    .line 88
    iget-object v1, v1, Lcom/android/server/job/controllers/ConnectivityController;->mAvailableNetworks:Landroid/util/ArrayMap;

    .line 89
    .line 90
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-object v3, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 100
    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    invoke-virtual {p0, v3}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUnregisterSignalStrengthCallbackLocked(Landroid/net/NetworkCapabilities;)V

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_1
    move-exception p0

    .line 108
    goto :goto_4

    .line 109
    :cond_3
    :goto_2
    iget-boolean v1, v1, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    .line 110
    .line 111
    if-eqz v1, :cond_4

    .line 112
    .line 113
    invoke-virtual {p0, v2}, Lcom/android/server/job/controllers/ConnectivityController$2;->maybeUpdateFlexConstraintLocked(Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    const/4 v1, 0x0

    .line 117
    :goto_3
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 118
    .line 119
    iget-object v3, v3, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 120
    .line 121
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-ge v1, v3, :cond_6

    .line 126
    .line 127
    iget-object v3, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 128
    .line 129
    iget-object v3, v3, Lcom/android/server/job/controllers/ConnectivityController;->mCurrentDefaultNetworkCallbacks:Landroid/util/SparseArray;

    .line 130
    .line 131
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;

    .line 136
    .line 137
    iget-object v4, v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 138
    .line 139
    invoke-static {v4, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_5

    .line 144
    .line 145
    iput-object v2, v3, Lcom/android/server/job/controllers/ConnectivityController$UidDefaultNetworkCallback;->mDefaultNetwork:Landroid/net/Network;

    .line 146
    .line 147
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_6
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 151
    .line 152
    const/4 v2, -0x1

    .line 153
    invoke-virtual {v1, p1, v2}, Lcom/android/server/job/controllers/ConnectivityController;->updateTrackedJobsLocked(Landroid/net/Network;I)V

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ConnectivityController;->postAdjustCallbacks()V

    .line 159
    .line 160
    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 163
    :goto_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 164
    throw p0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
