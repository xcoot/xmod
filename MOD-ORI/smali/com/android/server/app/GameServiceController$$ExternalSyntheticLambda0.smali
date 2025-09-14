.class public final synthetic Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/app/GameServiceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameServiceController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceController;

    .line 2
    .line 3
    const-string v0, "Starting Game Service provider: "

    .line 4
    .line 5
    const-string v1, "Stopping Game Service provider: "

    .line 6
    .line 7
    iget-boolean v2, p0, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mLock:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelectorImpl;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v3, v4, v5}, Lcom/android/server/app/GameServiceProviderSelectorImpl;->get(Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;)Lcom/android/server/app/GameServiceConfiguration;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    move-object v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v5, v3, Lcom/android/server/app/GameServiceConfiguration;->mPackageName:Ljava/lang/String;

    .line 32
    .line 33
    :goto_0
    if-nez v3, :cond_2

    .line 34
    .line 35
    move-object v3, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v3, v3, Lcom/android/server/app/GameServiceConfiguration;->mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 38
    .line 39
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/app/GameServiceController;->evaluateGameServiceProviderPackageChangedListenerLocked(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 43
    .line 44
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    xor-int/lit8 v5, v5, 0x1

    .line 49
    .line 50
    if-nez v5, :cond_3

    .line 51
    .line 52
    monitor-exit v2

    .line 53
    goto :goto_3

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_4

    .line 56
    :cond_3
    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 57
    .line 58
    if-eqz v5, :cond_4

    .line 59
    .line 60
    const-string v5, "GameServiceController"

    .line 61
    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 68
    .line 69
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 80
    .line 81
    iget-object v5, v1, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->stopLocked()V

    .line 85
    .line 86
    .line 87
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    iput-object v4, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    :try_start_4
    throw p0

    .line 94
    :cond_4
    :goto_2
    iput-object v3, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 95
    .line 96
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 97
    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    monitor-exit v2

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const-string v1, "GameServiceController"

    .line 103
    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->create(Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 130
    .line 131
    iget-object p0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 132
    .line 133
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 134
    .line 135
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->startLocked()V

    .line 137
    .line 138
    .line 139
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 140
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 141
    :goto_3
    return-void

    .line 142
    :catchall_2
    move-exception p0

    .line 143
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 144
    :try_start_8
    throw p0

    .line 145
    :goto_4
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 146
    throw p0
.end method
