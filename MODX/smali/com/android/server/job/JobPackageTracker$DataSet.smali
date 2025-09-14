.class public final Lcom/android/server/job/JobPackageTracker$DataSet;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mEntries:Landroid/util/SparseArray;

.field public mMaxFgActive:I

.field public mMaxTotalActive:I

.field public final mStartClockTime:J

.field public final mStartElapsedTime:J

.field public final mStartUptimeTime:J

.field public mSummedTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 8
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    .line 9
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 11
    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    .line 12
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sSystemClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 3
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    .line 4
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    .line 5
    iget-wide v0, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    return-void
.end method

.method public static printDuration(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Z
    .locals 0

    .line 1
    long-to-float p3, p3

    .line 2
    long-to-float p1, p1

    .line 3
    div-float/2addr p3, p1

    .line 4
    const/high16 p1, 0x42c80000    # 100.0f

    .line 6
    mul-float/2addr p3, p1

    .line 7
    const/high16 p1, 0x3f000000    # 0.5f

    .line 9
    add-float/2addr p3, p1

    .line 10
    float-to-int p1, p3

    .line 11
    const/4 p2, 0x1

    .line 12
    const-string/jumbo p3, "x "

    .line 15
    if-lez p1, :cond_0

    .line 17
    invoke-virtual {p5, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 20
    const-string p1, "% "

    .line 22
    invoke-virtual {p5, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p5, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 28
    invoke-virtual {p5, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p5, p6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 34
    return p2

    .line 35
    :cond_0
    if-lez p0, :cond_1

    .line 37
    invoke-virtual {p5, p0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 40
    invoke-virtual {p5, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p5, p6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 46
    return p2

    .line 47
    :cond_1
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public static printPackageEntryState(IJJLandroid/util/proto/ProtoOutputStream;)V
    .locals 2

    .line 1
    invoke-virtual {p5, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 4
    move-result-wide p1

    .line 5
    const-wide v0, 0x10300000001L

    .line 10
    invoke-virtual {p5, v0, v1, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 13
    const-wide p3, 0x10500000002L

    .line 18
    invoke-virtual {p5, p3, p4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 21
    invoke-virtual {p5, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 24
    return-void
.end method


# virtual methods
.method public final addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-wide/from16 v2, p2

    .line 7
    iget-wide v4, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 9
    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    .line 12
    move-result-wide v6

    .line 13
    add-long/2addr v6, v4

    .line 14
    iput-wide v6, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 16
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x1

    .line 23
    sub-int/2addr v4, v5

    .line 24
    :goto_0
    if-ltz v4, :cond_5

    .line 26
    iget-object v6, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v6

    .line 32
    check-cast v6, Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    .line 37
    move-result v7

    .line 38
    sub-int/2addr v7, v5

    .line 39
    :goto_1
    if-ltz v7, :cond_4

    .line 41
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 44
    move-result-object v8

    .line 45
    check-cast v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 47
    iget-object v9, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 52
    move-result v9

    .line 53
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 56
    move-result-object v10

    .line 57
    check-cast v10, Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v9, v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 62
    move-result-object v9

    .line 63
    iget-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 65
    iget-wide v12, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 67
    add-long/2addr v10, v12

    .line 68
    iput-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 70
    iget v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 72
    iget v13, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 74
    add-int/2addr v12, v13

    .line 75
    iput v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 77
    iget-wide v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 79
    iget-wide v14, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 81
    add-long/2addr v12, v14

    .line 82
    iput-wide v12, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 84
    iget v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 86
    iget v15, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 88
    add-int/2addr v14, v15

    .line 89
    iput v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 91
    iget-wide v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 93
    move-object/from16 v16, v6

    .line 95
    iget-wide v5, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 97
    add-long/2addr v14, v5

    .line 98
    iput-wide v14, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 100
    iget v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 102
    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 104
    add-int/2addr v5, v6

    .line 105
    iput v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 107
    iget v5, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 109
    if-lez v5, :cond_0

    .line 111
    iget-wide v5, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 113
    sub-long v5, v2, v5

    .line 115
    add-long/2addr v5, v10

    .line 116
    iput-wide v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 118
    const/4 v5, 0x1

    .line 119
    iput-boolean v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    .line 121
    goto :goto_2

    .line 122
    :cond_0
    const/4 v5, 0x1

    .line 123
    :goto_2
    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 125
    if-lez v6, :cond_1

    .line 127
    iget-wide v10, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 129
    sub-long v10, v2, v10

    .line 131
    add-long/2addr v10, v12

    .line 132
    iput-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 134
    iput-boolean v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    .line 136
    :cond_1
    iget v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 138
    if-lez v6, :cond_2

    .line 140
    iget-wide v10, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 142
    sub-long v10, v2, v10

    .line 144
    add-long/2addr v10, v14

    .line 145
    iput-wide v10, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 147
    iput-boolean v5, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    .line 149
    :cond_2
    iget-object v6, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 151
    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    .line 154
    move-result v6

    .line 155
    sub-int/2addr v6, v5

    .line 156
    :goto_3
    if-ltz v6, :cond_3

    .line 158
    iget-object v10, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 160
    invoke-virtual {v10, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 163
    move-result v10

    .line 164
    iget-object v11, v9, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 166
    const/4 v12, 0x0

    .line 167
    invoke-virtual {v11, v10, v12}, Landroid/util/SparseIntArray;->get(II)I

    .line 170
    move-result v12

    .line 171
    iget-object v13, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 173
    invoke-virtual {v13, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 176
    move-result v13

    .line 177
    add-int/2addr v13, v12

    .line 178
    invoke-virtual {v11, v10, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    add-int/lit8 v6, v6, -0x1

    .line 183
    goto :goto_3

    .line 184
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 186
    move-object/from16 v6, v16

    .line 188
    goto/16 :goto_1

    .line 190
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 192
    goto/16 :goto_0

    .line 194
    :cond_5
    iget v2, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 196
    iget v3, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 198
    if-le v2, v3, :cond_6

    .line 200
    iput v2, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 202
    :cond_6
    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 204
    iget v2, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 206
    if-le v0, v2, :cond_7

    .line 208
    iput v0, v1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 210
    :cond_7
    return-void
.end method

.method public final dump(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v11, p6

    .line 1
    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v12

    .line 2
    invoke-virtual/range {p6 .. p7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " at "

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3
    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v5, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4
    const-string v4, " ("

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 5
    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    move-wide/from16 v6, p4

    invoke-static {v4, v5, v6, v7, v11}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 6
    const-string v4, ") over "

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 7
    invoke-static {v12, v13, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 8
    const-string v14, ":"

    invoke-virtual {v11, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 9
    invoke-virtual/range {p6 .. p6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 10
    const-string v4, "Max concurrency: "

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 11
    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " total, "

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 12
    iget v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v4, " foreground"

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 13
    invoke-virtual/range {p6 .. p6}, Landroid/util/IndentingPrintWriter;->println()V

    .line 14
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v10, v16

    :goto_0
    if-ge v10, v15, :cond_e

    .line 15
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 16
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    if-eq v1, v4, :cond_1

    :cond_0
    move/from16 v18, v10

    goto/16 :goto_4

    .line 17
    :cond_1
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Landroid/util/ArrayMap;

    .line 18
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move/from16 v5, v16

    :goto_1
    if-ge v5, v8, :cond_0

    .line 19
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 20
    invoke-static {v11, v9}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 21
    const-string v4, " / "

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v11, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p6 .. p6}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 24
    invoke-virtual {v6, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v17

    iget v4, v6, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    const-string/jumbo v19, "pending"

    move/from16 v20, v5

    move-object v0, v6

    move-wide v5, v12

    move-object/from16 v21, v7

    move/from16 v22, v8

    move-wide/from16 v7, v17

    move/from16 v17, v9

    move-object/from16 v9, p6

    move/from16 v18, v10

    move-object/from16 v10, v19

    .line 25
    invoke-static/range {v4 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v4

    const-string v10, " "

    if-eqz v4, :cond_2

    .line 26
    invoke-virtual {v11, v10}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 27
    :cond_2
    invoke-virtual {v0, v2, v3}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v7

    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    const-string v19, "active"

    move-wide v5, v12

    move-object/from16 v9, p6

    move-object v1, v10

    move-object/from16 v10, v19

    .line 28
    invoke-static/range {v4 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    invoke-virtual {v11, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 30
    :cond_3
    iget-wide v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 31
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v1, :cond_4

    .line 32
    iget-wide v6, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v6, v2, v6

    add-long/2addr v6, v4

    move-wide v7, v6

    goto :goto_2

    :cond_4
    move-wide v7, v4

    .line 33
    :goto_2
    iget v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    const-string v10, "active-top"

    move-wide v5, v12

    move-object/from16 v9, p6

    .line 34
    invoke-static/range {v4 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->printDuration(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    .line 35
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    if-gtz v1, :cond_5

    iget-boolean v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v1, :cond_6

    .line 36
    :cond_5
    const-string v1, " (pending)"

    invoke-virtual {v11, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 37
    :cond_6
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v1, :cond_7

    iget-boolean v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v1, :cond_8

    .line 38
    :cond_7
    const-string v1, " (active)"

    invoke-virtual {v11, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 39
    :cond_8
    iget v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v1, :cond_9

    iget-boolean v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v1, :cond_a

    .line 40
    :cond_9
    const-string v1, " (active-top)"

    invoke-virtual {v11, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 41
    :cond_a
    invoke-virtual/range {p6 .. p6}, Landroid/util/IndentingPrintWriter;->println()V

    .line 42
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_d

    move/from16 v1, v16

    .line 43
    :goto_3
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_c

    if-lez v1, :cond_b

    .line 44
    const-string v4, ", "

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 45
    :cond_b
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 46
    const-string/jumbo v4, "x "

    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 47
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 48
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    invoke-virtual {v11, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 50
    :cond_c
    invoke-virtual/range {p6 .. p6}, Landroid/util/IndentingPrintWriter;->println()V

    .line 51
    :cond_d
    invoke-virtual/range {p6 .. p6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v5, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v9, v17

    move/from16 v10, v18

    move-object/from16 v7, v21

    move/from16 v8, v22

    goto/16 :goto_1

    :goto_4
    add-int/lit8 v10, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto/16 :goto_0

    .line 52
    :cond_e
    invoke-virtual/range {p6 .. p6}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final dump(Landroid/util/proto/ProtoOutputStream;JJJI)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    move/from16 v10, p8

    .line 53
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 54
    invoke-virtual {v0, v8, v9}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v1

    const-wide v3, 0x10300000001L

    .line 55
    iget-wide v5, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartClockTime:J

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 56
    iget-wide v3, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartElapsedTime:J

    sub-long v3, p6, v3

    const-wide v5, 0x10300000002L

    invoke-virtual {v7, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10300000003L

    .line 57
    invoke-virtual {v7, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 58
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v13

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_a

    .line 59
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    const/4 v1, -0x1

    if-eq v10, v1, :cond_1

    .line 60
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v10, v1, :cond_1

    :cond_0
    move-wide/from16 v16, v11

    move/from16 p6, v13

    move/from16 p3, v15

    goto/16 :goto_9

    .line 61
    :cond_1
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    invoke-virtual {v1, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/util/ArrayMap;

    .line 62
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_0

    move/from16 p3, v15

    const-wide v14, 0x20b00000004L

    .line 63
    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 64
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-wide/from16 v16, v11

    const-wide v10, 0x10500000001L

    .line 65
    invoke-virtual {v7, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 66
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide v10, 0x10900000002L

    invoke-virtual {v7, v10, v11, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 67
    invoke-virtual {v3, v8, v9}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v10

    iget v1, v3, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    const-wide v18, 0x10b00000003L

    move v12, v2

    move/from16 p6, v13

    move-object v13, v3

    move-wide/from16 v2, v18

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-wide v4, v10

    move v10, v6

    move-object/from16 v6, p1

    .line 68
    invoke-static/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 69
    invoke-virtual {v13, v8, v9}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v4

    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    const-wide v2, 0x10b00000004L

    .line 70
    invoke-static/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 71
    iget-wide v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 72
    iget v3, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-lez v3, :cond_2

    .line 73
    iget-wide v3, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    sub-long v3, v8, v3

    add-long/2addr v3, v1

    move-wide v4, v3

    goto :goto_2

    :cond_2
    move-wide v4, v1

    .line 74
    :goto_2
    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    const-wide v2, 0x10b00000005L

    move-object/from16 v6, p1

    .line 75
    invoke-static/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->printPackageEntryState(IJJLandroid/util/proto/ProtoOutputStream;)V

    .line 76
    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    const/4 v2, 0x1

    if-gtz v1, :cond_4

    iget-boolean v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadPending:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v2

    :goto_4
    const-wide v3, 0x10800000006L

    invoke-virtual {v7, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 77
    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    if-gtz v1, :cond_6

    iget-boolean v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActive:Z

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    move v1, v2

    :goto_6
    const-wide v3, 0x10800000007L

    invoke-virtual {v7, v3, v4, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 78
    iget v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    if-gtz v1, :cond_8

    iget-boolean v1, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->hadActiveTop:Z

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_7
    const-wide v3, 0x10800000008L

    invoke-virtual {v7, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const/4 v1, 0x0

    .line 79
    :goto_8
    iget-object v2, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const-wide v2, 0x20b00000009L

    .line 80
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 81
    iget-object v4, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 82
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    const-wide v5, 0x10e00000001L

    .line 83
    invoke-virtual {v7, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 84
    iget-object v4, v13, Lcom/android/server/job/JobPackageTracker$PackageEntry;->stopReasons:Landroid/util/SparseIntArray;

    .line 85
    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const-wide v5, 0x10500000002L

    .line 86
    invoke-virtual {v7, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 87
    invoke-virtual {v7, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 88
    :cond_9
    invoke-virtual {v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v2, v12, 0x1

    move/from16 v15, p3

    move/from16 v13, p6

    move v6, v10

    move-wide/from16 v11, v16

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v10, p8

    goto/16 :goto_1

    :goto_9
    add-int/lit8 v15, p3, 0x1

    move/from16 v13, p6

    move/from16 v10, p8

    move-wide/from16 v11, v16

    goto/16 :goto_0

    :cond_a
    move-wide/from16 v16, v11

    const-wide v1, 0x10500000005L

    .line 89
    iget v3, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    invoke-virtual {v7, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x10500000006L

    .line 90
    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    invoke-virtual {v7, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    move-wide/from16 v0, v16

    .line 91
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 16
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 27
    if-nez p0, :cond_1

    .line 29
    new-instance p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 31
    invoke-direct {p0}, Lcom/android/server/job/JobPackageTracker$PackageEntry;-><init>()V

    .line 34
    invoke-virtual {v0, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_1
    return-object p0
.end method

.method public final getTotalTime(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v2, v0, v2

    .line 7
    if-lez v2, :cond_0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/JobPackageTracker$DataSet;->mStartUptimeTime:J

    .line 12
    sub-long/2addr p1, v0

    .line 13
    return-wide p1
.end method
