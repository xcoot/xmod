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

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$params:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$ms:Lcom/android/server/StorageManagerService;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$params:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    iput-object v1, v0, Lcom/android/server/SmartStorageMaintIdler;->mJobParams:Landroid/app/job/JobParameters;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$ms:Lcom/android/server/StorageManagerService;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p0, :cond_8

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/SmartStorageMaintIdler;->mFinishCallback:Lcom/android/server/SmartStorageMaintIdler$1;

    .line 13
    .line 14
    const-string v2, ", min gc sleep time(ms): 0, target dirty ratio: "

    .line 15
    .line 16
    const-string v3, ", min segment threshold: 0, dirty reclaim rate: 0.0, segment reclaim weight: 0.0, period(min): "

    .line 17
    .line 18
    const-string v4, "Set smart idle maintenance: latest write amount: "

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_0
    const-string v5, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 22
    .line 23
    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_1
    iget-object v5, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 27
    .line 28
    invoke-interface {v5}, Landroid/os/IVold;->getWriteAmount()I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const/4 v6, -0x1

    .line 33
    if-ne v5, v6, :cond_1

    .line 34
    .line 35
    const-string v1, "StorageManagerService"

    .line 36
    .line 37
    const-string v2, "Failed to get storage write record"

    .line 38
    .line 39
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    :try_start_2
    invoke-virtual {v0}, Lcom/android/server/SmartStorageMaintIdler$1;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    .line 46
    .line 47
    :cond_0
    monitor-exit p0

    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto/16 :goto_7

    .line 52
    .line 53
    :catch_0
    move-exception v1

    .line 54
    goto/16 :goto_5

    .line 55
    .line 56
    :cond_1
    :try_start_3
    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService;->updateStorageWriteRecords(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->needsCheckpoint()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_3

    .line 64
    .line 65
    const-string v6, "android.permission.MOUNT_FORMAT_FILESYSTEMS"

    .line 66
    .line 67
    invoke-virtual {p0, v6}, Lcom/android/server/StorageManagerService;->enforcePermission$1(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 71
    .line 72
    invoke-interface {v6}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const-string v1, "StorageManagerService"

    .line 80
    .line 81
    const-string v2, "Skipping smart idle maintenance - block based checkpoint in progress"

    .line 82
    .line 83
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->refreshLifetimeConstraint()Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_5

    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/android/server/StorageManagerService;->checkChargeStatus()Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-nez v6, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object v6, p0, Lcom/android/server/StorageManagerService;->mStorageWriteRecords:[I

    .line 101
    .line 102
    invoke-static {v6}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-interface {v6}, Ljava/util/stream/IntStream;->sum()I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    iget v7, p0, Lcom/android/server/StorageManagerService;->mMaxWriteRecords:I

    .line 111
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

    .line 117
    .line 118
    const-string v7, "Turn off gc_urgent based on checking lifetime and charge status"

    .line 119
    .line 120
    invoke-static {v6, v7}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    const/16 v6, 0x64

    .line 124
    .line 125
    move v8, v1

    .line 126
    move v14, v6

    .line 127
    :goto_2
    const-string v1, "StorageManagerService"

    .line 128
    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v4, ", average write amount: "

    .line 138
    .line 139
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    sget v3, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 149
    .line 150
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    iget-object v7, p0, Lcom/android/server/StorageManagerService;->mVold:Landroid/os/IVold;

    .line 167
    .line 168
    sget v12, Lcom/android/server/StorageManagerService;->sSmartIdleMaintPeriod:I

    .line 169
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

    .line 175
    .line 176
    .line 177
    :goto_3
    if-eqz v0, :cond_6

    .line 178
    .line 179
    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lcom/android/server/SmartStorageMaintIdler$1;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :goto_5
    :try_start_5
    const-string v2, "StorageManagerService"

    .line 184
    .line 185
    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    .line 187
    .line 188
    if-eqz v0, :cond_6

    .line 189
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

    .line 194
    .line 195
    :try_start_6
    invoke-virtual {v0}, Lcom/android/server/SmartStorageMaintIdler$1;->run()V

    .line 196
    .line 197
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

    .line 203
    .line 204
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 205
    .line 206
    .line 207
    :goto_8
    return-void
.end method
