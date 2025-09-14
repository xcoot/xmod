.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;->f$1:Z

    .line 8
    iput-boolean p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;->f$2:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;->f$1:Z

    .line 5
    iget-boolean p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda158;->f$2:Z

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_0

    .line 13
    if-eqz p0, :cond_2

    .line 15
    :cond_0
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mSecurityLogMonitor:Lcom/android/server/devicepolicy/SecurityLogMonitor;

    .line 17
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 21
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 24
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    const-string v4, "SecurityLogMonitor"

    .line 28
    if-nez v3, :cond_1

    .line 30
    :try_start_1
    const-string v3, "Attempted to resume, but logging is not paused."

    .line 32
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 37
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 39
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto/16 :goto_4

    .line 46
    :cond_1
    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mPaused:Z

    .line 48
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mAllowedToRetrieve:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    iget-object v3, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 52
    check-cast v3, Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    const-string v3, "Resumed."

    .line 59
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :try_start_3
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/SecurityLogMonitor;->notifyDeviceOwnerOrProfileOwnerIfNeeded(Z)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const-string v3, "Thread interrupted."

    .line 69
    invoke-static {v4, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 74
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 76
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_6

    .line 82
    :cond_3
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mNetworkLogger:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 84
    if-eqz p0, :cond_6

    .line 86
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 88
    if-eqz p0, :cond_6

    .line 90
    const-string v0, "Resumed network logging. Current batch="

    .line 92
    monitor-enter p0

    .line 93
    :try_start_4
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 95
    if-nez v1, :cond_4

    .line 97
    const-string v0, "NetworkLoggingHandler"

    .line 99
    const-string v1, "Attempted to resume network logging, but logging is not paused."

    .line 101
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    monitor-exit p0

    .line 105
    goto :goto_3

    .line 106
    :catchall_1
    move-exception v0

    .line 107
    goto :goto_2

    .line 108
    :cond_4
    const-string v1, "NetworkLoggingHandler"

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    iget-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 117
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, ", LastRetrievedBatch="

    .line 122
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-wide v4, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    .line 127
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-boolean v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mPaused:Z

    .line 139
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mBatches:Landroid/util/LongSparseArray;

    .line 141
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    .line 144
    move-result v0

    .line 145
    if-lez v0, :cond_5

    .line 147
    iget-wide v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mLastRetrievedBatchToken:J

    .line 149
    iget-wide v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->mCurrentBatchToken:J

    .line 151
    cmp-long v0, v0, v2

    .line 153
    if-eqz v0, :cond_5

    .line 155
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->buildAdminMessageLocked()Landroid/os/Bundle;

    .line 161
    move-result-object v0

    .line 162
    goto :goto_1

    .line 163
    :cond_5
    const/4 v0, 0x0

    .line 164
    :goto_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 165
    if-eqz v0, :cond_6

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->notifyDeviceOwnerOrProfileOwner(Landroid/os/Bundle;)V

    .line 170
    goto :goto_3

    .line 171
    :goto_2
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 172
    throw v0

    .line 173
    :cond_6
    :goto_3
    return-void

    .line 174
    :goto_4
    iget-object p0, p0, Lcom/android/server/devicepolicy/SecurityLogMonitor;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 176
    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 178
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 181
    throw v0
.end method
