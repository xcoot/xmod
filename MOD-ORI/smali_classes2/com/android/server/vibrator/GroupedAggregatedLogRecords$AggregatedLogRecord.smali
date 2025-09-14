.class public final Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCount:I

.field public final mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

.field public mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    .line 1
    const-string v0, "-> Skipping "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :cond_0
    const/4 v2, 0x2

    .line 17
    if-le v1, v2, :cond_1

    .line 18
    .line 19
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    .line 25
    .line 26
    sub-int/2addr v0, v2

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " aggregated entries, latest:"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    .line 49
    .line 50
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit p0

    .line 53
    throw p1
.end method
