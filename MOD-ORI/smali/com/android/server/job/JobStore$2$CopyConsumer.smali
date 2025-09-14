.class public final Lcom/android/server/job/JobStore$2$CopyConsumer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mCopyAllJobs:Z

.field public final mJobStoreCopy:Landroid/util/SparseArray;

.field public final synthetic this$1:Lcom/android/server/job/JobStore$2;


# direct methods
.method public static -$$Nest$mprepare(Lcom/android/server/job/JobStore$2$CopyConsumer;)V
    .locals 6

    .line 1
    const-string v0, "JobStore"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, -0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v1, v1, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 14
    .line 15
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 25
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mCopyAllJobs:Z

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 30
    .line 31
    iget-boolean v2, v1, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 32
    .line 33
    if-eqz v2, :cond_5

    .line 34
    .line 35
    iget-object v1, v1, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_4

    .line 42
    .line 43
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/android/server/job/JobStore;->mJobFileDirectory:Ljava/io/File;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 50
    .line 51
    .line 52
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    const-string p0, "Couldn\'t get job file list"

    .line 56
    .line 57
    invoke-static {v0, p0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    goto :goto_4

    .line 61
    :cond_2
    array-length v0, v1

    .line 62
    :goto_2
    if-ge v3, v0, :cond_6

    .line 63
    .line 64
    aget-object v2, v1, v3

    .line 65
    .line 66
    invoke-static {v2}, Lcom/android/server/job/JobStore;->extractUidFromJobFileName(Ljava/io/File;)I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    const/4 v4, -0x2

    .line 71
    if-eq v2, v4, :cond_3

    .line 72
    .line 73
    iget-object v4, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 74
    .line 75
    new-instance v5, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :catch_0
    move-exception p0

    .line 87
    const-string v1, "Not allowed to read job file directory"

    .line 88
    .line 89
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-ge v3, v0, :cond_6

    .line 104
    .line 105
    iget-object v0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 106
    .line 107
    iget-object v1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 110
    .line 111
    iget-object v1, v1, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 112
    .line 113
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    new-instance v2, Ljava/util/ArrayList;

    .line 118
    .line 119
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    add-int/lit8 v3, v3, 0x1

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    iget-object p0, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 129
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_4
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobStore$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    .line 5
    .line 6
    new-instance p1, Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 10
    .line 11
    iget-boolean v2, v2, Lcom/android/server/job/JobStore;->mUseSplitFiles:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, -0x1

    .line 19
    :goto_0
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroid/app/job/JobInfo;->isPersisted()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_6

    .line 26
    .line 27
    iget-boolean v3, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mCopyAllJobs:Z

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    iget-object v3, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->this$1:Lcom/android/server/job/JobStore$2;

    .line 32
    .line 33
    iget-object v3, v3, Lcom/android/server/job/JobStore$2;->this$0:Lcom/android/server/job/JobStore;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/android/server/job/JobStore;->mPendingJobWriteUids:Landroid/util/SparseBooleanArray;

    .line 36
    .line 37
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_6

    .line 42
    .line 43
    :cond_1
    iget-object v3, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/util/List;

    .line 50
    .line 51
    if-nez v3, :cond_2

    .line 52
    .line 53
    new-instance v3, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v0, v0, Lcom/android/server/job/JobStore$2$CopyConsumer;->mJobStoreCopy:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    .line 64
    .line 65
    iget-object v5, v1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 66
    .line 67
    iget v9, v1, Lcom/android/server/job/controllers/JobStatus;->standbyBucket:I

    .line 68
    .line 69
    iget-wide v14, v1, Lcom/android/server/job/controllers/JobStatus;->mCumulativeExecutionTimeMs:J

    .line 70
    .line 71
    iget v2, v1, Lcom/android/server/job/controllers/JobStatus;->mInternalFlags:I

    .line 72
    .line 73
    iget v4, v1, Lcom/android/server/job/controllers/JobStatus;->mDynamicConstraints:I

    .line 74
    .line 75
    move/from16 v25, v4

    .line 76
    .line 77
    iget-wide v6, v1, Lcom/android/server/job/controllers/JobStatus;->mLastSuccessfulRunTime:J

    .line 78
    .line 79
    move-wide/from16 v18, v6

    .line 80
    .line 81
    iget-wide v6, v1, Lcom/android/server/job/controllers/JobStatus;->mLastFailedRunTime:J

    .line 82
    .line 83
    move-wide/from16 v20, v6

    .line 84
    .line 85
    iget v6, v1, Lcom/android/server/job/controllers/JobStatus;->callingUid:I

    .line 86
    .line 87
    iget-object v7, v1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 88
    .line 89
    iget v8, v1, Lcom/android/server/job/controllers/JobStatus;->sourceUserId:I

    .line 90
    .line 91
    iget-object v10, v1, Lcom/android/server/job/controllers/JobStatus;->mNamespace:Ljava/lang/String;

    .line 92
    .line 93
    iget-object v11, v1, Lcom/android/server/job/controllers/JobStatus;->sourceTag:Ljava/lang/String;

    .line 94
    .line 95
    iget v12, v1, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    .line 96
    .line 97
    iget v13, v1, Lcom/android/server/job/controllers/JobStatus;->mNumSystemStops:I

    .line 98
    .line 99
    move-wide/from16 v16, v14

    .line 100
    .line 101
    iget-wide v14, v1, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    .line 102
    .line 103
    move-wide/from16 v22, v16

    .line 104
    .line 105
    move-object/from16 p0, v3

    .line 106
    .line 107
    iget-wide v3, v1, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    .line 108
    .line 109
    move-wide/from16 v16, v3

    .line 110
    .line 111
    move-object v4, v0

    .line 112
    move/from16 v24, v2

    .line 113
    .line 114
    invoke-direct/range {v4 .. v25}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IIJJJJJII)V

    .line 115
    .line 116
    .line 117
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 118
    .line 119
    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 120
    .line 121
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->mPersistedUtcTimes:Landroid/util/Pair;

    .line 122
    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    sget-boolean v2, Lcom/android/server/job/controllers/JobStatus;->DEBUG:Z

    .line 126
    .line 127
    if-eqz v2, :cond_3

    .line 128
    .line 129
    new-instance v2, Ljava/lang/RuntimeException;

    .line 130
    .line 131
    const-string/jumbo v3, "here"

    .line 132
    .line 133
    .line 134
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v3, "JobScheduler.JobStatus"

    .line 138
    .line 139
    const-string v4, "Cloning job with persisted run times"

    .line 140
    .line 141
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .line 143
    .line 144
    :cond_3
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 145
    .line 146
    if-eqz v2, :cond_4

    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-lez v2, :cond_4

    .line 153
    .line 154
    new-instance v2, Ljava/util/ArrayList;

    .line 155
    .line 156
    iget-object v3, v1, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 159
    .line 160
    .line 161
    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->executingWork:Ljava/util/ArrayList;

    .line 162
    .line 163
    :cond_4
    iget-object v2, v1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 164
    .line 165
    if-eqz v2, :cond_5

    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-lez v2, :cond_5

    .line 172
    .line 173
    new-instance v2, Ljava/util/ArrayList;

    .line 174
    .line 175
    iget-object v1, v1, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 176
    .line 177
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 178
    .line 179
    .line 180
    iput-object v2, v0, Lcom/android/server/job/controllers/JobStatus;->pendingWork:Ljava/util/ArrayList;

    .line 181
    .line 182
    :cond_5
    move-object/from16 v3, p0

    .line 183
    .line 184
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    :cond_6
    return-void
.end method
