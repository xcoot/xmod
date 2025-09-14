.class public abstract Lcom/android/server/vibrator/GroupedAggregatedLogRecords;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAggregationTimeLimitMs:I

.field public final mGroupedRecords:Landroid/util/SparseArray;

.field public final mSizeLimit:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput p1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mSizeLimit:I

    .line 12
    .line 13
    iput p2, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mAggregationTimeLimitMs:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final declared-synchronized add(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->getGroupKey()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    .line 15
    .line 16
    new-instance v2, Ljava/util/ArrayDeque;

    .line 17
    .line 18
    iget v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mSizeLimit:I

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_2

    .line 29
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/ArrayDeque;

    .line 36
    .line 37
    iget v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mAggregationTimeLimitMs:I

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-lez v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 53
    .line 54
    iget v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mAggregationTimeLimitMs:I

    .line 55
    .line 56
    int-to-long v3, v3

    .line 57
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object v5, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    .line 59
    .line 60
    invoke-interface {v5}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->getCreateUptimeMs()J

    .line 61
    .line 62
    .line 63
    move-result-wide v5

    .line 64
    invoke-interface {p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->getCreateUptimeMs()J

    .line 65
    .line 66
    .line 67
    move-result-wide v7

    .line 68
    sub-long/2addr v5, v7

    .line 69
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    iget-object v7, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    .line 74
    .line 75
    invoke-interface {v7, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->mayAggregate(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)Z

    .line 76
    .line 77
    .line 78
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 79
    const/4 v8, 0x1

    .line 80
    if-eqz v7, :cond_1

    .line 81
    .line 82
    cmp-long v3, v5, v3

    .line 83
    .line 84
    if-gez v3, :cond_1

    .line 85
    .line 86
    move v3, v8

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/4 v3, 0x0

    .line 89
    :goto_1
    :try_start_2
    monitor-exit v1

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :try_start_3
    iput-object p1, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    .line 94
    .line 95
    iget p1, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    .line 96
    .line 97
    add-int/2addr p1, v8

    .line 98
    iput p1, v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    .line 100
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    monitor-exit p0

    .line 102
    return-object v2

    .line 103
    :catchall_1
    move-exception p1

    .line 104
    :try_start_5
    monitor-exit v1

    .line 105
    throw p1

    .line 106
    :catchall_2
    move-exception p1

    .line 107
    monitor-exit v1

    .line 108
    throw p1

    .line 109
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mSizeLimit:I

    .line 114
    .line 115
    if-lt v1, v3, :cond_3

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    move-object v2, v1

    .line 122
    check-cast v2, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 123
    .line 124
    :cond_3
    new-instance v1, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 125
    .line 126
    invoke-direct {v1, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;-><init>(Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 130
    .line 131
    .line 132
    monitor-exit p0

    .line 133
    return-object v2

    .line 134
    :goto_2
    monitor-exit p0

    .line 135
    throw p1
.end method

.method public final declared-synchronized dump(Landroid/util/IndentingPrintWriter;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V

    .line 3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 5
    invoke-virtual {v2, p1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->dump(Landroid/util/IndentingPrintWriter;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized dump(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    .line 9
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->findGroupKeyProtoFieldId(I)J

    move-result-wide v1

    .line 11
    iget-object v3, p0, Lcom/android/server/vibrator/GroupedAggregatedLogRecords;->mGroupedRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;

    .line 12
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 13
    :try_start_1
    iget-object v5, v4, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mFirst:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v5, p1, v1, v2}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    .line 14
    iget v5, v4, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mCount:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 15
    iget-object v5, v4, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$AggregatedLogRecord;->mLatest:Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;

    invoke-interface {v5, p1, v1, v2}, Lcom/android/server/vibrator/GroupedAggregatedLogRecords$SingleLogRecord;->dump(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 16
    :cond_0
    :goto_2
    :try_start_2
    monitor-exit v4

    goto :goto_1

    :goto_3
    monitor-exit v4

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_2
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public abstract dumpGroupHeader(Landroid/util/IndentingPrintWriter;I)V
.end method

.method public abstract findGroupKeyProtoFieldId(I)J
.end method
