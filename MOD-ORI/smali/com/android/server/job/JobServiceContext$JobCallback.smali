.class public final Lcom/android/server/job/JobServiceContext$JobCallback;
.super Landroid/app/job/IJobCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mStoppedReason:Ljava/lang/String;

.field public mStoppedTime:J

.field public final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobServiceContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acknowledgeGetTransferredDownloadBytesMessage(IIJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    monitor-exit p2

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iput-wide p3, p1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 17
    .line 18
    monitor-exit p2

    .line 19
    :goto_0
    return-void

    .line 20
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final acknowledgeGetTransferredUploadBytesMessage(IIJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    monitor-exit p2

    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iput-wide p3, p1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    .line 17
    .line 18
    monitor-exit p2

    .line 19
    :goto_0
    return-void

    .line 20
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public final acknowledgeStartMessage(IZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    const-string/jumbo v0, "finished start"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final acknowledgeStopMessage(IZ)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/job/JobServiceContext;->doCallback(Lcom/android/server/job/JobServiceContext$JobCallback;ZLjava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final completeWork(II)Z
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v3, 0x1

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_2

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_3

    .line 27
    :cond_0
    :try_start_2
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 28
    .line 29
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 30
    .line 31
    const/4 v5, 0x0

    .line 32
    if-eqz v4, :cond_3

    .line 33
    .line 34
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    move v6, v5

    .line 39
    :goto_1
    if-ge v6, v4, :cond_3

    .line 40
    .line 41
    iget-object v7, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Landroid/app/job/JobWorkItem;

    .line 48
    .line 49
    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getWorkId()I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-ne v8, p2, :cond_2

    .line 54
    .line 55
    iget-object p2, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    if-eqz p2, :cond_1

    .line 65
    .line 66
    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Lcom/android/server/job/GrantedUriPermissions;

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/android/server/job/GrantedUriPermissions;->revoke()V

    .line 73
    .line 74
    .line 75
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->updateNetworkBytesLocked()V

    .line 76
    .line 77
    .line 78
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 85
    .line 86
    .line 87
    monitor-exit v2

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    .line 95
    .line 96
    move v3, v5

    .line 97
    :goto_2
    return v3

    .line 98
    :goto_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 102
    .line 103
    .line 104
    throw p0
.end method

.method public final dequeueWork(I)Landroid/app/job/JobWorkItem;
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->assertCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez p0, :cond_0

    .line 19
    .line 20
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    .line 23
    .line 24
    goto :goto_4

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_5

    .line 27
    :cond_0
    :try_start_2
    iget p0, p1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 28
    .line 29
    const/4 v4, 0x3

    .line 30
    if-eq p0, v4, :cond_7

    .line 31
    .line 32
    const/4 v4, 0x4

    .line 33
    if-ne p0, v4, :cond_1

    .line 34
    .line 35
    goto :goto_3

    .line 36
    :cond_1
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 39
    .line 40
    const/4 v5, 0x0

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-lez v4, :cond_3

    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Landroid/app/job/JobWorkItem;

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    iget-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 60
    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    new-instance v4, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v4, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 69
    .line 70
    :cond_2
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    .line 76
    .line 77
    .line 78
    :cond_3
    if-nez v3, :cond_5

    .line 79
    .line 80
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 81
    .line 82
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-lez p0, :cond_4

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 94
    .line 95
    const-string/jumbo v4, "last work dequeued"

    .line 96
    .line 97
    .line 98
    const/16 v6, 0xa

    .line 99
    .line 100
    invoke-virtual {p0, v5, v6, v4}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string/jumbo p0, "last work dequeued"

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p0, v5}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(Ljava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    :goto_1
    if-eqz v3, :cond_6

    .line 111
    .line 112
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 113
    .line 114
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 115
    .line 116
    iget-object p1, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 117
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobStore;->touchJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_2
    monitor-exit v2

    .line 122
    goto :goto_0

    .line 123
    :cond_7
    :goto_3
    monitor-exit v2

    .line 124
    goto :goto_0

    .line 125
    :goto_4
    return-object v3

    .line 126
    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final jobFinished(IZ)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    :try_start_0
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    :try_start_2
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 27
    .line 28
    const-string v3, "app called jobFinished"

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const/16 v5, 0xa

    .line 32
    .line 33
    invoke-virtual {p0, v4, v5, v3}, Landroid/app/job/JobParameters;->setStopReason(IILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p0, "app called jobFinished"

    .line 37
    .line 38
    invoke-virtual {p1, p0, p2}, Lcom/android/server/job/JobServiceContext;->doCallbackLocked(Ljava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    monitor-exit v2

    .line 42
    goto :goto_0

    .line 43
    :goto_1
    return-void

    .line 44
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public final setNotification(IILandroid/app/Notification;I)V
    .locals 11

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 15
    .line 16
    .line 17
    move-result-wide v8

    .line 18
    :try_start_0
    iget-object v10, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 19
    .line 20
    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_2

    .line 34
    :cond_0
    :try_start_2
    iget-object p0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 35
    .line 36
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 37
    .line 38
    if-ne v4, v0, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mNotificationCoordinator:Lcom/android/server/job/JobNotificationCoordinator;

    .line 51
    .line 52
    move-object v1, p1

    .line 53
    move v5, p2

    .line 54
    move-object v6, p3

    .line 55
    move v7, p4

    .line 56
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/job/JobNotificationCoordinator;->enqueueNotification(Lcom/android/server/job/JobServiceContext;Ljava/lang/String;IIILandroid/app/Notification;I)V

    .line 57
    .line 58
    .line 59
    iget-boolean p0, p1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    .line 60
    .line 61
    if-eqz p0, :cond_1

    .line 62
    .line 63
    const/4 p0, 0x0

    .line 64
    iput-boolean p0, p1, Lcom/android/server/job/JobServiceContext;->mAwaitingNotification:Z

    .line 65
    .line 66
    iget p0, p1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 67
    .line 68
    const/4 p2, 0x2

    .line 69
    if-ne p0, p2, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOutLocked()V

    .line 72
    .line 73
    .line 74
    :cond_1
    monitor-exit v10

    .line 75
    goto :goto_0

    .line 76
    :goto_1
    return-void

    .line 77
    :cond_2
    const-string p0, "JobServiceContext"

    .line 78
    .line 79
    const-string p1, "Calling UID isn\'t the same as running job\'s UID..."

    .line 80
    .line 81
    invoke-static {p0, p1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    new-instance p0, Ljava/lang/SecurityException;

    .line 85
    .line 86
    const-string p1, "Can\'t post notification on behalf of another app"

    .line 87
    .line 88
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 94
    :catchall_1
    move-exception p0

    .line 95
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    throw p0
.end method

.method public final updateEstimatedNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    monitor-exit p2

    .line 13
    goto :goto_2

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_bytes_updated"

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 20
    .line 21
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkDownloadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 27
    .line 28
    invoke-static {p3, p4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lcom/android/server/job/JobServiceContext;->sUpdatedEstimatedNetworkUploadKBLogger:Lcom/android/modules/expresslog/Histogram;

    .line 37
    .line 38
    invoke-static {p5, p6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-float v0, v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    .line 47
    .line 48
    const-wide/16 v2, -0x1

    .line 49
    .line 50
    cmp-long p0, v0, v2

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    cmp-long p0, p3, v2

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    cmp-long p0, v0, p3

    .line 59
    .line 60
    if-gez p0, :cond_1

    .line 61
    .line 62
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_increased"

    .line 63
    .line 64
    .line 65
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 66
    .line 67
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 68
    .line 69
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    if-lez p0, :cond_2

    .line 74
    .line 75
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_download_bytes_decreased"

    .line 76
    .line 77
    .line 78
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 79
    .line 80
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 81
    .line 82
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    iget-wide v0, p1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    .line 86
    .line 87
    cmp-long p0, v0, v2

    .line 88
    .line 89
    if-eqz p0, :cond_4

    .line 90
    .line 91
    cmp-long p0, p5, v2

    .line 92
    .line 93
    if-eqz p0, :cond_4

    .line 94
    .line 95
    cmp-long p0, v0, p5

    .line 96
    .line 97
    if-gez p0, :cond_3

    .line 98
    .line 99
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_increased"

    .line 100
    .line 101
    .line 102
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 103
    .line 104
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 105
    .line 106
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    if-lez p0, :cond_4

    .line 111
    .line 112
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_estimated_network_upload_bytes_decreased"

    .line 113
    .line 114
    .line 115
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 116
    .line 117
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 118
    .line 119
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    iput-wide p3, p1, Lcom/android/server/job/JobServiceContext;->mEstimatedDownloadBytes:J

    .line 123
    .line 124
    iput-wide p5, p1, Lcom/android/server/job/JobServiceContext;->mEstimatedUploadBytes:J

    .line 125
    .line 126
    monitor-exit p2

    .line 127
    :goto_2
    return-void

    .line 128
    :goto_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    throw p0
.end method

.method public final updateTransferredNetworkBytes(ILandroid/app/job/JobWorkItem;JJ)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobCallback;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/job/JobServiceContext;->verifyCallerLocked(Lcom/android/server/job/JobServiceContext$JobCallback;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    monitor-exit p2

    .line 13
    goto :goto_2

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_3

    .line 16
    :cond_0
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_bytes_updated"

    .line 17
    .line 18
    .line 19
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 20
    .line 21
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 22
    .line 23
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkDownloadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 27
    .line 28
    invoke-static {p3, p4}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    int-to-float v0, v0

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 34
    .line 35
    .line 36
    sget-object p0, Lcom/android/server/job/JobServiceContext;->sTransferredNetworkUploadKBHighWaterMarkLogger:Lcom/android/modules/expresslog/Histogram;

    .line 37
    .line 38
    invoke-static {p5, p6}, Lcom/android/server/job/JobSchedulerService;->safelyScaleBytesToKBForHistogram(J)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    int-to-float v0, v0

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/modules/expresslog/Histogram;->logSample(F)V

    .line 44
    .line 45
    .line 46
    iget-wide v0, p1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 47
    .line 48
    const-wide/16 v2, -0x1

    .line 49
    .line 50
    cmp-long p0, v0, v2

    .line 51
    .line 52
    if-eqz p0, :cond_2

    .line 53
    .line 54
    cmp-long p0, p3, v2

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    cmp-long p0, v0, p3

    .line 59
    .line 60
    if-gez p0, :cond_1

    .line 61
    .line 62
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_increased"

    .line 63
    .line 64
    .line 65
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 66
    .line 67
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 68
    .line 69
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    if-lez p0, :cond_2

    .line 74
    .line 75
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_download_bytes_decreased"

    .line 76
    .line 77
    .line 78
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 79
    .line 80
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 81
    .line 82
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    iget-wide v0, p1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    .line 86
    .line 87
    cmp-long p0, v0, v2

    .line 88
    .line 89
    if-eqz p0, :cond_4

    .line 90
    .line 91
    cmp-long p0, p5, v2

    .line 92
    .line 93
    if-eqz p0, :cond_4

    .line 94
    .line 95
    cmp-long p0, v0, p5

    .line 96
    .line 97
    if-gez p0, :cond_3

    .line 98
    .line 99
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_increased"

    .line 100
    .line 101
    .line 102
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 103
    .line 104
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 105
    .line 106
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    if-lez p0, :cond_4

    .line 111
    .line 112
    const-string/jumbo p0, "job_scheduler.value_cntr_w_uid_transferred_network_upload_bytes_decreased"

    .line 113
    .line 114
    .line 115
    iget-object v0, p1, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 116
    .line 117
    iget v0, v0, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 118
    .line 119
    invoke-static {p0, v0}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_1
    iput-wide p3, p1, Lcom/android/server/job/JobServiceContext;->mTransferredDownloadBytes:J

    .line 123
    .line 124
    iput-wide p5, p1, Lcom/android/server/job/JobServiceContext;->mTransferredUploadBytes:J

    .line 125
    .line 126
    monitor-exit p2

    .line 127
    :goto_2
    return-void

    .line 128
    :goto_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    throw p0
.end method
