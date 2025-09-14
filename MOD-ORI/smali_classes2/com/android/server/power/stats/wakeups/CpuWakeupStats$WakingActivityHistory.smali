.class final Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mRetentionSupplier:Ljava/util/function/LongSupplier;

.field final mWakingActivity:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/wakeups/CpuWakeupStats$$ExternalSyntheticLambda0;)V
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
    iput-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mRetentionSupplier:Ljava/util/function/LongSupplier;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final dump(Landroid/util/IndentingPrintWriter;J)V
    .locals 8

    .line 1
    const-string v0, "Recent waking activity:"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    move v1, v0

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_4

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v3, "Subsystem "

    .line 22
    .line 23
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-static {v3}, Lcom/android/server/power/stats/wakeups/CpuWakeupStats;->subsystemToString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, ":"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v2, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Landroid/util/LongSparseArray;

    .line 58
    .line 59
    if-nez v2, :cond_0

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    add-int/lit8 v3, v3, -0x1

    .line 70
    .line 71
    :goto_1
    if-ltz v3, :cond_3

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 74
    .line 75
    .line 76
    move-result-wide v4

    .line 77
    invoke-static {v4, v5, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Landroid/util/SparseIntArray;

    .line 85
    .line 86
    if-nez v4, :cond_1

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_1
    const-string v5, ": "

    .line 93
    .line 94
    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    move v5, v0

    .line 98
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-ge v5, v6, :cond_2

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    invoke-static {p1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 109
    .line 110
    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    const-string v7, " ["

    .line 114
    .line 115
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    invoke-static {v7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v6, "], "

    .line 137
    .line 138
    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v5, v5, 0x1

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 145
    .line 146
    .line 147
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 151
    .line 152
    .line 153
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 158
    .line 159
    .line 160
    return-void
.end method

.method public final recordActivity(IJLandroid/util/SparseIntArray;)V
    .locals 4

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/util/LongSparseArray;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Landroid/util/LongSparseArray;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/util/SparseIntArray;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p2, p3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    :goto_0
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-ge v1, v2, :cond_4

    .line 46
    .line 47
    invoke-virtual {p4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-gez v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {p4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    .line 63
    .line 64
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mRetentionSupplier:Ljava/util/function/LongSupplier;

    .line 68
    .line 69
    invoke-interface {p0}, Ljava/util/function/LongSupplier;->getAsLong()J

    .line 70
    .line 71
    .line 72
    move-result-wide p0

    .line 73
    sub-long/2addr p2, p0

    .line 74
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    :goto_2
    if-ltz p0, :cond_5

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 p0, p0, -0x1

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    return-void
.end method

.method public final removeBetween(IJJ)Landroid/util/SparseIntArray;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/power/stats/wakeups/CpuWakeupStats$WakingActivityHistory;->mWakingActivity:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/util/LongSparseArray;

    .line 13
    .line 14
    if-eqz p0, :cond_2

    .line 15
    .line 16
    invoke-virtual {p0, p2, p3}, Landroid/util/LongSparseArray;->firstIndexOnOrAfter(J)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p0, p4, p5}, Landroid/util/LongSparseArray;->lastIndexOnOrBefore(J)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    move p3, p2

    .line 25
    :goto_0
    if-lt p3, p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p4

    .line 31
    check-cast p4, Landroid/util/SparseIntArray;

    .line 32
    .line 33
    const/4 p5, 0x0

    .line 34
    :goto_1
    invoke-virtual {p4}, Landroid/util/SparseIntArray;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ge p5, v1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p4, p5}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {p4, p5}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    .line 50
    .line 51
    add-int/lit8 p5, p5, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    :goto_2
    if-lt p2, p1, :cond_2

    .line 58
    .line 59
    invoke-virtual {p0, p2}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 p2, p2, -0x1

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    if-lez p0, :cond_3

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    const/4 v0, 0x0

    .line 73
    :goto_3
    return-object v0
.end method
