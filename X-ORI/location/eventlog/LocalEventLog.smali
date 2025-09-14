.class public abstract Lcom/android/server/location/eventlog/LocalEventLog;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final IS_FILLER_OFFSET:I

.field static final MAX_TIME_DELTA:I

.field public static final TIME_DELTA_OFFSET:I


# instance fields
.field public final mEntries:[I

.field public mLastLogTime:J

.field public mLogEndIndex:I

.field public final mLogEvents:[Ljava/lang/Object;

.field public mLogSize:I

.field public mModificationCount:J

.field public mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, -0x80000000

    .line 3
    .line 4
    move v2, v0

    .line 5
    :goto_0
    if-eqz v1, :cond_0

    .line 6
    .line 7
    and-int/lit8 v3, v1, 0x1

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    ushr-int/lit8 v1, v1, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sput v2, Lcom/android/server/location/eventlog/LocalEventLog;->IS_FILLER_OFFSET:I

    .line 17
    .line 18
    sput v0, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    .line 19
    .line 20
    const v0, 0x7fffffff

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    shl-int v0, v1, v0

    .line 29
    .line 30
    sub-int/2addr v0, v1

    .line 31
    sput v0, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    .line 32
    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-lez p1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, v0

    .line 10
    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 11
    .line 12
    .line 13
    new-array v1, p1, [I

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    .line 16
    .line 17
    const-class v1, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v1, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, [Ljava/lang/Object;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    .line 26
    .line 27
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 28
    .line 29
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 30
    .line 31
    const-wide/16 v0, -0x1

    .line 32
    .line 33
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 34
    .line 35
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    .line 36
    .line 37
    return-void
.end method

.method public static varargs iterate(Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;[Lcom/android/server/location/eventlog/LocalEventLog;)V
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    array-length v1, p1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    array-length v1, p1

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    if-ge v3, v1, :cond_1

    .line 11
    .line 12
    aget-object v4, p1, v3

    .line 13
    .line 14
    new-instance v5, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    .line 15
    .line 16
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-direct {v5, v4}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;-><init>(Lcom/android/server/location/eventlog/LocalEventLog;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v5}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    invoke-virtual {v5}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()V

    .line 32
    .line 33
    .line 34
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v1, 0x0

    .line 42
    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_4

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;

    .line 53
    .line 54
    if-eqz v3, :cond_2

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget-wide v4, v3, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    .line 59
    .line 60
    iget-wide v6, v1, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    .line 61
    .line 62
    cmp-long v4, v4, v6

    .line 63
    .line 64
    if-gez v4, :cond_2

    .line 65
    .line 66
    :cond_3
    move-object v1, v3

    .line 67
    goto :goto_2

    .line 68
    :cond_4
    if-nez v1, :cond_5

    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    iget-wide v3, v1, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    .line 72
    .line 73
    iget-object p1, v1, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentLogEvent:Ljava/lang/Object;

    .line 74
    .line 75
    iget-object v5, p0, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/Consumer;

    .line 76
    .line 77
    iget-object v6, p0, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 78
    .line 79
    if-eqz v6, :cond_6

    .line 80
    .line 81
    instance-of v7, p1, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;

    .line 82
    .line 83
    if-eqz v7, :cond_7

    .line 84
    .line 85
    move-object v7, p1

    .line 86
    check-cast v7, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;

    .line 87
    .line 88
    iget-object v7, v7, Lcom/android/server/location/eventlog/LocationEventLog$ProviderEvent;->mProvider:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_7

    .line 95
    .line 96
    :cond_6
    iget-object v6, p0, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 99
    .line 100
    .line 101
    iget-wide v7, p0, Lcom/android/server/location/eventlog/LocationEventLog$$ExternalSyntheticLambda0;->f$2:J

    .line 102
    .line 103
    add-long/2addr v3, v7

    .line 104
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    const-string v3, ": "

    .line 112
    .line 113
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {v5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_8

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->next()V

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized addLog(JLjava/lang/Object;)V
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-wide/from16 v2, p1

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    const/4 v0, 0x1

    .line 6
    :try_start_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 7
    .line 8
    .line 9
    iget v4, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v4, :cond_0

    .line 13
    .line 14
    move v4, v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v4, v5

    .line 17
    :goto_0
    const-wide/16 v6, 0x1

    .line 18
    .line 19
    const-wide/16 v8, 0x0

    .line 20
    .line 21
    if-nez v4, :cond_3

    .line 22
    .line 23
    iget-wide v10, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    .line 24
    .line 25
    sub-long v10, v2, v10

    .line 26
    .line 27
    cmp-long v4, v10, v8

    .line 28
    .line 29
    const/4 v12, 0x0

    .line 30
    if-ltz v4, :cond_2

    .line 31
    .line 32
    sget v4, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    .line 33
    .line 34
    int-to-long v13, v4

    .line 35
    div-long v13, v10, v13

    .line 36
    .line 37
    iget-object v4, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    .line 38
    .line 39
    array-length v4, v4

    .line 40
    sub-int/2addr v4, v0

    .line 41
    int-to-long v8, v4

    .line 42
    cmp-long v4, v13, v8

    .line 43
    .line 44
    if-ltz v4, :cond_1

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_1
    move-wide v8, v10

    .line 48
    :goto_1
    sget v4, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    .line 49
    .line 50
    int-to-long v10, v4

    .line 51
    cmp-long v13, v8, v10

    .line 52
    .line 53
    if-ltz v13, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0, v12, v4, v0}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(Ljava/lang/Object;IZ)V

    .line 56
    .line 57
    .line 58
    sub-long/2addr v8, v10

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto :goto_4

    .line 62
    :cond_2
    :goto_2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :try_start_1
    iget-object v0, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {v0, v12}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iput v5, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 69
    .line 70
    iput v5, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 71
    .line 72
    iget-wide v8, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    .line 73
    .line 74
    add-long/2addr v8, v6

    .line 75
    iput-wide v8, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    .line 76
    .line 77
    const-wide/16 v8, -0x1

    .line 78
    .line 79
    iput-wide v8, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 80
    .line 81
    iput-wide v8, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    .line 83
    :try_start_2
    monitor-exit p0

    .line 84
    :cond_3
    const-wide/16 v8, 0x0

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :catchall_1
    move-exception v0

    .line 88
    monitor-exit p0

    .line 89
    throw v0

    .line 90
    :cond_4
    :goto_3
    iget v0, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 91
    .line 92
    if-nez v0, :cond_5

    .line 93
    .line 94
    iput-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 95
    .line 96
    iput-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    .line 97
    .line 98
    iget-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    .line 99
    .line 100
    add-long/2addr v2, v6

    .line 101
    iput-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    .line 102
    .line 103
    :cond_5
    long-to-int v0, v8

    .line 104
    move-object/from16 v2, p3

    .line 105
    .line 106
    invoke-virtual {p0, v2, v0, v5}, Lcom/android/server/location/eventlog/LocalEventLog;->addLogEventInternal(Ljava/lang/Object;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    .line 108
    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 111
    :goto_4
    monitor-exit p0

    .line 112
    throw v0
.end method

.method public final addLogEventInternal(Ljava/lang/Object;IZ)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p3, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v0

    .line 9
    goto :goto_1

    .line 10
    :cond_1
    :goto_0
    move v2, v1

    .line 11
    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 12
    .line 13
    .line 14
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 15
    .line 16
    const-wide/16 v4, -0x1

    .line 17
    .line 18
    cmp-long v2, v2, v4

    .line 19
    .line 20
    if-eqz v2, :cond_2

    .line 21
    .line 22
    iget-wide v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    .line 23
    .line 24
    cmp-long v2, v2, v4

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    move v2, v1

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v2, v0

    .line 31
    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 35
    .line 36
    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    .line 37
    .line 38
    array-length v4, v3

    .line 39
    sget v5, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    .line 40
    .line 41
    const v6, 0x7fffffff

    .line 42
    .line 43
    .line 44
    if-ne v2, v4, :cond_3

    .line 45
    .line 46
    iget-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 47
    .line 48
    iget v4, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 49
    .line 50
    sub-int/2addr v4, v2

    .line 51
    array-length v2, v3

    .line 52
    rem-int/2addr v4, v2

    .line 53
    array-length v2, v3

    .line 54
    add-int/2addr v4, v2

    .line 55
    array-length v2, v3

    .line 56
    rem-int/2addr v4, v2

    .line 57
    aget v2, v3, v4

    .line 58
    .line 59
    and-int/2addr v2, v6

    .line 60
    ushr-int/2addr v2, v5

    .line 61
    int-to-long v9, v2

    .line 62
    add-long/2addr v7, v9

    .line 63
    iput-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 64
    .line 65
    iget-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    .line 66
    .line 67
    const-wide/16 v9, 0x1

    .line 68
    .line 69
    add-long/2addr v7, v9

    .line 70
    iput-wide v7, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    add-int/2addr v2, v1

    .line 74
    iput v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 75
    .line 76
    :goto_3
    iget v2, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 77
    .line 78
    if-ltz p2, :cond_4

    .line 79
    .line 80
    sget v4, Lcom/android/server/location/eventlog/LocalEventLog;->MAX_TIME_DELTA:I

    .line 81
    .line 82
    if-gt p2, v4, :cond_4

    .line 83
    .line 84
    move v0, v1

    .line 85
    :cond_4
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 86
    .line 87
    .line 88
    sget v0, Lcom/android/server/location/eventlog/LocalEventLog;->IS_FILLER_OFFSET:I

    .line 89
    .line 90
    shl-int/2addr p3, v0

    .line 91
    const/high16 v0, -0x80000000

    .line 92
    .line 93
    and-int/2addr p3, v0

    .line 94
    shl-int v0, p2, v5

    .line 95
    .line 96
    and-int/2addr v0, v6

    .line 97
    or-int/2addr p3, v0

    .line 98
    aput p3, v3, v2

    .line 99
    .line 100
    iget p3, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 101
    .line 102
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    .line 103
    .line 104
    aput-object p1, v0, p3

    .line 105
    .line 106
    const/4 p1, -0x1

    .line 107
    if-ne p3, p1, :cond_5

    .line 108
    .line 109
    iget p1, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 110
    .line 111
    sub-int/2addr p3, p1

    .line 112
    array-length p1, v3

    .line 113
    rem-int/2addr p3, p1

    .line 114
    array-length p1, v3

    .line 115
    add-int/2addr p3, p1

    .line 116
    array-length p1, v3

    .line 117
    rem-int/2addr p3, p1

    .line 118
    goto :goto_4

    .line 119
    :cond_5
    if-ltz p3, :cond_6

    .line 120
    .line 121
    add-int/2addr p3, v1

    .line 122
    array-length p1, v3

    .line 123
    rem-int/2addr p3, p1

    .line 124
    array-length p1, v3

    .line 125
    add-int/2addr p3, p1

    .line 126
    array-length p1, v3

    .line 127
    rem-int/2addr p3, p1

    .line 128
    :goto_4
    iput p3, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 129
    .line 130
    iget-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    .line 131
    .line 132
    int-to-long p1, p2

    .line 133
    add-long/2addr v0, p1

    .line 134
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog;->mLastLogTime:J

    .line 135
    .line 136
    return-void

    .line 137
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 138
    .line 139
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 140
    .line 141
    .line 142
    throw p0
.end method
