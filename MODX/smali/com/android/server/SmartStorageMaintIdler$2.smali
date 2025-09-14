.class public final Lcom/android/server/SmartStorageMaintIdler$2;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SmartStorageMaintIdler;

.field public final synthetic val$ms:Lcom/android/server/StorageManagerService;

.field public final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/android/server/SmartStorageMaintIdler;Landroid/app/job/JobParameters;Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/SmartStorageMaintIdler$2;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    .line 3
    iput-object p2, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$params:Landroid/app/job/JobParameters;

    .line 5
    iput-object p3, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$ms:Lcom/android/server/StorageManagerService;

    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    .line 3
    iget-object v1, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$params:Landroid/app/job/JobParameters;

    .line 5
    iput-object v1, v0, Lcom/android/server/SmartStorageMaintIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 7
    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$ms:Lcom/android/server/StorageManagerService;

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p0, :cond_8

    .line 12
    iget-object v0, v0, Lcom/android/server/SmartStorageMaintIdler;->mFinishCallback:Lcom/android/server/SmartStorageMaintIdler$1;

    .line 14
    const-string v2, ", min gc sleep time(ms): 0, target dirty ratio: "

    .line 16
    const-string v3, ", min segment threshold: 0, dirty reclaim rate: 0.0, segment reclaim weight: 0.0, period(min): "

    .line 18
    const-string v4, "Set smart idle maintenance: latest write amount: "

    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    const-string v5, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 23
    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 26
    :try_start_1
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 28
    invoke-interface {v5}, Landroid/os/IVold;->getWriteAmount()I

    .line 31
    move-result v5

    .line 32
    const/4 v6, -0x1

    .line 33
    if-ne v5, v6, :cond_1

    .line 35
    const-string v1, "StorageManagerService"

    .line 37
    const-string v2, "Failed to get storage write record"

    .line 39
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    if-eqz v0, :cond_0

    .line 44
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/SmartStorageMaintIdler$1;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 47
    :cond_0
    monitor-exit p0

    .line 48
    goto/16 :goto_8

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto/16 :goto_7

    .line 53
    :catch_0
    move-exception v1

    .line 54
    goto/16 :goto_5

    .line 56
    :cond_1
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService;->updateStorageWriteRecords(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_3

    .line 65
    const-string v6, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 67
    invoke-virtual {p0, v6}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 70
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 72
    invoke-interface {v6}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_2

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "StorageManagerService"

    .line 81
    const-string v2, "Skipping smart idle maintenance - block based checkpoint in progress"

    .line 83
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshLifetimeConstraint()Z

    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_5

    .line 93
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkChargeStatus()Z

    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_4

    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 102
    invoke-static {v6}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 105
    move-result-object v6

    .line 106
    invoke-interface {v6}, Ljava/util/stream/IntStream;->sum()I

    .line 109
    move-result v6

    .line 110
    iget v7, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    .line 112
    div-int/2addr v6, v7

    .line 113
    move v14, v1

    .line 114
    move v8, v6

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    :goto_1
    const-string v6, "StorageManagerService"

    .line 118
    const-string v7, "Turn off gc_urgent based on checking lifetime and charge status"

    .line 120
    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/16 v6, 0x64

    .line 125
    move v8, v1

    .line 126
    move v14, v6

    .line 127
    :goto_2
    const-string v1, "StorageManagerService"

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    const-string v4, ", average write amount: "

    .line 139
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    sget v3, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 150
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 168
    sget v12, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 170
    const/4 v9, 0x0

    .line 171
    const/4 v10, 0x0

    .line 172
    const/4 v11, 0x0

    .line 173
    const/4 v13, 0x0

    .line 174
    invoke-interface/range {v7 .. v14}, Landroid/os/IVold;->setGCUrgentPace(IIFFIII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 177
    :goto_3
    if-eqz v0, :cond_6

    .line 179
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/SmartStorageMaintIdler$1;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 182
    goto :goto_6

    .line 183
    :goto_5
    :try_start_5
    const-string v2, "StorageManagerService"

    .line 185
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 188
    if-eqz v0, :cond_6

    .line 190
    goto :goto_4

    .line 191
    :cond_6
    :goto_6
    monitor-exit p0

    .line 192
    goto :goto_8

    .line 193
    :goto_7
    if-eqz v0, :cond_7

    .line 195
    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/SmartStorageMaintIdler$1;->run()V

    .line 198
    :cond_7
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 199
    :catchall_1
    move-exception v0

    .line 200
    monitor-exit p0

    .line 201
    throw v0

    .line 202
    :cond_8
    iget-object p0, v0, Lcom/android/server/SmartStorageMaintIdler;->mStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 204
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    :goto_8
    return-void
.end method
