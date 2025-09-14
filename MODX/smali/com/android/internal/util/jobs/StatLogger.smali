.class public Lcom/android/internal/util/jobs/StatLogger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatLogger"


# instance fields
.field private final SIZE:I

.field private final mCallsPerSecond:[I

.field private final mCountStats:[I

.field private final mDurationPerSecond:[J

.field private final mDurationStats:[J

.field private final mLabels:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxCallsPerSecond:[I

.field private final mMaxDurationPerSecond:[J

.field private final mMaxDurationStats:[J

.field private mNextTickTime:J

.field private final mStatsTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mLock:Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mNextTickTime:J

    .line 5
    iput-object p1, p0, Lcom/android/internal/util/jobs/StatLogger;->mStatsTag:Ljava/lang/String;

    .line 6
    array-length p1, p2

    iput p1, p0, Lcom/android/internal/util/jobs/StatLogger;->SIZE:I

    .line 7
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mCountStats:[I

    .line 8
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationStats:[J

    .line 9
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mCallsPerSecond:[I

    .line 10
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxCallsPerSecond:[I

    .line 11
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationPerSecond:[J

    .line 12
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationPerSecond:[J

    .line 13
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationStats:[J

    .line 14
    iput-object p2, p0, Lcom/android/internal/util/jobs/StatLogger;->mLabels:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcom/android/internal/util/jobs/StatLogger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v3, v0, Lcom/android/internal/util/jobs/StatLogger;->mStatsTag:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/internal/util/jobs/StatLogger;->mStatsTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 5
    :cond_0
    const-string v3, "Stats:"

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v3, 0x0

    .line 7
    :goto_1
    iget v4, v0, Lcom/android/internal/util/jobs/StatLogger;->SIZE:I

    if-ge v3, v4, :cond_2

    .line 8
    iget-object v4, v0, Lcom/android/internal/util/jobs/StatLogger;->mCountStats:[I

    aget v4, v4, v3

    .line 9
    iget-object v5, v0, Lcom/android/internal/util/jobs/StatLogger;->mDurationStats:[J

    aget-wide v5, v5, v3

    long-to-double v5, v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    .line 10
    const-string v9, "%s: count=%d, total=%.1fms, avg=%.3fms, max calls/s=%d max dur/s=%.1fms max time=%.1fms"

    iget-object v10, v0, Lcom/android/internal/util/jobs/StatLogger;->mLabels:[Ljava/lang/String;

    aget-object v11, v10, v3

    .line 11
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_1
    int-to-double v14, v4

    div-double v4, v5, v14

    .line 12
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    iget-object v4, v0, Lcom/android/internal/util/jobs/StatLogger;->mMaxCallsPerSecond:[I

    aget v4, v4, v3

    .line 13
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v4, v0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationPerSecond:[J

    aget-wide v4, v4, v3

    long-to-double v4, v4

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    iget-object v4, v0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationStats:[J

    aget-wide v4, v4, v3

    long-to-double v4, v4

    div-double/2addr v4, v7

    .line 14
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    filled-new-array/range {v11 .. v17}, [Ljava/lang/Object;

    move-result-object v4

    .line 15
    invoke-static {v9, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 17
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 7
    move-result-wide p2

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object v2, p0, Lcom/android/internal/util/jobs/StatLogger;->mLabels:[Ljava/lang/String;

    .line 11
    array-length v2, v2

    .line 12
    if-ge v1, v2, :cond_0

    .line 14
    const-wide v2, 0x20b00000001L

    .line 19
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 22
    move-result-wide v2

    .line 23
    const-wide v4, 0x10500000001L

    .line 28
    invoke-virtual {p1, v4, v5, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 31
    iget-object v4, p0, Lcom/android/internal/util/jobs/StatLogger;->mLabels:[Ljava/lang/String;

    .line 33
    aget-object v4, v4, v1

    .line 35
    const-wide v5, 0x10900000002L

    .line 40
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 43
    iget-object v4, p0, Lcom/android/internal/util/jobs/StatLogger;->mCountStats:[I

    .line 45
    aget v4, v4, v1

    .line 47
    const-wide v5, 0x10500000003L

    .line 52
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 55
    iget-object v4, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationStats:[J

    .line 57
    aget-wide v4, v4, v1

    .line 59
    const-wide v6, 0x10300000004L

    .line 64
    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 67
    iget-object v4, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxCallsPerSecond:[I

    .line 69
    aget v4, v4, v1

    .line 71
    const-wide v5, 0x10500000005L

    .line 76
    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 79
    iget-object v4, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationPerSecond:[J

    .line 81
    aget-wide v4, v4, v1

    .line 83
    const-wide v6, 0x10300000006L

    .line 88
    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 91
    iget-object v4, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationStats:[J

    .line 93
    aget-wide v4, v4, v1

    .line 95
    const-wide v6, 0x10300000007L

    .line 100
    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 103
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception p0

    .line 110
    goto :goto_1

    .line 111
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 114
    monitor-exit v0

    .line 115
    return-void

    .line 116
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    throw p0
.end method

.method public getTime()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 7
    div-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public logDurationStat(IJ)J
    .locals 10

    .line 1
    const-string v0, "Invalid event ID: "

    .line 3
    iget-object v1, p0, Lcom/android/internal/util/jobs/StatLogger;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    .line 9
    move-result-wide v2

    .line 10
    sub-long/2addr v2, p2

    .line 11
    if-ltz p1, :cond_4

    .line 13
    iget p2, p0, Lcom/android/internal/util/jobs/StatLogger;->SIZE:I

    .line 15
    if-ge p1, p2, :cond_4

    .line 17
    iget-object p2, p0, Lcom/android/internal/util/jobs/StatLogger;->mCountStats:[I

    .line 19
    aget p3, p2, p1

    .line 21
    add-int/lit8 p3, p3, 0x1

    .line 23
    aput p3, p2, p1

    .line 25
    iget-object p2, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationStats:[J

    .line 27
    aget-wide v4, p2, p1

    .line 29
    add-long/2addr v4, v2

    .line 30
    aput-wide v4, p2, p1

    .line 32
    iget-object p2, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationStats:[J

    .line 34
    aget-wide v4, p2, p1

    .line 36
    cmp-long p3, v4, v2

    .line 38
    if-gez p3, :cond_0

    .line 40
    aput-wide v2, p2, p1

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    move-result-wide p2

    .line 49
    iget-wide v4, p0, Lcom/android/internal/util/jobs/StatLogger;->mNextTickTime:J

    .line 51
    cmp-long v0, p2, v4

    .line 53
    if-lez v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxCallsPerSecond:[I

    .line 57
    aget v4, v0, p1

    .line 59
    iget-object v5, p0, Lcom/android/internal/util/jobs/StatLogger;->mCallsPerSecond:[I

    .line 61
    aget v6, v5, p1

    .line 63
    if-ge v4, v6, :cond_1

    .line 65
    aput v6, v0, p1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/jobs/StatLogger;->mMaxDurationPerSecond:[J

    .line 69
    aget-wide v6, v0, p1

    .line 71
    iget-object v4, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationPerSecond:[J

    .line 73
    aget-wide v8, v4, p1

    .line 75
    cmp-long v6, v6, v8

    .line 77
    if-gez v6, :cond_2

    .line 79
    aput-wide v8, v0, p1

    .line 81
    :cond_2
    const/4 v0, 0x0

    .line 82
    aput v0, v5, p1

    .line 84
    const-wide/16 v5, 0x0

    .line 86
    aput-wide v5, v4, p1

    .line 88
    const-wide/16 v4, 0x3e8

    .line 90
    add-long/2addr p2, v4

    .line 91
    iput-wide p2, p0, Lcom/android/internal/util/jobs/StatLogger;->mNextTickTime:J

    .line 93
    :cond_3
    iget-object p2, p0, Lcom/android/internal/util/jobs/StatLogger;->mCallsPerSecond:[I

    .line 95
    aget p3, p2, p1

    .line 97
    add-int/lit8 p3, p3, 0x1

    .line 99
    aput p3, p2, p1

    .line 101
    iget-object p0, p0, Lcom/android/internal/util/jobs/StatLogger;->mDurationPerSecond:[J

    .line 103
    aget-wide p2, p0, p1

    .line 105
    add-long/2addr p2, v2

    .line 106
    aput-wide p2, p0, p1

    .line 108
    monitor-exit v1

    .line 109
    return-wide v2

    .line 110
    :cond_4
    const-string p0, "StatLogger"

    .line 112
    new-instance p2, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    monitor-exit v1

    .line 128
    return-wide v2

    .line 129
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p0
.end method
