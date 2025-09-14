.class public Lcom/android/server/content/SyncJobService;
.super Landroid/app/job/JobService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/android/server/content/SyncJobService;

.field public static final sJobParamsMap:Landroid/util/SparseArray;

.field public static final sJobStartUptimes:Landroid/util/SparseLongArray;

.field public static final sLock:Ljava/lang/Object;

.field public static final sLogger:Lcom/android/server/content/SyncLogger;

.field public static final sStartedSyncs:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    .line 14
    .line 15
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    new-instance v0, Landroid/util/SparseLongArray;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    .line 28
    .line 29
    invoke-static {}, Lcom/android/server/content/SyncLogger;->getInstance()Lcom/android/server/content/SyncLogger;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static callJobFinished(ILjava/lang/String;)V
    .locals 16

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    const-string v2, "SyncManager"

    .line 11
    .line 12
    const-string/jumbo v3, "sInstance == null"

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_4

    .line 21
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    .line 22
    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    if-eqz v2, :cond_2

    .line 25
    .line 26
    const-string v3, "Job params not found for "

    .line 27
    .line 28
    monitor-enter v1

    .line 29
    :try_start_1
    sget-object v4, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    check-cast v5, Landroid/app/job/JobParameters;

    .line 36
    .line 37
    sget-object v6, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    .line 38
    .line 39
    const-string/jumbo v7, "callJobFinished()"

    .line 40
    .line 41
    .line 42
    const-string v8, " jobid="

    .line 43
    .line 44
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    const-string v10, " needsReschedule="

    .line 49
    .line 50
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 51
    .line 52
    const-string v12, " "

    .line 53
    .line 54
    invoke-virtual {v6, v5}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v13

    .line 58
    const-string v14, " why="

    .line 59
    .line 60
    move-object/from16 v15, p1

    .line 61
    .line 62
    filled-new-array/range {v7 .. v15}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    invoke-virtual {v6, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v2, v5, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catchall_1
    move-exception v0

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    const-string v2, "SyncManager"

    .line 82
    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :goto_1
    monitor-exit v1

    .line 103
    goto :goto_3

    .line 104
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    throw v0

    .line 106
    :cond_2
    :goto_3
    return-void

    .line 107
    :goto_4
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    throw v0
.end method

.method public static jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "job:null"

    .line 4
    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "job:#"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, ":sr=["

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, "/"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getDebugStopReason()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, "]:"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-static {p0}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method


# virtual methods
.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 9

    .line 1
    const-class v0, Lcom/android/server/content/SyncJobService;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/android/server/content/SyncJobService;->sInstance:Lcom/android/server/content/SyncJobService;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    sget-object v0, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/server/content/SyncLogger;->purgeOldLogs()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    const-string p0, "SyncManager"

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v1, "Got invalid job "

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :cond_0
    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 48
    .line 49
    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 50
    .line 51
    invoke-static {v2}, Lcom/android/server/content/SyncManager;->readyToSync(I)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    const-string/jumbo v2, "onStartJob() jobid="

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const-string v4, " op="

    .line 67
    .line 68
    const-string v6, " readyToSync"

    .line 69
    .line 70
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    move-object v5, v1

    .line 75
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    if-nez v8, :cond_1

    .line 84
    .line 85
    iget-boolean v1, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 86
    .line 87
    xor-int/2addr v1, v0

    .line 88
    invoke-virtual {p0, p1, v1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 89
    .line 90
    .line 91
    return v0

    .line 92
    :cond_1
    const-string p0, "SyncManager"

    .line 93
    .line 94
    const/4 v2, 0x2

    .line 95
    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    sget-object v2, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    .line 100
    .line 101
    monitor-enter v2

    .line 102
    :try_start_1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    sget-object v4, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    .line 107
    .line 108
    invoke-virtual {v4, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    .line 112
    .line 113
    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 114
    .line 115
    .line 116
    sget-object p1, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    .line 117
    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 119
    .line 120
    .line 121
    move-result-wide v4

    .line 122
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 123
    .line 124
    .line 125
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    const/16 v2, 0xa

    .line 131
    .line 132
    iput v2, p1, Landroid/os/Message;->what:I

    .line 133
    .line 134
    if-eqz p0, :cond_2

    .line 135
    .line 136
    const-string p0, "SyncManager"

    .line 137
    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    const-string v3, "Got start job message "

    .line 141
    .line 142
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-static {p0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    :cond_2
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 158
    .line 159
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    if-eqz p0, :cond_3

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 166
    .line 167
    if-eqz p0, :cond_3

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    .line 171
    .line 172
    :cond_3
    return v0

    .line 173
    :catchall_0
    move-exception p0

    .line 174
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    throw p0

    .line 176
    :catchall_1
    move-exception p0

    .line 177
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    throw p0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 17

    .line 1
    const-string v0, "Job "

    .line 2
    .line 3
    const-string v1, "SyncManager"

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "SyncManager"

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string/jumbo v3, "onStopJob called "

    .line 17
    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v3, ", reason: "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x0

    .line 57
    if-nez v1, :cond_1

    .line 58
    .line 59
    const-string v0, "SyncManager"

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "Got invalid job "

    .line 64
    .line 65
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return v2

    .line 83
    :cond_1
    iget-object v3, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 84
    .line 85
    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 86
    .line 87
    invoke-static {v3}, Lcom/android/server/content/SyncManager;->readyToSync(I)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    sget-object v4, Lcom/android/server/content/SyncJobService;->sLogger:Lcom/android/server/content/SyncLogger;

    .line 92
    .line 93
    const-string/jumbo v5, "onStopJob() "

    .line 94
    .line 95
    .line 96
    move-object/from16 v6, p1

    .line 97
    .line 98
    invoke-virtual {v4, v6}, Lcom/android/server/content/SyncLogger;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    const-string v8, " readyToSync="

    .line 103
    .line 104
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    filled-new-array {v5, v7, v8, v9}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    sget-object v5, Lcom/android/server/content/SyncJobService;->sLock:Ljava/lang/Object;

    .line 116
    .line 117
    monitor-enter v5

    .line 118
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getJobId()I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    sget-object v8, Lcom/android/server/content/SyncJobService;->sJobParamsMap:Landroid/util/SparseArray;

    .line 123
    .line 124
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->remove(I)V

    .line 125
    .line 126
    .line 127
    sget-object v8, Lcom/android/server/content/SyncJobService;->sJobStartUptimes:Landroid/util/SparseLongArray;

    .line 128
    .line 129
    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->get(I)J

    .line 130
    .line 131
    .line 132
    move-result-wide v9

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 134
    .line 135
    .line 136
    move-result-wide v11

    .line 137
    sub-long v13, v11, v9

    .line 138
    .line 139
    const-wide/32 v15, 0xea60

    .line 140
    .line 141
    .line 142
    cmp-long v13, v13, v15

    .line 143
    .line 144
    if-lez v13, :cond_2

    .line 145
    .line 146
    if-eqz v3, :cond_2

    .line 147
    .line 148
    sget-object v3, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    .line 149
    .line 150
    invoke-virtual {v3, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    if-nez v3, :cond_2

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v0, " didn\'t start:  startUptime="

    .line 165
    .line 166
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v0, " nowUptime="

    .line 173
    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v0, " params="

    .line 181
    .line 182
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-static/range {p1 .. p1}, Lcom/android/server/content/SyncJobService;->jobParametersToString(Landroid/app/job/JobParameters;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    const-string v3, "SyncManager"

    .line 204
    .line 205
    invoke-static {v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    .line 210
    goto :goto_3

    .line 211
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/content/SyncJobService;->sStartedSyncs:Landroid/util/SparseBooleanArray;

    .line 212
    .line 213
    invoke-virtual {v0, v7}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, v7}, Landroid/util/SparseLongArray;->delete(I)V

    .line 217
    .line 218
    .line 219
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const/16 v3, 0xb

    .line 225
    .line 226
    iput v3, v0, Landroid/os/Message;->what:I

    .line 227
    .line 228
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 229
    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    const/4 v3, 0x1

    .line 235
    if-eqz v1, :cond_3

    .line 236
    .line 237
    move v1, v3

    .line 238
    goto :goto_1

    .line 239
    :cond_3
    move v1, v2

    .line 240
    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 241
    .line 242
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobParameters;->getInternalStopReasonCode()I

    .line 243
    .line 244
    .line 245
    move-result v1

    .line 246
    const/4 v4, 0x3

    .line 247
    if-ne v1, v4, :cond_4

    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_4
    move v3, v2

    .line 251
    :goto_2
    iput v3, v0, Landroid/os/Message;->arg2:I

    .line 252
    .line 253
    invoke-static {}, Lcom/android/server/content/SyncManager;->getInstance()Lcom/android/server/content/SyncManager;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    if-eqz v1, :cond_5

    .line 258
    .line 259
    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mSyncHandler:Lcom/android/server/content/SyncManager$SyncHandler;

    .line 260
    .line 261
    if-eqz v1, :cond_5

    .line 262
    .line 263
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    .line 265
    .line 266
    :cond_5
    return v2

    .line 267
    :goto_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    throw v0
.end method
