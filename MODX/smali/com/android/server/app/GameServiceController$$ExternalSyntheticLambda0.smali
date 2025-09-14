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

    .line 4
    iput-object p1, p0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceController;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/app/GameServiceController;

    .line 3
    const-string v0, "Starting Game Service provider: "

    .line 5
    const-string v1, "Stopping Game Service provider: "

    .line 7
    iget-boolean v2, p0, Lcom/android/server/app/GameServiceController;->mHasBootCompleted:Z

    .line 9
    if-nez v2, :cond_0

    .line 11
    goto/16 :goto_3

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/android/server/app/GameServiceController;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter v2

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelectorImpl;

    .line 18
    iget-object v4, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    .line 20
    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderOverride:Ljava/lang/String;

    .line 22
    invoke-virtual {v3, v4, v5}, Lcom/android/server/app/GameServiceProviderSelectorImpl;->get(Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;)Lcom/android/server/app/GameServiceConfiguration;

    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-nez v3, :cond_1

    .line 29
    move-object v5, v4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v5, v3, Lcom/android/server/app/GameServiceConfiguration;->mPackageName:Ljava/lang/String;

    .line 33
    :goto_0
    if-nez v3, :cond_2

    .line 35
    move-object v3, v4

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    iget-object v3, v3, Lcom/android/server/app/GameServiceConfiguration;->mGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 39
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/app/GameServiceController;->evaluateGameServiceProviderPackageChangedListenerLocked(Ljava/lang/String;)V

    .line 42
    iget-object v5, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 44
    invoke-static {v3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v5

    .line 48
    xor-int/lit8 v5, v5, 0x1

    .line 50
    if-nez v5, :cond_3

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

    .line 58
    if-eqz v5, :cond_4

    .line 60
    const-string v5, "GameServiceController"

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 69
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v1

    .line 76
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 81
    iget-object v5, v1, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 83
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->stopLocked()V

    .line 87
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    iput-object v4, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

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

    .line 96
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 98
    if-nez v1, :cond_5

    .line 100
    monitor-exit v2

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const-string v1, "GameServiceController"

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    .line 123
    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    .line 125
    invoke-virtual {v0, v1}, Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;->create(Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 131
    iget-object p0, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    .line 133
    iget-object v0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl;->mLock:Ljava/lang/Object;

    .line 135
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->startLocked()V

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
