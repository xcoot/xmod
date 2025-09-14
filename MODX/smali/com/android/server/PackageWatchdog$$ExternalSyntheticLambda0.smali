.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/PackageWatchdog;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/PackageWatchdog;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->saveToFile()Z

    .line 15
    return-void

    .line 16
    :pswitch_1
    const-string/jumbo v0, "scheduled"

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/server/PackageWatchdog;->syncState(Ljava/lang/String;)V

    .line 22
    return-void

    .line 23
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->checkAndMitigateNativeCrashes()V

    .line 26
    return-void

    .line 27
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    const/4 v1, 0x1

    .line 31
    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 33
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mShortTaskHandler:Landroid/os/Handler;

    .line 35
    iget-object p0, p0, Lcom/android/server/PackageWatchdog;->mSyncRequests:Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda0;

    .line 37
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 40
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p0

    .line 48
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mLock:Ljava/lang/Object;

    .line 50
    monitor-enter v0

    .line 51
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/PackageWatchdog;->mIsPackagesReady:Z

    .line 53
    const/4 v2, 0x0

    .line 54
    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog;->getPackagesPendingHealthChecksLocked()Ljava/util/Set;

    .line 59
    move-result-object v1

    .line 60
    iget-boolean v3, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 62
    if-nez v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    .line 66
    move-object v4, v1

    .line 67
    check-cast v4, Landroid/util/ArraySet;

    .line 69
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    .line 72
    move-result v3

    .line 73
    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_1

    .line 81
    goto :goto_0

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    goto/16 :goto_6

    .line 85
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    .line 87
    const/4 v1, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    move v1, v2

    .line 90
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    if-eqz v1, :cond_4

    .line 93
    const-string v0, "PackageWatchdog"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    const-string v3, "Syncing health check requests for packages: "

    .line 99
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v1

    .line 111
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/server/PackageWatchdog;->mHealthCheckController:Lcom/android/server/ExplicitHealthCheckController;

    .line 116
    iget-object v1, p0, Lcom/android/server/PackageWatchdog;->mRequestedHealthCheckPackages:Ljava/util/Set;

    .line 118
    iget-object v3, v0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 120
    monitor-enter v3

    .line 121
    :try_start_2
    iget-boolean v4, v0, Lcom/android/server/ExplicitHealthCheckController;->mEnabled:Z

    .line 123
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 124
    if-nez v4, :cond_2

    .line 126
    const-string v1, "ExplicitHealthCheckController"

    .line 128
    const-string v3, "Health checks disabled, no supported packages"

    .line 130
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, v0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 138
    move-result-object v1

    .line 139
    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 142
    goto :goto_3

    .line 143
    :cond_2
    new-instance v3, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;

    .line 145
    invoke-direct {v3, v0, v1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/Set;)V

    .line 148
    iget-object v1, v0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 150
    monitor-enter v1

    .line 151
    :try_start_3
    const-string/jumbo v4, "get health check supported packages"

    .line 154
    invoke-virtual {v0, v4}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    .line 157
    move-result v4

    .line 158
    if-nez v4, :cond_3

    .line 160
    monitor-exit v1

    .line 161
    goto :goto_3

    .line 162
    :catchall_2
    move-exception p0

    .line 163
    goto :goto_4

    .line 164
    :cond_3
    const-string v4, "ExplicitHealthCheckController"

    .line 166
    const-string v5, "Getting health check supported packages"

    .line 168
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 171
    :try_start_4
    iget-object v0, v0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 173
    new-instance v4, Landroid/os/RemoteCallback;

    .line 175
    new-instance v5, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;

    .line 177
    const/4 v6, 0x0

    .line 178
    invoke-direct {v5, v6, v3}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;)V

    .line 181
    invoke-direct {v4, v5}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 184
    invoke-interface {v0, v4}, Landroid/service/watchdog/IExplicitHealthCheckService;->getSupportedPackages(Landroid/os/RemoteCallback;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 187
    goto :goto_2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    :try_start_5
    const-string v3, "ExplicitHealthCheckController"

    .line 191
    const-string v4, "Failed to get health check supported packages"

    .line 193
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 196
    :goto_2
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 197
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/PackageWatchdog;->mSyncRequired:Z

    .line 199
    goto :goto_5

    .line 200
    :goto_4
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 201
    throw p0

    .line 202
    :catchall_3
    move-exception p0

    .line 203
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 204
    throw p0

    .line 205
    :cond_4
    :goto_5
    return-void

    .line 206
    :goto_6
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 207
    throw p0

    .line 208
    nop

    .line 209
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
