.class public final Lcom/android/server/job/JobPackageTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

.field public final mEventCmds:[I

.field public final mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

.field public final mEventJobIds:[I

.field public final mEventReasons:[Ljava/lang/String;

.field public final mEventTags:[Ljava/lang/String;

.field public final mEventTimes:[J

.field public final mEventUids:[I

.field public final mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/internal/util/jobs/RingBufferIndices;

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/RingBufferIndices;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    .line 12
    .line 13
    new-array v0, v1, [I

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    .line 16
    .line 17
    new-array v0, v1, [J

    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    .line 20
    .line 21
    new-array v0, v1, [I

    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    .line 24
    .line 25
    new-array v0, v1, [Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    .line 28
    .line 29
    new-array v0, v1, [I

    .line 30
    .line 31
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    .line 32
    .line 33
    new-array v0, v1, [Ljava/lang/String;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    new-array v0, v0, [Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 46
    .line 47
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final addEvent(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/util/jobs/RingBufferIndices;->add()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    shl-int/lit8 p6, p6, 0x8

    .line 8
    .line 9
    const v1, 0xff00

    .line 10
    .line 11
    .line 12
    and-int/2addr p6, v1

    .line 13
    or-int/2addr p1, p6

    .line 14
    iget-object p6, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    .line 15
    .line 16
    aput p1, p6, v0

    .line 17
    .line 18
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    .line 28
    .line 29
    aput-wide v1, p1, v0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    .line 32
    .line 33
    aput p2, p1, v0

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    .line 36
    .line 37
    aput-object p4, p1, v0

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    .line 40
    .line 41
    aput p3, p1, v0

    .line 42
    .line 43
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    .line 44
    .line 45
    aput-object p5, p0, v0

    .line 46
    .line 47
    return-void
.end method

.method public final dump(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const-wide v1, 0x10b00000008L

    .line 14
    invoke-virtual {v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 15
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v12

    .line 16
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 18
    iget-object v8, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v1, 0x0

    aget-object v2, v8, v1

    if-eqz v2, :cond_0

    .line 19
    new-instance v3, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v3, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 20
    aget-object v1, v8, v1

    invoke-virtual {v1, v3, v12, v13}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    move-object v6, v3

    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v1, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    move-object v6, v1

    .line 22
    :goto_0
    iget-object v0, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v6, v12, v13}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    const/4 v0, 0x1

    move v7, v0

    .line 23
    :goto_1
    array-length v0, v8

    if-ge v7, v0, :cond_2

    .line 24
    aget-object v0, v8, v7

    if-eqz v0, :cond_1

    const-wide v2, 0x20b00000001L

    move-object/from16 v1, p2

    move-wide v4, v12

    move-object/from16 v16, v6

    move/from16 v17, v7

    move-wide v6, v14

    move-object/from16 v18, v8

    move/from16 v8, p1

    .line 25
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    goto :goto_2

    :cond_1
    move-object/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v18, v8

    :goto_2
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v6, v16

    move-object/from16 v8, v18

    goto :goto_1

    :cond_2
    move-object/from16 v16, v6

    const-wide v2, 0x10b00000002L

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-wide v4, v12

    move-wide v6, v14

    move/from16 v8, p1

    .line 26
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 27
    invoke-virtual {v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;I)V
    .locals 15

    move-object v0, p0

    .line 1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 2
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 4
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    .line 5
    new-instance v4, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v4, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 6
    aget-object v2, v1, v2

    invoke-virtual {v2, v4, v10, v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    move-object v14, v4

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v2, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    move-object v14, v2

    .line 8
    :goto_0
    iget-object v0, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v14, v10, v11}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    const/4 v0, 0x1

    .line 9
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 10
    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 11
    const-string v9, "Historical stats"

    move/from16 v3, p2

    move-wide v4, v10

    move-wide v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_2
    const-string v9, "Current stats"

    move-object v2, v14

    move/from16 v3, p2

    move-wide v4, v10

    move-wide v6, v12

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(IJJLandroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final dumpHistory(ILandroid/util/proto/ProtoOutputStream;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 30
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v3}, Lcom/android/internal/util/jobs/RingBufferIndices;->size()I

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-wide v5, 0x10b00000007L

    .line 31
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 32
    sget-object v7, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_5

    .line 34
    invoke-virtual {v3, v9}, Lcom/android/internal/util/jobs/RingBufferIndices;->indexOf(I)I

    move-result v10

    .line 35
    iget-object v11, v0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v11, v11, v10

    const/4 v12, -0x1

    if-eq v1, v12, :cond_1

    .line 36
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    if-eq v1, v12, :cond_1

    :goto_1
    move-object/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v18, v7

    goto :goto_2

    .line 37
    :cond_1
    iget-object v12, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v13, v12, v10

    and-int/lit16 v13, v13, 0xff

    if-nez v13, :cond_2

    goto :goto_1

    :cond_2
    const-wide v14, 0x20b00000001L

    .line 38
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    move-object/from16 v16, v3

    move/from16 v17, v4

    const-wide v3, 0x10e00000001L

    .line 39
    invoke-virtual {v2, v3, v4, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 40
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v3, v3, v10

    sub-long v3, v7, v3

    move-wide/from16 v18, v7

    const-wide v7, 0x10300000002L

    invoke-virtual {v2, v7, v8, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v3, 0x10500000003L

    .line 41
    invoke-virtual {v2, v3, v4, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 42
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v3, v3, v10

    const-wide v7, 0x10500000004L

    invoke-virtual {v2, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 43
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v3, v3, v10

    const-wide v7, 0x10900000005L

    invoke-virtual {v2, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const/4 v3, 0x2

    if-eq v13, v3, :cond_3

    const/4 v3, 0x4

    if-ne v13, v3, :cond_4

    .line 44
    :cond_3
    aget v3, v12, v10

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    const-wide v7, 0x10e00000006L

    invoke-virtual {v2, v7, v8, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 45
    :cond_4
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-wide/from16 v7, v18

    goto/16 :goto_0

    .line 46
    :cond_5
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final dumpHistory(Landroid/util/IndentingPrintWriter;I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/jobs/RingBufferIndices;

    invoke-virtual {v3}, Lcom/android/internal/util/jobs/RingBufferIndices;->size()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return v5

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3
    const-string v6, "Job history:"

    invoke-virtual {v1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 5
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Lcom/android/server/job/JobSchedulerService$1;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    :goto_0
    const/4 v8, 0x1

    if-ge v5, v4, :cond_a

    .line 7
    invoke-virtual {v3, v5}, Lcom/android/internal/util/jobs/RingBufferIndices;->indexOf(I)I

    move-result v9

    .line 8
    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v10, v10, v9

    const/4 v11, -0x1

    if-eq v2, v11, :cond_1

    .line 9
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v2, v11, :cond_1

    goto/16 :goto_3

    .line 10
    :cond_1
    iget-object v11, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v12, v11, v9

    and-int/lit16 v12, v12, 0xff

    if-nez v12, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v13, 0x4

    const/4 v14, 0x2

    if-eq v12, v8, :cond_6

    if-eq v12, v14, :cond_5

    const/4 v8, 0x3

    if-eq v12, v8, :cond_4

    if-eq v12, v13, :cond_3

    .line 11
    const-string v8, "     ??"

    goto :goto_1

    .line 12
    :cond_3
    const-string v8, " STOP-P"

    goto :goto_1

    .line 13
    :cond_4
    const-string v8, "START-P"

    goto :goto_1

    .line 14
    :cond_5
    const-string v8, "   STOP"

    goto :goto_1

    .line 15
    :cond_6
    const-string v8, "  START"

    .line 16
    :goto_1
    iget-object v15, v0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v15, v15, v9

    sub-long v13, v15, v6

    const/16 v15, 0x13

    invoke-static {v13, v14, v1, v15}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 17
    const-string v13, " "

    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 19
    const-string v8, ": #"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 20
    invoke-static {v1, v10}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 21
    const-string v8, "/"

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 22
    iget-object v8, v0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v8, v8, v9

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 23
    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v8, v0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v8, 0x2

    if-eq v12, v8, :cond_7

    const/4 v8, 0x4

    if-ne v12, v8, :cond_9

    .line 25
    :cond_7
    invoke-virtual {v1, v13}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget-object v8, v0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aget-object v8, v8, v9

    if-eqz v8, :cond_8

    .line 27
    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 28
    :cond_8
    aget v8, v11, v9

    const v9, 0xff00

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x8

    invoke-static {v8}, Landroid/app/job/JobParameters;->getInternalReasonCodeDescription(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 29
    :cond_9
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_a
    return v8
.end method

.method public final noteActive(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 10
    .line 11
    .line 12
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    .line 13
    .line 14
    const/16 v3, 0x28

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    iget-object v5, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 18
    .line 19
    iget v6, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 20
    .line 21
    if-lt v2, v3, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 24
    .line 25
    invoke-virtual {v2, v6, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget v3, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    iput-wide v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 34
    .line 35
    iget v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 36
    .line 37
    add-int/2addr v0, v4

    .line 38
    iput v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopCount:I

    .line 39
    .line 40
    :cond_0
    add-int/2addr v3, v4

    .line 41
    iput v3, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 45
    .line 46
    invoke-virtual {v2, v6, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget v3, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 51
    .line 52
    if-nez v3, :cond_2

    .line 53
    .line 54
    iput-wide v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 55
    .line 56
    iget v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 57
    .line 58
    add-int/2addr v0, v4

    .line 59
    iput v0, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeCount:I

    .line 60
    .line 61
    :cond_2
    add-int/2addr v3, v4

    .line 62
    iput v3, v2, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 63
    .line 64
    :goto_0
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    const/4 v4, 0x3

    .line 73
    :cond_3
    move v6, v4

    .line 74
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    .line 77
    .line 78
    .line 79
    move-result v8

    .line 80
    iget v7, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 81
    .line 82
    iget-object v9, p1, Lcom/android/server/job/controllers/JobStatus;->batteryName:Ljava/lang/String;

    .line 83
    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    move-object v5, p0

    .line 87
    invoke-virtual/range {v5 .. v11}, Lcom/android/server/job/JobPackageTracker;->addEvent(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public final noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 8
    .line 9
    iget v3, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v2, v3, p1}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget v2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    if-ne v2, v3, :cond_0

    .line 21
    .line 22
    iget-wide v4, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 23
    .line 24
    iget-wide v6, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 25
    .line 26
    sub-long v6, v0, v6

    .line 27
    .line 28
    add-long/2addr v6, v4

    .line 29
    iput-wide v6, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 30
    .line 31
    :cond_0
    sub-int/2addr v2, v3

    .line 32
    iput v2, p1, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final notePending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    .line 8
    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 13
    .line 14
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->sourceUid:I

    .line 15
    .line 16
    iget-object p1, p1, Lcom/android/server/job/controllers/JobStatus;->sourcePackageName:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iput-wide v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 27
    .line 28
    iget v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 29
    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    iput v0, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingCount:I

    .line 33
    .line 34
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 37
    .line 38
    return-void
.end method

.method public final rebatchIfNeeded(J)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/32 v2, 0x1b7740

    .line 8
    .line 9
    .line 10
    cmp-long v2, v0, v2

    .line 11
    .line 12
    if-lez v2, :cond_6

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 15
    .line 16
    iput-wide v0, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 17
    .line 18
    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 24
    .line 25
    iget-object v1, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v3, 0x1

    .line 32
    sub-int/2addr v1, v3

    .line 33
    :goto_0
    const/4 v4, 0x0

    .line 34
    if-ltz v1, :cond_5

    .line 35
    .line 36
    iget-object v5, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    check-cast v5, Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    sub-int/2addr v6, v3

    .line 49
    :goto_1
    if-ltz v6, :cond_4

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    check-cast v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 56
    .line 57
    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 58
    .line 59
    if-gtz v8, :cond_0

    .line 60
    .line 61
    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 62
    .line 63
    if-gtz v8, :cond_0

    .line 64
    .line 65
    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 66
    .line 67
    if-lez v8, :cond_3

    .line 68
    .line 69
    :cond_0
    iget-object v8, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mEntries:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    check-cast v9, Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v0, v8, v9}, Lcom/android/server/job/JobPackageTracker$DataSet;->getOrCreateEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    iput-wide p1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 86
    .line 87
    iget v9, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 88
    .line 89
    iput v9, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 90
    .line 91
    iput-wide p1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 92
    .line 93
    iget v9, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 94
    .line 95
    iput v9, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 96
    .line 97
    iput-wide p1, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 98
    .line 99
    iget v9, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 100
    .line 101
    iput v9, v8, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 102
    .line 103
    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 104
    .line 105
    if-lez v8, :cond_1

    .line 106
    .line 107
    iget-wide v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 108
    .line 109
    iget-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeStartTime:J

    .line 110
    .line 111
    sub-long v10, p1, v10

    .line 112
    .line 113
    add-long/2addr v10, v8

    .line 114
    iput-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTime:J

    .line 115
    .line 116
    iput v4, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeNesting:I

    .line 117
    .line 118
    :cond_1
    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 119
    .line 120
    if-lez v8, :cond_2

    .line 121
    .line 122
    iget-wide v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 123
    .line 124
    iget-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopStartTime:J

    .line 125
    .line 126
    sub-long v10, p1, v10

    .line 127
    .line 128
    add-long/2addr v10, v8

    .line 129
    iput-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastActiveTopTime:J

    .line 130
    .line 131
    iput v4, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->activeTopNesting:I

    .line 132
    .line 133
    :cond_2
    iget v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 134
    .line 135
    if-lez v8, :cond_3

    .line 136
    .line 137
    iget-wide v8, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 138
    .line 139
    iget-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingStartTime:J

    .line 140
    .line 141
    sub-long v10, p1, v10

    .line 142
    .line 143
    add-long/2addr v10, v8

    .line 144
    iput-wide v10, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pastPendingTime:J

    .line 145
    .line 146
    iput v4, v7, Lcom/android/server/job/JobPackageTracker$PackageEntry;->pendingNesting:I

    .line 147
    .line 148
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_5
    iget-object p0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 155
    .line 156
    array-length p1, p0

    .line 157
    sub-int/2addr p1, v3

    .line 158
    invoke-static {p0, v4, p0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 159
    .line 160
    .line 161
    aput-object v2, p0, v4

    .line 162
    .line 163
    :cond_6
    return-void
.end method
