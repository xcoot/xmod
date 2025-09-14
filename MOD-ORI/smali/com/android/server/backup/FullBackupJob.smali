.class public Lcom/android/server/backup/FullBackupJob;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MAX_JOB_ID:I = 0x31fdd38

.field public static final MIN_JOB_ID:I = 0x31fd950

.field public static final sIdleService:Landroid/content/ComponentName;


# instance fields
.field public final mParamsForUser:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ComponentName;

    .line 2
    .line 3
    const-class v1, Lcom/android/server/backup/FullBackupJob;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "android"

    .line 10
    .line 11
    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 10
    .line 11
    return-void
.end method

.method public static getJobIdForUserId(I)I
    .locals 1

    .line 1
    const v0, 0x31fd950

    .line 2
    .line 3
    .line 4
    add-int/2addr v0, p0

    .line 5
    const p0, 0x31fdd38

    .line 6
    .line 7
    .line 8
    if-gt v0, p0, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    const-string v0, "No job IDs available in the given range"

    .line 14
    .line 15
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p0
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V
    .locals 6

    .line 1
    invoke-virtual {p4}, Lcom/android/server/backup/UserBackupManagerService;->isFrameworkSchedulingEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string/jumbo v0, "jobscheduler"

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 16
    .line 17
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    .line 18
    .line 19
    invoke-static {p0}, Lcom/android/server/backup/FullBackupJob;->getJobIdForUserId(I)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    sget-object v3, Lcom/android/server/backup/FullBackupJob;->sIdleService:Landroid/content/ComponentName;

    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 26
    .line 27
    .line 28
    iget-object p4, p4, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 29
    .line 30
    monitor-enter p4

    .line 31
    :try_start_0
    const-string/jumbo v2, "getFullBackupRequiredNetworkType(...) returns "

    .line 32
    .line 33
    .line 34
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    const-string v3, "BackupManagerConstants"

    .line 36
    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v2, p4, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I

    .line 43
    .line 44
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    iget v2, p4, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequiredNetworkType:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 55
    .line 56
    :try_start_2
    monitor-exit p4

    .line 57
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string/jumbo v3, "getFullBackupRequireCharging(...) returns "

    .line 62
    .line 63
    .line 64
    monitor-enter p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    :try_start_3
    const-string v4, "BackupManagerConstants"

    .line 66
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-boolean v3, p4, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z

    .line 73
    .line 74
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-boolean v3, p4, Lcom/android/server/backup/BackupManagerConstants;->mFullBackupRequireCharging:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .line 86
    :try_start_4
    monitor-exit p4

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 88
    .line 89
    .line 90
    monitor-exit p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    const-wide/16 v2, 0x0

    .line 92
    .line 93
    cmp-long p4, p2, v2

    .line 94
    .line 95
    if-lez p4, :cond_1

    .line 96
    .line 97
    invoke-virtual {v1, p2, p3}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 98
    .line 99
    .line 100
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    const-string p2, "android.hardware.type.watch"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_2

    .line 111
    .line 112
    const/4 p1, 0x1

    .line 113
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 114
    .line 115
    .line 116
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string/jumbo p2, "userId"

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_0

    .line 140
    :catchall_1
    move-exception p0

    .line 141
    :try_start_5
    monitor-exit p4

    .line 142
    throw p0

    .line 143
    :catchall_2
    move-exception p0

    .line 144
    monitor-exit p4

    .line 145
    throw p0

    .line 146
    :goto_0
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    throw p0
.end method


# virtual methods
.method public final finishBackupPass(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Landroid/app/job/JobParameters;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v1, v2}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "userId"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget-object v2, v0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 15
    .line 16
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v3, v0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 18
    .line 19
    move-object/from16 v4, p1

    .line 20
    .line 21
    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 25
    sget-object v2, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 26
    .line 27
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v14, 0x0

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    goto/16 :goto_12

    .line 38
    .line 39
    :cond_0
    const-string v3, "beginFullBackup()"

    .line 40
    .line 41
    invoke-virtual {v2, v1, v3}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 42
    .line 43
    .line 44
    move-result-object v15

    .line 45
    if-eqz v15, :cond_12

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 52
    .line 53
    monitor-enter v3

    .line 54
    :try_start_1
    iget-object v4, v15, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerConstants;->getFullBackupIntervalMilliseconds()J

    .line 57
    .line 58
    .line 59
    move-result-wide v4

    .line 60
    iget-object v6, v15, Lcom/android/server/backup/UserBackupManagerService;->mConstants:Lcom/android/server/backup/BackupManagerConstants;

    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    .line 63
    .line 64
    .line 65
    move-result-wide v6

    .line 66
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 67
    iget-boolean v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mEnabled:Z

    .line 68
    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    iget-boolean v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mSetupComplete:Z

    .line 72
    .line 73
    if-nez v3, :cond_2

    .line 74
    .line 75
    :cond_1
    move v1, v14

    .line 76
    const/16 v25, 0x1

    .line 77
    .line 78
    goto/16 :goto_10

    .line 79
    .line 80
    :cond_2
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 81
    .line 82
    const/4 v8, 0x4

    .line 83
    invoke-virtual {v3, v8}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    const-string v0, "BackupManagerService"

    .line 92
    .line 93
    iget v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 94
    .line 95
    const-string v2, "Deferring scheduled full backups in battery saver mode"

    .line 96
    .line 97
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    iget v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 105
    .line 106
    iget-object v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 107
    .line 108
    invoke-static {v0, v1, v6, v7, v15}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    move v1, v14

    .line 112
    move v13, v1

    .line 113
    const/16 v25, 0x1

    .line 114
    .line 115
    goto/16 :goto_11

    .line 116
    .line 117
    :cond_3
    const-string v3, "BackupManagerService"

    .line 118
    .line 119
    iget v8, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 120
    .line 121
    const-string v9, "Beginning scheduled full backup operation"

    .line 122
    .line 123
    invoke-static {v8, v9}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    iget-object v12, v15, Lcom/android/server/backup/UserBackupManagerService;->mQueueLock:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter v12

    .line 133
    :try_start_2
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 134
    .line 135
    if-eqz v3, :cond_4

    .line 136
    .line 137
    const-string v0, "BackupManagerService"

    .line 138
    .line 139
    iget v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 140
    .line 141
    const-string v2, "Backup triggered but one already/still running!"

    .line 142
    .line 143
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .line 149
    .line 150
    monitor-exit v12

    .line 151
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    move-object/from16 v24, v12

    .line 154
    .line 155
    goto/16 :goto_f

    .line 156
    .line 157
    :cond_4
    const/4 v3, 0x0

    .line 158
    move-wide v9, v4

    .line 159
    const/4 v8, 0x1

    .line 160
    :goto_1
    iget-object v11, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 163
    .line 164
    .line 165
    move-result v11

    .line 166
    if-nez v11, :cond_5

    .line 167
    .line 168
    const-string v1, "BackupManagerService"

    .line 169
    .line 170
    iget v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 171
    .line 172
    const-string v4, "Backup queue empty; doing nothing"

    .line 173
    .line 174
    invoke-static {v2, v4}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    .line 180
    .line 181
    :goto_2
    move-wide v10, v9

    .line 182
    goto/16 :goto_b

    .line 183
    .line 184
    :cond_5
    iget-object v11, v15, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 185
    .line 186
    iget-object v11, v11, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v15, v11}, Lcom/android/server/backup/UserBackupManagerService;->fullBackupAllowable(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v11

    .line 192
    if-nez v11, :cond_6

    .line 193
    .line 194
    move-wide v9, v6

    .line 195
    move v8, v14

    .line 196
    :cond_6
    if-eqz v8, :cond_d

    .line 197
    .line 198
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 199
    .line 200
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 205
    .line 206
    iget-wide v13, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .line 208
    sub-long v13, v1, v13

    .line 209
    .line 210
    cmp-long v8, v13, v4

    .line 211
    .line 212
    if-ltz v8, :cond_7

    .line 213
    .line 214
    const/4 v8, 0x1

    .line 215
    goto :goto_3

    .line 216
    :cond_7
    const/4 v8, 0x0

    .line 217
    :goto_3
    if-nez v8, :cond_8

    .line 218
    .line 219
    sub-long v9, v4, v13

    .line 220
    .line 221
    :goto_4
    move v14, v8

    .line 222
    goto :goto_2

    .line 223
    :cond_8
    :try_start_3
    iget-object v11, v15, Lcom/android/server/backup/UserBackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 224
    .line 225
    iget-object v13, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 226
    .line 227
    iget v14, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    .line 229
    move-wide/from16 v17, v1

    .line 230
    .line 231
    const/4 v1, 0x0

    .line 232
    :try_start_4
    invoke-virtual {v11, v13, v1, v14}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    iget-object v11, v15, Lcom/android/server/backup/UserBackupManagerService;->mScheduledBackupEligibility:Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 237
    .line 238
    invoke-virtual {v11, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    .line 239
    .line 240
    .line 241
    move-result v11

    .line 242
    if-nez v11, :cond_9

    .line 243
    .line 244
    iget-object v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-wide/from16 v19, v6

    .line 250
    .line 251
    const/4 v11, 0x1

    .line 252
    goto/16 :goto_a

    .line 253
    .line 254
    :catch_0
    :goto_5
    move-wide/from16 v19, v6

    .line 255
    .line 256
    const/4 v11, 0x0

    .line 257
    goto/16 :goto_8

    .line 258
    .line 259
    :cond_9
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 260
    .line 261
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 262
    .line 263
    and-int/lit16 v2, v2, 0x2000

    .line 264
    .line 265
    if-nez v2, :cond_a

    .line 266
    .line 267
    iget-object v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 268
    .line 269
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 270
    .line 271
    invoke-virtual {v2, v1}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    .line 272
    .line 273
    .line 274
    move-result v1
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    if-eqz v1, :cond_a

    .line 276
    .line 277
    const/4 v1, 0x1

    .line 278
    goto :goto_6

    .line 279
    :cond_a
    const/4 v1, 0x0

    .line 280
    :goto_6
    if-eqz v1, :cond_b

    .line 281
    .line 282
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 283
    .line 284
    .line 285
    move-result-wide v13

    .line 286
    const-wide/32 v19, 0x36ee80

    .line 287
    .line 288
    .line 289
    add-long v13, v13, v19

    .line 290
    .line 291
    iget-object v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mTokenGenerator:Ljava/util/Random;

    .line 292
    .line 293
    const v11, 0x6ddd00

    .line 294
    .line 295
    .line 296
    invoke-virtual {v2, v11}, Ljava/util/Random;->nextInt(I)I

    .line 297
    .line 298
    .line 299
    move-result v2
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 300
    move v11, v1

    .line 301
    int-to-long v0, v2

    .line 302
    add-long/2addr v13, v0

    .line 303
    :try_start_6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 304
    .line 305
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    .line 306
    .line 307
    .line 308
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    const-string v1, "BackupManagerService"

    .line 312
    .line 313
    iget v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 314
    .line 315
    move-wide/from16 v19, v6

    .line 316
    .line 317
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    const-string v7, "Full backup time but "

    .line 323
    .line 324
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    iget-object v7, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 328
    .line 329
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    const-string v7, " is busy; deferring to "

    .line 333
    .line 334
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    new-instance v7, Ljava/util/Date;

    .line 338
    .line 339
    invoke-direct {v7, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v0

    .line 353
    invoke-static {v2, v0}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .line 359
    .line 360
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 361
    .line 362
    sub-long/2addr v13, v4

    .line 363
    invoke-virtual {v15, v13, v14, v0}, Lcom/android/server/backup/UserBackupManagerService;->enqueueFullBackup(JLjava/lang/String;)V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 364
    .line 365
    .line 366
    goto :goto_a

    .line 367
    :catch_1
    :goto_7
    move-wide/from16 v19, v6

    .line 368
    .line 369
    goto :goto_8

    .line 370
    :catch_2
    move v11, v1

    .line 371
    goto :goto_7

    .line 372
    :cond_b
    move v11, v1

    .line 373
    move-wide/from16 v19, v6

    .line 374
    .line 375
    goto :goto_a

    .line 376
    :catch_3
    move-wide/from16 v17, v1

    .line 377
    .line 378
    goto :goto_5

    .line 379
    :catch_4
    :goto_8
    :try_start_8
    iget-object v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    const/4 v1, 0x1

    .line 386
    if-le v0, v1, :cond_c

    .line 387
    .line 388
    const/4 v0, 0x1

    .line 389
    goto :goto_9

    .line 390
    :cond_c
    const/4 v0, 0x0

    .line 391
    :goto_9
    move v8, v0

    .line 392
    goto :goto_a

    .line 393
    :cond_d
    move-wide/from16 v17, v1

    .line 394
    .line 395
    move-wide/from16 v19, v6

    .line 396
    .line 397
    const/4 v11, 0x0

    .line 398
    :goto_a
    if-nez v11, :cond_11

    .line 399
    .line 400
    goto/16 :goto_4

    .line 401
    .line 402
    :goto_b
    if-eqz v14, :cond_f

    .line 403
    .line 404
    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    .line 405
    .line 406
    const/4 v13, 0x1

    .line 407
    invoke-direct {v8, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 408
    .line 409
    .line 410
    iget-object v0, v3, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    .line 411
    .line 412
    filled-new-array {v0}, [Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 416
    :try_start_9
    iget-object v3, v15, Lcom/android/server/backup/UserBackupManagerService;->mOperationStorage:Lcom/android/server/backup/internal/LifecycleOperationStorage;

    .line 417
    .line 418
    const-string v0, "BMS.beginFullBackup()"

    .line 419
    .line 420
    const/4 v1, 0x0

    .line 421
    invoke-virtual {v15, v1}, Lcom/android/server/backup/UserBackupManagerService;->getEligibilityRulesForOperation(I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    .line 422
    .line 423
    .line 424
    move-result-object v16

    .line 425
    iget-object v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mTransportManager:Lcom/android/server/backup/TransportManager;

    .line 426
    .line 427
    invoke-virtual {v1, v0}, Lcom/android/server/backup/TransportManager;->getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportConnection;

    .line 428
    .line 429
    .line 430
    move-result-object v4

    .line 431
    if-eqz v4, :cond_e

    .line 432
    .line 433
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;

    .line 434
    .line 435
    invoke-direct {v0, v1, v4}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/backup/TransportManager;Lcom/android/server/backup/transport/TransportConnection;)V

    .line 436
    .line 437
    .line 438
    new-instance v9, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 439
    .line 440
    const/16 v17, 0x0

    .line 441
    .line 442
    const/16 v18, 0x0

    .line 443
    .line 444
    const/4 v6, 0x1

    .line 445
    const/16 v19, 0x0

    .line 446
    .line 447
    move-object v1, v9

    .line 448
    move-object v2, v15

    .line 449
    move-object/from16 v7, p0

    .line 450
    .line 451
    move-object/from16 v21, v9

    .line 452
    .line 453
    move-object/from16 v9, v19

    .line 454
    .line 455
    move-wide/from16 v22, v10

    .line 456
    .line 457
    move-object/from16 v10, v17

    .line 458
    .line 459
    move-object v11, v0

    .line 460
    move-object/from16 v24, v12

    .line 461
    .line 462
    move/from16 v12, v18

    .line 463
    .line 464
    move/from16 v25, v13

    .line 465
    .line 466
    move-object/from16 v13, v16

    .line 467
    .line 468
    :try_start_a
    invoke-direct/range {v1 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/UserBackupManagerService;Lcom/android/server/backup/OperationStorage;Lcom/android/server/backup/transport/TransportConnection;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;ZLcom/android/server/backup/utils/BackupEligibilityRules;)V

    .line 469
    .line 470
    .line 471
    move-object/from16 v0, v21

    .line 472
    .line 473
    iput-object v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 474
    .line 475
    goto :goto_d

    .line 476
    :catchall_1
    move-exception v0

    .line 477
    goto/16 :goto_f

    .line 478
    .line 479
    :catch_5
    move-exception v0

    .line 480
    goto :goto_c

    .line 481
    :cond_e
    move-wide/from16 v22, v10

    .line 482
    .line 483
    move-object/from16 v24, v12

    .line 484
    .line 485
    move/from16 v25, v13

    .line 486
    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 488
    .line 489
    const-string v1, "No TransportConnection available"

    .line 490
    .line 491
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    throw v0
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 495
    :catch_6
    move-exception v0

    .line 496
    move-wide/from16 v22, v10

    .line 497
    .line 498
    move-object/from16 v24, v12

    .line 499
    .line 500
    move/from16 v25, v13

    .line 501
    .line 502
    :goto_c
    :try_start_b
    const-string v1, "BackupManagerService"

    .line 503
    .line 504
    const-string v2, "Failed to start backup"

    .line 505
    .line 506
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    .line 508
    .line 509
    const/4 v1, 0x0

    .line 510
    goto :goto_e

    .line 511
    :cond_f
    move-wide/from16 v22, v10

    .line 512
    .line 513
    move-object/from16 v24, v12

    .line 514
    .line 515
    const/16 v25, 0x1

    .line 516
    .line 517
    :goto_d
    move v1, v14

    .line 518
    :goto_e
    if-nez v1, :cond_10

    .line 519
    .line 520
    const-string v0, "BackupManagerService"

    .line 521
    .line 522
    iget v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 523
    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    .line 525
    .line 526
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .line 528
    .line 529
    const-string v3, "Nothing pending full backup or failed to start the operation; rescheduling +"

    .line 530
    .line 531
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    move-wide/from16 v9, v22

    .line 535
    .line 536
    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    invoke-static {v1, v2}, Lcom/android/server/backup/UserBackupManagerService;->addUserIdToLogMessage(ILjava/lang/String;)Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v1

    .line 547
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .line 549
    .line 550
    iget v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mUserId:I

    .line 551
    .line 552
    iget-object v1, v15, Lcom/android/server/backup/UserBackupManagerService;->mContext:Landroid/content/Context;

    .line 553
    .line 554
    invoke-static {v0, v1, v9, v10, v15}, Lcom/android/server/backup/FullBackupJob;->schedule(ILandroid/content/Context;JLcom/android/server/backup/UserBackupManagerService;)V

    .line 555
    .line 556
    .line 557
    monitor-exit v24

    .line 558
    const/4 v1, 0x0

    .line 559
    const/4 v13, 0x0

    .line 560
    goto :goto_11

    .line 561
    :cond_10
    iget-object v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mFullBackupQueue:Ljava/util/ArrayList;

    .line 562
    .line 563
    const/4 v1, 0x0

    .line 564
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    iget-object v0, v15, Lcom/android/server/backup/UserBackupManagerService;->mWakelock:Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;

    .line 568
    .line 569
    invoke-virtual {v0}, Lcom/android/server/backup/UserBackupManagerService$BackupWakeLock;->acquire()V

    .line 570
    .line 571
    .line 572
    new-instance v0, Ljava/lang/Thread;

    .line 573
    .line 574
    iget-object v2, v15, Lcom/android/server/backup/UserBackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 575
    .line 576
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 580
    .line 581
    .line 582
    monitor-exit v24

    .line 583
    move/from16 v13, v25

    .line 584
    .line 585
    goto :goto_11

    .line 586
    :cond_11
    move-object/from16 v0, p0

    .line 587
    .line 588
    move-wide/from16 v1, v17

    .line 589
    .line 590
    move-wide/from16 v6, v19

    .line 591
    .line 592
    const/4 v14, 0x0

    .line 593
    goto/16 :goto_1

    .line 594
    .line 595
    :goto_f
    monitor-exit v24
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 596
    throw v0

    .line 597
    :goto_10
    move v13, v1

    .line 598
    :goto_11
    if-eqz v13, :cond_13

    .line 599
    .line 600
    move/from16 v14, v25

    .line 601
    .line 602
    goto :goto_12

    .line 603
    :catchall_2
    move-exception v0

    .line 604
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 605
    throw v0

    .line 606
    :cond_12
    move v1, v14

    .line 607
    :cond_13
    move v14, v1

    .line 608
    :goto_12
    return v14

    .line 609
    :catchall_3
    move-exception v0

    .line 610
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 611
    throw v0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string/jumbo v0, "userId"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object p0, p0, Lcom/android/server/backup/FullBackupJob;->mParamsForUser:Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-nez p0, :cond_0

    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return v1

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object p0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/BackupManagerService;

    .line 30
    .line 31
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/backup/BackupManagerService;->isUserReadyForBackup(I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v0, "endFullBackup()"

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService;->getServiceForUserIfCallerHasPermission(ILjava/lang/String;)Lcom/android/server/backup/UserBackupManagerService;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    .line 50
    new-instance p1, Lcom/android/server/backup/UserBackupManagerService$1;

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    invoke-direct {p1, v0, p0}, Lcom/android/server/backup/UserBackupManagerService$1;-><init>(ILcom/android/server/backup/UserBackupManagerService;)V

    .line 54
    .line 55
    .line 56
    new-instance p0, Ljava/lang/Thread;

    .line 57
    .line 58
    const-string/jumbo v0, "end-full-backup"

    .line 59
    .line 60
    .line 61
    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    return v1

    .line 68
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method
