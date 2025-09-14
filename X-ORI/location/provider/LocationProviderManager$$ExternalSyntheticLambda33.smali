.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;->f$0:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;->f$0:I

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;->f$1:Z

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x0

    .line 19
    if-ne v2, v0, :cond_4

    .line 20
    .line 21
    iget-boolean v2, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    .line 22
    .line 23
    if-eq p0, v2, :cond_4

    .line 24
    .line 25
    const-string v2, "LocationManagerService"

    .line 26
    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v5, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 33
    .line 34
    iget-object v5, v5, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, " provider uid "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, " foreground = "

    .line 48
    .line 49
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iput-boolean p0, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mForeground:Z

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    if-eqz p0, :cond_0

    .line 66
    .line 67
    sget-object p0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 68
    .line 69
    iget-object v2, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 70
    .line 71
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v4, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 74
    .line 75
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderClientForeground(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    goto :goto_3

    .line 81
    :cond_0
    sget-object p0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    .line 82
    .line 83
    iget-object v2, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 84
    .line 85
    iget-object v2, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v4, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 88
    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    new-instance v5, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;

    .line 93
    .line 94
    const/4 v6, 0x1

    .line 95
    invoke-direct {v5, v2, v3, v4, v6}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderClientPermittedEvent;-><init>(Ljava/lang/String;ZLjava/lang/Object;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v5}, Lcom/android/server/location/eventlog/LocationEventLog;->addLog$1(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v2, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->getAggregateStats(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->updateTotals()V

    .line 107
    .line 108
    .line 109
    iget v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    .line 110
    .line 111
    sub-int/2addr v2, v0

    .line 112
    iput v2, p0, Lcom/android/server/location/eventlog/LocationEventLog$AggregateStats;->mForegroundRequestCount:I

    .line 113
    .line 114
    if-ltz v2, :cond_1

    .line 115
    .line 116
    move v2, v0

    .line 117
    goto :goto_0

    .line 118
    :cond_1
    move v2, v3

    .line 119
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    .line 121
    .line 122
    :try_start_2
    monitor-exit p0

    .line 123
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onProviderLocationRequestChanged()Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_2

    .line 128
    .line 129
    iget-object p0, p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 132
    .line 133
    iget-boolean p1, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mReady:Z

    .line 134
    .line 135
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 136
    .line 137
    .line 138
    iget p0, p0, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->mLocationPowerSaveMode:I

    .line 139
    .line 140
    const/4 p1, 0x3

    .line 141
    if-ne p0, p1, :cond_3

    .line 142
    .line 143
    :cond_2
    move v3, v0

    .line 144
    :cond_3
    monitor-exit v1

    .line 145
    goto :goto_2

    .line 146
    :catchall_1
    move-exception p1

    .line 147
    monitor-exit p0

    .line 148
    throw p1

    .line 149
    :cond_4
    monitor-exit v1

    .line 150
    :goto_2
    return v3

    .line 151
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    throw p0
.end method
