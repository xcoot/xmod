.class public final Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mCount:I

.field public mCurrentLogEvent:Ljava/lang/Object;

.field public mCurrentTime:J

.field public mIndex:I

.field public mLogTime:J

.field public final mModificationCount:J

.field public final synthetic this$0:Lcom/android/server/location/eventlog/LocalEventLog;


# direct methods
.method public constructor <init>(Lcom/android/server/location/eventlog/LocalEventLog;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    .line 6
    monitor-enter p1

    .line 7
    :try_start_0
    iget-wide v0, p1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    .line 9
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mModificationCount:J

    .line 11
    iget-wide v0, p1, Lcom/android/server/location/eventlog/LocalEventLog;->mStartTime:J

    .line 13
    iput-wide v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    .line 18
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    .line 20
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->increment()V

    .line 23
    monitor-exit p1

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    .line 6
    iget-wide v2, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mModificationCount:J

    .line 8
    iget-wide v4, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mModificationCount:J

    .line 10
    cmp-long v2, v4, v2

    .line 12
    if-nez v2, :cond_1

    .line 14
    iget p0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    .line 16
    iget v1, v1, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 18
    if-ge p0, v1, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    .line 29
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 32
    throw p0

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method

.method public final increment()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    .line 3
    const v1, 0x7fffffff

    .line 6
    const/4 v2, -0x1

    .line 7
    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    .line 9
    if-ne v0, v2, :cond_0

    .line 11
    const-wide/16 v4, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v4, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    .line 16
    aget v0, v4, v0

    .line 18
    and-int/2addr v0, v1

    .line 19
    sget v4, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    .line 21
    ushr-int/2addr v0, v4

    .line 22
    int-to-long v4, v0

    .line 23
    :goto_0
    iget-wide v6, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    .line 25
    add-long/2addr v6, v4

    .line 26
    iput-wide v6, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    .line 28
    iget v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    .line 30
    iget-object v6, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    .line 32
    if-ne v0, v2, :cond_1

    .line 34
    iget v0, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEndIndex:I

    .line 36
    iget v7, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 38
    sub-int/2addr v0, v7

    .line 39
    array-length v7, v6

    .line 40
    rem-int/2addr v0, v7

    .line 41
    array-length v7, v6

    .line 42
    add-int/2addr v0, v7

    .line 43
    array-length v7, v6

    .line 44
    rem-int/2addr v0, v7

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    if-ltz v0, :cond_4

    .line 48
    add-int/lit8 v0, v0, 0x1

    .line 50
    array-length v7, v6

    .line 51
    rem-int/2addr v0, v7

    .line 52
    array-length v7, v6

    .line 53
    add-int/2addr v0, v7

    .line 54
    array-length v7, v6

    .line 55
    rem-int/2addr v0, v7

    .line 56
    :goto_1
    iput v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    .line 58
    iget v7, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    .line 60
    add-int/lit8 v7, v7, 0x1

    .line 62
    iput v7, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCount:I

    .line 64
    iget v8, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mLogSize:I

    .line 66
    if-ge v7, v8, :cond_2

    .line 68
    aget v4, v6, v0

    .line 70
    and-int/2addr v4, v1

    .line 71
    sget v5, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    .line 73
    ushr-int/2addr v4, v5

    .line 74
    int-to-long v4, v4

    .line 75
    :cond_2
    if-ge v7, v8, :cond_3

    .line 77
    aget v0, v6, v0

    .line 79
    const/high16 v6, -0x80000000

    .line 81
    and-int/2addr v0, v6

    .line 82
    if-eqz v0, :cond_3

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    return-void

    .line 86
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 88
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 91
    throw p0
.end method

.method public final next()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->hasNext()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-wide v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mLogTime:J

    .line 12
    iget-object v3, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->this$0:Lcom/android/server/location/eventlog/LocalEventLog;

    .line 14
    iget-object v4, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mEntries:[I

    .line 16
    iget v5, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mIndex:I

    .line 18
    aget v4, v4, v5

    .line 20
    const v6, 0x7fffffff

    .line 23
    and-int/2addr v4, v6

    .line 24
    sget v6, Lcom/android/server/location/eventlog/LocalEventLog;->TIME_DELTA_OFFSET:I

    .line 26
    ushr-int/2addr v4, v6

    .line 27
    int-to-long v6, v4

    .line 28
    add-long/2addr v1, v6

    .line 29
    iput-wide v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentTime:J

    .line 31
    iget-object v1, v3, Lcom/android/server/location/eventlog/LocalEventLog;->mLogEvents:[Ljava/lang/Object;

    .line 33
    aget-object v1, v1, v5

    .line 35
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iput-object v1, p0, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->mCurrentLogEvent:Ljava/lang/Object;

    .line 40
    invoke-virtual {p0}, Lcom/android/server/location/eventlog/LocalEventLog$LogIterator;->increment()V

    .line 43
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 49
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 52
    throw p0

    .line 53
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p0
.end method
